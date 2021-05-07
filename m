Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 901A33765E7
	for <lists+devicetree@lfdr.de>; Fri,  7 May 2021 15:15:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbhEGNQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 May 2021 09:16:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237152AbhEGNPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 May 2021 09:15:24 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D4C5C061342
        for <devicetree@vger.kernel.org>; Fri,  7 May 2021 06:14:23 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id t4so5115274plc.6
        for <devicetree@vger.kernel.org>; Fri, 07 May 2021 06:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xcouiPP4ZWr6sE0GiZdxnLUxfCWsAQ8aBA7BAFbwZSg=;
        b=Bn7vnWvwErgkHww/wyQaRKbnP9HyfiwnkzeUkAsUBO0BgofkV3NljJIagFWPurDaho
         YOgo+zkazaGGORdA2xpfpMGYBWtNss8jXkpPQf801I83KdaJkDXqOa8Na8gPZY/8+62T
         w2M9LP5s2KYkB90H9MdCsCEPDNiPtvh/h8Fmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xcouiPP4ZWr6sE0GiZdxnLUxfCWsAQ8aBA7BAFbwZSg=;
        b=I8acIt2oBuU2x6MFhHgj7j6rCQ0bQ/nTpPmaOIo1GtSLSNaaLAbu7P8Kch/TaYGf5/
         bpnLb7CMPKFSSBJqE7EMkB1JN3+Tx/36seWEWzbnXYxnyQ75h21QXmXuRe2OsE+S0Utw
         N/iTgrtKldxiTuHDs1JGpxgpd+nrV+OCT0AtqNxRVpsAsc23teqlpB9VG/nZ/JeappiO
         q9+OGEGcq+Q8yNmnGZHEAFNKQ3od+ZGkJ88SMlnkyMB7jJSSYuegbPFRdIc61bAMQpbq
         GjJWntKZZu0h4zOAEqbOZTkYMlBCy78U5zHU0x42LSQeHpu8qv0p9fBHfl1bSkf0o4kw
         qESg==
X-Gm-Message-State: AOAM533mmKL6rMZp80kR/QF3DzVzlLj0umxVd0kTcaLD/f98BN/xkc5f
        FY0Sn8Yy0FWUbHkqKw+rIo+F/A==
X-Google-Smtp-Source: ABdhPJzNumxAR1eE6lJcWpdeibTL2dL9mK96HWGhUZ0Oi+h7BgBrA3QkEyBkkzCtGm7At7VQeu0w8g==
X-Received: by 2002:a17:902:7205:b029:ed:6fc0:bbd4 with SMTP id ba5-20020a1709027205b02900ed6fc0bbd4mr10509724plb.4.1620393262574;
        Fri, 07 May 2021 06:14:22 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:711f:8553:a124:a19])
        by smtp.gmail.com with ESMTPSA id z29sm4656539pga.52.2021.05.07.06.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 06:14:22 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Wolfram Sang <wsa@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     linux-i2c@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v21 4/5] misc: eeprom: at24: check suspend status before disable regulator
Date:   Fri,  7 May 2021 21:14:05 +0800
Message-Id: <20210507131406.2224177-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210507131406.2224177-1-hsinyi@chromium.org>
References: <20210507131406.2224177-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

cd5676db0574 ("misc: eeprom: at24: support pm_runtime control") disables
regulator in runtime suspend. If runtime suspend is called before
regulator disable, it will results in regulator unbalanced disabling.

Fixes: cd5676db0574 ("misc: eeprom: at24: support pm_runtime control")
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/misc/eeprom/at24.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
index 926408b41270..7a6f01ace78a 100644
--- a/drivers/misc/eeprom/at24.c
+++ b/drivers/misc/eeprom/at24.c
@@ -763,7 +763,8 @@ static int at24_probe(struct i2c_client *client)
 	at24->nvmem = devm_nvmem_register(dev, &nvmem_config);
 	if (IS_ERR(at24->nvmem)) {
 		pm_runtime_disable(dev);
-		regulator_disable(at24->vcc_reg);
+		if (!pm_runtime_status_suspended(dev))
+			regulator_disable(at24->vcc_reg);
 		return PTR_ERR(at24->nvmem);
 	}
 
@@ -774,7 +775,8 @@ static int at24_probe(struct i2c_client *client)
 	err = at24_read(at24, 0, &test_byte, 1);
 	if (err) {
 		pm_runtime_disable(dev);
-		regulator_disable(at24->vcc_reg);
+		if (!pm_runtime_status_suspended(dev))
+			regulator_disable(at24->vcc_reg);
 		return -ENODEV;
 	}
 
-- 
2.31.1.607.g51e8a6a459-goog

