Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90D2F14A5BB
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2020 15:08:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726443AbgA0OIw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jan 2020 09:08:52 -0500
Received: from mail-pj1-f65.google.com ([209.85.216.65]:54800 "EHLO
        mail-pj1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726029AbgA0OIv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jan 2020 09:08:51 -0500
Received: by mail-pj1-f65.google.com with SMTP id dw13so2541294pjb.4
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2020 06:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TBDslIBcyJWgCho7W8z1b4+GALI1bkPrBddUCBF+ijs=;
        b=SlVUqabGhIZ3pUW1u+O8qsHHgncxRFEbLF+TQx5X8nkjjrrRhj/DXTMmBhjKL+32FG
         RFlnZiFlOwzLk6Kdw59W7k0W5EKWWExgVAtJPW2igTY9S0m0AB+mXLaNXMnGGjn9QiQ4
         4WAtbWHGhlCNoPSRik+BrSBypivFe6pymg9zdzWErdISFt/aAfkIuyXzpjhqKcrmaBa2
         Y+/JJW17i404alWurJoT9rGc3hfr18uglQxajIXIE6JTQzpOJoMa6CxioeXvPPoWXgMZ
         TeDZw8W9/WW4b5kgeOQD7aFSpccI1H2MUkH7k2Rh+n8N+UJBemuIX99aS5y02KKkUKIw
         Efww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=TBDslIBcyJWgCho7W8z1b4+GALI1bkPrBddUCBF+ijs=;
        b=FdsVDhjWV0Y5/jcqUEChIMlAGCGhVCYVpc6VgWv/nQjn/h/VgDaz29hi/inmmavLXI
         xt7zdk88HwUcdDVDg+aUMBsR8O2KUiXur6IBI1a7Irvy8KkxEOwKGvUpTuXxMstfq0Qj
         yNwqBWtAowK1riHrNQli7ki4NzN4CUfrtszpakCAOGHk6bF6p44EaFA9m+G6OA+Z2yvr
         Zv0CdAHgVKASP+//xGczRad+relD+YHpONhMWaN9mf+1F3PWSEm5sIeFYRX47ii6TO2r
         0kf0bJ82dYiE+ci7yQOcleoPn0d+qWxnrLM+7WybX+V268to4AfQd9URUL7hiNGMQdRO
         EqcA==
X-Gm-Message-State: APjAAAUW2p5Je8sxVuBX5ZMoFws++N0oICXc958M+ousxilAGjJEJrlI
        cWrjxJcDxVBBDjNPQM4hXGQ=
X-Google-Smtp-Source: APXvYqy5GyLdL/6NQiAFPyX/zoivc9VLnvxhtOpQchHjHmzpkoA71gE7VkNMCFvc/J9dopCW7gnFsA==
X-Received: by 2002:a17:902:c693:: with SMTP id r19mr18872503plx.25.1580134130991;
        Mon, 27 Jan 2020 06:08:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:d809:ffa6:583:2633:933c:f34d])
        by smtp.gmail.com with ESMTPSA id g8sm15917416pfh.43.2020.01.27.06.08.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Jan 2020 06:08:50 -0800 (PST)
From:   Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
To:     noralf@tronnes.org, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
Subject: [PATCH v3 3/3] drm/tinydrm: add support for tft displays based on ilitek,ili9486
Date:   Mon, 27 Jan 2020 19:38:39 +0530
Message-Id: <eb5672abbdb89d7018793c76d7193bfb78a2ea88.1580133212.git.kamlesh.gurudasani@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1580133211.git.kamlesh.gurudasani@gmail.com>
References: <cover.1580133211.git.kamlesh.gurudasani@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support fot ilitek,ili9486 based displays with shift register
in front of controller.
Ozzmaker,Piscreen and Waveshare,rpi-lcd-35 are such displays.

Signed-off-by: Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
---

v2 changes:
* assignment of dbi_command before registration
* made dc and reset gpio compulsory
* typos and unwanted comments removed
* changed the name of function which were display specific
* arranged the Makefile entries in alphabetical order

v3 changes:
* no changes
---
 MAINTAINERS                    |   7 +
 drivers/gpu/drm/tiny/Kconfig   |  14 ++
 drivers/gpu/drm/tiny/Makefile  |   1 +
 drivers/gpu/drm/tiny/ili9486.c | 283 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 305 insertions(+)
 create mode 100644 drivers/gpu/drm/tiny/ili9486.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 16423f5..30dd396 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5233,6 +5233,13 @@ S:	Maintained
 F:	drivers/gpu/drm/tiny/ili9225.c
 F:	Documentation/devicetree/bindings/display/ilitek,ili9225.txt
 
+DRM DRIVER FOR ILITEK ILI9486 PANELS
+M:	Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
+T:	git git://anongit.freedesktop.org/drm/drm-misc
+S:	Maintained
+F:	drivers/gpu/drm/tiny/ili9486.c
+F:	Documentation/devicetree/bindings/display/ilitek,ili9486.yaml
+
 DRM DRIVER FOR HX8357D PANELS
 M:	Eric Anholt <eric@anholt.net>
 T:	git git://anongit.freedesktop.org/drm/drm-misc
diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index a866421..4160e74 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -47,6 +47,20 @@ config TINYDRM_ILI9341
 
 	  If M is selected the module will be called ili9341.
 
+config TINYDRM_ILI9486
+	tristate "DRM support for ILI9486 display panels"
+	depends on DRM && SPI
+	select DRM_KMS_HELPER
+	select DRM_KMS_CMA_HELPER
+	select DRM_MIPI_DBI
+	select BACKLIGHT_CLASS_DEVICE
+	help
+	  DRM driver for the following Ilitek ILI9486 panels:
+	  * PISCREEN 3.5" 320x480 TFT (Ozzmaker 3.5")
+	  * RPILCD 3.5" 320x480 TFT (Waveshare 3.5")
+
+	  If M is selected the module will be called ili9486.
+
 config TINYDRM_MI0283QT
 	tristate "DRM support for MI0283QT"
 	depends on DRM && SPI
diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
index 896cf31..c96ceee 100644
--- a/drivers/gpu/drm/tiny/Makefile
+++ b/drivers/gpu/drm/tiny/Makefile
@@ -4,6 +4,7 @@ obj-$(CONFIG_DRM_GM12U320)		+= gm12u320.o
 obj-$(CONFIG_TINYDRM_HX8357D)		+= hx8357d.o
 obj-$(CONFIG_TINYDRM_ILI9225)		+= ili9225.o
 obj-$(CONFIG_TINYDRM_ILI9341)		+= ili9341.o
+obj-$(CONFIG_TINYDRM_ILI9486)		+= ili9486.o
 obj-$(CONFIG_TINYDRM_MI0283QT)		+= mi0283qt.o
 obj-$(CONFIG_TINYDRM_REPAPER)		+= repaper.o
 obj-$(CONFIG_TINYDRM_ST7586)		+= st7586.o
diff --git a/drivers/gpu/drm/tiny/ili9486.c b/drivers/gpu/drm/tiny/ili9486.c
new file mode 100644
index 0000000..e960b16
--- /dev/null
+++ b/drivers/gpu/drm/tiny/ili9486.c
@@ -0,0 +1,283 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * DRM driver for Ilitek ILI9486 panels
+ *
+ * Copyright 2020 Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
+ */
+
+#include <linux/backlight.h>
+#include <linux/delay.h>
+#include <linux/gpio/consumer.h>
+#include <linux/module.h>
+#include <linux/property.h>
+#include <linux/spi/spi.h>
+#include <video/mipi_display.h>
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_fb_helper.h>
+#include <drm/drm_gem_cma_helper.h>
+#include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_mipi_dbi.h>
+#include <drm/drm_modeset_helper.h>
+
+#define ILI9486_ITFCTR1         0xb0
+#define ILI9486_PWCTRL1         0xc2
+#define ILI9486_VMCTRL1         0xc5
+#define ILI9486_PGAMCTRL        0xe0
+#define ILI9486_NGAMCTRL        0xe1
+#define ILI9486_DGAMCTRL        0xe2
+#define ILI9486_MADCTL_BGR      BIT(3)
+#define ILI9486_MADCTL_MV       BIT(5)
+#define ILI9486_MADCTL_MX       BIT(6)
+#define ILI9486_MADCTL_MY       BIT(7)
+
+/*
+ * The PiScreen/waveshare rpi-lcd-35 has a SPI to 16-bit parallel bus converter
+ * in front of the  display controller. This means that 8-bit values have to be
+ * transferred as 16-bit.
+ */
+static int waveshare_command(struct mipi_dbi *mipi, u8 *cmd, u8 *par, size_t num)
+{
+	struct spi_device *spi = mipi->spi;
+	void *data = par;
+	u32 speed_hz;
+	int i, ret;
+	u16 *buf;
+
+	buf = kmalloc(32 * sizeof(u16), GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	/*
+	 * The displays are Raspberry Pi HATs and connected to the 8-bit only
+	 * SPI controller, so 16-bit command and parameters need byte swapping
+	 * before being transferred as 8-bit on the big endian SPI bus.
+	 * Pixel data bytes have already been swapped before this function is
+	 * called.
+	 */
+	buf[0] = cpu_to_be16(*cmd);
+	gpiod_set_value_cansleep(mipi->dc, 0);
+	speed_hz = mipi_dbi_spi_cmd_max_speed(spi, 2);
+	ret = mipi_dbi_spi_transfer(spi, speed_hz, 8, buf, 2);
+	if (ret || !num)
+		goto free;
+
+	/* 8-bit configuration data, not 16-bit pixel data */
+	if (num <= 32) {
+		for (i = 0; i < num; i++)
+			buf[i] = cpu_to_be16(par[i]);
+		num *= 2;
+		speed_hz = mipi_dbi_spi_cmd_max_speed(spi, num);
+		data = buf;
+	}
+
+	gpiod_set_value_cansleep(mipi->dc, 1);
+	ret = mipi_dbi_spi_transfer(spi, speed_hz, 8, data, num);
+ free:
+	kfree(buf);
+
+	return ret;
+}
+
+static void waveshare_enable(struct drm_simple_display_pipe *pipe,
+			   struct drm_crtc_state *crtc_state,
+			   struct drm_plane_state *plane_state)
+{
+	struct mipi_dbi_dev *dbidev = drm_to_mipi_dbi_dev(pipe->crtc.dev);
+	struct mipi_dbi *dbi = &dbidev->dbi;
+	u8 addr_mode;
+	int ret, idx;
+
+	if (!drm_dev_enter(pipe->crtc.dev, &idx))
+		return;
+
+	DRM_DEBUG_KMS("\n");
+
+	ret = mipi_dbi_poweron_conditional_reset(dbidev);
+	if (ret < 0)
+		goto out_exit;
+	if (ret == 1)
+		goto out_enable;
+
+	mipi_dbi_command(dbi, ILI9486_ITFCTR1);
+	mipi_dbi_command(dbi, MIPI_DCS_EXIT_SLEEP_MODE);
+	msleep(250);
+
+	mipi_dbi_command(dbi, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
+
+	mipi_dbi_command(dbi, ILI9486_PWCTRL1, 0x44);
+
+	mipi_dbi_command(dbi, ILI9486_VMCTRL1, 0x00, 0x00, 0x00, 0x00);
+
+	mipi_dbi_command(dbi, ILI9486_PGAMCTRL,
+			 0x0F, 0x1F, 0x1C, 0x0C, 0x0F, 0x08, 0x48, 0x98,
+			 0x37, 0x0A, 0x13, 0x04, 0x11, 0x0D, 0x0);
+	mipi_dbi_command(dbi, ILI9486_NGAMCTRL,
+			 0x0F, 0x32, 0x2E, 0x0B, 0x0D, 0x05, 0x47, 0x75,
+			 0x37, 0x06, 0x10, 0x03, 0x24, 0x20, 0x00);
+	mipi_dbi_command(dbi, ILI9486_DGAMCTRL,
+			 0x0F, 0x32, 0x2E, 0x0B, 0x0D, 0x05, 0x47, 0x75,
+			 0x37, 0x06, 0x10, 0x03, 0x24, 0x20, 0x00);
+
+	mipi_dbi_command(dbi, MIPI_DCS_SET_DISPLAY_ON);
+	msleep(100);
+
+ out_enable:
+	switch (dbidev->rotation) {
+	case 90:
+		addr_mode = ILI9486_MADCTL_MY;
+		break;
+	case 180:
+		addr_mode = ILI9486_MADCTL_MV;
+		break;
+	case 270:
+		addr_mode = ILI9486_MADCTL_MX;
+		break;
+	default:
+		addr_mode = ILI9486_MADCTL_MV | ILI9486_MADCTL_MY |
+			ILI9486_MADCTL_MX;
+		break;
+	}
+	addr_mode |= ILI9486_MADCTL_BGR;
+	mipi_dbi_command(dbi, MIPI_DCS_SET_ADDRESS_MODE, addr_mode);
+	mipi_dbi_enable_flush(dbidev, crtc_state, plane_state);
+ out_exit:
+	drm_dev_exit(idx);
+}
+
+static const struct drm_simple_display_pipe_funcs waveshare_pipe_funcs = {
+	.enable = waveshare_enable,
+	.disable = mipi_dbi_pipe_disable,
+	.update = mipi_dbi_pipe_update,
+	.prepare_fb = drm_gem_fb_simple_display_pipe_prepare_fb,
+};
+
+static const struct drm_display_mode waveshare_mode = {
+	DRM_SIMPLE_MODE(480, 320, 73, 49),
+};
+
+DEFINE_DRM_GEM_CMA_FOPS(ili9486_fops);
+
+static struct drm_driver ili9486_driver = {
+	.driver_features	= DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
+	.fops			= &ili9486_fops,
+	.release		= mipi_dbi_release,
+	DRM_GEM_CMA_VMAP_DRIVER_OPS,
+	.debugfs_init		= mipi_dbi_debugfs_init,
+	.name			= "ili9486",
+	.desc			= "Ilitek ILI9486",
+	.date			= "20200118",
+	.major			= 1,
+	.minor			= 0,
+};
+
+static const struct of_device_id ili9486_of_match[] = {
+	{ .compatible = "waveshare,rpi-lcd-35" },
+	{ .compatible = "ozzmaker,piscreen" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, ili9486_of_match);
+
+static const struct spi_device_id ili9486_id[] = {
+	{ "ili9486", 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, ili9486_id);
+
+static int ili9486_probe(struct spi_device *spi)
+{
+	struct device *dev = &spi->dev;
+	struct mipi_dbi_dev *dbidev;
+	struct drm_device *drm;
+	struct mipi_dbi *dbi;
+	struct gpio_desc *dc;
+	u32 rotation = 0;
+	int ret;
+
+	dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
+	if (!dbidev)
+		return -ENOMEM;
+
+	dbi = &dbidev->dbi;
+	drm = &dbidev->drm;
+	ret = devm_drm_dev_init(dev, drm, &ili9486_driver);
+	if (ret) {
+		kfree(dbidev);
+		return ret;
+	}
+
+	drm_mode_config_init(drm);
+
+	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
+	if (IS_ERR(dbi->reset)) {
+		DRM_DEV_ERROR(dev, "Failed to get gpio 'reset'\n");
+		return PTR_ERR(dbi->reset);
+	}
+
+	dc = devm_gpiod_get(dev, "dc", GPIOD_OUT_LOW);
+	if (IS_ERR(dc)) {
+		DRM_DEV_ERROR(dev, "Failed to get gpio 'dc'\n");
+		return PTR_ERR(dc);
+	}
+
+	dbidev->backlight = devm_of_find_backlight(dev);
+	if (IS_ERR(dbidev->backlight))
+		return PTR_ERR(dbidev->backlight);
+
+	device_property_read_u32(dev, "rotation", &rotation);
+
+	ret = mipi_dbi_spi_init(spi, dbi, dc);
+	if (ret)
+		return ret;
+
+	dbi->command = waveshare_command;
+	dbi->read_commands = NULL;
+
+	ret = mipi_dbi_dev_init(dbidev, &waveshare_pipe_funcs, &waveshare_mode, rotation);
+	if (ret)
+		return ret;
+
+	drm_mode_config_reset(drm);
+
+	ret = drm_dev_register(drm, 0);
+	if (ret)
+		return ret;
+
+	spi_set_drvdata(spi, drm);
+
+	drm_fbdev_generic_setup(drm, 0);
+
+	return 0;
+}
+
+static int ili9486_remove(struct spi_device *spi)
+{
+	struct drm_device *drm = spi_get_drvdata(spi);
+
+	drm_dev_unplug(drm);
+	drm_atomic_helper_shutdown(drm);
+
+	return 0;
+}
+
+static void ili9486_shutdown(struct spi_device *spi)
+{
+	drm_atomic_helper_shutdown(spi_get_drvdata(spi));
+}
+
+static struct spi_driver ili9486_spi_driver = {
+	.driver = {
+		.name = "ili9486",
+		.of_match_table = ili9486_of_match,
+	},
+	.id_table = ili9486_id,
+	.probe = ili9486_probe,
+	.remove = ili9486_remove,
+	.shutdown = ili9486_shutdown,
+};
+module_spi_driver(ili9486_spi_driver);
+
+MODULE_DESCRIPTION("Ilitek ILI9486 DRM driver");
+MODULE_AUTHOR("Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>");
+MODULE_LICENSE("GPL");
-- 
2.7.4

