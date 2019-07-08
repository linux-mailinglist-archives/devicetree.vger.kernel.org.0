Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 77FD2620F1
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 16:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726580AbfGHO4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 10:56:44 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:42891 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725840AbfGHO4n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 10:56:43 -0400
Received: by mail-wr1-f65.google.com with SMTP id a10so16386435wrp.9
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 07:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lusticky.cz; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qks6huK9PjJ7axz52EWgNZCOtNEhVZbSxesN0cPqE5g=;
        b=qw+5vHURgVqu0/D/7NqQwSOlNOEDd6uHGo7IpQXK7eiQWAV+HMvfxHpk44kgoLNf9G
         fguxglf/7pCP655ZwCPFIIOrbTqcP+frS3Lz+HpPo8+XeRzG8nI/GvvRc3kU2il+R4Lg
         ubW74Q9k1mszBzpxTYTdUp0bxcYr+I51pPy5yPoaekW2EYymaNdcYY6xzxJBABGrF/lQ
         0mZIvj4OP5IcmcWZUYhgt0fIGmq50J75Tsd/SW/g0Qa45ja0rkQUYmRQ0Cymd+s5BoVr
         Rzlx2mhnSB6ylHk1B80qWwDbDWPTmv1hn9JATGr5KrhRHLSNHKaQ15Rky8904lyi3qTM
         H51Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qks6huK9PjJ7axz52EWgNZCOtNEhVZbSxesN0cPqE5g=;
        b=mKuW24BITm5zH59CNWauC81wpGkWxub5Mo6Sg6tT2B7YxRHjUMZPEKFwa4jecYT4X3
         XkEJK8GNlGCWAcdym6DPkkNM9fIB2+2aXyUNNtlo3nuGXYDPcj45Nt8kKx8TOdcVkw48
         egeNRn+7FMxFVfpUQUGZ1g+jw1CtJYpWlo8JNZtEieea3FRMyU/bJ8UZ+Xk7KVu/cNR/
         dn+1JictlCZppEKWDsvRR1/zK5OQEEFy7CJLuUQhZfyffA0BK3V7CrEf4+ll184GkYe9
         sutBwN0pU7CfZKSPosoasJ9LELn67EmdYwk6sFOQ8ofzTU3nvB66PSw9/x6oJf3IQiBY
         M+0w==
X-Gm-Message-State: APjAAAXM07sgSQN29PKA/yVylsLFgYXrzk6gGl14/1qwyo183i7wt5yl
        L7/66bO2DCgyHKMcVDtcapoN5A==
X-Google-Smtp-Source: APXvYqyCQ5Qs2d8AWgSDe31YNLghM90udICUq4+rAc+I4xIfponO0N4QRio/daOLAczwi/JzORanFw==
X-Received: by 2002:adf:eb06:: with SMTP id s6mr19940685wrn.151.1562597800156;
        Mon, 08 Jul 2019 07:56:40 -0700 (PDT)
Received: from e430.riomail.cz (188-175-152-238.client.rionet.cz. [188.175.152.238])
        by smtp.gmail.com with ESMTPSA id f70sm11887595wme.22.2019.07.08.07.56.39
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 08 Jul 2019 07:56:39 -0700 (PDT)
From:   Josef Lusticky <josef@lusticky.cz>
To:     sam@ravnborg.org, robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     daniel@ffwll.ch, thierry.reding@gmail.com, airlied@linux.ie,
        Josef Lusticky <josef@lusticky.cz>
Subject: [PATCH v2 2/2] drm/panel: Add Ilitek ILI9341 parallel RGB panel driver
Date:   Mon,  8 Jul 2019 16:56:18 +0200
Message-Id: <20190708145618.26031-3-josef@lusticky.cz>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190708145618.26031-1-josef@lusticky.cz>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add driver for Ilitek ILI9341 panels in parallel RGB mode

Signed-off-by: Josef Lusticky <josef@lusticky.cz>
---
 MAINTAINERS                                  |   6 +
 drivers/gpu/drm/panel/Kconfig                |   9 +
 drivers/gpu/drm/panel/Makefile               |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9341.c | 291 +++++++++++++++++++
 4 files changed, 307 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9341.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 0a76716874bd..a35bf56cc018 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5028,6 +5028,12 @@ S:	Maintained
 F:	drivers/gpu/drm/tinydrm/hx8357d.c
 F:	Documentation/devicetree/bindings/display/himax,hx8357d.txt
 
+DRM DRIVER FOR ILITEK ILI9341 PANELS
+M:	Josef Lusticky <josef@lusticky.cz>
+S:	Maintained
+F:	drivers/gpu/drm/panel/panel-ilitek-ili9341.c
+F:	Documentation/devicetree/bindings/display/panel/ilitek,ili9341.txt
+
 DRM DRIVER FOR INTEL I810 VIDEO CARDS
 S:	Orphan / Obsolete
 F:	drivers/gpu/drm/i810/
diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
index eaecd40cc32e..34a5b262f924 100644
--- a/drivers/gpu/drm/panel/Kconfig
+++ b/drivers/gpu/drm/panel/Kconfig
@@ -56,6 +56,15 @@ config DRM_PANEL_ILITEK_IL9322
 	  Say Y here if you want to enable support for Ilitek IL9322
 	  QVGA (320x240) RGB, YUV and ITU-T BT.656 panels.
 
+config DRM_PANEL_ILITEK_ILI9341
+	tristate "Ilitek ILI9341 240x320 panels"
+	depends on OF && SPI
+	depends on BACKLIGHT_CLASS_DEVICE
+	select TINYDRM_MIPI_DBI
+	help
+	  Say Y here if you want to enable support for Ilitek ILI9341
+	  QVGA (240x320) RGB panel.
+
 config DRM_PANEL_ILITEK_ILI9881C
 	tristate "Ilitek ILI9881C-based panels"
 	depends on OF
diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makefile
index 62dae45f8f74..ba4a303c1a66 100644
--- a/drivers/gpu/drm/panel/Makefile
+++ b/drivers/gpu/drm/panel/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_DRM_PANEL_LVDS) += panel-lvds.o
 obj-$(CONFIG_DRM_PANEL_SIMPLE) += panel-simple.o
 obj-$(CONFIG_DRM_PANEL_FEIYANG_FY07024DI26A30D) += panel-feiyang-fy07024di26a30d.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_IL9322) += panel-ilitek-ili9322.o
+obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9341) += panel-ilitek-ili9341.o
 obj-$(CONFIG_DRM_PANEL_ILITEK_ILI9881C) += panel-ilitek-ili9881c.o
 obj-$(CONFIG_DRM_PANEL_INNOLUX_P079ZCA) += panel-innolux-p079zca.o
 obj-$(CONFIG_DRM_PANEL_JDI_LT070ME05000) += panel-jdi-lt070me05000.o
diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9341.c b/drivers/gpu/drm/panel/panel-ilitek-ili9341.c
new file mode 100644
index 000000000000..0c700b171025
--- /dev/null
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9341.c
@@ -0,0 +1,291 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Ilitek ILI9341 drm_panel driver
+ * 240RGBx320 dots resolution TFT LCD display
+ *
+ * This driver supports the following panel configurations:
+ * - Command interface:
+ *     - MIPI-DBI Type 3 Option 1
+ *       (9-bit SPI with Data/Command bit  - IM[3:0] = 1101)
+ *     - MIPI-DBI Type 3 Option 3
+ *       (8-bit SPI with Data/Command GPIO - IM[3:0] = 1110)
+ * - Graphical data interface:
+ *     - MIPI-DPI 18-bit parallel RGB interface
+ *
+ * Copyright (C) 2019 Josef Lusticky <josef@lusticky.cz>
+ *
+ */
+
+#include <linux/backlight.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/spi/spi.h>
+
+#include <video/mipi_display.h>
+
+#include <drm/drm_modes.h>
+#include <drm/drm_panel.h>
+#include <drm/drm_print.h>
+#include <drm/tinydrm/mipi-dbi.h>
+
+/* ILI9341 extended register set (Vendor Command Set) */
+#define ILI9341_IFMODE         0xB0 // clock polarity
+#define ILI9341_IFCTL          0xF6 // interface conrol
+#define ILI9341_PGAMCTRL       0xE0 // positive gamma control
+#define ILI9341_NGAMCTRL       0xE1 // negative gamma control
+
+#define ILI9341_MADCTL_MV      BIT(5)
+#define ILI9341_MADCTL_MX      BIT(6)
+#define ILI9341_MADCTL_MY      BIT(7)
+
+/**
+ * struct ili9341_config - the display specific configuration
+ * @width_mm: physical panel width [mm]
+ * @height_mm: physical panel height [mm]
+ */
+struct ili9341_config {
+	u32 width_mm;
+	u32 height_mm;
+};
+
+struct ili9341 {
+	struct drm_panel panel;
+	struct mipi_dbi *mipi;
+	const struct ili9341_config *conf;
+};
+
+static inline struct ili9341 *panel_to_ili9341(struct drm_panel *panel)
+{
+	return container_of(panel, struct ili9341, panel);
+}
+
+static int ili9341_deinit(struct drm_panel *panel, struct ili9341 *ili)
+{
+	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_DISPLAY_OFF);
+	mipi_dbi_command(ili->mipi, MIPI_DCS_ENTER_SLEEP_MODE);
+	msleep(5);
+	return 0;
+}
+
+static int ili9341_init(struct drm_panel *panel, struct ili9341 *ili)
+{
+	/* HW / SW Reset display and wait */
+	if (ili->mipi->reset)
+		mipi_dbi_hw_reset(ili->mipi);
+
+	mipi_dbi_command(ili->mipi, MIPI_DCS_SOFT_RESET);
+	msleep(120);
+
+	/* Polarity */
+	mipi_dbi_command(ili->mipi, ILI9341_IFMODE, 0xC0);
+
+	/* Interface control */
+	mipi_dbi_command(ili->mipi, ILI9341_IFCTL, 0x09, 0x01, 0x26);
+
+	/* Pixel format */
+	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_18BIT << 4);
+
+	/* Gamma */
+	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_GAMMA_CURVE, 0x01);
+	mipi_dbi_command(ili->mipi, ILI9341_PGAMCTRL,
+		0x0f, 0x31, 0x2b, 0x0c, 0x0e, 0x08, 0x4e, 0xf1,
+		0x37, 0x07, 0x10, 0x03, 0x0e, 0x09, 0x00);
+	mipi_dbi_command(ili->mipi, ILI9341_NGAMCTRL,
+		0x00, 0x0e, 0x14, 0x03, 0x11, 0x07, 0x31, 0xc1,
+		0x48, 0x08, 0x0f, 0x0c, 0x31, 0x36, 0x0f);
+
+	/* Rotation */
+	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_ADDRESS_MODE, ILI9341_MADCTL_MX);
+
+	/* Exit sleep mode */
+	mipi_dbi_command(ili->mipi, MIPI_DCS_EXIT_SLEEP_MODE);
+	msleep(120);
+
+	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_DISPLAY_ON);
+
+	return 0;
+}
+
+static int ili9341_unprepare(struct drm_panel *panel)
+{
+	struct ili9341 *ili = panel_to_ili9341(panel);
+
+	return ili9341_deinit(panel, ili);
+}
+
+static int ili9341_prepare(struct drm_panel *panel)
+{
+	struct ili9341 *ili = panel_to_ili9341(panel);
+	int ret;
+
+	ret = ili9341_init(panel, ili);
+	if (ret < 0)
+		ili9341_unprepare(panel);
+	return ret;
+}
+
+static int ili9341_enable(struct drm_panel *panel)
+{
+	struct ili9341 *ili = panel_to_ili9341(panel);
+
+	return backlight_enable(ili->mipi->backlight);
+}
+
+static int ili9341_disable(struct drm_panel *panel)
+{
+	struct ili9341 *ili = panel_to_ili9341(panel);
+
+	return backlight_disable(ili->mipi->backlight);
+}
+
+static const struct drm_display_mode prgb_240x320_mode = {
+	.clock = 6350,
+
+	.hdisplay = 240,
+	.hsync_start = 240 + 10,
+	.hsync_end = 240 + 10 + 10,
+	.htotal = 240 + 10 + 10 + 20,
+
+	.vdisplay = 320,
+	.vsync_start = 320 + 4,
+	.vsync_end = 320 + 4 + 2,
+	.vtotal = 320 + 4 + 2 + 2,
+
+	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED
+};
+
+static int ili9341_get_modes(struct drm_panel *panel)
+{
+	struct drm_connector *connector = panel->connector;
+	struct ili9341 *ili = panel_to_ili9341(panel);
+	struct drm_display_mode *mode;
+
+	mode = drm_mode_duplicate(panel->drm, &prgb_240x320_mode);
+	if (!mode) {
+		DRM_DEV_ERROR(panel->drm->dev, "bad mode or failed to add mode\n");
+		return -ENOMEM;
+	}
+
+	drm_mode_set_name(mode);
+
+	mode->width_mm = ili->conf->width_mm;
+	mode->height_mm = ili->conf->height_mm;
+
+	connector->display_info.width_mm = mode->width_mm;
+	connector->display_info.height_mm = mode->height_mm;
+	connector->display_info.bus_flags |= DRM_BUS_FLAG_DE_HIGH |
+		DRM_BUS_FLAG_PIXDATA_POSEDGE | DRM_BUS_FLAG_SYNC_NEGEDGE;
+
+	drm_mode_probed_add(connector, mode);
+
+	return 1; /* Number of modes */
+}
+
+static const struct drm_panel_funcs ili9341_drm_funcs = {
+	.disable = ili9341_disable,
+	.unprepare = ili9341_unprepare,
+	.prepare = ili9341_prepare,
+	.enable = ili9341_enable,
+	.get_modes = ili9341_get_modes,
+};
+
+static int ili9341_probe(struct spi_device *spi)
+{
+	struct device *dev = &spi->dev;
+	struct ili9341 *ili;
+	struct mipi_dbi *mipi;
+	struct gpio_desc *dc_gpio;
+	int ret;
+
+	mipi = devm_kzalloc(dev, sizeof(*mipi), GFP_KERNEL);
+	if (!mipi)
+		return -ENOMEM;
+
+	ili = devm_kzalloc(dev, sizeof(*ili), GFP_KERNEL);
+	if (!ili)
+		return -ENOMEM;
+
+	ili->mipi = mipi;
+
+	spi_set_drvdata(spi, ili);
+
+	/*
+	 * Every new incarnation of this display must have a unique
+	 * data entry for the system in this driver.
+	 */
+	ili->conf = of_device_get_match_data(dev);
+	if (!ili->conf) {
+		DRM_DEV_ERROR(dev, "missing device configuration\n");
+		return -ENODEV;
+	}
+
+	ili->mipi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(ili->mipi->reset)) {
+		DRM_DEV_ERROR(dev, "failed to get gpio 'reset'\n");
+		return PTR_ERR(ili->mipi->reset);
+	}
+
+	ili->mipi->backlight = devm_of_find_backlight(dev);
+	if (IS_ERR(ili->mipi->backlight)) {
+		DRM_DEV_ERROR(dev, "failed to get backlight\n");
+		return PTR_ERR(ili->mipi->backlight);
+	}
+
+	dc_gpio = devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
+	if (IS_ERR(dc_gpio)) {
+		DRM_DEV_ERROR(dev, "failed to get gpio 'dc'\n");
+		return PTR_ERR(dc_gpio);
+	}
+
+	ret = mipi_dbi_spi_init(spi, ili->mipi, dc_gpio);
+	if (ret) {
+		DRM_DEV_ERROR(dev, "MIPI-DBI SPI setup failed\n");
+		return ret;
+	}
+
+	drm_panel_init(&ili->panel);
+	ili->panel.dev = dev;
+	ili->panel.funcs = &ili9341_drm_funcs;
+
+	return drm_panel_add(&ili->panel);
+}
+
+static int ili9341_remove(struct spi_device *spi)
+{
+	struct ili9341 *ili = spi_get_drvdata(spi);
+
+	drm_panel_remove(&ili->panel);
+
+	ili9341_disable(&ili->panel);
+	ili9341_unprepare(&ili->panel);
+
+	return 0;
+}
+
+static const struct ili9341_config dt024ctft_data = {
+	.width_mm = 37,
+	.height_mm = 49,
+};
+
+static const struct of_device_id ili9341_of_match[] = {
+	{ .compatible = "displaytech,dt024ctft", .data = &dt024ctft_data },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ili9341_of_match);
+
+static struct spi_driver ili9341_driver = {
+	.probe = ili9341_probe,
+	.remove = ili9341_remove,
+	.driver = {
+		.name = "panel-ilitek-ili9341",
+		.of_match_table = ili9341_of_match,
+	},
+};
+module_spi_driver(ili9341_driver);
+
+MODULE_AUTHOR("Josef Lusticky <josef@lusticky.cz>");
+MODULE_DESCRIPTION("ILI9341 LCD panel driver");
+MODULE_LICENSE("GPL");
-- 
2.20.1

