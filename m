Return-Path: <devicetree+bounces-1014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ACB7A462B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 11:39:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 218822822C3
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31F4E1C281;
	Mon, 18 Sep 2023 09:38:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1491C684
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 09:38:32 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 684DC121
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:26 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9ada6b0649fso569618066b.1
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695029905; x=1695634705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LLilmH6KNML3mqOxoMEotqYRiNUYNeaDDiuGijBala4=;
        b=RS08wUizzhyHQxvhTVbIzkui+ZUwpvU4uHrQFLLFsvcV6h0a0gr86I+gmL2UjrSRYb
         LqKd6SXZBk8gfY6Y7auX52fDUS/dj1iIEb6VnwfxDW665QHdgmOdTSb718mQ9k3DF/2R
         XmcKR5B9S8wYzLkxDme6HI/+Hb0tfk0bETjyjog4a6x+9ilaMMvDefj62CxWxT+zMRey
         V4W0LzjgVYi8/fCc/juc33NzTu/3YB/nnMryW117M2SCs7lar1WnHrBEJwKpfHIcPyis
         I/KI0xL9FLPv2zBgI/ddYoQG89ocDo3bBO/VeVUcaevAI2morn26Cw7qcWIoallWbHmb
         U/gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695029905; x=1695634705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LLilmH6KNML3mqOxoMEotqYRiNUYNeaDDiuGijBala4=;
        b=V26b8LbvhHrA1461AqdOQiz8n0YrBYcYSShGB07OGxo31Kp3j8paaPLosqM/9nLoSz
         LOz/RhlSa/+BSiF2rUlYTkLVJdvf6eKRmHDCTqMbAQDwzUeti6cPudkJ0GTUEBPOkyC6
         JsEoPf/+f5wdOnvR8ixapN9Ro/WTVoQFD1PVVHS/mJ2JvW+fBuq0IjNNA4g4fnZ+jm7q
         c1n3pT1d1EMFIWvv8HkFAhAZoivYwFIzf2UGJDqexogFq+rC8IXY9fepsaoqgsHFtiZ1
         rSNhBPhYU358oPaZjfabsZInvYbkfZTbgT2lX3Wai7iUEEfqfg7uT2HicZggsl9unZe5
         cBPw==
X-Gm-Message-State: AOJu0Yzq6wQLG4s3xaB9eXnYgGpZQtFu4ahSe3aGVICT0lpQNBsU3nvr
	owY0B9csc4VOwbYQosKjfTRcPw==
X-Google-Smtp-Source: AGHT+IHo7uRZxnUYKgzvfn7oJLB+FQSSEMySz37yIq63ZWajaSCSobNXrakxfVE1UnmFwrktsIyVrA==
X-Received: by 2002:a17:907:789a:b0:9ad:e66a:413c with SMTP id ku26-20020a170907789a00b009ade66a413cmr5729797ejc.48.1695029904885;
        Mon, 18 Sep 2023 02:38:24 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:8222:872:4a5b:b69c:1318])
        by smtp.gmail.com with ESMTPSA id o10-20020a1709061d4a00b0099293cdbc98sm6251164ejh.145.2023.09.18.02.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 02:38:24 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Chun-Jie Chen <chun-jie.chen@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Tinghan Shen <tinghan.shen@mediatek.com>,
	Fabien Parent <parent.f@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Alexandre Bailon <abailon@baylibre.com>,
	Fabien Parent <fparent@baylibre.com>,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v8 6/8] soc: mediatek: Add support for WAY_EN operations
Date: Mon, 18 Sep 2023 11:37:50 +0200
Message-Id: <20230918093751.1188668-7-msp@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230918093751.1188668-1-msp@baylibre.com>
References: <20230918093751.1188668-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 39 +++++++++++++++++++---
 drivers/pmdomain/mediatek/mtk-pm-domains.h |  3 ++
 2 files changed, 37 insertions(+), 5 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index c1154de98830..4bf3a375b749 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
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
 	u32 sta_mask = bpd->bus_prot_sta_mask;
+	u32 expected_ack;
 	u32 val;
 
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
 	u32 sta_mask = bpd->bus_prot_sta_mask;
 	u32 val;
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
diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.h b/drivers/pmdomain/mediatek/mtk-pm-domains.h
index 209f68dcaeac..17c033217704 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.h
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.h
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


