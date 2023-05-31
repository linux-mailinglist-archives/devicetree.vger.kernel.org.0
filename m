Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 269607179BE
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 10:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235145AbjEaIQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 04:16:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231993AbjEaIQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 04:16:00 -0400
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com [IPv6:2607:f8b0:4864:20::a34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9C593
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 01:15:59 -0700 (PDT)
Received: by mail-vk1-xa34.google.com with SMTP id 71dfb90a1353d-456d534f403so3215160e0c.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 01:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1685520958; x=1688112958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+LYBn2d5F5zSswKXzUQPCUZnQJRWf9mOfUbaKg3l0w=;
        b=rMKmXPVn3E3lgiHa3lycUjJARHwVgxFmwfl5sCpdWFiTMVw2lqaS9GLBN3aux6PLVS
         +cphWgiDlPFjdTctdja+HfoNHSkR0Mv0SJ1LTtR0zTBvejt9mmqfgZ/Om3RxKnjLWrAg
         NUQbTlNH9YVzdJmhkOdWcodbnjnVp4dh8g2U6BPbrTiBEsoDqToze6m814CUVSlEyK24
         1JbHnwFdNmQqp2Ht1oh7CW8xqk+8QBbFVos89g6UObdhKssiiPEWuVTMEleFB1u5hDFZ
         z3pWTezwyiU0731bu3W1mudxVmHGoWzOA+8uOoNZSJ5A02PIEwdwvgZGHutnvN1AZoIc
         NyBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685520958; x=1688112958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j+LYBn2d5F5zSswKXzUQPCUZnQJRWf9mOfUbaKg3l0w=;
        b=WEKQ1L3V5WMCCpVUMiYmiAXJr8ODUGkfMI5meobFevbYCKfbpijk7GIBbN3O57h846
         JTgiX4RezYy8/1z0V3MZdEskQ9by/oykha5XklFq/DZXFADEmkXfMGGm3BcY6YoU2g55
         sMW0zS4rx8bMN6YsdQQxAjTeORL+i1HxapFvhl/pTqB7m25G6OFw7AeMr2kgDnyACOOl
         CgDXXuqQRHY+xhuSXpHvlv2SsgPBd/KOWLM4s1zmFeFXJWyxtRNLXQ4fw1x/p/YiJJyO
         IzJzw/skwQr/h4zAxXFUJbQ7WBlPmSlNWVhcS7uk+jrKmENjo/eeaHS2GF4yssJjKpIA
         ljKw==
X-Gm-Message-State: AC+VfDyZIvtqIMD3VtdEUs1/XFPjtb7T+xptrHM5Qtvi+HpjziPyjpYG
        A4eZH3MXm8rSJYe4U9reGye4zgVz7rwNGiRCO4A4CA==
X-Google-Smtp-Source: ACHHUZ48zd6+NSboV0/QVlTXbxck4+hQ02rvQ8jT8/OjQ2yO0i7Aa0NldEv5lWNZ8h/fCfRqRYZG1yI2xFljYMFKfKQ=
X-Received: by 2002:a1f:ca07:0:b0:44f:d211:2df3 with SMTP id
 a7-20020a1fca07000000b0044fd2112df3mr1581190vkg.13.1685520958083; Wed, 31 May
 2023 01:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230530151946.2317748-1-u.kleine-koenig@pengutronix.de>
 <ZHYbnDHgc9ZMc7rj@sol> <CAMRc=Md3wCLuiS0tt2_v8Q1peqP+AkSrUNj1jg_8aZfDnj+2SQ@mail.gmail.com>
 <ZHabBOFfTBLOREgS@sol>
In-Reply-To: <ZHabBOFfTBLOREgS@sol>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 31 May 2023 10:15:47 +0200
Message-ID: <CAMRc=McL-NqxWbHF88B_FcxFNm3b1e2qxG1_d8XkZ4xXsc9Ybg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] gpio: introduce hog properties with less ambiguity
To:     Kent Gibson <warthog618@gmail.com>
Cc:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 31, 2023 at 2:55=E2=80=AFAM Kent Gibson <warthog618@gmail.com> =
wrote:
>
> On Tue, May 30, 2023 at 09:15:55PM +0200, Bartosz Golaszewski wrote:
> > On Tue, May 30, 2023 at 5:52=E2=80=AFPM Kent Gibson <warthog618@gmail.c=
om> wrote:
> > >
> > > On Tue, May 30, 2023 at 05:19:44PM +0200, Uwe Kleine-K=C3=B6nig wrote=
:
> > > > Hello,
> > > >
> > > > this is another approach after
> > > > https://lore.kernel.org/linux-gpio/20210503210526.43455-1-u.kleine-=
koenig@pengutronix.de
> > > > two years ago. I switched back to "active" and "inactive" from
> > > > "asserted" and "deasserted". The poll about the naming is ambigous,=
 but
> > > > I think with a slight preference of active/inactive over
> > > > asserted/deasserted (with my unbiased self preferring active/inacti=
ve,
> > > > too :-)
> > > >
> > >
> > > FWIW, this makes sense to me too - the active/inactive naming is used=
 in
> > > both the GPIO uAPI and libgpiod v2, so it would be consistent with th=
at,
> > > if nothing else.
> > >
> > > Bart, just wondering if gpio-sim should support the aliases as well?
> > > I realise they don't support active-low, so polarity isn't an issue, =
and
> > > it could even be confusing to support the alias, but just throwing it
> > > out there...
> > >
> >
> > I'm not sure what you need aliases for? Value is only shown, never
> > stored (where you'd need "active", "inactive" strings).
> >
>
> I was thinking wrt the definition in DT - to  allow the switch to
> output-active etc throughout.  And I suppose also for configuring the
> hogs in configfs, but mainly the DT.
>

But gpio-sim doesn't handle DT separately - it reuses the gpiolib-of
code and pretty much works like regular DT drivers.

Bart
