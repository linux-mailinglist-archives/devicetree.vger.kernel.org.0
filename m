Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF4C12ECE29
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 11:51:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727686AbhAGKuQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 05:50:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725974AbhAGKuP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 05:50:15 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2AC3C0612F9
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 02:49:34 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id be12so3290288plb.4
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 02:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WHbg07GzTampsEN+7TlNCFgYTM4CkUTYWdUop2Smzxo=;
        b=BZnnxMI3ogRKPiN+lqopl3amKlqSam6Xb3EomzxrR88q/T1NYFQqbZpzZ+NVsnnNXq
         FRwVyPWb6E9CGl+fdp1GOWjhF73p5vt64s5858ztkVU9B3bf5xaymGCQox9w+w0xNNaw
         mR2LZwBmrNyaAK0c9qx31VSsoliCO4ZCFu0eA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WHbg07GzTampsEN+7TlNCFgYTM4CkUTYWdUop2Smzxo=;
        b=ZKYFOHtDdTjO5C7KZ2CvnnSsaX3KibSurn7y2O4Gdcb/Lui7qOlfV2KK/09et1/a+a
         g1WMS6JiU49MWt52+DUuBJNJTzAkHxqVN/yVAFtKR3pxOyK34yVLqu2PGFdfPHTwoXh2
         0uoCeZfsGGT9cH0r/IFcQEp2wmDUY3PI0GBM9Rt9nh5ZncpjkI+VKGRDaVE0PpESvP7h
         Gz+wqyy6y08Lds2V8Z9Oh2TtzTMtWUdNjRZ14VVCDPvXWfx0BGy4vIkGzpCV9mQBTnxN
         TWud8s4uMf4eA9miy8wBUK57FZ9GO8XaE4Mn9oZOHpNcPc8aGOHW5kIMvG/FSDXX43Tk
         VUQQ==
X-Gm-Message-State: AOAM531dXjOZ7XJsCk5P/10reztUrJbeqoJX6x8ZCi7r1R2N49hmxom+
        +SkOIghJNabuUJi0kJPuBxeaVA==
X-Google-Smtp-Source: ABdhPJxlgKhXruWAVkyY2B+N24BePzFnlvcti5g7xO9EIngx76rTpHoVz5PmVeJ6zsCrXxKw2APoQQ==
X-Received: by 2002:a17:90a:348f:: with SMTP id p15mr8752738pjb.125.1610016574329;
        Thu, 07 Jan 2021 02:49:34 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id n10sm5381974pfu.176.2021.01.07.02.49.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 02:49:33 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Mark Brown <broonie@kernel.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Weiyi Lu <weiyi.lu@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH 2/3] soc: mediatek: pm-domains: Add domain regulator supply
Date:   Thu,  7 Jan 2021 18:49:15 +0800
Message-Id: <20210107104915.2888408-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
In-Reply-To: <20210107104915.2888408-1-hsinyi@chromium.org>
References: <20210107104915.2888408-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some power domains (eg. mfg) needs to turn on power supply before power
on.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/soc/mediatek/mt8183-pm-domains.h |  1 +
 drivers/soc/mediatek/mtk-pm-domains.c    | 36 +++++++++++++++++++++++-
 drivers/soc/mediatek/mtk-pm-domains.h    |  1 +
 3 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mt8183-pm-domains.h b/drivers/soc/mediatek/mt8183-pm-domains.h
index 8d996c5d2682d..aa5230e6c12f8 100644
--- a/drivers/soc/mediatek/mt8183-pm-domains.h
+++ b/drivers/soc/mediatek/mt8183-pm-domains.h
@@ -38,6 +38,7 @@ static const struct scpsys_domain_data scpsys_domain_data_mt8183[] = {
 		.ctl_offs = 0x0338,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.caps = MTK_SCPD_DOMAIN_SUPPLY,
 	},
 	[MT8183_POWER_DOMAIN_MFG_CORE0] = {
 		.sta_mask = BIT(7),
diff --git a/drivers/soc/mediatek/mtk-pm-domains.c b/drivers/soc/mediatek/mtk-pm-domains.c
index fb70cb3b07b36..ae255aa7b1a97 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.c
+++ b/drivers/soc/mediatek/mtk-pm-domains.c
@@ -13,6 +13,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 #include <linux/soc/mediatek/infracfg.h>
 
 #include "mt8173-pm-domains.h"
@@ -40,6 +41,7 @@ struct scpsys_domain {
 	struct clk_bulk_data *subsys_clks;
 	struct regmap *infracfg;
 	struct regmap *smi;
+	struct regulator *supply;
 };
 
 struct scpsys {
@@ -187,6 +189,16 @@ static int scpsys_bus_protect_disable(struct scpsys_domain *pd)
 	return _scpsys_bus_protect_disable(pd->data->bp_infracfg, pd->infracfg);
 }
 
+static int scpsys_regulator_enable(struct regulator *supply)
+{
+	return supply ? regulator_enable(supply) : 0;
+}
+
+static int scpsys_regulator_disable(struct regulator *supply)
+{
+	return supply ? regulator_disable(supply) : 0;
+}
+
 static int scpsys_power_on(struct generic_pm_domain *genpd)
 {
 	struct scpsys_domain *pd = container_of(genpd, struct scpsys_domain, genpd);
@@ -194,10 +206,14 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	bool tmp;
 	int ret;
 
-	ret = clk_bulk_enable(pd->num_clks, pd->clks);
+	ret = scpsys_regulator_enable(pd->supply);
 	if (ret)
 		return ret;
 
+	ret = clk_bulk_enable(pd->num_clks, pd->clks);
+	if (ret)
+		goto err_reg;
+
 	/* subsys power on */
 	regmap_set_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_BIT);
 	regmap_set_bits(scpsys->base, pd->data->ctl_offs, PWR_ON_2ND_BIT);
@@ -232,6 +248,8 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	clk_bulk_disable(pd->num_subsys_clks, pd->subsys_clks);
 err_pwr_ack:
 	clk_bulk_disable(pd->num_clks, pd->clks);
+err_reg:
+	scpsys_regulator_disable(pd->supply);
 	return ret;
 }
 
@@ -267,6 +285,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 
 	clk_bulk_disable(pd->num_clks, pd->clks);
 
+	scpsys_regulator_disable(pd->supply);
+
 	return 0;
 }
 
@@ -275,6 +295,7 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 {
 	const struct scpsys_domain_data *domain_data;
 	struct scpsys_domain *pd;
+	struct device_node *np = scpsys->dev->of_node;
 	struct property *prop;
 	const char *clk_name;
 	int i, ret, num_clks;
@@ -307,6 +328,19 @@ generic_pm_domain *scpsys_add_one_domain(struct scpsys *scpsys, struct device_no
 	pd->data = domain_data;
 	pd->scpsys = scpsys;
 
+	if (MTK_SCPD_CAPS(pd, MTK_SCPD_DOMAIN_SUPPLY)) {
+		/* Find regulator in current power domain node */
+		scpsys->dev->of_node = node;
+		pd->supply = devm_regulator_get(scpsys->dev, "domain");
+		scpsys->dev->of_node = np;
+		if (IS_ERR(pd->supply)) {
+			dev_err_probe(scpsys->dev, PTR_ERR(pd->supply),
+				      "%pOF: failed to get power supply.\n",
+				      node);
+			return ERR_CAST(pd->supply);
+		}
+	}
+
 	pd->infracfg = syscon_regmap_lookup_by_phandle_optional(node, "mediatek,infracfg");
 	if (IS_ERR(pd->infracfg))
 		return ERR_CAST(pd->infracfg);
diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
index a2f4d8f97e058..b2770b5266dba 100644
--- a/drivers/soc/mediatek/mtk-pm-domains.h
+++ b/drivers/soc/mediatek/mtk-pm-domains.h
@@ -7,6 +7,7 @@
 #define MTK_SCPD_FWAIT_SRAM		BIT(1)
 #define MTK_SCPD_SRAM_ISO		BIT(2)
 #define MTK_SCPD_KEEP_DEFAULT_OFF	BIT(3)
+#define MTK_SCPD_DOMAIN_SUPPLY		BIT(4)
 #define MTK_SCPD_CAPS(_scpd, _x)	((_scpd)->data->caps & (_x))
 
 #define SPM_VDE_PWR_CON			0x0210
-- 
2.29.2.729.g45daf8777d-goog

