Return-Path: <devicetree+bounces-204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D1E7A036A
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 142E9281C18
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63034219EA;
	Thu, 14 Sep 2023 12:10:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5772320B2B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:10:49 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 464F81BF4;
	Thu, 14 Sep 2023 05:10:48 -0700 (PDT)
X-UUID: b87d0b6652f711ee8051498923ad61e6-20230914
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=7J7GD2rJpRodzTyvQUOEl10XrSH/1mr5sIgAgvizokI=;
	b=A8dIJSHdep1QNZ4DLWgAmwwf2aqU9Uu8LLvwF3pGUXmyDoi+hVlsGuQm8wm5JAIa8kS/T21I2pcRBdTEsZ8gwD9HUmlp8KfNFILY7QO2C+EsJjO19PbPJ3+iwBC81riETGuJrlYgGETgjR0bDuBTgsCK4VyQKgh+4c2On3Pqogo=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:6834c334-9567-44dd-8960-a09722f98ce1,IP:0,U
	RL:0,TC:0,Content:30,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:30
X-CID-META: VersionHash:0ad78a4,CLOUDID:9871d6be-14cc-44ca-b657-2d2783296e72,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:4,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: b87d0b6652f711ee8051498923ad61e6-20230914
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw02.mediatek.com
	(envelope-from <chun-jen.tseng@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 123323167; Thu, 14 Sep 2023 20:10:40 +0800
Received: from mtkmbs13n1.mediatek.inc (172.21.101.193) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 14 Sep 2023 20:10:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by
 mtkmbs13n1.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 14 Sep 2023 20:10:38 +0800
From: Mark Tseng <chun-jen.tseng@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	<chun-jen.tseng@mediatek.com>
Subject: [PATCH v2 1/1] arm64: dts: mediatek: mt8186: Increase CCI frequency
Date: Thu, 14 Sep 2023 20:10:35 +0800
Message-ID: <20230914121035.17320-2-chun-jen.tseng@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20230914121035.17320-1-chun-jen.tseng@mediatek.com>
References: <20230914121035.17320-1-chun-jen.tseng@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--2.167600-8.000000
X-TMASE-MatchedRID: Zel3CUePV2j/fXSbEtZs/DvfsoCuAcP+An4P7FuKVFCyD8qnkE3ipL51
	zIfS792k09NQNrxIpFZ6v97VXslRaa+/EguYor8cFEUknJ/kEl7dB/CxWTRRu+rAZ8KTspSz4uA
	5FNdU//N7OSBMCCNnVs1bUp6r4MDAWQS/Gs8AJC6r5oK9Wx6kkn6xK/W/SHj8ZAupowockPot4O
	eZu1Ug0Gm8SaS5j+RbF0aD5ljt43pMcHZD6gqu7wxMjfifIXfowkvVoA11Twp+3BndfXUhXQ==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--2.167600-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP:
	EF85E8C8A12336A2F2F1AA4B7BB0B5F525AEB258EDE195636DD3920A884264262000:8

The original CCI OPP table's lowest frequency 500 MHz is too low and causes
system stalls. Increase the frequency range to 1.05 GHz ~ 1.4 GHz and adjust
the OPPs accordingly.

Fixes: 32dfbc03fc26 ("arm64: dts: mediatek: mt8186: Add CCI node and CCI OPP table")

Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 90 ++++++++++++------------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index f04ae70c470a..b98832d032eb 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -39,79 +39,79 @@
 		compatible = "operating-points-v2";
 		opp-shared;
 
-		cci_opp_0: opp-500000000 {
-			opp-hz = /bits/ 64 <500000000>;
-			opp-microvolt = <600000>;
+		cci_opp_0: opp-1050000000 {
+			opp-hz = /bits/ 64 <1050000000>;
+			opp-microvolt = <843750>;
 		};
 
-		cci_opp_1: opp-560000000 {
-			opp-hz = /bits/ 64 <560000000>;
-			opp-microvolt = <675000>;
+		cci_opp_1: opp-1073000000 {
+			opp-hz = /bits/ 64 <1073000000>;
+			opp-microvolt = <850000>;
 		};
 
-		cci_opp_2: opp-612000000 {
-			opp-hz = /bits/ 64 <612000000>;
-			opp-microvolt = <693750>;
+		cci_opp_2: opp-1096000000 {
+			opp-hz = /bits/ 64 <1096000000>;
+			opp-microvolt = <856250>;
 		};
 
-		cci_opp_3: opp-682000000 {
-			opp-hz = /bits/ 64 <682000000>;
-			opp-microvolt = <718750>;
+		cci_opp_3: opp-1120000000 {
+			opp-hz = /bits/ 64 <1120000000>;
+			opp-microvolt = <862500>;
 		};
 
-		cci_opp_4: opp-752000000 {
-			opp-hz = /bits/ 64 <752000000>;
-			opp-microvolt = <743750>;
+		cci_opp_4: opp-1143000000 {
+			opp-hz = /bits/ 64 <1143000000>;
+			opp-microvolt = <881250>;
 		};
 
-		cci_opp_5: opp-822000000 {
-			opp-hz = /bits/ 64 <822000000>;
-			opp-microvolt = <768750>;
+		cci_opp_5: opp-1166000000 {
+			opp-hz = /bits/ 64 <1166000000>;
+			opp-microvolt = <893750>;
 		};
 
-		cci_opp_6: opp-875000000 {
-			opp-hz = /bits/ 64 <875000000>;
-			opp-microvolt = <781250>;
+		cci_opp_6: opp-1190000000 {
+			opp-hz = /bits/ 64 <1190000000>;
+			opp-microvolt = <906250>;
 		};
 
-		cci_opp_7: opp-927000000 {
-			opp-hz = /bits/ 64 <927000000>;
-			opp-microvolt = <800000>;
+		cci_opp_7: opp-1213000000 {
+			opp-hz = /bits/ 64 <1213000000>;
+			opp-microvolt = <918750>;
 		};
 
-		cci_opp_8: opp-980000000 {
-			opp-hz = /bits/ 64 <980000000>;
-			opp-microvolt = <818750>;
+		cci_opp_8: opp-1236000000 {
+			opp-hz = /bits/ 64 <1236000000>;
+			opp-microvolt = <937500>;
 		};
 
-		cci_opp_9: opp-1050000000 {
-			opp-hz = /bits/ 64 <1050000000>;
-			opp-microvolt = <843750>;
+		cci_opp_9: opp-1260000000 {
+			opp-hz = /bits/ 64 <1260000000>;
+			opp-microvolt = <950000>;
 		};
 
-		cci_opp_10: opp-1120000000 {
-			opp-hz = /bits/ 64 <1120000000>;
-			opp-microvolt = <862500>;
+		cci_opp_10: opp-1283000000 {
+			opp-hz = /bits/ 64 <1283000000>;
+			opp-microvolt = <962500>;
 		};
 
-		cci_opp_11: opp-1155000000 {
-			opp-hz = /bits/ 64 <1155000000>;
-			opp-microvolt = <887500>;
+		cci_opp_11: opp-1306000000 {
+			opp-hz = /bits/ 64 <1306000000>;
+			opp-microvolt = <975000>;
 		};
 
-		cci_opp_12: opp-1190000000 {
-			opp-hz = /bits/ 64 <1190000000>;
-			opp-microvolt = <906250>;
+		cci_opp_12: opp-1330000000 {
+			opp-hz = /bits/ 64 <1330000000>;
+			opp-microvolt = <993750>;
 		};
 
-		cci_opp_13: opp-1260000000 {
-			opp-hz = /bits/ 64 <1260000000>;
-			opp-microvolt = <950000>;
+		cci_opp_13: opp-1353000000 {
+			opp-hz = /bits/ 64 <1353000000>;
+			opp-microvolt = <1006250>;
 		};
 
-		cci_opp_14: opp-1330000000 {
-			opp-hz = /bits/ 64 <1330000000>;
-			opp-microvolt = <993750>;
+		cci_opp_14: opp-1376000000 {
+			opp-hz = /bits/ 64 <1376000000>;
+			opp-microvolt = <1018750>;
 		};
 
 		cci_opp_15: opp-1400000000 {
-- 
2.18.0


