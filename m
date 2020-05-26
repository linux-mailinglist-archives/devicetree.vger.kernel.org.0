Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAFF31C9D63
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 23:35:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727097AbgEGVfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 17:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727104AbgEGVfe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 May 2020 17:35:34 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59909C05BD0F
        for <devicetree@vger.kernel.org>; Thu,  7 May 2020 14:35:33 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id q124so3067311pgq.13
        for <devicetree@vger.kernel.org>; Thu, 07 May 2020 14:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N1E8hpQtZ5Dwx/KP93WpgOlFW3tR/zc7YU1QsvmgG9E=;
        b=UxYcP2WvfAqPASGNjeeemSarAPyqIB5ndoLfcsfFgS9gQOwJrFk2aKOh1KzGZYYy82
         MVqQM2Z9Eu6nEAMRz38aA8GtbyhtKb1LBugXREv71ZH7Kuhn4AiB/nQodsQk699Pd4iK
         LBd1QBUUbblSZzVCQcLBA0Dui7ESeYRg5Gc9Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N1E8hpQtZ5Dwx/KP93WpgOlFW3tR/zc7YU1QsvmgG9E=;
        b=H/MdQccHRjwNvdOHL26/YmnkYkW+Os5m1YxWKI6VEUBK11zMXRrpM0di2Hyb5RWbPg
         2xdK1ERxuG70b/2XaZFs5tpga4s6QWkGhcUVj2bTW+Q8hQkGI7Ves1Gciaj9mL5CJaIi
         CQEwTz6dHQ++Gl4HRaiRC0xzc2lbD3f8hjtaClYZqE0JLJ0pIMg35I7l7OWuQVl0M/iG
         h3QelsY+HHA2VuRKRh7k5AE/XXD9NnpQoBua2gpOyHFXTjsElGaY6EV2l1mkFf6lWfSS
         Nxe+3Yqe0IQ94axzpe7eiGHCrOqhQfoevgFufX/vKv9MAccAqkMb5uy6vNt0rQ4RrHVZ
         E4Uw==
X-Gm-Message-State: AGi0PuZuSk6D7s+gSpwy848G0i3nDSHuJp82N/iBZni0w555eRfLYHGm
        VM28xrvn/b8PY7YL1IRvqbiPtg==
X-Google-Smtp-Source: APiQypJf8281mnDUYU9yJA5Uh+czWYF/8KtOZ4222MJHsTw/dKf4hUC4S7EBQIFd2vuunMvdXj/GFA==
X-Received: by 2002:a63:f960:: with SMTP id q32mr12548727pgk.357.1588887330910;
        Thu, 07 May 2020 14:35:30 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id i10sm5884860pfa.166.2020.05.07.14.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 14:35:30 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        narmstrong@baylibre.com, a.hajda@samsung.com,
        Laurent.pinchart@ideasonboard.com, spanda@codeaurora.org
Cc:     jonas@kwiboo.se, jeffrey.l.hugo@gmail.com,
        linux-gpio@vger.kernel.org, bjorn.andersson@linaro.org,
        swboyd@chromium.org, jernej.skrabec@siol.net,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, robdclark@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/6] drm/panel-simple: Support hpd-gpios for delaying prepare()
Date:   Thu,  7 May 2020 14:34:57 -0700
Message-Id: <20200507143354.v5.3.I53fed5b501a31e7a7fa13268ebcdd6b77bd0cadd@changeid>
X-Mailer: git-send-email 2.26.2.645.ge9eca65c58-goog
In-Reply-To: <20200507213500.241695-1-dianders@chromium.org>
References: <20200507213500.241695-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

People use panel-simple when they have panels that are builtin to
their device.  In these cases the HPD (Hot Plug Detect) signal isn't
really used for hotplugging devices but instead is used for power
sequencing.  Panel timing diagrams (especially for eDP panels) usually
have the HPD signal in them and it acts as an indicator that the panel
is ready for us to talk to it.

Sometimes the HPD signal is hooked up to a normal GPIO on a system.
In this case we need to poll it in the correct place to know that the
panel is ready for us.  In some system designs the right place for
this is panel-simple.

When adding this support, we'll account for the case that there might
be a circular dependency between panel-simple and the provider of the
GPIO.  The case this was designed for was for the "ti-sn65dsi86"
bridge chip.  If HPD is hooked up to one of the GPIOs provided by the
bridge chip then in our probe function we'll always get back
-EPROBE_DEFER.  Let's handle this by allowing this GPIO to show up
late if we saw -EPROBE_DEFER during probe.  NOTE: since the
gpio_get_optional() is used, if the "hpd-gpios" isn't there our
variable will just be NULL and we won't do anything in prepare().

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---

Changes in v5: None
Changes in v4: None
Changes in v3:
- Remind how gpio_get_optional() works in the commit message.

Changes in v2:
- ("simple...hpd-gpios") is 1/2 of replacement for ("Allow...bridge GPIOs")

 drivers/gpu/drm/panel/panel-simple.c | 53 ++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 3ad828eaefe1..f816e2aa29cd 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -23,6 +23,7 @@
 
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
@@ -108,6 +109,7 @@ struct panel_simple {
 	struct i2c_adapter *ddc;
 
 	struct gpio_desc *enable_gpio;
+	struct gpio_desc *hpd_gpio;
 
 	struct drm_display_mode override_mode;
 };
@@ -259,11 +261,37 @@ static int panel_simple_unprepare(struct drm_panel *panel)
 	return 0;
 }
 
+static int panel_simple_get_hpd_gpio(struct device *dev,
+				     struct panel_simple *p, bool from_probe)
+{
+	int err;
+
+	p->hpd_gpio = devm_gpiod_get_optional(dev, "hpd", GPIOD_IN);
+	if (IS_ERR(p->hpd_gpio)) {
+		err = PTR_ERR(p->hpd_gpio);
+
+		/*
+		 * If we're called from probe we won't consider '-EPROBE_DEFER'
+		 * to be an error--we'll leave the error code in "hpd_gpio".
+		 * When we try to use it we'll try again.  This allows for
+		 * circular dependencies where the component providing the
+		 * hpd gpio needs the panel to init before probing.
+		 */
+		if (err != -EPROBE_DEFER || !from_probe) {
+			dev_err(dev, "failed to get 'hpd' GPIO: %d\n", err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 static int panel_simple_prepare(struct drm_panel *panel)
 {
 	struct panel_simple *p = to_panel_simple(panel);
 	unsigned int delay;
 	int err;
+	int hpd_asserted;
 
 	if (p->prepared)
 		return 0;
@@ -282,6 +310,26 @@ static int panel_simple_prepare(struct drm_panel *panel)
 	if (delay)
 		msleep(delay);
 
+	if (p->hpd_gpio) {
+		if (IS_ERR(p->hpd_gpio)) {
+			err = panel_simple_get_hpd_gpio(panel->dev, p, false);
+			if (err)
+				return err;
+		}
+
+		err = readx_poll_timeout(gpiod_get_value_cansleep, p->hpd_gpio,
+					 hpd_asserted, hpd_asserted,
+					 1000, 2000000);
+		if (hpd_asserted < 0)
+			err = hpd_asserted;
+
+		if (err) {
+			dev_err(panel->dev,
+				"error waiting for hpd GPIO: %d\n", err);
+			return err;
+		}
+	}
+
 	p->prepared = true;
 
 	return 0;
@@ -462,6 +510,11 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 	panel->desc = desc;
 
 	panel->no_hpd = of_property_read_bool(dev->of_node, "no-hpd");
+	if (!panel->no_hpd) {
+		err = panel_simple_get_hpd_gpio(dev, panel, true);
+		if (err)
+			return err;
+	}
 
 	panel->supply = devm_regulator_get(dev, "power");
 	if (IS_ERR(panel->supply))
-- 
2.26.2.645.ge9eca65c58-goog

