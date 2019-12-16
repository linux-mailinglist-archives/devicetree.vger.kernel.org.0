Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAE9B12022F
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2019 11:21:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727229AbfLPKTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Dec 2019 05:19:37 -0500
Received: from mail-qt1-f196.google.com ([209.85.160.196]:39021 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727224AbfLPKTh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Dec 2019 05:19:37 -0500
Received: by mail-qt1-f196.google.com with SMTP id e5so4051926qtm.6
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 02:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ui1c9Y6dD99W6Khx+UM3GayAgwiTKG7dGHroyFCHCFw=;
        b=BcLYAjEWWxr47Go39e8DSJQ3tIYRI2cNBvmCkh9X4sWOyUqsqa2mo7nzIna/soPCh8
         lnjE48cuNzRNXrL9jt9gpYyRcI5WS5YIYi+8dZMY8wKfMiM127tpW8Zf9TU5uB8GMR25
         ojWUui8VTY0woxk5GQN6dPAWN9cWg2L2b0DQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ui1c9Y6dD99W6Khx+UM3GayAgwiTKG7dGHroyFCHCFw=;
        b=bxRNAW4p6So59ZNoFjZFyZZDibFQThO0TgeH3b45jMukwxlla3kWo5bf+gtZQaj7ly
         s1cNlTsKzicisXQSIr/LBwtED5IRXQMtD2JwoQgaAhf1Y/uEfXKq0lYI+1+AgDSGogcS
         o8DHveM6kO2GZ4m0kgeHsrl6Qiwu9021fUJkItG2CB6CTrlLG+sdHk4weU3gkpTYd1zC
         G2RZmwAGWENuPeviuOqdkUVsxLUXOqVXxaiSEt6eKZ3SmqUB78HovCISEpniOlH2piIp
         dME29YZESCXVJjP8O7tIwk/ZFRJqZyoE3z2K4PdtIkifdmSfSViPiiFcoS8ffIsNdus0
         yiQA==
X-Gm-Message-State: APjAAAUNiUOXegJ7L9/AHy+h7Ojet2Utoscz0SdNbRdIar+bbRd2G8jO
        NqIaMkH5HoOz2bSpBOCj2O1PAa4xw4jaHRMFDV6+xg==
X-Google-Smtp-Source: APXvYqx3C2Qa4BrgHElceO35w40MEmAWZKPrgPEQfSGXCQpXZ7aO22lSc8cg3VhqBHMiWjpy6gwDXUi+zTZaeV5kHjk=
X-Received: by 2002:ac8:4446:: with SMTP id m6mr9731503qtn.159.1576491575693;
 Mon, 16 Dec 2019 02:19:35 -0800 (PST)
MIME-Version: 1.0
References: <20191211061911.238393-1-hsinyi@chromium.org> <20191211061911.238393-3-hsinyi@chromium.org>
 <20191213223816.GS4860@pendragon.ideasonboard.com> <CAJMQK-gFn8WeokxGfAZ-akNvdEbQhPj_3Ax2sD7Ti6JcSvjF4g@mail.gmail.com>
In-Reply-To: <CAJMQK-gFn8WeokxGfAZ-akNvdEbQhPj_3Ax2sD7Ti6JcSvjF4g@mail.gmail.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Mon, 16 Dec 2019 18:19:24 +0800
Message-ID: <CANMq1KDh=ehp0RDFRLQ5OCTibrK=Uzp2UFVLM+7AhwpVp-X=yQ@mail.gmail.com>
Subject: Re: [PATCH RESEND 2/4] drm: bridge: anx7688: Add anx7688 bridge
 driver support.
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Brugger <mbrugger@suse.com>,
        Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 16, 2019 at 4:46 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Sat, Dec 14, 2019 at 6:38 AM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > Hi Hsin-Yi and Nicolas,
> >
> > Thank you for the patch.
> >
> > On Wed, Dec 11, 2019 at 02:19:09PM +0800, Hsin-Yi Wang wrote:
> > > From: Nicolas Boichat <drinkcat@chromium.org>
> > >
> > > ANX7688 is a HDMI to DP converter (as well as USB-C port controller),
> > > that has an internal microcontroller.
> > >
> > > The only reason a Linux kernel driver is necessary is to reject
> > > resolutions that require more bandwidth than what is available on
> > > the DP side. DP bandwidth and lane count are reported by the bridge
> > > via 2 registers on I2C.
> >
> > How about power, doesn't this chip have power supplies that potentially
> > need to be controlled ?
> >
> Ideally we should add power supplies as well, but the power is
> supplied by ec in mt8173 oak board. And we only have this board can
> test this driver. If we add power supplies in driver we can't test it.

To clarify a bit more, this is because this chip is actually a
TCPC+mux+HDMI=>DP converter
(https://www.analogix.com/en/products/convertersbridges/anx7688). In
Chromebook architecture, TCPC+mux is controlled by the EC (including
power and other control pins), and the only reason we need a driver
for the HDMI=>DP converter is to get the number of lanes on the DP
side and filter out resolutions. Also, the converter is on a different
I2C address and it could almost be considered as a separate device.

(of course we could write a kernel driver for the TCPC+mux but we'll
leave that to others if there's ever a board that is built with the
TCPC part connected to the AP)

> > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > ---
> > >  drivers/gpu/drm/bridge/Kconfig            |   9 +
> > >  drivers/gpu/drm/bridge/Makefile           |   1 +
> > >  drivers/gpu/drm/bridge/analogix-anx7688.c | 202 ++++++++++++++++++++++
> > >  3 files changed, 212 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/bridge/analogix-anx7688.c
> > >
> > > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> > > index 34362976cd6f..1f3fc6bec842 100644
> > > --- a/drivers/gpu/drm/bridge/Kconfig
> > > +++ b/drivers/gpu/drm/bridge/Kconfig
> > > @@ -16,6 +16,15 @@ config DRM_PANEL_BRIDGE
> > >  menu "Display Interface Bridges"
> > >       depends on DRM && DRM_BRIDGE
> > >
> > > +config DRM_ANALOGIX_ANX7688
> > > +     tristate "Analogix ANX7688 bridge"
> > > +     select DRM_KMS_HELPER
> > > +     select REGMAP_I2C
> > > +     ---help---
> > > +       ANX7688 is a transmitter to support DisplayPort over USB-C for
> > > +       smartphone and tablets.
> > > +       This driver only supports the HDMI to DP component of the chip.
> > > +
> > >  config DRM_ANALOGIX_ANX78XX
> > >       tristate "Analogix ANX78XX bridge"
> > >       select DRM_KMS_HELPER
> > > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> > > index 4934fcf5a6f8..7a1e0ec032e6 100644
> > > --- a/drivers/gpu/drm/bridge/Makefile
> > > +++ b/drivers/gpu/drm/bridge/Makefile
> > > @@ -1,4 +1,5 @@
> > >  # SPDX-License-Identifier: GPL-2.0
> > > +obj-$(CONFIG_DRM_ANALOGIX_ANX7688) += analogix-anx7688.o
> > >  obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
> > >  obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
> > >  obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
> > > diff --git a/drivers/gpu/drm/bridge/analogix-anx7688.c b/drivers/gpu/drm/bridge/analogix-anx7688.c
> > > new file mode 100644
> > > index 000000000000..baaed48d6201
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/bridge/analogix-anx7688.c
> > > @@ -0,0 +1,202 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * ANX7688 HDMI->DP bridge driver
> > > + *
> > > + * Copyright 2016 Google LLC
> > > + */
> > > +
> > > +#include <linux/i2c.h>
> > > +#include <linux/module.h>
> > > +#include <linux/regmap.h>
> > > +#include <drm/drm_bridge.h>
> > > +
> > > +/* Register addresses */
> > > +#define VENDOR_ID_REG 0x00
> > > +#define DEVICE_ID_REG 0x02
> > > +
> > > +#define FW_VERSION_REG 0x80
> > > +
> > > +#define DP_BANDWIDTH_REG 0x85
> > > +#define DP_LANE_COUNT_REG 0x86
> >
> > Are these registers defined by the ANX7688 hardware, or by the firmware
> > running on the chip (and, I assume, developed by Google) ?
> >
> By firmware developed by ANX provided to Google.

We asked for these registers to be added to ANX FW, and this is the FW
that is used by all elm/hana Chromebooks (I have no idea about other
ANX customers...). We have facilities to update the ANX FW from
coreboot/depthcharge on Chromebooks, but that does not really matter:
the factory FW of all MP Chromebooks does provide these registers.

Thanks.
