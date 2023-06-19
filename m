Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81D8F734EBE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 10:55:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230437AbjFSIzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 04:55:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231410AbjFSIzD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 04:55:03 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB5F310CA
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 01:54:19 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-970028cfb6cso538328366b.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 01:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687164858; x=1689756858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SPf+y2ctEZoMI72ckvhMmROgBE22+ZnhLuRaMNUscz8=;
        b=F64R/K5b0EadtnOiOYb2nUWFwjqy/DD2rMbote0vH67+ouDjC826VzJoxWZcGwsdnk
         9muDCiKsoJbPer8L/kkf6N1BQZBkdBk3bvQimpZdfqUlsv6ajjnN+TkqeljkNVWhUYGQ
         OH0hhgNV1k04q8QJSk+XNGtE/YfK+AJXPrF0hUzL2CEZhYG4TYVhmq2daTJ1ywmtOy9Q
         nXLISjjAN9T4tkczbiXGulzCc+o+csIYSf24jd889J81rxdu5kGnPd7ST0lQvaHZAVJZ
         YpRa2A4UbS1YUmOWirRUwtskqEB65MjorIVlgWT2pu6JKSN5SEMGBPssR7doF3aXLkxC
         83iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687164858; x=1689756858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SPf+y2ctEZoMI72ckvhMmROgBE22+ZnhLuRaMNUscz8=;
        b=iFhjrZqh5ym2gf1lZ7b8gxxBvTpIXzz3WpUmfH5XV0ZtTuna1onAP2drjLnd07XUZf
         qgRnJi7EXrRQjtV+VOAnG3wJUI8BbztcOLPCYE1nuU44FCSzLIdSbf1lrpTvpoQ8bo8D
         aGeRAVhg48Ey0A0zMXmptX/iU8k33Vd8PSaPmfYDACOh+9boYnoHkOKynJPLMgvppi1r
         8KE5cpX6DkI0z6RQ48VxXxkt6YwxnlvGMJsHK/343PzNB9R2FWVkAqr+1FfnNmsFjU1u
         LKYYssp3VleQlp4SshPyE+MkIwd6MJzh9Dfey3J7qvWNsZiF+9/cvZ+Z2HXlZYGH5p73
         PY9g==
X-Gm-Message-State: AC+VfDwjYuaykO0O+M894ASu6FGxTdbW6NRcVFRxEHaLYFaEn7SVZPm3
        oArdszDmgOx+U0xdVcqG9QYrrQ==
X-Google-Smtp-Source: ACHHUZ4xquicSAHJqPCvbaZI6t/3cxct9sf1uRZJnZNSgS5IGO+5UpgoU9/0zLRTgndvL4XX4DXcrg==
X-Received: by 2002:a17:907:2d94:b0:96f:f046:9a92 with SMTP id gt20-20020a1709072d9400b0096ff0469a92mr9526606ejc.37.1687164858251;
        Mon, 19 Jun 2023 01:54:18 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4090:a245:802c:bc2b:8db8:9210:41eb])
        by smtp.gmail.com with ESMTPSA id h27-20020a17090619db00b00987a6e01e94sm2994339ejd.214.2023.06.19.01.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 01:54:17 -0700 (PDT)
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
Subject: [PATCH v5 6/8] soc: mediatek: Add support for WAY_EN operations
Date:   Mon, 19 Jun 2023 10:53:42 +0200
Message-Id: <20230619085344.2885311-7-msp@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230619085344.2885311-1-msp@baylibre.com>
References: <20230619085344.2885311-1-msp@baylibre.com>
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
 drivers/soc/mediatek/mtk-pm-domains.h |  7 +++--
 2 files changed, 39 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-pm-domains.c b/drivers/soc/mediatek/mtk-pm-domains.c
index 3cdf62c0b6bd..4659f0a0aa08 100644
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
 
+	pd->infracfg_nao = syscon_regmap_lookup_by_phandle(node, "mediatek,infracfg-nao");
+	if (IS_ERR(pd->infracfg_nao)) {
+		if (MTK_SCPD_CAPS(pd, MTK_SCPD_HAS_INFRA_NAO))
+			return ERR_CAST(pd->infracfg_nao);
+
+		pd->infracfg_nao = NULL;
+	}
+
 	num_clks = of_clk_get_parent_count(node);
 	if (num_clks > 0) {
 		/* Calculate number of subsys_clks */
diff --git a/drivers/soc/mediatek/mtk-pm-domains.h b/drivers/soc/mediatek/mtk-pm-domains.h
index 356788263db2..562d4e92ce16 100644
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
-	BUS_PROT_COMPONENT_INFRA = BIT(3),
-	BUS_PROT_COMPONENT_SMI = BIT(4),
+	BUS_PROT_INVERTED = BIT(3),
+	BUS_PROT_COMPONENT_INFRA = BIT(4),
+	BUS_PROT_COMPONENT_SMI = BIT(5),
+	BUS_PROT_STA_COMPONENT_INFRA_NAO = BIT(6),
 };
 
 #define _BUS_PROT(_set_clr_mask, _set, _clr, _sta_mask, _sta, _flags) {	\
-- 
2.40.1

