Return-Path: <devicetree+bounces-1012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F382C7A4617
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 11:38:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADAF52820B6
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:38:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C282F1C2A7;
	Mon, 18 Sep 2023 09:38:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D04D28FE
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 09:38:27 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20D6D115
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:24 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-530fa34ab80so2067587a12.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695029902; x=1695634702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xmBaiRUeRt+55ioUYPSma19exdAZQxKKsEgvUwNh0oM=;
        b=c3ki/w0S+YubNQMMl6TmdYKr7O5VTC/qC3iV0wB/dbkJd5Z9g2g9pNAsehpoVUqUoo
         zNqbD6ZpWFUJ/x1sZ/5lVDcD2fkztqZIowQsWt7h5cPnzUfV5dzlhm1YWLjWIu3gaqGF
         hoMfPaJe8Q8d57FhbdPD4sTdgme/S611Yz/0g2rlRqwabaKL78kBxfLMN/4bCoRnGgsY
         QcaU+EFkt4EW98cmIBzdChaZd1CjMyUji5myKa8XzdKIMHoZyL9aUhAWZb8ahLhTcvLT
         DJpILqW6TdKRdSCMPCAz7Qxeo3DXcvcqqqLXxNVk3fg+iAotuyO9d6ytZRGZHjYMAbZ8
         +XlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695029902; x=1695634702;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xmBaiRUeRt+55ioUYPSma19exdAZQxKKsEgvUwNh0oM=;
        b=FPDOWc5Ht0EXCt+7SheJu/+cgsbtmu49OmvU5fYIWUGlWoDPYxmCknszq495J+FMRP
         YimeUjgdHHG5YnHxEpKzxhowmCMIF6YanBERXqzlE3zfJPYw/hWkBxsYJfdE4BfZPXfs
         v+JBts9qREwzpG2R4FhOEfbp1ODbSl7VwvFX+EYlp+QkTeMP0tn0ZfjsXCuC+rsdMU8X
         VeWtmQDpWXSgy1qQRk2keuxDgG4mF6psI7hbFXIMz3+u7PsZuN8H9Vb72qNWTBTaFG5y
         iaiJmY4aMirkZ986AXqC6o21aEpAYd1EIMD6bnVMkJvDgiI2SdRsKYSET0vy9xa3R5We
         9Ckw==
X-Gm-Message-State: AOJu0Yzzuv+WGVH1nouL3zxRoNbTt8TmFbHGS1ZhhmZyDnYwGu42rbiH
	AxZMmKOwQJraf1rlxSOera1ooA==
X-Google-Smtp-Source: AGHT+IFalAgWKxViYbzYsG+o021uxkUxBvgs9JUpyWldMNZcLignfgl5INl7y8Bw5zVLkaMOU8PIpg==
X-Received: by 2002:a17:906:dc8b:b0:96f:9cea:a34d with SMTP id cs11-20020a170906dc8b00b0096f9ceaa34dmr15647396ejc.21.1695029902555;
        Mon, 18 Sep 2023 02:38:22 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:8222:872:4a5b:b69c:1318])
        by smtp.gmail.com with ESMTPSA id o10-20020a1709061d4a00b0099293cdbc98sm6251164ejh.145.2023.09.18.02.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 02:38:22 -0700 (PDT)
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
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v8 4/8] soc: mediatek: pm-domains: Create bus protection operation functions
Date: Mon, 18 Sep 2023 11:37:48 +0200
Message-Id: <20230918093751.1188668-5-msp@baylibre.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Separate the register access used for bus protection enable/disable into
their own functions. These will be used later for WAY_EN support.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c | 68 +++++++++++++---------
 1 file changed, 39 insertions(+), 29 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index dbb268e96310..5b694fde7b56 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -118,26 +118,50 @@ static int scpsys_sram_disable(struct scpsys_domain *pd)
 					MTK_POLL_TIMEOUT);
 }
 
+static int scpsys_bus_protect_clear(const struct scpsys_bus_prot_data *bpd,
+				    struct regmap *regmap)
+{
+	u32 sta_mask = bpd->bus_prot_sta_mask;
+	u32 val;
+
+	if (bpd->flags & BUS_PROT_REG_UPDATE)
+		regmap_clear_bits(regmap, bpd->bus_prot_clr, bpd->bus_prot_set_clr_mask);
+	else
+		regmap_write(regmap, bpd->bus_prot_clr, bpd->bus_prot_set_clr_mask);
+
+	if (bpd->flags & BUS_PROT_IGNORE_CLR_ACK)
+		return 0;
+
+	return regmap_read_poll_timeout(regmap, bpd->bus_prot_sta,
+					val, !(val & sta_mask),
+					MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
+static int scpsys_bus_protect_set(const struct scpsys_bus_prot_data *bpd,
+				  struct regmap *regmap)
+{
+	u32 sta_mask = bpd->bus_prot_sta_mask;
+	u32 val;
+
+	if (bpd->flags & BUS_PROT_REG_UPDATE)
+		regmap_set_bits(regmap, bpd->bus_prot_set, bpd->bus_prot_set_clr_mask);
+	else
+		regmap_write(regmap, bpd->bus_prot_set, bpd->bus_prot_set_clr_mask);
+
+	return regmap_read_poll_timeout(regmap, bpd->bus_prot_sta,
+					val, (val & sta_mask) == sta_mask,
+					MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+}
+
 static int _scpsys_bus_protect_enable(const struct scpsys_bus_prot_data *bpd, struct regmap *regmap)
 {
 	int i, ret;
 
 	for (i = 0; i < SPM_MAX_BUS_PROT_DATA; i++) {
-		u32 set_clr_mask = bpd[i].bus_prot_set_clr_mask;
-		u32 sta_mask = bpd[i].bus_prot_sta_mask;
-		u32 val;
-
-		if (!set_clr_mask)
+		if (!bpd[i].bus_prot_set_clr_mask)
 			break;
 
-		if (bpd[i].flags & BUS_PROT_REG_UPDATE)
-			regmap_set_bits(regmap, bpd[i].bus_prot_set, set_clr_mask);
-		else
-			regmap_write(regmap, bpd[i].bus_prot_set, set_clr_mask);
-
-		ret = regmap_read_poll_timeout(regmap, bpd[i].bus_prot_sta,
-					       val, (val & sta_mask) == sta_mask,
-					       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+		ret = scpsys_bus_protect_set(&bpd[i], regmap);
 		if (ret)
 			return ret;
 	}
@@ -162,24 +186,10 @@ static int _scpsys_bus_protect_disable(const struct scpsys_bus_prot_data *bpd,
 	int i, ret;
 
 	for (i = SPM_MAX_BUS_PROT_DATA - 1; i >= 0; i--) {
-		u32 set_clr_mask = bpd[i].bus_prot_set_clr_mask;
-		u32 sta_mask = bpd[i].bus_prot_sta_mask;
-		u32 val;
-
-		if (!set_clr_mask)
-			continue;
-
-		if (bpd[i].flags & BUS_PROT_REG_UPDATE)
-			regmap_clear_bits(regmap, bpd[i].bus_prot_clr, set_clr_mask);
-		else
-			regmap_write(regmap, bpd[i].bus_prot_clr, set_clr_mask);
-
-		if (bpd[i].flags & BUS_PROT_IGNORE_CLR_ACK)
+		if (!bpd[i].bus_prot_set_clr_mask)
 			continue;
 
-		ret = regmap_read_poll_timeout(regmap, bpd[i].bus_prot_sta,
-					       val, !(val & sta_mask),
-					       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
+		ret = scpsys_bus_protect_clear(&bpd[i], regmap);
 		if (ret)
 			return ret;
 	}
-- 
2.40.1


