Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F366126144
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2019 12:52:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726834AbfLSLwN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Dec 2019 06:52:13 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:53894 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726828AbfLSLwD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Dec 2019 06:52:03 -0500
Received: by mail-wm1-f66.google.com with SMTP id m24so5126967wmc.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2019 03:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hbXoP0vp+PirYvwWUgyHBe1Esfy/aJnIgbBAojigrF0=;
        b=LypOjrsbEXY8+p1H8QsI/d/4m54NfYisDoA50iSu2jHPNY17JWdPP4URvvQYB/snb/
         8N2iUUNJE3Kzz+1mV9d8kMdxrtf0ubHPujowM1L7/OjXuL9N5zjfbD3O2qicLjryXY7L
         clvFUz7v7TbdUsvHTpd6eepalzO5ha+3NlfBp7UHBYEpEVpR8K1A/IUHWWaWBEICXf9x
         F+4E5i8E7EWg0mxZHSiP1qHyiy8XbH1hcauTdW9yrxRbCWWLFbO+765obtH5l4NC0N/p
         UzTve8Kgp6Uifmbvg8qgI1o/LoC6uEKR8ph40LqX5cXQ7CTL/Q5PpQLGnqPxPifw4hJR
         BMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hbXoP0vp+PirYvwWUgyHBe1Esfy/aJnIgbBAojigrF0=;
        b=pjf5Zzh8gU6Gpud42Pv5KM2UTaP0UiGFph6vSd+SIkbGWyLZoIaLQ6557l28ucfAzb
         55wWZH3CoCsEyCqzPgp5XceWvLEbaZsoyBzKmmSvX9tbpOeVoCVykEsSAeyEfTPZJCBa
         TIEtb30JVsBmO+4YwlCOyA2wQBMTY7J/PaLjyzn2oPvbmPa707s2/DvmbrOCWYyE9CKD
         AsJdiCisRvnwiQFJ3cQVzmQZA8iIoLvfFBz8CT0msJsivx7vZ/qVJ/ReT7BGMxw+4Xwm
         kcy00msbXaAnShVB4FuGQ97UM4NXlCxNBSSIE95WLcdmfwMFmT11mo37YiKR3P10hqJW
         PVFA==
X-Gm-Message-State: APjAAAXVU/OAu1yOs4xciEB6DnoEoKvDw00j+hfKp65lDy3pKPrhlIK9
        yU6zDH9aiZfxK8cyvJ6xiy23Ug==
X-Google-Smtp-Source: APXvYqxZ/oEM+nqoc8/gYEZ994ql7c784S/DiPIFRUFGg4yIpfxl7xtlNfGudIoaveyihp9K+F/28g==
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr10187082wmg.66.1576756321641;
        Thu, 19 Dec 2019 03:52:01 -0800 (PST)
Received: from localhost.localdomain (i16-les01-ntr-213-44-229-207.sfr.lns.abo.bbox.fr. [213.44.229.207])
        by smtp.googlemail.com with ESMTPSA id k16sm6489660wru.0.2019.12.19.03.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2019 03:52:01 -0800 (PST)
From:   Khouloud Touil <ktouil@baylibre.com>
To:     bgolaszewski@baylibre.com, robh+dt@kernel.org,
        mark.rutland@arm.com, srinivas.kandagatla@linaro.org,
        baylibre-upstreaming@groups.io
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-i2c@vger.kernel.org, linus.walleij@linaro.org,
        Khouloud Touil <ktouil@baylibre.com>
Subject: [PATCH v3 4/4] eeprom: at24: remove the write-protect pin support
Date:   Thu, 19 Dec 2019 12:51:41 +0100
Message-Id: <20191219115141.24653-5-ktouil@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219115141.24653-1-ktouil@baylibre.com>
References: <20191219115141.24653-1-ktouil@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

NVMEM framework is an interface for the at24 EEPROMs as well as for
other drivers, instead of passing the wp-gpios over the different
drivers each time, it would be better to pass it over the NVMEM
subsystem once and for all.

Removing the support for the write-protect pin after adding it to the
NVMEM subsystem.

Signed-off-by: Khouloud Touil <ktouil@baylibre.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/misc/eeprom/at24.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
index 0681d5fdd538..8fce49a6d9cd 100644
--- a/drivers/misc/eeprom/at24.c
+++ b/drivers/misc/eeprom/at24.c
@@ -22,7 +22,6 @@
 #include <linux/nvmem-provider.h>
 #include <linux/regmap.h>
 #include <linux/pm_runtime.h>
-#include <linux/gpio/consumer.h>
 
 /* Address pointer is 16 bit. */
 #define AT24_FLAG_ADDR16	BIT(7)
@@ -89,8 +88,6 @@ struct at24_data {
 
 	struct nvmem_device *nvmem;
 
-	struct gpio_desc *wp_gpio;
-
 	/*
 	 * Some chips tie up multiple I2C addresses; dummy devices reserve
 	 * them for us, and we'll use them with SMBus calls.
@@ -457,12 +454,10 @@ static int at24_write(void *priv, unsigned int off, void *val, size_t count)
 	 * from this host, but not from other I2C masters.
 	 */
 	mutex_lock(&at24->lock);
-	gpiod_set_value_cansleep(at24->wp_gpio, 0);
 
 	while (count) {
 		ret = at24_regmap_write(at24, buf, off, count);
 		if (ret < 0) {
-			gpiod_set_value_cansleep(at24->wp_gpio, 1);
 			mutex_unlock(&at24->lock);
 			pm_runtime_put(dev);
 			return ret;
@@ -472,7 +467,6 @@ static int at24_write(void *priv, unsigned int off, void *val, size_t count)
 		count -= ret;
 	}
 
-	gpiod_set_value_cansleep(at24->wp_gpio, 1);
 	mutex_unlock(&at24->lock);
 
 	pm_runtime_put(dev);
@@ -662,9 +656,6 @@ static int at24_probe(struct i2c_client *client)
 	at24->client[0].client = client;
 	at24->client[0].regmap = regmap;
 
-	at24->wp_gpio = devm_gpiod_get_optional(dev, "wp", GPIOD_OUT_HIGH);
-	if (IS_ERR(at24->wp_gpio))
-		return PTR_ERR(at24->wp_gpio);
 
 	writable = !(flags & AT24_FLAG_READONLY);
 	if (writable) {
-- 
2.17.1

