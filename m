Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0524775260B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 17:04:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbjGMPEe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 11:04:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232593AbjGMPEc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 11:04:32 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25977134
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:04:31 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51e48e1f6d1so995223a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 08:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689260669; x=1691852669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4fJVgs69a0vak6J/NLAFz8I6bUO3AICjOQJQyaRhIOA=;
        b=CoK5DBYMxx9cCxe33RN4hRbqkUEMD0yC6Pc0uLgsdZuTw1VXUUB5lxO3chLNvtVmVq
         Hpw6yODKgm6jKPPCPrYzIDtiLNXz/envMg2iSjME6Xm4XRcXEWUh1SgK7jlkVrMIIbBO
         feITJGl3v/0Li2W1lgrldmqlOBZkDg2Yqcms1MZTHYArzKzHpuj5FfM5a1x2h8V5GLRL
         Lt3LlWsJrkmDKqwiaDrTf4mt3R0mNa+M2OH3hpugdp36/NB/RtTeOILAwA3PWNhmTZW+
         JBrNnKDtPARGAvoBcJ06+m1K3pQtyMWXprQYqcbECOkUnty6vrMzwYVNd0+MHJCG7v/B
         0w6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689260669; x=1691852669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4fJVgs69a0vak6J/NLAFz8I6bUO3AICjOQJQyaRhIOA=;
        b=G4tlduvIcN29EIxD26HvXgkoC0coF+bt/pPNGCzBrbFkPUxTuaeB3RdIt5BO83wx83
         xoKd7JcMjbAlzvg1lJ0g5Cmw62gOTv1aG1yf1zw6VnMYIb+zzU/qAyGpbySglHcth8g3
         4RkA2y14BWq4a/kjVc/aXqYPTwbfGR6BEuhfFxQZNBlkRLL/ZwcthAtZJAVQRR61uud6
         Tw6gQ7xNVJ2NaQuuGlN7VKUkdgqlY2bxSXjqebW7yiyNKnFM9O6/csax2fQjnpAyQdEj
         XN90b55bH6T7MzwygryRO4e4Qxvi0tYmUSygnTMfLkcXCkv3mQCNBLfYQDJatVrDipDj
         Sctg==
X-Gm-Message-State: ABy/qLajGfV7KJb+gqjf1czeQUMvDCo1NFJQupUowrtchcTispiqtnxL
        v5rzhn2FZrGORCQawD0mx1De4A==
X-Google-Smtp-Source: APBJJlGy7pU19GPjmRJYuuD/BI/lC3fShxvgBct3H/dPctzmYJ7lNNz40uy1kRHXTGPapz5tlxH2Rg==
X-Received: by 2002:a17:907:7656:b0:993:c267:3612 with SMTP id kj22-20020a170907765600b00993c2673612mr1508568ejc.12.1689260669469;
        Thu, 13 Jul 2023 08:04:29 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a247:82fa:1d6d:d215:e7c4:dd5e])
        by smtp.gmail.com with ESMTPSA id cd26-20020a170906b35a00b009929c39d5c4sm4102939ejb.36.2023.07.13.08.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 08:04:29 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Markus Schneider-Pargmann <msp@baylibre.com>,
        Alexandre Mergnat <amergnat@baylibre.com>
Subject: [PATCH v7 3/8] soc: mediatek: pm-domains: Split bus_prot_mask
Date:   Thu, 13 Jul 2023 17:04:09 +0200
Message-Id: <20230713150414.891893-4-msp@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230713150414.891893-1-msp@baylibre.com>
References: <20230713150414.891893-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

bus_prot_mask is used for all operations, set clear and acknowledge. In
preparation of m8365 power domain support split this one mask into two,
one mask for set and clear, another one for acknowledge.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/soc/mediatek/mtk-pm-domains.c | 24 ++++++++++++++----------
 drivers/soc/mediatek/mtk-pm-domains.h | 14 ++++++++------
 2 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-pm-domains.c b/drivers/soc/mediatek/mtk-pm-domains.c
index aa9ab413479e..a2c8f5313124 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.c
+++ b/drivers/soc/mediatek/mtk-pm-domains.c
@@ -123,18 +123,20 @@ static int _scpsys_bus_protect_enable(const struct scpsys_bus_prot_data *bpd, st
 	int i, ret;
 
 	for (i = 0; i < SPM_MAX_BUS_PROT_DATA; i++) {
-		u32 val, mask = bpd[i].bus_prot_mask;
+		u32 set_clr_mask = bpd[i].bus_prot_set_clr_mask;
+		u32 sta_mask = bpd[i].bus_prot_sta_mask;
+		u32 val;
 
-		if (!mask)
+		if (!set_clr_mask)
 			break;
 
 		if (bpd[i].flags & BUS_PROT_REG_UPDATE)
-			regmap_set_bits(regmap, bpd[i].bus_prot_set, mask);
+			regmap_set_bits(regmap, bpd[i].bus_prot_set, set_clr_mask);
 		else
-			regmap_write(regmap, bpd[i].bus_prot_set, mask);
+			regmap_write(regmap, bpd[i].bus_prot_set, set_clr_mask);
 
 		ret = regmap_read_poll_timeout(regmap, bpd[i].bus_prot_sta,
-					       val, (val & mask) == mask,
+					       val, (val & sta_mask) == sta_mask,
 					       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
 		if (ret)
 			return ret;
@@ -160,21 +162,23 @@ static int _scpsys_bus_protect_disable(const struct scpsys_bus_prot_data *bpd,
 	int i, ret;
 
 	for (i = SPM_MAX_BUS_PROT_DATA - 1; i >= 0; i--) {
-		u32 val, mask = bpd[i].bus_prot_mask;
+		u32 set_clr_mask = bpd[i].bus_prot_set_clr_mask;
+		u32 sta_mask = bpd[i].bus_prot_sta_mask;
+		u32 val;
 
-		if (!mask)
+		if (!set_clr_mask)
 			continue;
 
 		if (bpd[i].flags & BUS_PROT_REG_UPDATE)
-			regmap_clear_bits(regmap, bpd[i].bus_prot_clr, mask);
+			regmap_clear_bits(regmap, bpd[i].bus_prot_clr, set_clr_mask);
 		else
-			regmap_write(regmap, bpd[i].bus_prot_clr, mask);
+			regmap_write(regmap, bpd[i].bus_prot_clr, set_clr_mask);
 
 		if (bpd[i].flags & BUS_PROT_IGNORE_CLR_ACK)
 			continue;
 
 		ret = regmap_read_poll_timeout(regmap, bpd[i].bus_prot_sta,
-					       val, !(val & mask),
+					       val, !(val & sta_mask),
 					       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
 		if (ret)
 			return ret;
diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
index d8c0c299dd45..4c3ab72a907b 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.h
+++ b/drivers/soc/mediatek/mtk-pm-domains.h
@@ -47,22 +47,23 @@ enum scpsys_bus_prot_flags {
 	BUS_PROT_IGNORE_CLR_ACK = BIT(2),
 };
 
-#define _BUS_PROT(_mask, _set, _clr, _sta, _flags) {		\
-		.bus_prot_mask = (_mask),			\
+#define _BUS_PROT(_set_clr_mask, _set, _clr, _sta_mask, _sta, _flags) {	\
+		.bus_prot_set_clr_mask = (_set_clr_mask),	\
 		.bus_prot_set = _set,				\
 		.bus_prot_clr = _clr,				\
+		.bus_prot_sta_mask = (_sta_mask),		\
 		.bus_prot_sta = _sta,				\
 		.flags = _flags					\
 	}
 
 #define BUS_PROT_WR(_mask, _set, _clr, _sta)			\
-		_BUS_PROT(_mask, _set, _clr, _sta, 0)
+		_BUS_PROT(_mask, _set, _clr, _mask, _sta, 0)
 
 #define BUS_PROT_WR_IGN(_mask, _set, _clr, _sta)		\
-		_BUS_PROT(_mask, _set, _clr, _sta, BUS_PROT_IGNORE_CLR_ACK)
+		_BUS_PROT(_mask, _set, _clr, _mask, _sta, BUS_PROT_IGNORE_CLR_ACK)
 
 #define BUS_PROT_UPDATE(_mask, _set, _clr, _sta)		\
-		_BUS_PROT(_mask, _set, _clr, _sta, BUS_PROT_REG_UPDATE)
+		_BUS_PROT(_mask, _set, _clr, _mask, _sta, BUS_PROT_REG_UPDATE)
 
 #define BUS_PROT_UPDATE_TOPAXI(_mask)				\
 		BUS_PROT_UPDATE(_mask,				\
@@ -71,9 +72,10 @@ enum scpsys_bus_prot_flags {
 				INFRA_TOPAXI_PROTECTSTA1)
 
 struct scpsys_bus_prot_data {
-	u32 bus_prot_mask;
+	u32 bus_prot_set_clr_mask;
 	u32 bus_prot_set;
 	u32 bus_prot_clr;
+	u32 bus_prot_sta_mask;
 	u32 bus_prot_sta;
 	u8 flags;
 };
-- 
2.40.1

