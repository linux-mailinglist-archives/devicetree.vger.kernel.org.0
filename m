Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A0E2864775
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2019 15:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727325AbfGJNr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jul 2019 09:47:27 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:49385 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726333AbfGJNr1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jul 2019 09:47:27 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id B742D20081;
        Wed, 10 Jul 2019 15:47:23 +0200 (CEST)
Date:   Wed, 10 Jul 2019 15:47:22 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Josef Lusticky <josef@lusticky.cz>
Cc:     robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, daniel@ffwll.ch,
        thierry.reding@gmail.com, airlied@linux.ie
Subject: Re: [PATCH v2 2/2] drm/panel: Add Ilitek ILI9341 parallel RGB panel
 driver
Message-ID: <20190710134722.GC11791@ravnborg.org>
References: <20190304125033.28841-1-josef@lusticky.cz>
 <20190708145618.26031-1-josef@lusticky.cz>
 <20190708145618.26031-3-josef@lusticky.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190708145618.26031-3-josef@lusticky.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8
        a=YNRIPrah4-pk3FGtvwYA:9 a=ZEo8nJetd6AVmpUu:21 a=0qIVUtRu9QG884qP:21
        a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Josef.

Thanks for updating the driver.

On Mon, Jul 08, 2019 at 04:56:18PM +0200, Josef Lusticky wrote:
> Add driver for Ilitek ILI9341 panels in parallel RGB mode
> 
> Signed-off-by: Josef Lusticky <josef@lusticky.cz>
> + */
> +
> +#include <linux/backlight.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/spi/spi.h>
> +
> +#include <video/mipi_display.h>
> +
> +#include <drm/drm_modes.h>
> +#include <drm/drm_panel.h>
> +#include <drm/drm_print.h>
> +#include <drm/tinydrm/mipi-dbi.h>
Good to see drivers that no longer uses drmP.h :-)

> +
> +/* ILI9341 extended register set (Vendor Command Set) */
> +#define ILI9341_IFMODE         0xB0 // clock polarity
> +#define ILI9341_IFCTL          0xF6 // interface conrol
> +#define ILI9341_PGAMCTRL       0xE0 // positive gamma control
> +#define ILI9341_NGAMCTRL       0xE1 // negative gamma control
> +
> +#define ILI9341_MADCTL_MV      BIT(5)
> +#define ILI9341_MADCTL_MX      BIT(6)
> +#define ILI9341_MADCTL_MY      BIT(7)
> +
> +/**
> + * struct ili9341_config - the display specific configuration
> + * @width_mm: physical panel width [mm]
> + * @height_mm: physical panel height [mm]
> + */
> +struct ili9341_config {
> +	u32 width_mm;
> +	u32 height_mm;
> +};
> +
> +struct ili9341 {
> +	struct drm_panel panel;
> +	struct mipi_dbi *mipi;
> +	const struct ili9341_config *conf;
> +};
> +
> +static inline struct ili9341 *panel_to_ili9341(struct drm_panel *panel)
> +{
> +	return container_of(panel, struct ili9341, panel);
> +}
> +
> +static int ili9341_deinit(struct drm_panel *panel, struct ili9341 *ili)
> +{
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_DISPLAY_OFF);
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_ENTER_SLEEP_MODE);
> +	msleep(5);
> +	return 0;
> +}
> +
> +static int ili9341_init(struct drm_panel *panel, struct ili9341 *ili)
> +{
> +	/* HW / SW Reset display and wait */
> +	if (ili->mipi->reset)
> +		mipi_dbi_hw_reset(ili->mipi);
> +
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_SOFT_RESET);
> +	msleep(120);
Consider a usleep_range here - to have the waiting a little more relaxed
in the system.

> +
> +	/* Polarity */
> +	mipi_dbi_command(ili->mipi, ILI9341_IFMODE, 0xC0);
> +
> +	/* Interface control */
> +	mipi_dbi_command(ili->mipi, ILI9341_IFCTL, 0x09, 0x01, 0x26);
> +
> +	/* Pixel format */
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_18BIT << 4);
> +
> +	/* Gamma */
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_GAMMA_CURVE, 0x01);
> +	mipi_dbi_command(ili->mipi, ILI9341_PGAMCTRL,
> +		0x0f, 0x31, 0x2b, 0x0c, 0x0e, 0x08, 0x4e, 0xf1,
> +		0x37, 0x07, 0x10, 0x03, 0x0e, 0x09, 0x00);
> +	mipi_dbi_command(ili->mipi, ILI9341_NGAMCTRL,
> +		0x00, 0x0e, 0x14, 0x03, 0x11, 0x07, 0x31, 0xc1,
> +		0x48, 0x08, 0x0f, 0x0c, 0x31, 0x36, 0x0f);
> +
> +	/* Rotation */
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_ADDRESS_MODE, ILI9341_MADCTL_MX);
> +
> +	/* Exit sleep mode */
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_EXIT_SLEEP_MODE);
> +	msleep(120);
> +
> +	mipi_dbi_command(ili->mipi, MIPI_DCS_SET_DISPLAY_ON);
> +
> +	return 0;
> +}
> +
> +static int ili9341_unprepare(struct drm_panel *panel)
> +{
> +	struct ili9341 *ili = panel_to_ili9341(panel);
> +
> +	return ili9341_deinit(panel, ili);
> +}
> +
> +static int ili9341_prepare(struct drm_panel *panel)
> +{
> +	struct ili9341 *ili = panel_to_ili9341(panel);
> +	int ret;
> +
> +	ret = ili9341_init(panel, ili);
> +	if (ret < 0)
> +		ili9341_unprepare(panel);
> +	return ret;
> +}
> +
> +static int ili9341_enable(struct drm_panel *panel)
> +{
> +	struct ili9341 *ili = panel_to_ili9341(panel);
> +
> +	return backlight_enable(ili->mipi->backlight);
> +}
> +
> +static int ili9341_disable(struct drm_panel *panel)
> +{
> +	struct ili9341 *ili = panel_to_ili9341(panel);
> +
> +	return backlight_disable(ili->mipi->backlight);
> +}
> +
> +static const struct drm_display_mode prgb_240x320_mode = {
> +	.clock = 6350,
> +
> +	.hdisplay = 240,
> +	.hsync_start = 240 + 10,
> +	.hsync_end = 240 + 10 + 10,
> +	.htotal = 240 + 10 + 10 + 20,
> +
> +	.vdisplay = 320,
> +	.vsync_start = 320 + 4,
> +	.vsync_end = 320 + 4 + 2,
> +	.vtotal = 320 + 4 + 2 + 2,
> +
> +	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED
> +};
> +
> +static int ili9341_get_modes(struct drm_panel *panel)
> +{
> +	struct drm_connector *connector = panel->connector;
> +	struct ili9341 *ili = panel_to_ili9341(panel);
> +	struct drm_display_mode *mode;
> +
> +	mode = drm_mode_duplicate(panel->drm, &prgb_240x320_mode);
> +	if (!mode) {
> +		DRM_DEV_ERROR(panel->drm->dev, "bad mode or failed to add mode\n");
> +		return -ENOMEM;
> +	}
> +
> +	drm_mode_set_name(mode);
> +
> +	mode->width_mm = ili->conf->width_mm;
> +	mode->height_mm = ili->conf->height_mm;
> +
> +	connector->display_info.width_mm = mode->width_mm;
> +	connector->display_info.height_mm = mode->height_mm;
> +	connector->display_info.bus_flags |= DRM_BUS_FLAG_DE_HIGH |
> +		DRM_BUS_FLAG_PIXDATA_POSEDGE | DRM_BUS_FLAG_SYNC_NEGEDGE;
> +
> +	drm_mode_probed_add(connector, mode);
> +
> +	return 1; /* Number of modes */
> +}
> +
> +static const struct drm_panel_funcs ili9341_drm_funcs = {
> +	.disable = ili9341_disable,
> +	.unprepare = ili9341_unprepare,
> +	.prepare = ili9341_prepare,
> +	.enable = ili9341_enable,
> +	.get_modes = ili9341_get_modes,
> +};
> +
> +static int ili9341_probe(struct spi_device *spi)
> +{
> +	struct device *dev = &spi->dev;
> +	struct ili9341 *ili;
> +	struct mipi_dbi *mipi;
> +	struct gpio_desc *dc_gpio;
> +	int ret;
> +
> +	mipi = devm_kzalloc(dev, sizeof(*mipi), GFP_KERNEL);
> +	if (!mipi)
> +		return -ENOMEM;
> +
> +	ili = devm_kzalloc(dev, sizeof(*ili), GFP_KERNEL);
> +	if (!ili)
> +		return -ENOMEM;
> +
> +	ili->mipi = mipi;
> +
> +	spi_set_drvdata(spi, ili);
> +
> +	/*
> +	 * Every new incarnation of this display must have a unique
> +	 * data entry for the system in this driver.
> +	 */
> +	ili->conf = of_device_get_match_data(dev);
> +	if (!ili->conf) {
> +		DRM_DEV_ERROR(dev, "missing device configuration\n");
> +		return -ENODEV;
> +	}
> +
> +	ili->mipi->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(ili->mipi->reset)) {
> +		DRM_DEV_ERROR(dev, "failed to get gpio 'reset'\n");
> +		return PTR_ERR(ili->mipi->reset);
> +	}
> +
> +	ili->mipi->backlight = devm_of_find_backlight(dev);
> +	if (IS_ERR(ili->mipi->backlight)) {
> +		DRM_DEV_ERROR(dev, "failed to get backlight\n");
> +		return PTR_ERR(ili->mipi->backlight);
> +	}
> +
> +	dc_gpio = devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
> +	if (IS_ERR(dc_gpio)) {
> +		DRM_DEV_ERROR(dev, "failed to get gpio 'dc'\n");
> +		return PTR_ERR(dc_gpio);
> +	}
> +
> +	ret = mipi_dbi_spi_init(spi, ili->mipi, dc_gpio);
> +	if (ret) {
> +		DRM_DEV_ERROR(dev, "MIPI-DBI SPI setup failed\n");
> +		return ret;
> +	}
> +
> +	drm_panel_init(&ili->panel);
> +	ili->panel.dev = dev;
> +	ili->panel.funcs = &ili9341_drm_funcs;
> +
> +	return drm_panel_add(&ili->panel);
> +}
> +
> +static int ili9341_remove(struct spi_device *spi)
> +{
> +	struct ili9341 *ili = spi_get_drvdata(spi);
> +
> +	drm_panel_remove(&ili->panel);
> +
> +	ili9341_disable(&ili->panel);
> +	ili9341_unprepare(&ili->panel);
> +
> +	return 0;
> +}
> +
> +static const struct ili9341_config dt024ctft_data = {
> +	.width_mm = 37,
> +	.height_mm = 49,
> +};
> +
> +static const struct of_device_id ili9341_of_match[] = {
> +	{ .compatible = "displaytech,dt024ctft", .data = &dt024ctft_data },
> +	{ /* sentinel */ }
> +};
If another display is supported then the drm_display_mode may not match.
So the above may not prove enough in the future.
for now it should be fine.


> +MODULE_DEVICE_TABLE(of, ili9341_of_match);
> +
> +static struct spi_driver ili9341_driver = {
> +	.probe = ili9341_probe,
> +	.remove = ili9341_remove,
> +	.driver = {
> +		.name = "panel-ilitek-ili9341",
> +		.of_match_table = ili9341_of_match,
> +	},
> +};
> +module_spi_driver(ili9341_driver);
> +
> +MODULE_AUTHOR("Josef Lusticky <josef@lusticky.cz>");
> +MODULE_DESCRIPTION("ILI9341 LCD panel driver");
> +MODULE_LICENSE("GPL");

Looks good.
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

	Sam
