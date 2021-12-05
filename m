Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 454C7468D0D
	for <lists+devicetree@lfdr.de>; Sun,  5 Dec 2021 20:46:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238150AbhLETuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Dec 2021 14:50:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233648AbhLETuH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Dec 2021 14:50:07 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33548C061714
        for <devicetree@vger.kernel.org>; Sun,  5 Dec 2021 11:46:40 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id o4so17481652oia.10
        for <devicetree@vger.kernel.org>; Sun, 05 Dec 2021 11:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EcFKiX7xbKqkQNXA7B58bii58XjgqxU59DDHx7WJlQI=;
        b=fziO+LbTAROemtggbzAuNFIUyuvFQ5kz6OBRYrtdUf+LMsEIFXSHQQfHVpIzQQIsRJ
         RCIEfxbp5qYZe1sSnJI2jSHYYAt4EFxJWHu+GWQAHTczGqgRPcSC5MYSeohUJ+/3ryI3
         4lqXzXdptThMXbLjRC/5yivLLC7KkRHFo/8jRDMtPHYYoqf3umu9v1GOKn0V/G136Ej5
         w7m9vyZNLObByWYGemLunYoNGPvRfAdpYDaBbO0CsVjxk7YjJGRzAj58wuJd0k684KrZ
         8kMSBdE1p6blQoi27X7Sykps4xxBuwAvVDnm/HIDrW8/lTd9LSqElQ63W2NQ1j9yi7lA
         xMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EcFKiX7xbKqkQNXA7B58bii58XjgqxU59DDHx7WJlQI=;
        b=edtj3CWAk3Qky45iGzh8zO48s+fh4xAV5dShtq+kIA1gYPSXKkCuLvRfQ3Pfus0j+H
         rAGhp9Et1AzrBVNqPzdwUmluh5nAnmHALU7p3dAZP8X3cCFbWJ5ijd9kTuMDxM0wX1vi
         XqYwDHmVS6p3umm15raa5XNtcaFjGMBdWBoyFm7Q06G3DpOE0zk/c7a5MqOtIGcj2cMp
         LdYIGd0SsvivW+OAX8gPgs8LFZQ+34zhRFjFHpdLIHgZ3yqOYO/UF/a4jnhhZ//seTFw
         vXo6p8F62tHVQatMqXNC+s9HteTibnOYhEOfhMc0AjI2o9A1aKcoXa3WLOYcSbZ+6gln
         l8vQ==
X-Gm-Message-State: AOAM531LCl4S73xtjXeC3Qb8Gbz51xp5UvXm0K3Dp9t3k23MpBz3KEEr
        slJRA3IPQwXa5ySFM/2zpRoD2CmuOBHMDMFbc4wmGg==
X-Google-Smtp-Source: ABdhPJwDo16TQrPKVqAGuE0uBJ0FxE7MYgH77QQwApEKH62cTw8KZncd3gIBXH/r97N6WrjrnctIHelwjHLoH3qrV28=
X-Received: by 2002:aca:120f:: with SMTP id 15mr19749633ois.132.1638733599530;
 Sun, 05 Dec 2021 11:46:39 -0800 (PST)
MIME-Version: 1.0
References: <20211118141233.247907-1-boger@wirenboard.com> <20211118141233.247907-3-boger@wirenboard.com>
 <20211122104915.zism6uadgwxjz5d2@gilmour> <d1a18116-e198-1b26-d73a-36fbf31aaa81@wirenboard.com>
 <35630e89-4988-a6a9-b801-0e9e44419684@sholland.org> <206c2a66-42b9-7e07-66c3-6007b010c996@wirenboard.com>
 <20211201110241.kts5caycdmzqtp3i@fiqs> <4fd167ed-d5dc-358a-00f5-6590f4c20a68@wirenboard.com>
 <20211203204754.2ucaiiwyrvbtwgbz@earth.universe> <20211204152621.4f15b3d0@jic23-huawei>
 <CACRpkdZ+WWz7JoyE3a1Ra8dx27YcHH6zRNcTmNJyX_vfcu0n7w@mail.gmail.com> <a45c37e5-caa3-e5e4-62d2-e2418ed95441@wirenboard.com>
In-Reply-To: <a45c37e5-caa3-e5e4-62d2-e2418ed95441@wirenboard.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 5 Dec 2021 20:46:24 +0100
Message-ID: <CACRpkdaxXQD-VxSg-zouRTwWJUQbVPJJRvEn8=kV-8BK77xrfQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: iio: adc: document TS voltage in AXP PMICs
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Quentin Schulz <foss+kernel@0leil.net>,
        Samuel Holland <samuel@sholland.org>,
        Maxime Ripard <maxime@cerno.tech>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-sunxi@lists.linux.dev, linux-pm@vger.kernel.org,
        Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 5, 2021 at 11:50 AM Evgeny Boger <boger@wirenboard.com> wrote:

> >> Agreed those tables would be needed whatever the solution.  We might
> >> stick to 'standard' tables for simple cases but someone will always wire
> >> a circuit up that does something we haven't thought of.
> > What we usually do is model the wiring in the device tree like we (I) have
> > already done with much pain in:
> > Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
>
> Earlier in this thread I mentioned our use case with AXP221s: we ended
> up wiring 10k NTC in series with 12k fixed resistance.
> The only reason was to work around poorly-designed AXP NTC detection
> "feature", which would turn off protection whenever
> the voltage on TS pin drops below 0.2V.
>
> How would you suggest to handle such a wiring?

Correct me if I'm wrong but it is pretty standard to connect an extra
resistor in series with a thermistor, for example batteries often have
an BTI "Battery Type Indicator" resistor in series with the thermistor.

If you check the NTC bindings:
Documentation/devicetree/bindings/hwmon/ntc-thermistor.yaml
they already cover this, in two different ways depending of how
the voltage is measured and if the resistor is in series with the
thermistor to ground or to VCC.

The thermistor table goes in the driver for the 10k resistor
and the 12k resistor is pullup-ohm or pulldown-ohm.

> > battery: battery {
> >          compatible = "simple-battery";
> >
> >          ntc-resistor {
> >                  ...
> >          };
> > };
> >
> > For the Samsung batteries my plan is to spawn a platform device from inside the
> > Samsung battery driver and add pull-down resistor value and
> > compatible using software nodes from within the kernel.
>
> In this example, the ntc-resistor node will be handled by current NTC
> hwmon driver, right?

Yes

> Frankly, I'm quite confused about hwmon vs iio choice in this case.
> Wouldn't it be better to use iio here, say, by extending iio-afe?

The hwmon driver uses IIO for voltage sampling. It is in the hwmon
driver folder because the driver provides a temperature and for
historical reasons: it was used for hwmon use cases.

It is possible to refactor it to a driver in
drivers/iio/temperature/* if so desired, and make sure all users
are moved over and the Kconfig symbols are resolved to the
new driver. After that it can be used by hwmon using the
iio-to-hwmon bridge driver.

It's just work, someone who want to fix it can step in and submit
the patches and drive the change.

> But you still need to describe the particular NTC model in device tree,
> right?

No. Drivers can spawn devices including fwnode properties that will
work identical to a device spawn from a device tree node.

We can instatiate an NTC as a subdevice of a battery without
the need of sich a NTC node in the device tree, This is the
ambition of the fwnode concept,

Yours,
Linus Walleij
