Return-Path: <devicetree+bounces-1175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AD77A530B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:24:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4EDB0281EDF
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA9327EE0;
	Mon, 18 Sep 2023 19:22:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAF427734
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 19:22:25 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E16116;
	Mon, 18 Sep 2023 12:22:17 -0700 (PDT)
X-UUID: a9159274565811eea33bb35ae8d461a2-20230919
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=HI7l3vGsPsmzZo/uIzbHi7f/WeXP6f2NcrrcqutNn5Q=;
	b=srw3mapFO2vAp8oUxG9xt/xQg4anRsjLz3KPaDCmGb3Dub6MpyUq14813jQG6BsaMGluoqKuLlbRNlycyA/W6tUMS/CHx/p2u3YeKnqmCiZw272pbUlL6B90MsEmGwvqUfAmduSyXeFuaH4no6jAWoCxzgHto9KxfL4zHyc5vOw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:95777daa-7804-45cf-9ab4-26d69bbc0b4a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:0ad78a4,CLOUDID:d20b1514-4929-4845-9571-38c601e9c3c9,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: a9159274565811eea33bb35ae8d461a2-20230919
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw01.mediatek.com
	(envelope-from <jason-jh.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 285017363; Tue, 19 Sep 2023 03:22:08 +0800
Received: from mtkmbs11n2.mediatek.inc (172.21.101.187) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
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
Subject: [PATCH 05/15] mailbox: mediatek: Add cmdq_pkt_write_s_reg_value to CMDQ driver
Date: Tue, 19 Sep 2023 03:21:54 +0800
Message-ID: <20230918192204.32263-6-jason-jh.lin@mediatek.com>
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
X-TM-AS-Result: No-10--2.004300-8.000000
X-TMASE-MatchedRID: d+baqQ3qUqdvH7GZAcw0g23NvezwBrVmLoYOuiLW+uU06dhcpwNHEOml
	/E2CK49b8AyWk2NFMNbijpjet3oGSAQmkMsZWj5BaK+MsTwM+1lD3kXYiJVSRAbYcy9YQl6eKWP
	e+E7P2THi8zVgXoAltsIJ+4gwXrEtJ0RPnyOnrZIM4S2TRy7cZ2i/C52Uzy3OO0Khn2No/FFzVQ
	c60jdd5CZkU7HGb3RtsOd5DGuY6AnWt7HEJKl7PDEch5FNHPJzkYKNaDZaI2OAhOcaQrQ0U1GyR
	coeF18qmKP0zzpTAeGwod8xOMKmvA1Aka/KIp/p
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--2.004300-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	817DEDE7E8A429079FFB1157BA17ACF55FAE7482C54454C9DFF5EB84A5B0B4EF2000:8
X-MTK: N
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,T_SPF_TEMPERROR,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add cmdq_pkt_write_s_reg_value to CMDQ driver.

It appends write_s command to the command buffer in a CMDQ packet,
ask GCE to excute a write instruction to write a value to a register
with low 16 bits physical address offset.

Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
---
 drivers/soc/mediatek/mtk-cmdq-helper.c | 13 +++++++++++++
 include/linux/soc/mediatek/mtk-cmdq.h  | 11 +++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
index 5194d66dfc0a..4be2a18a4a02 100644
--- a/drivers/soc/mediatek/mtk-cmdq-helper.c
+++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
@@ -287,6 +287,19 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, u8 high_addr_reg_idx,
 }
 EXPORT_SYMBOL(cmdq_pkt_write_s_value);
 
+int cmdq_pkt_write_s_reg_value(struct cmdq_pkt *pkt, u8 high_addr_reg_idx, u32 value)
+{
+	struct cmdq_instruction inst = {};
+
+	inst.op = CMDQ_CODE_WRITE_S;
+	inst.dst_t = CMDQ_REG_TYPE;
+	inst.reg_dst = high_addr_reg_idx;
+	inst.value = value;
+
+	return cmdq_pkt_append_command(pkt, inst);
+}
+EXPORT_SYMBOL(cmdq_pkt_write_s_reg_value);
+
 int cmdq_pkt_write_s_mask_value(struct cmdq_pkt *pkt, u8 high_addr_reg_idx,
 				u16 addr_low, u32 value, u32 mask)
 {
diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
index 40e6f3097319..837ad8656adc 100644
--- a/include/linux/soc/mediatek/mtk-cmdq.h
+++ b/include/linux/soc/mediatek/mtk-cmdq.h
@@ -202,6 +202,17 @@ int cmdq_pkt_write_s_value(struct cmdq_pkt *pkt, u8 high_addr_reg_idx,
 int cmdq_pkt_write_s_mask_value(struct cmdq_pkt *pkt, u8 high_addr_reg_idx,
 				u16 addr_low, u32 value, u32 mask);
 
+/**
+ * cmdq_pkt_write_s_reg_value() - append write_s command to the CMDQ packet which
+ *				  write value to a register with low address pa
+ * @pkt:	the CMDQ packet
+ * @reg_idx:	internal register ID which contains high address of pa
+ * @value:	the specified target value
+ *
+ * Return: 0 for success; else the error code is returned
+ */
+int cmdq_pkt_write_s_reg_value(struct cmdq_pkt *pkt, u8 high_addr_reg_idx, u32 value);
+
 /**
  * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet
  * @pkt:	the CMDQ packet
-- 
2.18.0


