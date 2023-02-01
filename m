Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7629E68623E
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 10:00:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231433AbjBAJAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 04:00:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230009AbjBAI74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 03:59:56 -0500
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0465D907
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 00:59:55 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-51ba4b1b9feso63266907b3.11
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 00:59:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZC1Teq7XfaidJwL0w/SdzFX7XLaiTcmzfle7ylS8rkM=;
        b=jqBJ/Wy2ccQVFxo6tA6/JjU7nOnDtBg6NU7moAmy2SQWIwT5grBWro9bQ7KJesWUVk
         EtTKNDu0IbecZ/dYauIEPpv/WGVkVLiFqPrdMBIvYhYHDxxOoWXyaOKHPQFwbP+UIuNS
         CD2Hq/3Wukx+tOyTxQbler6OZHdDSY+2xG7Cbl8kt8IYlrLqCo2/MCrJYJAY74G219mn
         XLiMmp0TnTANvC1pGv6h0ZQCTMLZaXHeThsSdCGZGQNbXqnaV6+y4moko61zH8Nx22E2
         JobhaKWj2Xg9k+DCtWZQrfXPLzD7vWBgMyefqzM7wxRelBGgBwLXMe0flBbdYnI5BCzC
         pDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZC1Teq7XfaidJwL0w/SdzFX7XLaiTcmzfle7ylS8rkM=;
        b=ZaFsNGV9NNVj4UzXnuQBgCmGKavexxKJObmsTr0ApkrAJMGGT+7ejSf4zJ56lobJfS
         NQz/FvJ2e8xprDm8kHs1kQWZoO8tkjrae9VzrdMjzF6atvb+LK7MwwjU7qghBXvcKRmP
         fW/l0oUZ2BJEvivdZH486gZGifSVlt8GPoH6G9USg1w2NACR0kpuQImHuVa4nsFAJp+x
         lPAUJYJJ6AJPODYmAtgCyXvjBYrqfJXbUuaXkbJjNo8ZVduFZnmqUvdGB4rQOJ5kbhm1
         tn2WswI1J8KSYOhu/Zd7anx62eH7h/mITcXxs/bhrgGkHjQ7sI0v4lIoLaQYpFAIiFXN
         Buew==
X-Gm-Message-State: AO0yUKVQQozm/bNqt74PnoGDUUZkvhddBvVF+ZXNW8c5wRYjuA0q0NKY
        CUG3K1KM4+bbp37pPMkJPEAAJ9Ya+FZKGgmwjfEdIAWE//va8ERx
X-Google-Smtp-Source: AK7set+z1Sq/bReNxuGLJvSaXuf+C9wc9S9RP/PcrOXVL2vHdpyUdGOLcIV6A6Swpl/aJQNAD3xQDjok58MVZ9iLBHQ=
X-Received: by 2002:a81:8ac5:0:b0:506:8253:3444 with SMTP id
 a188-20020a818ac5000000b0050682533444mr173887ywg.436.1675241994924; Wed, 01
 Feb 2023 00:59:54 -0800 (PST)
MIME-Version: 1.0
References: <20230130093229.27489-1-nylon.chen@sifive.com> <20230130093229.27489-2-nylon.chen@sifive.com>
 <Y9len4GinXQ101xr@spud>
In-Reply-To: <Y9len4GinXQ101xr@spud>
From:   Nylon Chen <nylon.chen@sifive.com>
Date:   Wed, 1 Feb 2023 16:59:40 +0800
Message-ID: <CAHh=Yk8NA2r-NH8EEVrEwr_Mcoz5hdkwDWxpG66Oo+uphgD59A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] riscv: dts: sifive: unleashed/unmatched: Remove
 PWM controlled LED's active-low properties
To:     Conor Dooley <conor@kernel.org>
Cc:     aou@eecs.berkeley.edu, emil.renner.berthing@canonical.com,
        geert+renesas@glider.be, heiko@sntech.de,
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

Hi Conor,

Thanks for your reply.

Conor Dooley <conor@kernel.org> =E6=96=BC 2023=E5=B9=B42=E6=9C=881=E6=97=A5=
 =E9=80=B1=E4=B8=89 =E4=B8=8A=E5=8D=882:32=E5=AF=AB=E9=81=93=EF=BC=9A

>
> Hey Nylon,
>
> On Mon, Jan 30, 2023 at 05:32:28PM +0800, Nylon Chen wrote:
> > This removes the active-low properties of the PWM-controlled LEDs in
> > the HiFive Unmatched device tree.
> >
> > The reference is hifive-unleashed-a00.pdf[0] and hifive-unmatched-schem=
atics-v3.pdf[1].
> >
> > [0]: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf84=
53f8698_hifive-unleashed-a00-schematics-1.pdf
> > [1]: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce=
76f4192_hifive-unmatched-schematics-v3.pdf
>
> Ideally these would be:
> Link: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf845=
3f8698_hifive-unleashed-a00-schematics-1.pdf [0]
> so that they integrate nice with the git trailers mechanism.
> If you resend, please update them to regular link tags.
>
I will fix this issue.
> I checked out the circuits last time around and agreed that they should
> not be active-low.
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>
> I expect that both patches will go through the PWM tree together, so:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> Thanks,
> Conor.
>
Thanks a lot.

> >
> > Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
> > ---
> >  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 4 ----
> >  arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 4 ----
> >  2 files changed, 8 deletions(-)
> >
> > diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch=
/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > index 900a50526d77..7a9f336a391c 100644
> > --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> > @@ -50,7 +50,6 @@ led-controller {
> >
> >               led-d1 {
> >                       pwms =3D <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
> > -                     active-low;
> >                       color =3D <LED_COLOR_ID_GREEN>;
> >                       max-brightness =3D <255>;
> >                       label =3D "d1";
> > @@ -58,7 +57,6 @@ led-d1 {
> >
> >               led-d2 {
> >                       pwms =3D <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
> > -                     active-low;
> >                       color =3D <LED_COLOR_ID_GREEN>;
> >                       max-brightness =3D <255>;
> >                       label =3D "d2";
> > @@ -66,7 +64,6 @@ led-d2 {
> >
> >               led-d3 {
> >                       pwms =3D <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
> > -                     active-low;
> >                       color =3D <LED_COLOR_ID_GREEN>;
> >                       max-brightness =3D <255>;
> >                       label =3D "d3";
> > @@ -74,7 +71,6 @@ led-d3 {
> >
> >               led-d4 {
> >                       pwms =3D <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
> > -                     active-low;
> >                       color =3D <LED_COLOR_ID_GREEN>;
> >                       max-brightness =3D <255>;
> >                       label =3D "d4";
> > diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch=
/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> > index 07387f9c135c..11f08a545ee6 100644
> > --- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> > +++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
> > @@ -52,7 +52,6 @@ led-controller-1 {
> >
> >               led-d12 {
> >                       pwms =3D <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
> > -                     active-low;
> >                       color =3D <LED_COLOR_ID_GREEN>;
> >                       max-brightness =3D <255>;
> >                       label =3D "d12";
> > @@ -69,19 +68,16 @@ multi-led {
> >
> >                       led-red {
> >                               pwms =3D <&pwm0 2 7812500 PWM_POLARITY_IN=
VERTED>;
> > -                             active-low;
> >                               color =3D <LED_COLOR_ID_RED>;
> >                       };
> >
> >                       led-green {
> >                               pwms =3D <&pwm0 1 7812500 PWM_POLARITY_IN=
VERTED>;
> > -                             active-low;
> >                               color =3D <LED_COLOR_ID_GREEN>;
> >                       };
> >
> >                       led-blue {
> >                               pwms =3D <&pwm0 3 7812500 PWM_POLARITY_IN=
VERTED>;
> > -                             active-low;
> >                               color =3D <LED_COLOR_ID_BLUE>;
> >                       };
> >               };
> > --
> > 2.36.1
> >
