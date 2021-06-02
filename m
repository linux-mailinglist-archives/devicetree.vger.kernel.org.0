Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67A32398719
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 12:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232093AbhFBK4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 06:56:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231855AbhFBKz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 06:55:57 -0400
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9086C061756
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 03:54:12 -0700 (PDT)
Received: by mail-io1-xd2c.google.com with SMTP id o21so1980231iow.13
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 03:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=piNVApdztpMA0HvwqW3guVVVhLc39YRp4B8zY7tBBUc=;
        b=KOt943zD8Pduq8YznAvC+muEoQACIYcXTuTHY/g7KP6rSDtMDo0dhsQ9teKfNUTCA7
         wsXX3EdJ7PhRgXlBcH45FyypMYf9XXZEnDstD255gsokSn/AiKajadCNbmE5FCNu2/eh
         XgGTzbdVPeIJKNhHWhnyx0Xhh4oND3T1JXj0mw2KnrfBh9kWevaKjHCPayUzCVKo5DLj
         s+oOBDvjPMm5/KVCObn1NxMsB1RppQ5DBxwHhJ/Kx5bZFpTX/d9VX4zwBhibw7sHdo2N
         DDnAjgUe91tEqNqtxdJIoJkASZW5II8r6O7/2njoy0mOEuHuXP/3HxFXwkNv9zCXvv7d
         mPFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=piNVApdztpMA0HvwqW3guVVVhLc39YRp4B8zY7tBBUc=;
        b=q6HG2JlXiEY3SlGzBa3VigtPAhWla+h18NSr+yJlSRxuKly+m2GJ/TeNQnYms56ZM2
         HG8DSpT/IBHityCq35fwiBtlV0o5P5+cJUpxq+Dr0YcT+MqvwbabColnP7zQZ9Fq9gtk
         ArEHLgzjCQIQUJRR19rA/EzeLe6b0DgcN+6AmfyabwrfCl9zOgKNUo3qZbbCCHYi750Y
         foHDAey9Rko07CV1awKQm0V/looFnT9WIQsuZ+z2bCfznKkMpi37So0ThCwOfZGqoY3h
         qawTEiu4WWG37BAZSYtgZCU0bHPTwXSqLfhR3Us1fokaXcf7FdB074mU4XMHoiGMUzP9
         Tkfg==
X-Gm-Message-State: AOAM5331viY2lXrirr7EYVDTpPlXLpjAdNlpYF5MSXBSfEyrMGi+Eu0k
        kXIyeyvF1ohR2fNw/vvyUUz283Yb0Rc/DHpYB0rntA==
X-Google-Smtp-Source: ABdhPJzxuyNIvSAVv0qegu4cf/hwzSPAhunZ1mYIelfjI14dyPk0H6TqrC/SLVyGL3VkKEvoaT0YQ5Skaku0xfZuWPE=
X-Received: by 2002:a5e:de08:: with SMTP id e8mr142927iok.25.1622631252201;
 Wed, 02 Jun 2021 03:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210531125143.257622-1-robert.marko@sartura.hr>
 <20210531125143.257622-5-robert.marko@sartura.hr> <20210602104719.GI2173308@dell>
In-Reply-To: <20210602104719.GI2173308@dell>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Wed, 2 Jun 2021 12:54:01 +0200
Message-ID: <CA+HBbNFVYOP9F_qZmQjaqaWoaXea7LVOXdP9CZnRbq3z5fjRoA@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] dt-bindings: mfd: Add Delta TN48M CPLD drivers bindings
To:     Lee Jones <lee.jones@linaro.org>
Cc:     linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, Luka Perkov <luka.perkov@sartura.hr>,
        jmp@epiphyte.org, Paul Menzel <pmenzel@molgen.mpg.de>,
        Donald Buczek <buczek@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 2, 2021 at 12:47 PM Lee Jones <lee.jones@linaro.org> wrote:
>
> On Mon, 31 May 2021, Robert Marko wrote:
>
> > Add binding documents for the Delta TN48M CPLD drivers.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> > Changes in v3:
> > * Include bindings for reset driver
> >
> > Changes in v2:
> > * Implement MFD as a simple I2C MFD
> > * Add GPIO bindings as separate
> >
> >  .../bindings/gpio/delta,tn48m-gpio.yaml       | 42 +++++++++
> >  .../bindings/mfd/delta,tn48m-cpld.yaml        | 90 +++++++++++++++++++
> >  .../bindings/reset/delta,tn48m-reset.yaml     | 35 ++++++++
> >  3 files changed, 167 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/gpio/delta,tn48m-=
gpio.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mfd/delta,tn48m-c=
pld.yaml
> >  create mode 100644 Documentation/devicetree/bindings/reset/delta,tn48m=
-reset.yaml
>
> > +++ b/Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
> > @@ -0,0 +1,90 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/delta,tn48m-cpld.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Delta Networks TN48M CPLD controller
> > +
> > +maintainers:
> > +  - Robert Marko <robert.marko@sartura.hr>
> > +
> > +description: |
> > +  Lattice CPLD onboard the TN48M switches is used for system
> > +  management.
> > +
> > +  It provides information about the hardware model, revision,
> > +  PSU status etc.
> > +
> > +  It is also being used as a GPIO expander for the SFP slots and
> > +  reset controller for the switch MAC-s and other peripherals.
> > +
> > +properties:
> > +  compatible:
> > +    const: delta,tn48m-cpld
> > +
> > +  reg:
> > +    description:
> > +      I2C device address.
> > +    maxItems: 1
> > +
> > +  "#address-cells":
> > +    const: 1
> > +
> > +  "#size-cells":
> > +    const: 0
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +
> > +patternProperties:
> > +  "^gpio(@[0-9a-f]+)?$":
> > +    $ref: ../gpio/delta,tn48m-gpio.yaml
> > +
> > +  "^reset-controller?$":
> > +    $ref: ../reset/delta,tn48m-reset.yaml
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    i2c {
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        cpld@41 {
> > +            compatible =3D "delta,tn48m-cpld";
> > +            reg =3D <0x41>;
> > +            #address-cells =3D <1>;
> > +            #size-cells =3D <0>;
> > +
> > +            gpio@31 {
> > +                compatible =3D "delta,tn48m-gpio-sfp-tx-disable";
> > +                reg =3D <0x31>;
> > +                gpio-controller;
> > +                #gpio-cells =3D <2>;
> > +            };
> > +
> > +            gpio@3a {
> > +                compatible =3D "delta,tn48m-gpio-sfp-present";
> > +                reg =3D <0x3a>;
> > +                gpio-controller;
> > +                #gpio-cells =3D <2>;
> > +            };
> > +
> > +            gpio@40 {
> > +                compatible =3D "delta,tn48m-gpio-sfp-los";
> > +                reg =3D <0x40>;
> > +                gpio-controller;
> > +                #gpio-cells =3D <2>;
> > +            };
> > +
> > +            reset-controller {
> > +              compatible =3D "delta,tn48m-reset";
> > +              #reset-cells =3D <1>;
> > +            };
>
> How is the Reset component addressed?
It has a defined register in the driver.
Now that I think of it, it would make sense to use reg for it like for the =
GPIO
and not hardcode it.

Regards,
Robert
>
> > +        };
> > +    };
>
> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
> Senior Technical Lead - Developer Services
> Linaro.org =E2=94=82 Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
