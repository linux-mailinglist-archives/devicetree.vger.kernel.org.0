Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C6DB4797C4
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 01:18:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230054AbhLRASO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 19:18:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230039AbhLRASN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 19:18:13 -0500
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6E9C061574
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 16:18:13 -0800 (PST)
Received: by mail-io1-xd2d.google.com with SMTP id p23so5283450iod.7
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 16:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4tvSSIv6oykE7Z8lVXdITTxqq12Ax48ZrNxLZddp4G0=;
        b=HgMfDmQXXyLwPjElaDlnp7A1Z/mNhn3jcB7yN8SFLDDAriFnvrMsup27Vr4ussO5A8
         LJoHuhvi51dlnWXTwH9X/SthuPlUAFUO6mxRUjKKIQlq4LCQ1ypKUnfaxeH04UAO+t06
         vTjtNLDZqtJ+j9ugtpMG3j2KCnNxgBtHzmyMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4tvSSIv6oykE7Z8lVXdITTxqq12Ax48ZrNxLZddp4G0=;
        b=Dr4YyJFCMj0UxpaBdzLFWByW1MZ86mKSyTeYjahxq7k3fuB8xOo2IDn61F/Jvl2sGs
         AEzwshIp8Xu+kEpYcwmpZvV2eLLIwXbJzZwg7Sm9eoOY1RqszujqYAusDbOnSXDKA0tk
         5LUAymjjsm+8ldVAEmlOS7uMCWTeOhZDb1zumtODk3Vwr0L3YCwBw60RG/TdHiHP8lCQ
         jI8W8ayYFb5FCxITOS5TS0/+a7kC6eP/F2VCfhaBTVssnQSneSDorYqk41TJGa81qMLn
         Njz+CpLnrnPvN80znOTyZlGJG2H1T4l6NoM1f6IIiQrefaVoFMmrTEw1Wtpt9hXxTAv5
         xR/A==
X-Gm-Message-State: AOAM530NYtmZwrgRXFBec0VwceIAulSjoC60H3AwK8RPTYekZMC7Qxec
        R5lYYSfllpgVBxY3xbbEUwFxkRuKAdQw8/VvoyUDrQ==
X-Google-Smtp-Source: ABdhPJylaZWZZym5N4/Ctw+TqpQRIx/9FuzzizqGFkk0TI8R/PdaT/g3WhqP/wkItGcf1REgl+iUyhQMcgsTVezJOPU=
X-Received: by 2002:a05:6638:3294:: with SMTP id f20mr3708819jav.222.1639786692986;
 Fri, 17 Dec 2021 16:18:12 -0800 (PST)
MIME-Version: 1.0
References: <20211210192328.2844060-1-gwendal@chromium.org>
 <20211210192328.2844060-6-gwendal@chromium.org> <CAE-0n51VSmRNiNeU09ygGmWfyg2F8DN4ujf9gUv4c3QRsmdLHA@mail.gmail.com>
In-Reply-To: <CAE-0n51VSmRNiNeU09ygGmWfyg2F8DN4ujf9gUv4c3QRsmdLHA@mail.gmail.com>
From:   Gwendal Grignou <gwendal@chromium.org>
Date:   Fri, 17 Dec 2021 16:18:01 -0800
Message-ID: <CAPUE2utnWKtZT=mvJ7TeNzDsQEEOL4tzCaaQdpR65B2=F91oog@mail.gmail.com>
Subject: Re: [PATCH v7 5/5] iio: sx9324: Add dt_binding support
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
        andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 14, 2021 at 5:13 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Gwendal Grignou (2021-12-10 11:23:28)
> > Based on bindings/iio/proximity/semtech,sx9324.yaml, implement
> > retrieving sensor hardware property and alter default values.
> >
> > Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
>
> > diff --git a/drivers/iio/proximity/sx9324.c b/drivers/iio/proximity/sx9324.c
> > index ed7ac30e1915d5..78a173aeccf5ac 100644
> > --- a/drivers/iio/proximity/sx9324.c
> > +++ b/drivers/iio/proximity/sx9324.c
> > @@ -77,6 +77,7 @@
> >  #define SX9324_REG_PROX_CTRL0          0x30
> >  #define SX9324_REG_PROX_CTRL0_GAIN_MASK        GENMASK(5, 3)
> >  #define SX9324_REG_PROX_CTRL0_GAIN_1           0x80
> > +#define SX9324_REG_PROX_CTRL0_RAWFILT_MASK     GENMASK(2, 0)
> >  #define SX9324_REG_PROX_CTRL0_RAWFILT_1P50     0x01
> >  #define SX9324_REG_PROX_CTRL1          0x31
> >  #define SX9324_REG_PROX_CTRL2          0x32
> > @@ -753,6 +754,74 @@ static int sx9324_write_raw(struct iio_dev *indio_dev,
> >         return -EINVAL;
> >  }
> >
> > +static const struct sx_common_reg_default sx9324_default_regs[] = {
> > +       { SX9324_REG_IRQ_MSK, 0x00 },
> > +       { SX9324_REG_IRQ_CFG0, 0x00 },
> > +       { SX9324_REG_IRQ_CFG1, SX9324_REG_IRQ_CFG1_FAILCOND },
> > +       { SX9324_REG_IRQ_CFG2, 0x00 },
> > +       { SX9324_REG_GNRL_CTRL0, SX9324_REG_GNRL_CTRL0_SCANPERIOD_100MS },
> > +       /*
> > +        * The lower 4 bits should not be set as it enable sensors measurements.
> > +        * Turning the detection on before the configuration values are set to
> > +        * good values can cause the device to return erroneous readings.
> > +        */
> > +       { SX9324_REG_GNRL_CTRL1, SX9324_REG_GNRL_CTRL1_PAUSECTRL },
> > +
> > +       { SX9324_REG_AFE_CTRL0, 0x00 },
> > +       { SX9324_REG_AFE_CTRL3, 0x00 },
> > +       { SX9324_REG_AFE_CTRL4, SX9324_REG_AFE_CTRL4_FREQ_83_33HZ |
> > +               SX9324_REG_AFE_CTRL4_RES_100 },
> > +       { SX9324_REG_AFE_CTRL6, 0x00 },
> > +       { SX9324_REG_AFE_CTRL7, SX9324_REG_AFE_CTRL4_FREQ_83_33HZ |
> > +               SX9324_REG_AFE_CTRL4_RES_100 },
> > +
> > +       /* TODO(gwendal): PHx use chip default or all grounded? */
> > +       { SX9324_REG_AFE_PH0, 0x29 },
> [...]
> > +       { SX9324_REG_ADV_CTRL11, 0x00 },
> > +       { SX9324_REG_ADV_CTRL12, 0x00 },
> > +       /* TODO(gwendal): SAR currenly disabled */
>
> s/currenly/currently/
Done
>
> Is there a plan to resolve these todos? Or should they simply be
> removed and then we can deal with the defaults?
It would be nice to enable the Smart SAR engine, but it requires some
coding (how to integrate nicely with iio subsystem) and coding (how to
enable it right).
>
> > +       { SX9324_REG_ADV_CTRL13, 0x00 },
> > +       { SX9324_REG_ADV_CTRL14, 0x00 },
