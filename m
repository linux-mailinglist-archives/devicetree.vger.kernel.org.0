Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4FB7F851AC
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 19:07:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389149AbfHGRFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 13:05:22 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:35805 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389071AbfHGRFB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 13:05:01 -0400
Received: by mail-pl1-f196.google.com with SMTP id w24so41720167plp.2
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 10:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cGe0ACE/WDCg2MBkSfq82jbCq2P5rdCM7Yms4zYf2rk=;
        b=BYNor5hlKC6p+hAwsJxZRkzFmD6RsKlE9OvxX1jMKFnTs58lZbOwV3NdT8ZoCVmbuf
         ZDnCw9ElBjVOr4VpYCdCIBPrdsLjDSbznOb4HiIvMPTglb5k+Cz7WuDabHJDnekQpTtp
         ZL+7cxbaCUsJ8FmeC5tzQmh7cQCvI3ekUxXCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cGe0ACE/WDCg2MBkSfq82jbCq2P5rdCM7Yms4zYf2rk=;
        b=RnI9no9HABe8V32seymmGTcQ0Zr5iKB0Ylj7wYwL772VsWhPKNbyi0Tefn/LcAwedy
         YkoHIphPGZLdQxO2AxX5YqoVaT6/+s4ILuddcZjhKm1s4xV2b16UYpj0L8lPJAbWdrDj
         G8c2sRIwpI7YLdLqe8xdAWqF91A3L7r/1//MYwRpWjCinYGbhzfH2PHoyeMCzAqYhYQj
         vKY+kJYmID1EQ2BJia0nS5hUXH3DRtJiE1ZolRo3qwvZKkKcw0AD4XyM1sd5qEKwDiTh
         Y5g/jUBo+r6t3wA2B+2HhJNuv84HVjC3w+100KLh830e0Zkeh93eaNBvC0qCBqqnIoON
         kpjA==
X-Gm-Message-State: APjAAAVZlrtwzDo1x2gWDwFoef+YtawL8YkZxZkCrhgpn6z+KfKtpWIQ
        0fZGXD8slcfpOuhmwG+657a2WQ==
X-Google-Smtp-Source: APXvYqzmFtav56XChZp4wJy3vta54nhV3xz7ikDg+85UPsu+7OQtQrPgIxNP1ZvTfdnZC3ubU4czkQ==
X-Received: by 2002:a63:5765:: with SMTP id h37mr8372019pgm.183.1565197500317;
        Wed, 07 Aug 2019 10:05:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id j15sm123649555pfn.150.2019.08.07.10.04.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 10:04:59 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v5 2/4] net: phy: Add support for generic LED configuration through the DT
Date:   Wed,  7 Aug 2019 10:04:47 -0700
Message-Id: <20190807170449.205378-3-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190807170449.205378-1-mka@chromium.org>
References: <20190807170449.205378-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For PHYs with a device tree node look for LED trigger configuration
using the generic binding, if it exists try to apply it via the new
driver hook .config_led.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v5:
- add callback to configure a LED to the PHY driver, instead of
  having the driver retrieve the DT data
- use new trigger names
- added support for trigger 'none'
- release DT nodes after use
- renamed 'PHY_LED_LINK_*' to 'PHY_LED_TRIGGER_LINK_*'
- added anonymous struct to struct phy_led_config to track
  'activity' in a separate flag. this could be changed to 'flags' if
  needed/desired.
- updated commit message (previous subject was 'net: phy: Add
  function to retrieve LED configuration from the DT')

Changes in v4:
- patch added to the series
---
 drivers/net/phy/phy_device.c | 72 ++++++++++++++++++++++++++++++++++++
 include/linux/phy.h          | 22 +++++++++++
 2 files changed, 94 insertions(+)

diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 6b5cb87f3866..6f85fdf72af0 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -29,6 +29,7 @@
 #include <linux/phy_led_triggers.h>
 #include <linux/mdio.h>
 #include <linux/io.h>
+#include <linux/of.h>
 #include <linux/uaccess.h>
 
 MODULE_DESCRIPTION("PHY library");
@@ -1064,6 +1065,75 @@ static int phy_poll_reset(struct phy_device *phydev)
 	return 0;
 }
 
+static void of_phy_config_leds(struct phy_device *phydev)
+{
+	struct device_node *np, *child;
+	struct phy_led_config cfg;
+	const char *trigger;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_OF_MDIO) || !phydev->drv->config_led)
+		return;
+
+	np = of_find_node_by_name(phydev->mdio.dev.of_node, "leds");
+	if (!np)
+		return;
+
+	for_each_child_of_node(np, child) {
+		u32 led;
+
+		if (of_property_read_u32(child, "reg", &led))
+			goto skip_config;
+
+		ret = of_property_read_string(child, "linux,default-trigger",
+					      &trigger);
+		if (ret)
+			trigger = "none";
+
+		memset(&cfg, 0, sizeof(cfg));
+
+		if (!strcmp(trigger, "none")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_NONE;
+		} else if (!strcmp(trigger, "phy-link")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK;
+		} else if (!strcmp(trigger, "phy-link-10m")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_10M;
+		} else if (!strcmp(trigger, "phy-link-100m")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_100M;
+		} else if (!strcmp(trigger, "phy-link-1g")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_1G;
+		} else if (!strcmp(trigger, "phy-link-10g")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_10G;
+		} else if (!strcmp(trigger, "phy-link-activity")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK;
+			cfg.trigger.activity = true;
+		} else if (!strcmp(trigger, "phy-link-10m-activity")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_10M;
+			cfg.trigger.activity = true;
+		} else if (!strcmp(trigger, "phy-link-100m-activity")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_100M;
+			cfg.trigger.activity = true;
+		} else if (!strcmp(trigger, "phy-link-1g-activity")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_1G;
+			cfg.trigger.activity = true;
+		} else if (!strcmp(trigger, "phy-link-10g-activity")) {
+			cfg.trigger.t = PHY_LED_TRIGGER_LINK_10G;
+			cfg.trigger.activity = true;
+		} else {
+			phydev_warn(phydev, "trigger '%s' for LED%d is invalid\n",
+				    trigger, led);
+			goto skip_config;
+		}
+
+		phydev->drv->config_led(phydev, led, &cfg);
+
+	skip_config:
+		of_node_put(child);
+	}
+
+	of_node_put(np);
+}
+
 int phy_init_hw(struct phy_device *phydev)
 {
 	int ret = 0;
@@ -1087,6 +1157,8 @@ int phy_init_hw(struct phy_device *phydev)
 	if (phydev->drv->config_init)
 		ret = phydev->drv->config_init(phydev);
 
+	of_phy_config_leds(phydev);
+
 	return ret;
 }
 EXPORT_SYMBOL(phy_init_hw);
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 462b90b73f93..3a07390fc5e9 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -325,6 +325,24 @@ struct phy_c45_device_ids {
 	u32 device_ids[8];
 };
 
+/* Triggers for PHY LEDs */
+enum phy_led_trigger {
+	PHY_LED_TRIGGER_NONE,
+	PHY_LED_TRIGGER_LINK,
+	PHY_LED_TRIGGER_LINK_10M,
+	PHY_LED_TRIGGER_LINK_100M,
+	PHY_LED_TRIGGER_LINK_1G,
+	PHY_LED_TRIGGER_LINK_10G,
+};
+
+/* Configuration of a single PHY LED */
+struct phy_led_config {
+	struct {
+		enum phy_led_trigger t;
+		bool activity;
+	} trigger;
+};
+
 /* phy_device: An instance of a PHY
  *
  * drv: Pointer to the driver for this PHY instance
@@ -626,6 +644,10 @@ struct phy_driver {
 			    struct ethtool_tunable *tuna,
 			    const void *data);
 	int (*set_loopback)(struct phy_device *dev, bool enable);
+
+	/* Configure a PHY LED */
+	int (*config_led)(struct phy_device *dev, int led,
+			  struct phy_led_config *cfg);
 };
 #define to_phy_driver(d) container_of(to_mdio_common_driver(d),		\
 				      struct phy_driver, mdiodrv)
-- 
2.22.0.770.g0f2c4a37fd-goog

