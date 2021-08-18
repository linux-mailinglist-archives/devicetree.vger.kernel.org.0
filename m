Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC5233F093A
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 18:35:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbhHRQgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 12:36:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229876AbhHRQgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 12:36:21 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6F66C061764
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 09:35:46 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id a12so2044803qtb.2
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 09:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tmJKiPNiKUUnrVK28O79vtI4WwJ+n5/qI9gqt4lxJV0=;
        b=Uqgz+YlCd644E1nHcpNKD3hcOu63kdexN8G9RaivLVMbuguxJE8f+8zR7BDdKEvult
         EiBCnAvuhVGJE8v251+3Cmdfa7AeOoA+WFdlr+oE9if+nyGJFVB7gl1m4m7uvUA6ZTtk
         XQgnbuPy3LAP9osbD/vYZIjNtCBBiG9zuuQa98WNek3XrNdrnV5mm+sVB4qCHmRTVw6q
         oOpjB9YXQfaBx/NtrzqAkbuSy2UyOSC2FmAgoIq8dUmGmoPSh+4FMPHbrattflzmQAB1
         FsZ+TcjN3T0Osj4VsStSjVx+n0MDkn8oA42WEWDRLOCad67d/Wh8Fw45utdGsFbR9wcB
         nYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tmJKiPNiKUUnrVK28O79vtI4WwJ+n5/qI9gqt4lxJV0=;
        b=ei+/VibebapaRkDWRk5KQ88eSL5V6LfiFPbiEVa1/T2n2joyaE/NYZ86VJP7v40FNB
         Ujyjm6dFFu3YSEqXqdwSZ2Ud7PlWGtsEcSDBE8XwLl+uF89T+UACV3yLSg3pJ3lxo5pY
         szgmrDt+AjdkteTXor46Urfhz9ipmx9K5RmcOrRN0tZC+INsRa6bqSsRkNXw4EH5v16q
         ESZkSk/Z1PzFaY2EmN7prRpmMo3OawKEeoryRIk3flgZxDTtNMQ4OqjLy/ruAYTi6xg0
         Wus7Vs/ZAVQ5XXHJgKzx+Oo2sCMtIFwIzYJH5cI+2jKn6aHUbr+kz5IrheucjYNzVKAF
         H19w==
X-Gm-Message-State: AOAM530Bi6p63215VUd55tLt8vikiYMbtMHS/kRpHdDeAwFY++ZGwmWB
        +57Y3Gy5vJ7Y1+KGRHrUI+zvVDOt3OeuZpZRLlKcEg==
X-Google-Smtp-Source: ABdhPJyM9GTUAdEVWW9wP55hLFkgh/hK2KFTCGO7ikXX5jaanF4dFriXRfHHwwmicjraycKA0Rx7gdL7bNdmpyu0rn0=
X-Received: by 2002:ac8:66da:: with SMTP id m26mr8470973qtp.273.1629304545753;
 Wed, 18 Aug 2021 09:35:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210809184712.203791-1-dmitry.baryshkov@linaro.org>
 <20210809184712.203791-2-dmitry.baryshkov@linaro.org> <YRwFqzIqwmkjgFAv@robh.at.kernel.org>
In-Reply-To: <YRwFqzIqwmkjgFAv@robh.at.kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 18 Aug 2021 19:35:34 +0300
Message-ID: <CAA8EJprpxkMrMyLkqF1bY9ftZt_vs=Kkdu6fxsfadTjg4w0fdg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: add bindings for the Sharp
 LS060T1SX01 panel
To:     Rob Herring <robh@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 17 Aug 2021 at 21:53, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Aug 09, 2021 at 09:47:11PM +0300, Dmitry Baryshkov wrote:
> > Add devicetree bindings for the Sharp LS060T1SX01 6.0" FullHD panel
> > using NT35695 driver. This panel can be found i.e. in the Dragonboard
> > Display Adapter bundle.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../display/panel/sharp,ls060t1sx01.yaml      | 51 +++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml b/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
> > new file mode 100644
> > index 000000000000..c4af5e7f6f39
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
> > @@ -0,0 +1,51 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/sharp,ls060t1sx01.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Sharp Microelectronics 6.0" FullHD TFT LCD panel
> > +
> > +maintainers:
> > +  - Dmitry Baryskov <dmitry.baryshkov@linaro.org>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: sharp,ls060t1sx01
> > +
> > +  reg: true
> > +  backlight: true
> > +  reset-gpios: true
> > +  port: true
> > +
> > +  avdd-supply:
> > +    description: handle of the regulator that provides the supply voltage
>
> Single supply? Use simple-panel binding. Or are your supplies
> incomplete?

True. I'll extend them in v2 according to the datasheet.

>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - avdd-supply
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    dsi {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        panel@0 {
> > +            compatible = "sharp,ls060t1sx01";
> > +            reg = <0>;
> > +            avdd-supply = <&pm8941_l22>;
> > +            backlight = <&backlight>;
> > +            reset-gpios = <&pm8916_gpios 25 GPIO_ACTIVE_LOW>;
> > +        };
> > +    };
> > +
> > +...
> > --
> > 2.30.2
> >
> >



-- 
With best wishes
Dmitry
