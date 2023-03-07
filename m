Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FF306ADEEF
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 13:41:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbjCGMlR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 07:41:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229535AbjCGMlQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 07:41:16 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EB047B11F
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 04:41:15 -0800 (PST)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 400623F828
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 12:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1678192874;
        bh=5dcTMuGM5x4jDH9Im/Ajb398saoasYhP635I/igmqgk=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=v2cqN46i9petUMuigMupNOqBkrHmWpHYjx2G/VUo+hTUjY1MaXsuExKaahSKcwXAb
         orL08nSz9TQRX9ZHwp/kbx4F3dgx1ugY+UZTyFK2CdZ/j1g6ed4yurMpAmJ/86zrWw
         4ZP/JwzM2ZTa9JZZeJkglR4IrskpU8+Im03uutuHn7iyif9WtX99NdEtdxZLbUxOSD
         uCXrkxG8zXIY5rnOJ80vry2dTmPpsxmg3S27BK4HE2lp5XHiG106m+9wKn+tDhwCmf
         Q0SZXv1if8PQOmfVsil6sOphyhJXYOwTxL0H0Yez7jla62VXbAUfUtOB8SfbxnWvEV
         1Svf6SzWe3KtA==
Received: by mail-qk1-f200.google.com with SMTP id eb13-20020a05620a480d00b00742be8a1a17so7268207qkb.18
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 04:41:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678192873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5dcTMuGM5x4jDH9Im/Ajb398saoasYhP635I/igmqgk=;
        b=ZjMMFKcrPs81CPTjio82cNe50Ia4q3TkuM4BxxC3l52Ccq42yEI8JuqgUSKQoJHggC
         K8/YrSCV2tURDQIcFrZyC4dP0f1Nca1zS4dtdgI8MAIMrkw5Ir5mnpCRYKZMfi6VA5hI
         NyNeMsAlV47eejSDpC/J5USXlBQaJzNrUkbS5SS0DDHMwZwR8fq1pYhHbUxwq4Y2OK1b
         sCm50jxrr9eRhw4HO7tdIqfZ+vO0fI3DrHBzpeCLWI05oup1ia0ql6Qz67yOt6gWEMMu
         vYwUuWv5nkQ9f3t+oQYBjo1euzp2VZm7nqH0TDxv7UXd5DCd2gGOTuf6rslt2Mtx3RH4
         jK1A==
X-Gm-Message-State: AO0yUKWPuunYe97wHjP4frdx4uXgUzJG+foiE8aFRfmGuqvez4Gfnapt
        7MRWESCOfkYnvG5nYDify4K6eF3fnEUb5kyfhg5E27Lomn1Q1zCs8T/4OeTpv/rrqe7yxsZt21M
        YkVOh3aJPjfbPZUj6owne5o9YYBhH4NrwWC8Sz7WbJWYcm1qE2qdOnO8=
X-Received: by 2002:aed:27db:0:b0:3bf:da0f:ed90 with SMTP id m27-20020aed27db000000b003bfda0fed90mr3748952qtg.3.1678192873206;
        Tue, 07 Mar 2023 04:41:13 -0800 (PST)
X-Google-Smtp-Source: AK7set8chedSpyZZZaRafGT1LOeApVeMpQZ0D8sGlhCw7bUyERGfB8dVAwY0F0nD/btENIxFCgHxqoI2YFpwPG379FA=
X-Received: by 2002:aed:27db:0:b0:3bf:da0f:ed90 with SMTP id
 m27-20020aed27db000000b003bfda0fed90mr3748935qtg.3.1678192872885; Tue, 07 Mar
 2023 04:41:12 -0800 (PST)
MIME-Version: 1.0
References: <20230303085928.4535-1-samin.guo@starfivetech.com>
 <20230303085928.4535-12-samin.guo@starfivetech.com> <CAJM55Z_8m42vfoPDicTP18S6Z1ZXYbFeS1edTjzYVB3Kq2xFeQ@mail.gmail.com>
 <8bd8654e-4bba-c718-4b17-5291e70f05fe@starfivetech.com>
In-Reply-To: <8bd8654e-4bba-c718-4b17-5291e70f05fe@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Tue, 7 Mar 2023 13:40:56 +0100
Message-ID: <CAJM55Z8-65ENJHfSUOTd+FSNx2b-mYF1L64CKT+Gez2jK3Qr2Q@mail.gmail.com>
Subject: Re: [PATCH v5 11/12] riscv: dts: starfive: visionfive-2-v1.2a: Add
 gmac+phy's delay configuration
To:     Guo Samin <samin.guo@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Yanhong Wang <yanhong.wang@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Mar 2023 at 02:43, Guo Samin <samin.guo@starfivetech.com> wrote:
> =E5=9C=A8 2023/3/6 21:00:19, Emil Renner Berthing =E5=86=99=E9=81=93:
> > On Fri, 3 Mar 2023 at 10:01, Samin Guo <samin.guo@starfivetech.com> wro=
te:
> >> v1.2A gmac0 uses motorcomm YT8531(rgmii-id) PHY, and needs delay
> >> configurations.
> >>
> >> v1.2A gmac1 uses motorcomm YT8512(rmii) PHY, and needs to
> >> switch rx and rx to external clock sources.
> >>
> >> Signed-off-by: Samin Guo <samin.guo@starfivetech.com>
> >> ---
> >>  .../starfive/jh7110-starfive-visionfive-2-v1.2a.dts | 13 ++++++++++++=
+
> >>  1 file changed, 13 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2=
-v1.2a.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.2=
a.dts
> >> index 4af3300f3cf3..205a13d8c8b1 100644
> >> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.2a.=
dts
> >> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-v1.2a.=
dts
> >> @@ -11,3 +11,16 @@
> >>         model =3D "StarFive VisionFive 2 v1.2A";
> >>         compatible =3D "starfive,visionfive-2-v1.2a", "starfive,jh7110=
";
> >>  };
> >> +
> >> +&gmac1 {
> >> +       phy-mode =3D "rmii";
> >> +       assigned-clocks =3D <&syscrg JH7110_SYSCLK_GMAC1_TX>,
> >> +                         <&syscrg JH7110_SYSCLK_GMAC1_RX>;
> >> +       assigned-clock-parents =3D <&syscrg JH7110_SYSCLK_GMAC1_RMII_R=
TX>,
> >> +                                <&syscrg JH7110_SYSCLK_GMAC1_RMII_RTX=
>;
> >> +};
> >> +
> >> +&phy0 {
> >> +       rx-internal-delay-ps =3D <1900>;
> >> +       tx-internal-delay-ps =3D <1350>;
> >> +};
> >
> > Here you're not specifying the internal delays for phy1 which means it
> > defaults to 1950ps for both rx and tx. Is that right or did you mean
> > to set them to 0 like the v1.3b phy1?
>
> Hi, emil, usually, only 1000M (rgmii) needs to configure the delay, and 1=
00M(rmii) does not.

Ah, I see.

> > Also your u-boot seems to set what the linux phy driver calls
> > motorcomm,keep-pll-enabled and motorcomm,auto-sleep-disabled for all
> > the phys. Did you leave those out on purpose?
>
> Hi, Emil, We did configure motorcomm,auto-sleep-disabled for yt8512 in ub=
oot,
> but Yutai upstream's Linux driver only yt8521/yt8531 supports this proper=
ty.

I'm confused. Is Yutai also Frank Sae? Because he is the one who added
support for the yt8531 upstream.

> Yt8512 is a Generic PHY driver and does not support the configuration of
> motorcomm,auto-sleep-disabled and motorcomm,keep-pll-enabled.

Right phy1 of the 1.2a might use a different phy, but I'm also talking
about phy0 and the v1.3b which does use the yt8531 right?

> And without configuring these two attributes, vf2-1.2a gmac1 also works n=
ormally.

Yes, but what I'm worried about is that it only works because u-boot
initialises the PHYs and ethernet may stop working if you're using a
different bootloader or Linux gains support for resetting the PHYs
before use.

>
> Best regards,
> Samin
> >
> >> --
> >> 2.17.1
> >>
> >>
> >> _______________________________________________
> >> linux-riscv mailing list
> >> linux-riscv@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-riscv
>
> --
> Best regards,
> Samin
