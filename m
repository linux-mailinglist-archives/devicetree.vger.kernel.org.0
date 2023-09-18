Return-Path: <devicetree+bounces-1169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA547A5305
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64627281DE0
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E3B27EC1;
	Mon, 18 Sep 2023 19:22:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24612376F
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 19:22:22 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 575FD114;
	Mon, 18 Sep 2023 12:22:17 -0700 (PDT)
X-UUID: a8bc1a5a565811ee8051498923ad61e6-20230919
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=FlA/ayL7itBhryN5xYs8D2vtk2TIpgalbJj33r8hXbg=;
	b=o+kcjJYUURzmcnA0ZW4tIpGsUzohXB/tfvhR2xyiWX29jiW4vLWz/odeUHG8OFBOKap1DnHsDGM4HHmC6RfmwUBxzaSlNy+YsYzIE1tFtZyS3Gooh9dumUzZdxcdf1ABiaml25/grwEosyYuSmyDBgXCAcQ0IHb025Z0lobqkN8=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:f125555f-ceea-41db-9e9b-d3d911c71d6c,IP:0,U
	RL:0,TC:0,Content:100,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:100
X-CID-META: VersionHash:0ad78a4,CLOUDID:ef9a2bc3-1e57-4345-9d31-31ad9818b39f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:801|102,TC:nil,Content:3,EDM:-3,IP:n
	il,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR
	:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: a8bc1a5a565811ee8051498923ad61e6-20230919
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1929004910; Tue, 19 Sep 2023 03:22:08 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 19 Sep 2023 03:22:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs11n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 19 Sep 2023 03:22:07 +0800
From: Jason-JH.Lin <jason-jh.lin@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, Chun-Kuang Hu
	<chunkuang.hu@kernel.org>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>
CC: Conor Dooley <conor+dt@kernel.org>, Jason-ch Chen
	<jason-ch.chen@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>,
	"Elvis Wang" <Elvis.Wang@mediatek.com>, "Jason-JH . Lin"
	<jason-jh.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Nancy
 Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<dri-devel@lists.freedesktop.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: [PATCH 06/15] mailbox: mediatek: Add cmdq_mbox_stop to disable GCE thread
Date: Tue, 19 Sep 2023 03:21:55 +0800
Message-ID: <20230918192204.32263-7-jason-jh.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230918192204.32263-1-jason-jh.lin@mediatek.com>
References: <20230918192204.32263-1-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--1.988300-8.000000
X-TMASE-MatchedRID: uVuWzlu52RkiDrsceLMV4Q5KPhGIg0MRkKAa/khZ3iTFJnEpmt9OExFx
	R5JQAS6O09NQNrxIpFYBtjkcfRMmqTWBtSWZ+bE6ngIgpj8eDcAZ1CdBJOsoY8RB0bsfrpPIcSq
	bxBgG0w6ujTD8QgIK1kQ6fjiZXZogD+jiC1oMBt0eayzllU2Q/1TJDW/3g1sVmnNXN2Yg01ZCSb
	LlGtGkW7KHfI39uPZVtH1PlKbdBAd5lSmbrC6fdtr/To2FgNrjDLMIOOVTHz12N6Rg5qIpOg==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--1.988300-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 27B40605C2A0C3207783487520CC4AA9778409CD16F2F742F472B934C2B6A9CD2000:8
X-MTK: N
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,RDNS_NONE,
	SPF_HELO_PASS,T_SPF_TEMPERROR,UNPARSEABLE_RELAY autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add cmdq_mbox_stop to disable GCE thread.

To support the error handling or the stop flow of the GCE loopping
thread, lopping thread user can call cmdq_mbox_stop to disable the
GCE HW thread.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 drivers/mailbox/mtk-cmdq-mailbox.c       | 6 ++++++
 include/linux/mailbox/mtk-cmdq-mailbox.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
index 4d62b07c1411..8bd39fecbf00 100644
--- a/drivers/mailbox/mtk-cmdq-mailbox.c
+++ b/drivers/mailbox/mtk-cmdq-mailbox.c
@@ -469,6 +469,12 @@ static void cmdq_mbox_shutdown(struct mbox_chan *chan)
 	spin_unlock_irqrestore(&thread->chan->lock, flags);
 }
 
+void cmdq_mbox_stop(struct mbox_chan *chan)
+{
+	cmdq_mbox_shutdown(chan);
+}
+EXPORT_SYMBOL(cmdq_mbox_stop);
+
 static int cmdq_mbox_flush(struct mbox_chan *chan, unsigned long timeout)
 {
 	struct cmdq_thread *thread = (struct cmdq_thread *)chan->con_priv;
diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
index a8f0070c7aa9..f3e577335acb 100644
--- a/include/linux/mailbox/mtk-cmdq-mailbox.h
+++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
@@ -79,5 +79,6 @@ struct cmdq_pkt {
 };
 
 u8 cmdq_get_shift_pa(struct mbox_chan *chan);
+void cmdq_mbox_stop(struct mbox_chan *chan);
 
 #endif /* __MTK_CMDQ_MAILBOX_H__ */
-- 
2.18.0


