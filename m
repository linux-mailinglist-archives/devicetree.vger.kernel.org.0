Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 185BC41461B
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 12:24:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234779AbhIVK0D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 06:26:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234747AbhIVK0C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 06:26:02 -0400
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03EA6C061756
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:24:33 -0700 (PDT)
Received: by mail-io1-xd2c.google.com with SMTP id e82so2532914iof.5
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0hLJSyE9wuU9YTaKu3N80ADNOPO+XIm+ck4o5ZS44/M=;
        b=xu1s2EC8Tb8nwBHPZdOTRYDXlQdAvQDcn894yyHecUpxOQq4Gd9GfE80PBwK9Pmxzi
         HTp73vgWxvGN6Vsmm+pPjti8jm3Fx/NtTR2zw7cozJhcKAviCVkBSj0JfL3mL4Ryr/WV
         3ibUvPQV41UmxoQ/priCtGV/Gm7WXRvPe3aiGkg6hRmZXylz0BAMqemGqaLczy1zBqJn
         OcWHn4MmidHfUugCGzW+WvxoSylyScLRoxwmcWyEJg7bSMufL6A5XXOt0cYuXGNjTF8X
         lokBYKWFMq9W7/RJkdvC2i/KuB1N8jQxOAZxuyYPOmPYocoE9SELmS2JrmgaTq3Dsy2F
         6quQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0hLJSyE9wuU9YTaKu3N80ADNOPO+XIm+ck4o5ZS44/M=;
        b=E/geh3uKfgqXXt98ba6MhdI4suzBVLaZLXE8I3Vkg5J9CB+WZ9zdMHiY+0Jz+aDiW7
         Z3BgqcDiKGF8vejTEjdhyxJDYC+KMblhIDkxWg1RmkY2ixL+hLWTZRZPF5H1LY4CN5rn
         2gn/88B8MqkUHR+8vxqWoZHY2JHPBLTitE0PfL2Dy4B+NI9RhX0Sxg31LHQfo9dbJtcm
         SGStPJQpMuRplFG/OHLXNTiq3PXNqNxpYndAE+IzYh9F4HtLRok6VgxBwX6o5WfHCOm9
         MceEstoWOmorsdIKYugrEBni8zTtpWDuiKYFjE9XUmDivnmjcDphX8Z3hffY+V48UeUv
         0ECA==
X-Gm-Message-State: AOAM530j89VKi4Qut8CvrUVN//Qpj1HJXfy9Xul/RouZ5HHAeS2voVt3
        n35QXQHPqCGx6Y8HvWekJjEzwP7a/Di1WC7WAdSGmQ==
X-Google-Smtp-Source: ABdhPJwMjSJ1NThQCgQRtGxigTVJaiKTSxHhoROseagFJArrM/TbqwiKKVGK4k4DGByA2UcCBucHuBAzFqbxbTG4nv0=
X-Received: by 2002:a5e:8d07:: with SMTP id m7mr3642856ioj.31.1632306272378;
 Wed, 22 Sep 2021 03:24:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210716221744.5445-1-robert.marko@sartura.hr>
 <20210716221744.5445-2-robert.marko@sartura.hr> <CAMpxmJWbGM8=S3Dimq33T3vnAnP5kkgNHu3m8oTAO6=LttRzxw@mail.gmail.com>
In-Reply-To: <CAMpxmJWbGM8=S3Dimq33T3vnAnP5kkgNHu3m8oTAO6=LttRzxw@mail.gmail.com>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Wed, 22 Sep 2021 12:24:21 +0200
Message-ID: <CA+HBbNEDN_6TjwHaGb16-XADMvLuC6FDTLCEh_2AJ48yiH5iuA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: gpio: tn48m: document TN4810M support
To:     Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 12:16 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
>
> On Sat, Jul 17, 2021 at 12:17 AM Robert Marko <robert.marko@sartura.hr> wrote:
> >
> > Delta TN4810M expands the existing TN48M drivers, so lets
> > document the new compatibles.
> >
> > Note that this patch depends on the following series:
> > https://patchwork.ozlabs.org/project/linux-gpio/list/?series=247538
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml b/Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
> > index aca646aecb12..d729c5dbed65 100644
> > --- a/Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
> > +++ b/Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
> > @@ -24,6 +24,10 @@ properties:
> >        - delta,tn48m-gpio-sfp-tx-disable
> >        - delta,tn48m-gpio-sfp-present
> >        - delta,tn48m-gpio-sfp-los
> > +      - delta,tn4810m-gpio-sfp-tx-disable
> > +      - delta,tn4810m-gpio-sfp-tx-fault
> > +      - delta,tn4810m-gpio-sfp-present
> > +      - delta,tn4810m-gpio-sfp-los
> >
> >    reg:
> >      maxItems: 1
> > --
> > 2.31.1
> >
>
> This series is still not upstream - what happened to it?

Hi Bartosz,
The TN48M path series that this depends on got stuck, and I haven't
received a reply in a while.
GPIO driver was initially reviewed and ACK-ed but then Linus W.
requested further information to see if this
truly fits as a GPIO driver, but then the discussion died a month ago.
You can see the whole discussion here:
https://patchwork.ozlabs.org/project/linux-gpio/patch/20210607123317.3242031-5-robert.marko@sartura.hr/

I have multiple devices in the queue with a similar approach, so until
that one gets merged it makes no sense
to send stuff upstream.
I was hoping that we would reach some kind of a middle ground a long time ago.

Regards,
Robert
>
> Bart



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
