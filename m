Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E083068621D
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 09:51:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjBAIvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 03:51:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbjBAIvR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 03:51:17 -0500
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9771126CF
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 00:51:16 -0800 (PST)
Received: by mail-yb1-xb2b.google.com with SMTP id t16so21442368ybk.2
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 00:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=txZhuec1HH+SYuw9JbSzTWTlNG2n2FoXKoziJzOf6vQ=;
        b=TSC3Y861U85BAuKRzI3tmVJZkUSpjwhr7uBnYo2TvAvS+Rxk/nPX6DNk0rSuRCaqbH
         6We/fKDlLRTW/whljhMYtaFGaVRCxrECfyY3yUB0u0f/3DOIpF2poWrvWP6KAwVbs2LE
         oBNbER2+Uh8QqKvClsh0GqU9HwdZ8fpJ3pOcpPQPFLjeKT6tvWcBmflpZRTEZ2lTPLdo
         w1/c8aa3gWiTbl53hfadVF6mAxTek/FPhO+1bqYBIudskDF6WuwuSoYwPUMZzzQ+yQvK
         fYwbWH+7Ft90RAXNW6htl82KlXnsC2ntJ2I+JywcexsK6IPYTikNU+WhyH0mTuPXw1kG
         wLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=txZhuec1HH+SYuw9JbSzTWTlNG2n2FoXKoziJzOf6vQ=;
        b=Pf+CZPI0EmmTEzqTchMHuXQ0yrifBZsTj3s2EzU9uGXx53WsDWWL5QF9OXk5864PjI
         ziPL9sZ77Y2pEjLe28QOVHeLYgbaIoMnV0PegffBeMsfoarOkSfuR1zqwVVZ9/XWJA84
         ygsJXp+DjbwMyWjUPk+ZCiOp/7kIgpNQWOYVyHhq8UYtkv8RzDOJZ37SDRhw32yiF7Lm
         lc7BZAf9uTn0p++Erq0Ouwl4XP8zVBudi4zZ/e0+ubVI1KBn/5aHi/solOvE48UZhWzO
         9SM2vnL+Wq4w2J2MuaunKtRzWJvaNnNBDShS9uBxHAnOaTuwG1/g7/2fPA8UPWhB87Jn
         Wywg==
X-Gm-Message-State: AO0yUKXO/xmPPuYWwXW3RtknMtd9UiYYYC2jO7QRxbk+p80YY3wi2dTm
        EDbZvcca+AZ67Dhr0fv0t9YatgA3N3OWXEeDXHqVLw==
X-Google-Smtp-Source: AK7set+JlVg4REwrJZb0uFecBoYysZ34/mKVLbov6Y696z9p/76cZFJo08rlmmieWHt1Zh1Zubg+QiYkOwcsD15sK9o=
X-Received: by 2002:a25:8001:0:b0:7f3:de9b:de11 with SMTP id
 m1-20020a258001000000b007f3de9bde11mr254782ybk.544.1675241476162; Wed, 01 Feb
 2023 00:51:16 -0800 (PST)
MIME-Version: 1.0
References: <20230130093229.27489-1-nylon.chen@sifive.com> <20230130093229.27489-3-nylon.chen@sifive.com>
 <CAMuHMdXiKAyUeZvmAsNfjJ7_x9bK1zO3iUPdcQ7-60tLQOx_cg@mail.gmail.com>
In-Reply-To: <CAMuHMdXiKAyUeZvmAsNfjJ7_x9bK1zO3iUPdcQ7-60tLQOx_cg@mail.gmail.com>
From:   Nylon Chen <nylon.chen@sifive.com>
Date:   Wed, 1 Feb 2023 16:51:01 +0800
Message-ID: <CAHh=Yk8cnd8Gre6yK1SNC_y=mgRNc++-dA+FdLZPfSV0OzPpFw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pwm: sifive: change the PWM controlled LED algorithm
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     aou@eecs.berkeley.edu, conor@kernel.org,
        emil.renner.berthing@canonical.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
        paul.walmsley@sifive.com, robh+dt@kernel.org,
        thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
        devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        nylon7717@gmail.com, zong.li@sifive.com, greentime.hu@sifive.com,
        vincent.chen@sifive.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

Thanks for your reply.

Geert Uytterhoeven <geert@linux-m68k.org> =E6=96=BC 2023=E5=B9=B41=E6=9C=88=
30=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=885:53=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> Hi Nylon,
>
> On Mon, Jan 30, 2023 at 10:32 AM Nylon Chen <nylon.chen@sifive.com> wrote=
:
> > The `frac` variable represents the pulse inactive time, and the result =
of
> > this algorithm is the pulse active time. Therefore, we must reverse the
> > result.
> >
> > The reference is SiFive FU740-C000 Manual[0].
> >
> > [0]: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8=
b16acba_fu740-c000-manual-v1p6.pdf
> >
> > Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
>
> Thanks for your patch!
>
> > --- a/drivers/pwm/pwm-sifive.c
> > +++ b/drivers/pwm/pwm-sifive.c
> > @@ -158,6 +158,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, =
struct pwm_device *pwm,
> >         frac =3D DIV64_U64_ROUND_CLOSEST(num, state->period);
> >         /* The hardware cannot generate a 100% duty cycle */
> >         frac =3D min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
> > +       frac =3D (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
>
> Shouldn't the inversion be done before the hardware limitation fixup?
I think your inference is correct, I will use it.

thanks a lot.
>
> >
> >         mutex_lock(&ddata->lock);
> >         if (state->period !=3D ddata->approx_period) {
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds
