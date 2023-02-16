Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B632699151
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:32:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbjBPKc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:32:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229800AbjBPKcz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:32:55 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44FCDCDE9
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:32:53 -0800 (PST)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DA60B3F0E8
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 10:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1676543569;
        bh=Dx3MYilqW2r7Vu1W8An/euV6qfs89+qFW9d0ePW+LXE=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=PI6M1wz6bCf+rKms8XLGAeyPWnWO82gCDXLt1oGzgst4RZQKx5/TCMTdnOHfugsxf
         JLo27N+7uurBnQXBSCZ79F3qgI2GB+AgbJYq8QBy6jNiX2T+d3qs9HDolXnkpvVieZ
         HXZKOxgJ+76ap3JiyIdXuGYw5OMnEkPWf55F9j0+EvD7k00X76xSswHW/WBgQ2hKgg
         xEB0VgBSJoZMcB9mgsaOrjDlgWbsrdgJTR/ab1zk924Shy16JZc9puFujsBkM6LI0p
         r5cetXAEtn5SkKgD1dzK9v/yT3ETXB9J9rwx5avHW2dGnNU0itj9iP9QsRuMgdHU5x
         DV9IY3Tfl+Hyg==
Received: by mail-qk1-f197.google.com with SMTP id j29-20020a05620a001d00b00724fd33cb3eso909600qki.14
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:32:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dx3MYilqW2r7Vu1W8An/euV6qfs89+qFW9d0ePW+LXE=;
        b=HrNnevV+1tpiBS97QVx7j5cTcWZ/0RPd9LS+PoaxmzI/5d5X3Rmu3eaUzN2pYKRFVG
         ud1aFuFapqAHnDZHLB7pGT+jXlZCfiFavL1P7EzYWJpriUKkCaT8pR/ZVaqDPqFVgbD1
         /NY2AtBeS13c1C48tDIH8UzSwb+gN3fj09FI5F4ejr8QQhmhj2HSLQjBRBLC3AGOl9JD
         EGbqS09AvFyp697K97k4RPXwpVsGIyLWefx6cP/ReObg6zymIt19gPoWl9caKCahjp9a
         crdLBtXAf7dxvgBr0Z5TQhv5OSZi+VeXO7/4tdxljfAlqRlUbeNTadGkeifGXPkKF7nG
         Wmeg==
X-Gm-Message-State: AO0yUKXSmQjQTxXoDtq1PpUB8oPzGudI/GKMBPG/dtImZyFELEn3lZ79
        RGFXutPB+8Wgx1OavcaZ54bp9AlYTSEKO7aC7AQrxqbvI063vipUKbwnzBRO82nv0APieJGdARV
        eIPD9excnCraLHSH8PtyZMoYKzz2mvfvYo6r+CzPKqzUVyUZ0jJTYj7A=
X-Received: by 2002:a05:622a:164f:b0:3bc:e3a8:d1d6 with SMTP id y15-20020a05622a164f00b003bce3a8d1d6mr542978qtj.229.1676543568965;
        Thu, 16 Feb 2023 02:32:48 -0800 (PST)
X-Google-Smtp-Source: AK7set+4xsIEJbTGPazez50zbEJszx4ibDQjWznUyLD8XYEgf0cX5nDZgAvCvsKEVYODY8nBGxetreYQTo+KIdL+fjs=
X-Received: by 2002:a05:622a:164f:b0:3bc:e3a8:d1d6 with SMTP id
 y15-20020a05622a164f00b003bce3a8d1d6mr542972qtj.229.1676543568686; Thu, 16
 Feb 2023 02:32:48 -0800 (PST)
MIME-Version: 1.0
References: <20221220011247.35560-1-hal.feng@starfivetech.com>
 <20221220011247.35560-8-hal.feng@starfivetech.com> <CAJM55Z9Y_fF+4Dtu++C_jVS0+ohXp5U0GyuJCBpUh-SpTMGrVA@mail.gmail.com>
 <af42ed91-95aa-014a-1efb-6f70ee5a0433@starfivetech.com> <CAJM55Z-+Cz8d=YySRaFJSAffDfoZ4Madx322qCX100-nAcx+5Q@mail.gmail.com>
 <Y+38bT8cnahu19bw@wendy> <Y+4AxDSDLyL1WAqh@wendy>
In-Reply-To: <Y+4AxDSDLyL1WAqh@wendy>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 16 Feb 2023 11:32:31 +0100
Message-ID: <CAJM55Z9M2xgNBRxG8cNefGt5hn4fbZmgHWzC2e8AfmKUq9Gw7A@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] riscv: dts: starfive: Add StarFive JH7110
 VisionFive 2 board device tree
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Hal Feng <hal.feng@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Feb 2023 at 11:09, Conor Dooley <conor.dooley@microchip.com> wrote:
>
> On Thu, Feb 16, 2023 at 09:50:37AM +0000, Conor Dooley wrote:
> > On Thu, Feb 16, 2023 at 10:27:17AM +0100, Emil Renner Berthing wrote:
> > > On Wed, 15 Feb 2023 at 15:04, Hal Feng <hal.feng@starfivetech.com> wrote:
> > > > On 2/14/2023 5:53 PM, Emil Renner Berthing wrote:
> > > > > On Tue, 20 Dec 2022 at 02:12, Hal Feng <hal.feng@starfivetech.com> wrote:
> >
> > > > >> +       model = "StarFive VisionFive 2 VB";
> > > > >> +       compatible = "starfive,visionfive-2-vb", "starfive,jh7110";
> > > > >
> > > > > Hi Hal,
> > > > >
> > > > > I just want to double check, is "VisionFive 2 VA" / "visoinfive-2-va"
> > > > > and "VisionFive 2 VB" / "visionfive-2-vb" really what you want? I
> > > > > still think having these names match what is printed on the silkscreen
> > > > > makes it a lot easier for everybody. Even your own releases calls the
> > > > > boards "v1.2A" and "v1.3B":
> > > > > https://github.com/starfive-tech/VisionFive2/releases/
> > > > >
> > > > > So I'd suggest
> > > > > model = "StarFive VisionFive 2 v1.3B";
> > > > > compatible = "starfive,visionfive-2-v1.3b", "starfive,jh7110";
> > > > >
> > > > > I haven't seen these "VA" and "VB" anywhere else, so if you don't want
> > > > > the version numbers and can promise that there will be no incompatible
> > > > > future revisions of the boards then maybe just drop the "V". Eg.
> > > > > model = "StarFive VisionFive 2 B";
> > > > > compatible = "starfive,visionfive-2-b", "starfive,jh7110";
> > > >
> > > > The version A board has reached the end of life. As far as I know, the
> > > > version B board will not update also unless there are some important
> > > > requirements and StarFive decides to update. Furthermore, it's too late
> > > > to change the compatible as patch 1 was already accepted. Will it be
> > > > easier to read if I modify it as below?
> > > >
> > > >         model = "StarFive VisionFive 2 vB";
> > > >         compatible = "starfive,visionfive-2-vb", "starfive,jh7110";
> > >
> > > Oh, that's sad that the kernel will now end up calling the boards
> > > something that's used nowhere else, even by StarFive :/
> > > But yeah, I guess vA and vB are a little easier to read.
> >
> > Nothing has been released with that name so AFAIU we can change it
> > still. If you sort it out today/tomorrow I'll try get it to Arnd before
> > the merge window opens...
> >
> > I might've jumped the gun a bit here, I thought that it'd been changed
> > to what you (Emil) had suggested.

No, I'm sorry for being late here. The below definitely looks better to me.

Hal, would you be fine with this change?

/Emil

>
> -- >8 --
> From 4d44e8a83716d1caa314f25a95bd21ac8904909e Mon Sep 17 00:00:00 2001
> From: Conor Dooley <conor.dooley@microchip.com>
> Date: Thu, 16 Feb 2023 09:58:22 +0000
> Subject: [PATCH] dt-bindings: riscv: correct starfive visionfive 2 compatibles
>
> Using "va" and "vb" doesn't match what's written on the board, or the
> communications from StarFive.
> Switching to using the silkscreened version number will ease confusion &
> the risk of another spin of the board containing a "conflicting" version
> identifier.
>
> Suggested-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Fixes: 97b7ed072784 ("dt-bindings: riscv: Add StarFive JH7110 SoC and VisionFive 2 board")
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/starfive.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
> index 60c7c03fcdce..cc4d92f0a1bf 100644
> --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
> +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> @@ -26,8 +26,8 @@ properties:
>
>        - items:
>            - enum:
> -              - starfive,visionfive-2-va
> -              - starfive,visionfive-2-vb
> +              - starfive,visionfive-2-v1.2a
> +              - starfive,visionfive-2-v1.3b
>            - const: starfive,jh7110
>
>  additionalProperties: true
> --
> 2.39.0
>
>
