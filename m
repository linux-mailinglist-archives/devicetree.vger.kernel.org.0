Return-Path: <devicetree+bounces-1011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E3E7A4616
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 11:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A29B31C203A3
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 09:38:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9561C2A3;
	Mon, 18 Sep 2023 09:38:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB3B1C28D
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 09:38:25 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6BB4122
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:21 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9adc75f6f09so421655766b.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 02:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695029900; x=1695634700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntIS/xJA3nmS8C+qHhhmXutBf4D7O4ovO2luXjJAhFI=;
        b=qWngDVTQZc1Rx2elTHHNXPxz89AfvfLDF33NxG+GxYCbk+S/9J5fB3qf2an/iUtsrZ
         Ww1KU1sixh1uYR7h8nassEuUjfbAoXpJEGkekBQ3axhAwFOlok/izYSRPSYtcVwynodp
         qCMWQ9b2nre1SMG3wz1Jbd5SCKQslESkdxKZvgrpUju4TwMKMgNmoJZ+QL4o1BPBTeth
         52G07n9gKy/f0b37SJYmnyenJc8mV+pA5H1cbiT7Vay1lFqWj1hqsZVh85dSg2/NSoMr
         mEkcw37hJqQjKy/EElVYnwmTxEnQGxKtghle6OZoVsNf/hr2ge9yKM8vJhYHK+7k1gd9
         YMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695029900; x=1695634700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ntIS/xJA3nmS8C+qHhhmXutBf4D7O4ovO2luXjJAhFI=;
        b=KP/DPWLeyvhxLjqd/3gwIBfSa21sIfE3ulgr8Vj1puUuvR6c7V1IkXieqg/Jp4dAEk
         GycxQs63uZAoFzxbFYa/gonQyJeLJXoi8xuQHNT9DqrMPp4wj3S6+zgbFINVC6y6ZWMu
         VN/Fd0OEAzuvrNGQhrOhochUrP1Of5n7k97nQ11BYClBL6xsbg9TQ5TdPkzv4k+miKK0
         bk4pgozC45xoe0aDU3joRUH5jTQ7yS7l2H23AcgMf8RKDp8aQ4uu+8MItB8zbBl/70h5
         PCjM6uNrn5MsqoN3/h9otLb5AWechoZ8CuXadtDEzkOHbDwsd0eyH1KRSb+ecCec17t6
         j2IA==
X-Gm-Message-State: AOJu0YxAWelUm6ttqqiefotM2A1JF02A/bRpKnwX0ea3Cig1DysXZtqE
	aFskHjb6SuDp/FBlS2YcAIac3w==
X-Google-Smtp-Source: AGHT+IE+bQwSHx8xiX+tCm83783tfR+MfKxNjh0NiXnB9zvWHYKlTNvUyJdeI4mN4nlSyQOaB6DwFQ==
X-Received: by 2002:a17:907:a053:b0:9a1:f96c:4baf with SMTP id gz19-20020a170907a05300b009a1f96c4bafmr7437464ejc.5.1695029900372;
        Mon, 18 Sep 2023 02:38:20 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:8222:872:4a5b:b69c:1318])
        by smtp.gmail.com with ESMTPSA id o10-20020a1709061d4a00b0099293cdbc98sm6251164ejh.145.2023.09.18.02.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 02:38:19 -0700 (PDT)
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
Subject: [PATCH v8 2/8] soc: mediatek: pm-domains: Move bools to a flags field
Date: Mon, 18 Sep 2023 11:37:46 +0200
Message-Id: <20230918093751.1188668-3-msp@baylibre.com>
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

To simplify the macros, use a flags field for simple bools. This is in
preparation for more flags.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/pmdomain/mediatek/mtk-pm-domains.c |  6 +++---
 drivers/pmdomain/mediatek/mtk-pm-domains.h | 19 +++++++++++--------
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.c b/drivers/pmdomain/mediatek/mtk-pm-domains.c
index ee962804b830..da675a33bdf5 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.c
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.c
@@ -128,7 +128,7 @@ static int _scpsys_bus_protect_enable(const struct scpsys_bus_prot_data *bpd, st
 		if (!mask)
 			break;
 
-		if (bpd[i].bus_prot_reg_update)
+		if (bpd[i].flags & BUS_PROT_REG_UPDATE)
 			regmap_set_bits(regmap, bpd[i].bus_prot_set, mask);
 		else
 			regmap_write(regmap, bpd[i].bus_prot_set, mask);
@@ -165,12 +165,12 @@ static int _scpsys_bus_protect_disable(const struct scpsys_bus_prot_data *bpd,
 		if (!mask)
 			continue;
 
-		if (bpd[i].bus_prot_reg_update)
+		if (bpd[i].flags & BUS_PROT_REG_UPDATE)
 			regmap_clear_bits(regmap, bpd[i].bus_prot_clr, mask);
 		else
 			regmap_write(regmap, bpd[i].bus_prot_clr, mask);
 
-		if (bpd[i].ignore_clr_ack)
+		if (bpd[i].flags & BUS_PROT_IGNORE_CLR_ACK)
 			continue;
 
 		ret = regmap_read_poll_timeout(regmap, bpd[i].bus_prot_sta,
diff --git a/drivers/pmdomain/mediatek/mtk-pm-domains.h b/drivers/pmdomain/mediatek/mtk-pm-domains.h
index 5ec53ee073c4..d8c0c299dd45 100644
--- a/drivers/pmdomain/mediatek/mtk-pm-domains.h
+++ b/drivers/pmdomain/mediatek/mtk-pm-domains.h
@@ -42,23 +42,27 @@
 
 #define SPM_MAX_BUS_PROT_DATA		6
 
-#define _BUS_PROT(_mask, _set, _clr, _sta, _update, _ignore) {	\
+enum scpsys_bus_prot_flags {
+	BUS_PROT_REG_UPDATE = BIT(1),
+	BUS_PROT_IGNORE_CLR_ACK = BIT(2),
+};
+
+#define _BUS_PROT(_mask, _set, _clr, _sta, _flags) {		\
 		.bus_prot_mask = (_mask),			\
 		.bus_prot_set = _set,				\
 		.bus_prot_clr = _clr,				\
 		.bus_prot_sta = _sta,				\
-		.bus_prot_reg_update = _update,			\
-		.ignore_clr_ack = _ignore,			\
+		.flags = _flags					\
 	}
 
 #define BUS_PROT_WR(_mask, _set, _clr, _sta)			\
-		_BUS_PROT(_mask, _set, _clr, _sta, false, false)
+		_BUS_PROT(_mask, _set, _clr, _sta, 0)
 
 #define BUS_PROT_WR_IGN(_mask, _set, _clr, _sta)		\
-		_BUS_PROT(_mask, _set, _clr, _sta, false, true)
+		_BUS_PROT(_mask, _set, _clr, _sta, BUS_PROT_IGNORE_CLR_ACK)
 
 #define BUS_PROT_UPDATE(_mask, _set, _clr, _sta)		\
-		_BUS_PROT(_mask, _set, _clr, _sta, true, false)
+		_BUS_PROT(_mask, _set, _clr, _sta, BUS_PROT_REG_UPDATE)
 
 #define BUS_PROT_UPDATE_TOPAXI(_mask)				\
 		BUS_PROT_UPDATE(_mask,				\
@@ -71,8 +75,7 @@ struct scpsys_bus_prot_data {
 	u32 bus_prot_set;
 	u32 bus_prot_clr;
 	u32 bus_prot_sta;
-	bool bus_prot_reg_update;
-	bool ignore_clr_ack;
+	u8 flags;
 };
 
 /**
-- 
2.40.1


