Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 337C3716E1D
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 21:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233495AbjE3Tvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 15:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233453AbjE3Tvr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 15:51:47 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D5DEF9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 12:51:42 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-3f6e68cc738so36205715e9.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 12:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685476301; x=1688068301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXaXWtEb9NQ32jQeQXNkER7DjeishD1qQHgyYh3nXXg=;
        b=YiUHM/Jyr8ZTe7ZAVCIrE5slszh2IrszT+zDJ0zcCvae/eNYCh9hR2S4o9ffh8nraU
         x0H+qUzNH6QC6Z3KIJ4EuZzmQb71an6PDqYx2w3bUCqcRudFFWzIHbZTd8NLJGOwAHTG
         ykA3X5gAIev3xL1wEfCXxyMl+zkmOoioScXkuXdMJ2ZjMX0A2Qzm7yF40lO7ETgURv8e
         jQXMoiN6y8/hPUN4OGaGdgYlXPumCKtv24Eay4y6Kf901HJijxNOkHgNCTBkQulkH4lI
         PZHAaNxvRc+OPUE4xv6D2tDTWbG/h+4h/G/sl3cFJWdshl2+PuxJpxfy52wsQnjXxcsx
         UXJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685476301; x=1688068301;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IXaXWtEb9NQ32jQeQXNkER7DjeishD1qQHgyYh3nXXg=;
        b=EONNAhpt4h35D36af1poh++S47zrI0k0Joj8q0gNT7dAf/ZdDg4RijmzZMR5mZ3Q+G
         pvCORVhwYFou3XGWJHo0twtG/peGxu2ZIVWTi7X43SVfTfto2zYBg2ecriYXiD10MIHv
         s9gBbGC+tVbtMmCtQAV9L8PG8uaqgflO1Gle5zqRh5lJk9SjHT3KyeZr2RvEEeIXplZQ
         bPnzG1jUoJFcAYIv5nqFwxhqIlWGf+Yng4DdxGXVHofKAKRlDG84nsLtJb5ste8WuqNC
         Ug7W7zioOL26K6Dc2f4XYJrsgISiOlbw5jVcdwU/Y5dpBz9VIcW1QHoLaKPRqdk8tBG1
         bacg==
X-Gm-Message-State: AC+VfDwSkFV8YGJ6mUMG7+qS9dITNcfNQmcj1zm1Xn5+jxEwZETyhxAA
        17zKwH+/4s1Qz3Bxil0qoUqADg==
X-Google-Smtp-Source: ACHHUZ7OgEAtfzmZdSFhI9cSjPZ3RXkY0sKf/z9v4syG03VNDnl+9iKmJanfhpb6mXIcPNrUVvGXJw==
X-Received: by 2002:a05:6000:181a:b0:30a:ab38:3104 with SMTP id m26-20020a056000181a00b0030aab383104mr2049069wrh.34.1685476300912;
        Tue, 30 May 2023 12:51:40 -0700 (PDT)
Received: from ph18.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id n11-20020adfe34b000000b003078cd719ffsm4271545wrj.95.2023.05.30.12.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 12:51:40 -0700 (PDT)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        wenst@chromium.org, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com, nfraprado@collabora.com,
        abailon@baylibre.com, amergnat@baylibre.com, khilman@baylibre.com
Subject: [PATCH v4 5/5] thermal/drivers/mediatek/lvts_thermal: Update calibration data documentation
Date:   Tue, 30 May 2023 21:51:32 +0200
Message-ID: <20230530195132.2286163-6-bero@baylibre.com>
X-Mailer: git-send-email 2.41.0.rc2
In-Reply-To: <20230530195132.2286163-1-bero@baylibre.com>
References: <20230530195132.2286163-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Balsam CHIHI <bchihi@baylibre.com>

Update LVTS calibration data documentation for mt8192 and mt8195.

Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
Reviewed-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
[bero@baylibre.com: Fix issues pointed out by Nícolas F. R. A. Prado <nfraprado@collabora.com>]
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/thermal/mediatek/lvts_thermal.c | 31 +++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/mediatek/lvts_thermal.c
index d5e5214784ece..9185d02003633 100644
--- a/drivers/thermal/mediatek/lvts_thermal.c
+++ b/drivers/thermal/mediatek/lvts_thermal.c
@@ -531,7 +531,8 @@ static int lvts_sensor_init(struct device *dev, struct lvts_ctrl *lvts_ctrl,
  * The efuse blob values follows the sensor enumeration per thermal
  * controller. The decoding of the stream is as follow:
  *
- * stream index map for MCU Domain :
+ * MT8195 :
+ * Stream index map for MCU Domain mt8195 :
  *
  * <-----mcu-tc#0-----> <-----sensor#0-----> <-----sensor#1----->
  *  0x01 | 0x02 | 0x03 | 0x04 | 0x05 | 0x06 | 0x07 | 0x08 | 0x09
@@ -542,7 +543,7 @@ static int lvts_sensor_init(struct device *dev, struct lvts_ctrl *lvts_ctrl,
  * <-----mcu-tc#2-----> <-----sensor#4-----> <-----sensor#5-----> <-----sensor#6-----> <-----sensor#7----->
  *  0x13 | 0x14 | 0x15 | 0x16 | 0x17 | 0x18 | 0x19 | 0x1A | 0x1B | 0x1C | 0x1D | 0x1E | 0x1F | 0x20 | 0x21
  *
- * stream index map for AP Domain :
+ * Stream index map for AP Domain mt8195 :
  *
  * <-----ap--tc#0-----> <-----sensor#0-----> <-----sensor#1----->
  *  0x22 | 0x23 | 0x24 | 0x25 | 0x26 | 0x27 | 0x28 | 0x29 | 0x2A
@@ -556,6 +557,32 @@ static int lvts_sensor_init(struct device *dev, struct lvts_ctrl *lvts_ctrl,
  * <-----ap--tc#3-----> <-----sensor#7-----> <-----sensor#8----->
  *  0x40 | 0x41 | 0x42 | 0x43 | 0x44 | 0x45 | 0x46 | 0x47 | 0x48
  *
+ * MT8192 :
+ * Stream index map for MCU Domain mt8192 :
+ *
+ * <-----mcu-tc#0-----> <-----sensor#0----->        <-----sensor#1----->
+ *  0x01 | 0x02 | 0x03 | 0x04 | 0x05 | 0x06 | 0x07 | 0x08 | 0x09 | 0x0A | 0x0B
+ *
+ * <-----sensor#2----->        <-----sensor#3----->
+ *  0x0C | 0x0D | 0x0E | 0x0F | 0x10 | 0x11 | 0x12 | 0x13
+ *
+ * <-----sensor#4----->        <-----sensor#5----->        <-----sensor#6----->        <-----sensor#7----->
+ *  0x14 | 0x15 | 0x16 | 0x17 | 0x18 | 0x19 | 0x1A | 0x1B | 0x1C | 0x1D | 0x1E | 0x1F | 0x20 | 0x21 | 0x22 | 0x23
+ *
+ * Stream index map for AP Domain mt8192 :
+ *
+ * <-----sensor#0----->        <-----sensor#1----->
+ *  0x24 | 0x25 | 0x26 | 0x27 | 0x28 | 0x29 | 0x2A | 0x2B
+ *
+ * <-----sensor#2----->        <-----sensor#3----->
+ *  0x2C | 0x2D | 0x2E | 0x2F | 0x30 | 0x31 | 0x32 | 0x33
+ *
+ * <-----sensor#4----->        <-----sensor#5----->
+ *  0x34 | 0x35 | 0x36 | 0x37 | 0x38 | 0x39 | 0x3A | 0x3B
+ *
+ * <-----sensor#6----->        <-----sensor#7----->        <-----sensor#8----->
+ *  0x3C | 0x3D | 0x3E | 0x3F | 0x40 | 0x41 | 0x42 | 0x43 | 0x44 | 0x45 | 0x46 | 0x47
+ *
  * The data description gives the offset of the calibration data in
  * this bytes stream for each sensor.
  */
-- 
2.41.0.rc2

