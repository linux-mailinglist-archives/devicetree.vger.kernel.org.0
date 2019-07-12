Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3D0266A7E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2019 11:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725989AbfGLJxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Jul 2019 05:53:48 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:39377 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726002AbfGLJxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Jul 2019 05:53:48 -0400
Received: by mail-ua1-f67.google.com with SMTP id j8so3768850uan.6
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2019 02:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lusticky.cz; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=i1wkejbjv6DBXNpjQWfZVC15Bs9j7hu3Hk9wVB6HKH8=;
        b=aKMIgwab9BdITwlFm/FuUJyhNukK3AyWS7gH8sHbqKIdbxp23e3XWQZYi+8LOO5r00
         jfl+ZA7O8Epg9VOL0H+5Pl92BYcmQ9K4Qx8YlPU2pwohRF8PaD+bPeU4aw4ANjZjIpo6
         4jVe51CIAQiuxPE188U8XmRiqNTrTJR3QgNJcwkHp+/tolJGUiBHg/C1z9si4ZwHIe6W
         NEOcT/r0/Rabzp856l2hifR2aHXTx0LJMDQm+GR4xsiVMfFjzyOvdTYjR7WgJKQ+x6P5
         qcY+L/lnO7rQh9+++ln6VcgfsXvOjvJZGBNVyvEGg1FUgaqDaFtZM5Hd0Wg/6xqbUaHk
         iQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=i1wkejbjv6DBXNpjQWfZVC15Bs9j7hu3Hk9wVB6HKH8=;
        b=sisML3Gp1NNiO0z6EFn7RlqO4oGovmKUuaa7/mVyHFvZqq/GAUak6fZcRa4dFQwRGo
         4mqZlfhnVwdV4LW2fvX7k4ueHkB8sXSlvxzdqWoUejaWEBmqI0sCYqyg0K9GxfpZcwZA
         9tZgZLf9CagRBd/h08p+H7hr2D+mGwl1MMPfUmpMwQbMKZLPDNRU3Hzn//gRzcEwIgRb
         tP4k+IMVIMqqkCbclebmx2pobURxwugI1yURC0DttAft7Ithc/B5mbhcJbFUOKgDnnAL
         i9yX/HF3qX0EIKZYlSOsmDy35NfizUQ/TKacCV5hYyoVxOlcTbP3TupLYmx/XLOOBQuA
         0MgQ==
X-Gm-Message-State: APjAAAVpF9miFhf/bwnsl13UQXh4Et13ZTXd09CquLWv2wGq1Hpr158C
        7ldv+a3m7YgYQMv59QvgskuRXNyMfEpVco6fv+o=
X-Google-Smtp-Source: APXvYqzxv/pA9tgbuvUvoUi3gY00s34FMUNO3MtyLWGmGMO8CAeq7XusmO6qErjtPpI50Deq5z4RFD39CV/ED+pCUvk=
X-Received: by 2002:ab0:7006:: with SMTP id k6mr7874001ual.42.1562925225945;
 Fri, 12 Jul 2019 02:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190304125033.28841-1-josef@lusticky.cz> <20190708145618.26031-1-josef@lusticky.cz>
 <20190708145618.26031-3-josef@lusticky.cz> <20190710134722.GC11791@ravnborg.org>
In-Reply-To: <20190710134722.GC11791@ravnborg.org>
From:   =?UTF-8?B?Sm9zZWYgTHXFoXRpY2vDvQ==?= <josef@lusticky.cz>
Date:   Fri, 12 Jul 2019 11:53:09 +0200
Message-ID: <CAMqqaJHMmBckVhMj5q-eOthZtwwaQKFiF7hSb3G1G4ZpLZo6zQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/panel: Add Ilitek ILI9341 parallel RGB panel driver
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        thierry.reding@gmail.com, airlied@linux.ie
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,
thank you for comments.

st 10. 7. 2019 v 15:47 odes=C3=ADlatel Sam Ravnborg <sam@ravnborg.org> naps=
al:
>
> Hi Josef.
>
> Thanks for updating the driver.
>
> On Mon, Jul 08, 2019 at 04:56:18PM +0200, Josef Lusticky wrote:
> > Add driver for Ilitek ILI9341 panels in parallel RGB mode
> >
> > Signed-off-by: Josef Lusticky <josef@lusticky.cz>
> > + */
> > +
> > +#include <linux/backlight.h>
> > +#include <linux/delay.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h>
> > +#include <linux/spi/spi.h>
> > +
> > +#include <video/mipi_display.h>
> > +
> > +#include <drm/drm_modes.h>
> > +#include <drm/drm_panel.h>
> > +#include <drm/drm_print.h>
> > +#include <drm/tinydrm/mipi-dbi.h>
> Good to see drivers that no longer uses drmP.h :-)
>
> > +
> > +/* ILI9341 extended register set (Vendor Command Set) */
> > +#define ILI9341_IFMODE         0xB0 // clock polarity
> > +#define ILI9341_IFCTL          0xF6 // interface conrol
> > +#define ILI9341_PGAMCTRL       0xE0 // positive gamma control
> > +#define ILI9341_NGAMCTRL       0xE1 // negative gamma control
> > +
> > +#define ILI9341_MADCTL_MV      BIT(5)
> > +#define ILI9341_MADCTL_MX      BIT(6)
> > +#define ILI9341_MADCTL_MY      BIT(7)
> > +
> > +/**
> > + * struct ili9341_config - the display specific configuration
> > + * @width_mm: physical panel width [mm]
> > + * @height_mm: physical panel height [mm]
> > + */
> > +struct ili9341_config {
> > +     u32 width_mm;
> > +     u32 height_mm;
> > +};
> > +
> > +struct ili9341 {
> > +     struct drm_panel panel;
> > +     struct mipi_dbi *mipi;
> > +     const struct ili9341_config *conf;
> > +};
> > +
> > +static inline struct ili9341 *panel_to_ili9341(struct drm_panel *panel=
)
> > +{
> > +     return container_of(panel, struct ili9341, panel);
> > +}
> > +
> > +static int ili9341_deinit(struct drm_panel *panel, struct ili9341 *ili=
)
> > +{
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_SET_DISPLAY_OFF);
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_ENTER_SLEEP_MODE);
> > +     msleep(5);
> > +     return 0;
> > +}
> > +
> > +static int ili9341_init(struct drm_panel *panel, struct ili9341 *ili)
> > +{
> > +     /* HW / SW Reset display and wait */
> > +     if (ili->mipi->reset)
> > +             mipi_dbi_hw_reset(ili->mipi);
> > +
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_SOFT_RESET);
> > +     msleep(120);
> Consider a usleep_range here - to have the waiting a little more relaxed
> in the system.
>

I am using msleep here as it is recommended for sleeping for 10ms+
by Documentation/timers/timers-howto.txt.
Anyway, I'll change this to call the
mipi_dbi_poweron_reset():mipi_dbi.c function,
which does the same as above.
Plus, I should change the msleep(5) in ili9341_deinit() to
usleep_range(5000, 20000).

> > +
> > +     /* Polarity */
> > +     mipi_dbi_command(ili->mipi, ILI9341_IFMODE, 0xC0);
> > +
> > +     /* Interface control */
> > +     mipi_dbi_command(ili->mipi, ILI9341_IFCTL, 0x09, 0x01, 0x26);
> > +
> > +     /* Pixel format */
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_P=
IXEL_FMT_18BIT << 4);
> > +
> > +     /* Gamma */
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_SET_GAMMA_CURVE, 0x01);
> > +     mipi_dbi_command(ili->mipi, ILI9341_PGAMCTRL,
> > +             0x0f, 0x31, 0x2b, 0x0c, 0x0e, 0x08, 0x4e, 0xf1,
> > +             0x37, 0x07, 0x10, 0x03, 0x0e, 0x09, 0x00);
> > +     mipi_dbi_command(ili->mipi, ILI9341_NGAMCTRL,
> > +             0x00, 0x0e, 0x14, 0x03, 0x11, 0x07, 0x31, 0xc1,
> > +             0x48, 0x08, 0x0f, 0x0c, 0x31, 0x36, 0x0f);
> > +
> > +     /* Rotation */
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_SET_ADDRESS_MODE, ILI9341_MA=
DCTL_MX);
> > +
> > +     /* Exit sleep mode */
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_EXIT_SLEEP_MODE);
> > +     msleep(120);
> > +
> > +     mipi_dbi_command(ili->mipi, MIPI_DCS_SET_DISPLAY_ON);
> > +
> > +     return 0;
> > +}
> > +
> > +static int ili9341_unprepare(struct drm_panel *panel)
> > +{
> > +     struct ili9341 *ili =3D panel_to_ili9341(panel);
> > +
> > +     return ili9341_deinit(panel, ili);
> > +}
> > +
> > +static int ili9341_prepare(struct drm_panel *panel)
> > +{
> > +     struct ili9341 *ili =3D panel_to_ili9341(panel);
> > +     int ret;
> > +
> > +     ret =3D ili9341_init(panel, ili);
> > +     if (ret < 0)
> > +             ili9341_unprepare(panel);
> > +     return ret;
> > +}
> > +
> > +static int ili9341_enable(struct drm_panel *panel)
> > +{
> > +     struct ili9341 *ili =3D panel_to_ili9341(panel);
> > +
> > +     return backlight_enable(ili->mipi->backlight);
> > +}
> > +
> > +static int ili9341_disable(struct drm_panel *panel)
> > +{
> > +     struct ili9341 *ili =3D panel_to_ili9341(panel);
> > +
> > +     return backlight_disable(ili->mipi->backlight);
> > +}
> > +
> > +static const struct drm_display_mode prgb_240x320_mode =3D {
> > +     .clock =3D 6350,
> > +
> > +     .hdisplay =3D 240,
> > +     .hsync_start =3D 240 + 10,
> > +     .hsync_end =3D 240 + 10 + 10,
> > +     .htotal =3D 240 + 10 + 10 + 20,
> > +
> > +     .vdisplay =3D 320,
> > +     .vsync_start =3D 320 + 4,
> > +     .vsync_end =3D 320 + 4 + 2,
> > +     .vtotal =3D 320 + 4 + 2 + 2,
> > +
> > +     .flags =3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> > +     .type =3D DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED
> > +};
> > +
> > +static int ili9341_get_modes(struct drm_panel *panel)
> > +{
> > +     struct drm_connector *connector =3D panel->connector;
> > +     struct ili9341 *ili =3D panel_to_ili9341(panel);
> > +     struct drm_display_mode *mode;
> > +
> > +     mode =3D drm_mode_duplicate(panel->drm, &prgb_240x320_mode);
> > +     if (!mode) {
> > +             DRM_DEV_ERROR(panel->drm->dev, "bad mode or failed to add=
 mode\n");
> > +             return -ENOMEM;
> > +     }
> > +
> > +     drm_mode_set_name(mode);
> > +
> > +     mode->width_mm =3D ili->conf->width_mm;
> > +     mode->height_mm =3D ili->conf->height_mm;
> > +
> > +     connector->display_info.width_mm =3D mode->width_mm;
> > +     connector->display_info.height_mm =3D mode->height_mm;
> > +     connector->display_info.bus_flags |=3D DRM_BUS_FLAG_DE_HIGH |
> > +             DRM_BUS_FLAG_PIXDATA_POSEDGE | DRM_BUS_FLAG_SYNC_NEGEDGE;
> > +
> > +     drm_mode_probed_add(connector, mode);
> > +
> > +     return 1; /* Number of modes */
> > +}
> > +
> > +static const struct drm_panel_funcs ili9341_drm_funcs =3D {
> > +     .disable =3D ili9341_disable,
> > +     .unprepare =3D ili9341_unprepare,
> > +     .prepare =3D ili9341_prepare,
> > +     .enable =3D ili9341_enable,
> > +     .get_modes =3D ili9341_get_modes,
> > +};
> > +
> > +static int ili9341_probe(struct spi_device *spi)
> > +{
> > +     struct device *dev =3D &spi->dev;
> > +     struct ili9341 *ili;
> > +     struct mipi_dbi *mipi;
> > +     struct gpio_desc *dc_gpio;
> > +     int ret;
> > +
> > +     mipi =3D devm_kzalloc(dev, sizeof(*mipi), GFP_KERNEL);
> > +     if (!mipi)
> > +             return -ENOMEM;
> > +
> > +     ili =3D devm_kzalloc(dev, sizeof(*ili), GFP_KERNEL);
> > +     if (!ili)
> > +             return -ENOMEM;
> > +
> > +     ili->mipi =3D mipi;
> > +
> > +     spi_set_drvdata(spi, ili);
> > +
> > +     /*
> > +      * Every new incarnation of this display must have a unique
> > +      * data entry for the system in this driver.
> > +      */
> > +     ili->conf =3D of_device_get_match_data(dev);
> > +     if (!ili->conf) {
> > +             DRM_DEV_ERROR(dev, "missing device configuration\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     ili->mipi->reset =3D devm_gpiod_get_optional(dev, "reset", GPIOD_=
OUT_HIGH);
> > +     if (IS_ERR(ili->mipi->reset)) {
> > +             DRM_DEV_ERROR(dev, "failed to get gpio 'reset'\n");
> > +             return PTR_ERR(ili->mipi->reset);
> > +     }
> > +
> > +     ili->mipi->backlight =3D devm_of_find_backlight(dev);
> > +     if (IS_ERR(ili->mipi->backlight)) {
> > +             DRM_DEV_ERROR(dev, "failed to get backlight\n");
> > +             return PTR_ERR(ili->mipi->backlight);
> > +     }
> > +
> > +     dc_gpio =3D devm_gpiod_get_optional(dev, "dc", GPIOD_OUT_LOW);
> > +     if (IS_ERR(dc_gpio)) {
> > +             DRM_DEV_ERROR(dev, "failed to get gpio 'dc'\n");
> > +             return PTR_ERR(dc_gpio);
> > +     }
> > +
> > +     ret =3D mipi_dbi_spi_init(spi, ili->mipi, dc_gpio);
> > +     if (ret) {
> > +             DRM_DEV_ERROR(dev, "MIPI-DBI SPI setup failed\n");
> > +             return ret;
> > +     }
> > +
> > +     drm_panel_init(&ili->panel);
> > +     ili->panel.dev =3D dev;
> > +     ili->panel.funcs =3D &ili9341_drm_funcs;
> > +
> > +     return drm_panel_add(&ili->panel);
> > +}
> > +
> > +static int ili9341_remove(struct spi_device *spi)
> > +{
> > +     struct ili9341 *ili =3D spi_get_drvdata(spi);
> > +
> > +     drm_panel_remove(&ili->panel);
> > +
> > +     ili9341_disable(&ili->panel);
> > +     ili9341_unprepare(&ili->panel);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct ili9341_config dt024ctft_data =3D {
> > +     .width_mm =3D 37,
> > +     .height_mm =3D 49,
> > +};
> > +
> > +static const struct of_device_id ili9341_of_match[] =3D {
> > +     { .compatible =3D "displaytech,dt024ctft", .data =3D &dt024ctft_d=
ata },
> > +     { /* sentinel */ }
> > +};
> If another display is supported then the drm_display_mode may not match.
> So the above may not prove enough in the future.
> for now it should be fine.
>
>
> > +MODULE_DEVICE_TABLE(of, ili9341_of_match);
> > +
> > +static struct spi_driver ili9341_driver =3D {
> > +     .probe =3D ili9341_probe,
> > +     .remove =3D ili9341_remove,
> > +     .driver =3D {
> > +             .name =3D "panel-ilitek-ili9341",
> > +             .of_match_table =3D ili9341_of_match,
> > +     },
> > +};
> > +module_spi_driver(ili9341_driver);
> > +
> > +MODULE_AUTHOR("Josef Lusticky <josef@lusticky.cz>");
> > +MODULE_DESCRIPTION("ILI9341 LCD panel driver");
> > +MODULE_LICENSE("GPL");
>
> Looks good.
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
>
>         Sam

Thank you!
Josef
