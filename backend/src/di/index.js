const Injector = require('./injector');
const HistoryRepository = require('../repositories/history.repository');
const VideoRepository = require('../repositories/video.repository');
const ListRepository = require('../repositories/list.repository');
const HistoryService = require('../services/history.service');
const VideoService = require('../services/video.service');
const ListService = require('../services/list.service');
const Database = require('../database');

const di = new Injector();

const historyRepo = new HistoryRepository();
const videoRepo = new VideoRepository();
const listRepo = new ListRepository();

(async () => {
	await historyRepo.init();
	await videoRepo.init();
	await listRepo.init();
	const dbInstance = await Database.getInstance();
	await dbInstance.seed();
})();

di.registerRepository(HistoryRepository, historyRepo);
di.registerRepository(VideoRepository, videoRepo);
di.registerRepository(ListRepository, listRepo);

di.registerService(HistoryService, new HistoryService(di.getRepository(HistoryRepository)));
di.registerService(VideoService, new VideoService(di.getRepository(VideoRepository)));
di.registerService(ListService, new ListService(di.getRepository(ListRepository)));

module.exports = { di };
