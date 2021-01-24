Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D973E301EC7
	for <lists+devicetree@lfdr.de>; Sun, 24 Jan 2021 21:44:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726477AbhAXUnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Jan 2021 15:43:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726444AbhAXUns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Jan 2021 15:43:48 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BEBDC06174A
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 12:43:08 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id y19so22553440iov.2
        for <devicetree@vger.kernel.org>; Sun, 24 Jan 2021 12:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xvqt0wMUCgaJb2QCjgNdTwtimCxgRvZpl4rRhVBBS5I=;
        b=LmhOmYVIGy5XQClncUyexrRr2nyzzZ80LyVKXYcHeogY3kQlq9h27lGRCLlVKS6A2G
         /e2O5eXC1MYyJC0kVerfiTBR+g8dtlGlF2ydWCk8tPr6+F3H6zXaeDWJvYTf4Fyh7pJH
         oVnnUoS/qcenGu5Z0Sp8nk4fx5LOKw81YU+wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xvqt0wMUCgaJb2QCjgNdTwtimCxgRvZpl4rRhVBBS5I=;
        b=rSGNOFx+tTwIO8SRIT4k+tVlNiXeAmElZAxJSK4HI5W6jnYf3DuUivtTzmk4+Nxuf+
         awxyYc5+R7qC+nzkb31OWcfxNosGD45dMXvGNlAAShRfwaZYQj53Au3bq4jPcigw0pDm
         1qAk6N4GdSlswAp4QXtCjsewJ7sb+hTfCBMC/FmDgYz3jUQ4p3EMOV1yiT9reNKGhBNd
         6CKjWw7FXZpvtPnNVVP7QE73UNUQKtbe19JLZbCspxJg3t5KcDDcg5drbLutBQzZ9XuE
         xo6xwTprJumPNUx+YdDXwRdj4KseJ1c4o7ArmrNsUtEkHCABn9HXHj1SUsJIeFQyWy17
         4DiA==
X-Gm-Message-State: AOAM532X1It3MwoEQb9gtedgl+fgONvIlWcYxNsj7MwVNOL5Hr0bhnlQ
        0cqp3Vwm7w0sm2c1EZhf4o+egP/1vm684/0U/b+Exw==
X-Google-Smtp-Source: ABdhPJwype5xvCWqyKuPey1tYYGsPyFxF6WSVIwdk/KUZElF0gzRHJBgBfVCZ07FNu5ZO2JirfBz7bUG63o1LmxkCA8=
X-Received: by 2002:a05:6638:1b6:: with SMTP id b22mr623152jaq.52.1611520987222;
 Sun, 24 Jan 2021 12:43:07 -0800 (PST)
MIME-Version: 1.0
References: <20210122225443.186184-1-swboyd@chromium.org> <20210122225443.186184-3-swboyd@chromium.org>
 <20210124172756.69ef7c5a@archlinux>
In-Reply-To: <20210124172756.69ef7c5a@archlinux>
From:   Gwendal Grignou <gwendal@chromium.org>
Date:   Sun, 24 Jan 2021 12:42:56 -0800
Message-ID: <CAPUE2uvd+zyWQZm=LWM6sH7tCU8MUeZVo-zJrsWzLArXA1tROg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: iio: Add cros ec proximity yaml doc
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 24, 2021 at 9:28 AM Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Fri, 22 Jan 2021 14:54:42 -0800
> Stephen Boyd <swboyd@chromium.org> wrote:
>
> > Some cros ECs support a front proximity MKBP event via
> > 'EC_MKBP_FRONT_PROXIMITY'. Add a DT binding to document this feature via
> > a node that is a child of the main cros_ec device node. Devices that
> > have this ability will describe this in firmware.
> >
> > Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > Cc: Benson Leung <bleung@chromium.org>
> > Cc: Guenter Roeck <groeck@chromium.org>
> > Cc: Douglas Anderson <dianders@chromium.org>
> > Cc: Gwendal Grignou <gwendal@chromium.org>
> > Cc: <devicetree@vger.kernel.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> > ---
> >  .../proximity/google,cros-ec-proximity.yaml   | 37 +++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/proximity/google,cros-ec-proximity.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-proximity.yaml b/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-proximity.yaml
> > new file mode 100644
> > index 000000000000..c0a34bdfe4fd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/proximity/google,cros-ec-proximity.yaml
> > @@ -0,0 +1,37 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +
> > +$id: http://devicetree.org/schemas/iio/proximity/google,cros-ec-proximity.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ChromeOS EC MKBP Proximity Sensor
> > +
> > +maintainers:
> > +  - Stephen Boyd <swboyd@chromium.org>
> > +  - Benson Leung <bleung@chromium.org>
> > +  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
> > +
> > +description: |
> > +  Google's ChromeOS EC sometimes has the ability to detect user proximity.
> > +  This is implemented on the EC as near/far logic and exposed to the OS
> > +  via an MKBP switch bit.
> > +
> > +properties:
> > +  compatible:
> > +    const: google,cros-ec-proximity
Given we have proximity detection in cros_ec via specific sensor (si
1141) or algorithm (on-body/off-body via
MOTIONSENSE_ACTIVITY_BODY_DETECTION), can we name the property
cros-ec-mkbp-proximity?
> > +
> > +  label:
> > +    description: Name for proximity sensor
> > +
> > +required:
> > +  - compatible
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +    proximity {
>
> Can we at least have the example making it clear this is a child of the
> cros_ec device?
>
> > +        compatible = "google,cros-ec-proximity";
> > +        label = "proximity-wifi-lte";
> > +    };
>
