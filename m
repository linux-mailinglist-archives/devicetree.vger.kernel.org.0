Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D22F3345C19
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 11:43:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230298AbhCWKm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 06:42:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbhCWKme (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 06:42:34 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1781C061756
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 03:42:34 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id w8so9898402pjf.4
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 03:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=oMvMOVIe+KU4qjnJSB+FFaD+jlcKrEz6x5eQRXRwwRI=;
        b=vfDRr9dLtgwajRZGiE6ZTC+K+UbG3v8Bjrr35GBxq491Aiq80BSsEOv/TLmKhLI2RP
         fhrx+2/V1r779BvbKgOQTcrgv5syb6qISCe50pZyKExoBQF3tFhhDFBzYiCcI2FnfEZy
         4NCNaK72KZ+PihDt5FlcIVRqVJ4VOlTjnG3cU1mW4j5+3kfZ9ghPPZGxFCxAhc8wDy3K
         etgt8Bh38ixtJnPyGKEuy99WvyLARXYYdoM37RbzYClLwywgeD7P6Nuf5XAGm+CmX9zR
         DHY6xtOuVPRdwvPV0fBlr2wrD3PZ4rGHamjZe5t30mZhj/0kZVTXspdT58nC+2JGyWSJ
         Ecjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=oMvMOVIe+KU4qjnJSB+FFaD+jlcKrEz6x5eQRXRwwRI=;
        b=bLEUpLqyoQy3jTJPYV4dx3XtetzgJzC9ko8NLvpjY1UsJ3gQ1fEBxOT85XVmD8/YDc
         unCOdMmUZwkQiEj76FOO/lsPPwbrGatRzjMkqdYJkuSJZvhX48q/C5cEalOvM+QCTdRX
         f2/QGvvbn3xJxvLU7kt+OSN5lZA7i1zir1pGUxw8L29dIW7GKFV/2ydFLqUPw7i64zXw
         iJo5q7SJFV8J6mCT7treTw+Ypl4goLvFxAdbLGV7/PPEZsAvvwBTtIEKDDGd6+Q/VgEN
         J8vlhoxFe55s/5ac9NeSBYn6KNpta2yyXPCW3KqrUVi+9LuSq3IKCVMiOE22ShI5h+Bh
         Ph/A==
X-Gm-Message-State: AOAM5315+kqTzyxSsgvagnIUGccSJIvjuFbOSOgICl5d3mgyAnGUl/A6
        mh31gxbBCYdbyAorcBHz8N2tdXYrdFqfUK3hL9+jWw==
X-Google-Smtp-Source: ABdhPJzRh+arBWIbSBRi7xCksNcb/8or1R21ANpA1lUfvc8SPGjzUr89S/mzolqQ2jQU+cBUiIU1E0XmrwmFbQduOtk=
X-Received: by 2002:a17:90a:be07:: with SMTP id a7mr4016666pjs.75.1616496154215;
 Tue, 23 Mar 2021 03:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210308120555.252524-1-adrien.grassein@gmail.com>
 <20210308120555.252524-3-adrien.grassein@gmail.com> <CAG3jFytoE9hWvq2e2Caqn4qP_RuEOnm4r9VQ85ffbAcguSLf+w@mail.gmail.com>
 <CABkfQAGvPy3DzXQnDJqm1q_rOLWR7BQTXb8z05iML3s3Mc8LJw@mail.gmail.com>
In-Reply-To: <CABkfQAGvPy3DzXQnDJqm1q_rOLWR7BQTXb8z05iML3s3Mc8LJw@mail.gmail.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 23 Mar 2021 11:42:23 +0100
Message-ID: <CAG3jFytmJSjvWp0Bu7MaJ7EVuJov8gbs6cguatoOtTJpXTGVLA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] drm/bridge: Introduce LT8912B DSI to HDMI bridge
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 23 Mar 2021 at 11:01, Adrien Grassein <adrien.grassein@gmail.com> w=
rote:
>
> Hey Robert,
>
> Thanks for the update.
>
> Le mar. 23 mars 2021 =C3=A0 10:10, Robert Foss <robert.foss@linaro.org> a=
 =C3=A9crit :
> >
> > Hey Adrien,
> >
> > Sorry about the slow reply, but I just received the documentation from
> > the vendor. So let's dig in to the HPD issue.
>
> No problem :)
> >
> > > +static enum drm_connector_status lt8912_check_cable_status(struct lt=
8912 *lt)
> > > +{
> > > +       int ret;
> > > +       unsigned int reg_val;
> > > +
> > > +       ret =3D regmap_read(lt->regmap[I2C_MAIN], 0xC1, &reg_val);
> > > +       if (ret)
> > > +               return connector_status_unknown;
> > > +
> > > +       if (reg_val & BIT(7))
> > > +               return connector_status_connected;
> >
> > Register 0xc0 & BIT(7) - HPD signal after debounce
> > Register 0xc0 & BIT(6) - HPD signal for TX HPD pad
>
> So, if I understand well, I need to write 0xc0 & BIT(6) with 1 to
> enable the HPD pin.

Ah, sorry about being a bit terse.

Both bit 6 & 7 are read only, and are probably best read after an IRQ.

> >
> > > +
> > > +static int lt8912_probe(struct i2c_client *client,
> > > +        const struct i2c_device_id *id)
> > > +{
> > > +       static struct lt8912 *lt;
> > > +       int ret =3D 0;
> > > +       struct device *dev =3D &client->dev;
> > > +
> > > +       lt =3D devm_kzalloc(dev, sizeof(struct lt8912), GFP_KERNEL);
> > > +       if (!lt)
> > > +               return -ENOMEM;
> > > +
> > > +       lt->dev =3D dev;
> > > +       lt->i2c_client[0] =3D client;
> > > +       lt->cable_status =3D connector_status_unknown;
> > > +       lt->workq =3D create_workqueue("lt8912_workq");
> >
> > Looking at [1] and maybe even better [2], I think this polling
> > approach is the wrong way to go. And with access to documentation, I
> > think we should be able to sort this out.
>
> I neither like the polling approach too. I did it to go on this issue.
> I will totally remove it once the HPD issue will be resolved.
> >
> > Using the irq driver approach requires the interrupt pin to be
> > configured. Pin 63 of the lt8912b is the IRQ output pin.
> >
> > In order to trigger interrupts based on it, the dt-binding would need
> > to be updated[3][4] as well as whichever DTS you're using.
> >
>
> The IRQ part is working well in my DTB. It test it by adding some
> electronics to emulate the HPD pin on the GPIO expander where the HPD
> pin is linked.

Looking at the dt-binding patch, it does not seem to list any
interrupts. So that should be added. I think the irq support from [3]
& [4] can be pretty much copied.

Then we can come back and replace the polling code with the IRQ driven
code from [2].

>
> >
> > [1] https://github.com/torvalds/linux/blob/master/drivers/gpu/drm/bridg=
e/analogix/anx7625.c#L1751
> >
> > [2] https://github.com/torvalds/linux/blob/v5.11/drivers/gpu/drm/bridge=
/lontium-lt9611.c#L1160
> >
> > [3] https://github.com/torvalds/linux/blob/v5.11/Documentation/devicetr=
ee/bindings/display/bridge/lontium,lt9611.yaml#L27
> >
> > [4] https://github.com/torvalds/linux/blob/v5.11/Documentation/devicetr=
ee/bindings/display/bridge/lontium,lt9611.yaml#L144
