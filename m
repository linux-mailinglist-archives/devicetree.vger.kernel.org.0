Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4E4C73FC92
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 15:11:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231133AbjF0NLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 09:11:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231219AbjF0NLK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 09:11:10 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D8FA2948
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 06:10:59 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f9ede60140so42847275e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 06:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687871457; x=1690463457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CDUpmAc7s7t9VM2bVvGN41Z4YEmAu6R/dggwvun/fs0=;
        b=POd9//4eOSPohOetyyVuGnsuzLUOyuF6XNYVru0HFc8whZzXUIeZsYOoCDwC9ecIRv
         OrPei6MUWxqmPEE6KQCu5PZciSgLR+Y384MaxpQo/h4Obij8Ov4r9VMvxtGRyI15sOP6
         gSmxy+H4dVH+1A7W8yiqdVnHUinkk2IA0Zw4PPjuO0VCisNLP3TuoOmgAirwEQtGwm7G
         SkDonuuT6tR9dQoJ24YPv5jpsU8Nf3qNRUe+TKiI8r/LfZa9nVYvwp3CJ0k5m+jSfAn6
         UQ/RKxU+L7wOi27o31bEcskGQsnPprbn9eueC0/gsgjb8KuUM4jLWPeIWJ7QE5RUuTcv
         RX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687871457; x=1690463457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CDUpmAc7s7t9VM2bVvGN41Z4YEmAu6R/dggwvun/fs0=;
        b=dCMRWSz6qFfY09Oi+ej5szbjl3Oe7ndLDJr3wEVXcx2ZZe03/hPeFtXpF9Rp/wy3/E
         wAoNe+eaRon6THX8irkx/iET+8u38e0q6gpQELRA76vLt8K8GBahHTgQj5Kmc9sltP5S
         6ievGB4RDDIZ4USP5n6cbFtT/Vbn/m4tZ97Qv3ihTJWWxjGyFXnim88n/OYCiEFXAskL
         ceNEFIMu6TswnzBHkMEGQnZl7+ViAU0z34CCc8foj+A7rmdba7j+MYc7DLmJUIpIfhlk
         JD5+DXs+rvJgSd/08jD8ffvjjfD+18jTbIbDu32WC12+bRJLbgcfzh9DIsc8/y/AfL9x
         d4Og==
X-Gm-Message-State: AC+VfDwmUfekz4sfc7cpCNvO8dcAeGbwa0CzIapJ+ExaEOUbHkjcSF02
        KkkE6sFyftdCrCRMGev0eVGrUA==
X-Google-Smtp-Source: ACHHUZ64v7uar2VsHfn1sZ4FNmAhvf9eGcGArzACYGT/iyiIvgBcLs+LhR6pWATv9S1xnihCHoZPig==
X-Received: by 2002:a7b:ce13:0:b0:3fb:aae6:31a7 with SMTP id m19-20020a7bce13000000b003fbaae631a7mr207213wmc.14.1687871457481;
        Tue, 27 Jun 2023 06:10:57 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a247:82fa:b762:4f68:e1ed:5041])
        by smtp.gmail.com with ESMTPSA id z26-20020a1c4c1a000000b003f91e32b1ebsm1403196wmf.17.2023.06.27.06.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 06:10:57 -0700 (PDT)
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
        Alexandre Bailon <abailon@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v6 6/8] soc: mediatek: Add support for WAY_EN operations
Date:   Tue, 27 Jun 2023 15:10:38 +0200
Message-Id: <20230627131040.3418538-7-msp@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230627131040.3418538-1-msp@baylibre.com>
References: <20230627131040.3418538-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alexandre Bailon <abailon@baylibre.com>

This updates the power domain to support WAY_EN operations. WAY_EN
operations on mt8365 are using a different component to check for the
acknowledgment, namely the infracfg-nao component. Also to enable a way
it the bit needs to be cleared while disabling a way needs a bit to be
set. To support these two operations two flags are added,
BUS_PROT_INVERTED and BUS_PROT_STA_COMPONENT_INFRA_NAO. Additionally
another regmap is created if the INFRA_NAO capability is set.

This operation is required by the mt8365 for the MM power domain.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 drivers/soc/mediatek/mtk-pm-domains.c | 39 +++++++++++++++++++++++----
 drivers/soc/mediatek/mtk-pm-domains.h |  3 +++
 2 files changed, 37 insertions(+), 5 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-pm-domains.c b/drivers/soc/mediatek/mtk-pm-domains.c
index 3cdf62c0b6bd..608b5eab8146 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.c
+++ b/drivers/soc/mediatek/mtk-pm-domains.c
@@ -44,6 +44,7 @@ struct scpsys_domain {
 	struct clk_bulk_data *clks;
 	int num_subsys_clks;
 	struct clk_bulk_data *subsys_clks;
+	struct regmap *infracfg_nao;
 	struct regmap *infracfg;
 	struct regmap *smi;
 	struct regulator *supply;
@@ -127,13 +128,26 @@ static struct regmap *scpsys_bus_protect_get_regmap(struct scpsys_domain *pd,
 		return pd->infracfg;
 }
 
+static struct regmap *scpsys_bus_protect_get_sta_regmap(struct scpsys_domain *pd,
+							const struct scpsys_bus_prot_data *bpd)
+{
+	if (bpd->flags & BUS_PROT_STA_COMPONENT_INFRA_NAO)
+		return pd->infracfg_nao;
+	else
+		return scpsys_bus_protect_get_regmap(pd, bpd);
+}
+
 static int scpsys_bus_protect_clear(struct scpsys_domain *pd,
 				    const struct scpsys_bus_prot_data *bpd)
 {
+	struct regmap *sta_regmap = scpsys_bus_protect_get_sta_regmap(pd, bpd);
 	struct regmap *regmap = scpsys_bus_protect_get_regmap(pd, bpd);
+	u32 expected_ack;
 	u32 val;
 	u32 sta_mask = bpd->bus_prot_sta_mask;
 
+	expected_ack = (bpd->flags & BUS_PROT_STA_COMPONENT_INFRA_NAO ? sta_mask : 0);
+
 	if (bpd->flags & BUS_PROT_REG_UPDATE)
 		regmap_clear_bits(regmap, bpd->bus_prot_clr, bpd->bus_prot_set_clr_mask);
 	else
@@ -142,14 +156,15 @@ static int scpsys_bus_protect_clear(struct scpsys_domain *pd,
 	if (bpd->flags & BUS_PROT_IGNORE_CLR_ACK)
 		return 0;
 
-	return regmap_read_poll_timeout(regmap, bpd->bus_prot_sta,
-					val, !(val & sta_mask),
+	return regmap_read_poll_timeout(sta_regmap, bpd->bus_prot_sta,
+					val, (val & sta_mask) == expected_ack,
 					MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
 }
 
 static int scpsys_bus_protect_set(struct scpsys_domain *pd,
 				  const struct scpsys_bus_prot_data *bpd)
 {
+	struct regmap *sta_regmap = scpsys_bus_protect_get_sta_regmap(pd, bpd);
 	struct regmap *regmap = scpsys_bus_protect_get_regmap(pd, bpd);
 	u32 val;
 	u32 sta_mask = bpd->bus_prot_sta_mask;
@@ -159,7 +174,7 @@ static int scpsys_bus_protect_set(struct scpsys_domain *pd,
 	else
 		regmap_write(regmap, bpd->bus_prot_set, bpd->bus_prot_set_clr_mask);
 
-	return regmap_read_poll_timeout(regmap, bpd->bus_prot_sta,
+	return regmap_read_poll_timeout(sta_regmap, bpd->bus_prot_sta,
 					val, (val & sta_mask) == sta_mask,
 					MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
 }
@@ -173,7 +188,10 @@ static int scpsys_bus_protect_enable(struct scpsys_domain *pd)
 		if (!bpd->bus_prot_set_clr_mask)
 			break;
 
-		ret = scpsys_bus_protect_set(pd, bpd);
+		if (bpd->flags & BUS_PROT_INVERTED)
+			ret = scpsys_bus_protect_clear(pd, bpd);
+		else
+			ret = scpsys_bus_protect_set(pd, bpd);
 		if (ret)
 			return ret;
 	}
@@ -190,7 +208,10 @@ static int scpsys_bus_protect_disable(struct scpsys_domain *pd)
 		if (!bpd->bus_prot_set_clr_mask)
 			continue;
 
-		ret = scpsys_bus_protect_clear(pd, bpd);
+		if (bpd->flags & BUS_PROT_INVERTED)
+			ret = scpsys_bus_protect_set(pd, bpd);
+		else
+			ret = scpsys_bus_protect_clear(pd, bpd);
 		if (ret)
 			return ret;
 	}
@@ -377,6 +398,14 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 			return ERR_CAST(pd->smi);
 	}
 
+	if (MTK_SCPD_CAPS(pd, MTK_SCPD_HAS_INFRA_NAO)) {
+		pd->infracfg_nao = syscon_regmap_lookup_by_phandle(node, "mediatek,infracfg-nao");
+		if (IS_ERR(pd->infracfg_nao))
+			return ERR_CAST(pd->infracfg_nao);
+	} else {
+		pd->infracfg_nao = NULL;
+	}
+
 	num_clks = of_clk_get_parent_count(node);
 	if (num_clks > 0) {
 		/* Calculate number of subsys_clks */
diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
index 209f68dcaeac..17c033217704 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.h
+++ b/drivers/soc/mediatek/mtk-pm-domains.h
@@ -11,6 +11,7 @@
 /* can't set MTK_SCPD_KEEP_DEFAULT_OFF at the same time */
 #define MTK_SCPD_ALWAYS_ON		BIT(5)
 #define MTK_SCPD_EXT_BUCK_ISO		BIT(6)
+#define MTK_SCPD_HAS_INFRA_NAO		BIT(7)
 #define MTK_SCPD_CAPS(_scpd, _x)	((_scpd)->data->caps & (_x))
 
 #define SPM_VDE_PWR_CON			0x0210
@@ -45,8 +46,10 @@
 enum scpsys_bus_prot_flags {
 	BUS_PROT_REG_UPDATE = BIT(1),
 	BUS_PROT_IGNORE_CLR_ACK = BIT(2),
+	BUS_PROT_INVERTED = BIT(3),
 	BUS_PROT_COMPONENT_INFRA = BIT(4),
 	BUS_PROT_COMPONENT_SMI = BIT(5),
+	BUS_PROT_STA_COMPONENT_INFRA_NAO = BIT(6),
 };
 
 #define _BUS_PROT(_set_clr_mask, _set, _clr, _sta_mask, _sta, _flags) {	\
-- 
2.40.1

