Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C540062FBC8
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 18:40:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235240AbiKRRkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 12:40:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234711AbiKRRkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 12:40:04 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E44B201A3
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:40:03 -0800 (PST)
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0A7533F32C
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 17:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1668793202;
        bh=khOfblgst9enibwZtKIhuBZJXCqSZWcWc7io0Y3ec00=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=uumq2vk7JnGWia1ZBtn9bPg4aXOV5enlAe0VAmpTXaxgH0d8o/yI0/RyY+jYF5GnF
         Tdti6z6jvtFU+nDE+gZ2iyjt9YrhjLWCnMGAksfpKm7mIsfzo24zpBUXhlDKTxHJES
         44TDdjeaiz3YRt0zky8zjdrvtrmKtUnPp4cmt8QWNeMZ27yhADBwA69CW0oNGTdUn5
         3vhx5t6br8ELraGwxzB1zrP+bBvP2Lbn8qnB/yWarUBmpsfmBQFUqOZOUpTMGb2AWG
         jnoC9MgvljwgX7ntCtAShLfYXX/JvbBpoWFUB7m9BfhjKJ/Gagu7mn8ntKXVzBxC3G
         DXeTajwDDKiqA==
Received: by mail-yb1-f200.google.com with SMTP id b17-20020a25b851000000b006e32b877068so5074368ybm.16
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:40:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=khOfblgst9enibwZtKIhuBZJXCqSZWcWc7io0Y3ec00=;
        b=Ncg6gVdeBkt2tRUAnSfV6s3DfQcAMAofhApCr52RAZtLZzwPIGN6HkZMuUfWKPhXID
         Pcq2NuUrWjK3XpV5O5wwK/doidErDhfrL0X6ZB+7p4K/V4kV5DEKJhK1DoNwFI3wpVcD
         ZhGvRMiXdP/jIadUTcF4o+EMa9zeHGUsYY46aHo3bo9kfT7y7z59Jf+aWxd4uH4fgrgx
         +zxf4uaF6k2jXzLHmkKJb9Osgtgyj8PhgGfSstoi6FUTbnv6S3T5Gt6JK40MaCGQgHHU
         ibIV6/9a9S3qFcJ9cCS4yDRUrxUCONrKmL/Tf/oBb5Bm0PX6Fs6GcP+USYGdUeknFOnE
         BReg==
X-Gm-Message-State: ANoB5pkkS6X4a/v0Bu2WOU1tnhki79RfUrzhpjSDgk+qFY6zFOM48u0B
        vyuJpwX+HrmHlLHsgxoENVzgiEtT1ceyu+c9V7DyOi8TDeBgit9o18YOuM/PxaJt2EtrgbDbEU7
        grV3qWI8TP7d6ydH1L6yYkzTQTPZAMuWjxuupdG4405U+Vf/+0VmIz60=
X-Received: by 2002:a81:9a0b:0:b0:370:2d3:c361 with SMTP id r11-20020a819a0b000000b0037002d3c361mr7373253ywg.251.1668793199533;
        Fri, 18 Nov 2022 09:39:59 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5jjAsNvhdPGGqZYsergcF++LvMbbQe3AgNyo2sdT6ZeT0o7tzyhO5uVsz3J8DtAGJMuP52P9lVuRXACQqXzlk=
X-Received: by 2002:a81:9a0b:0:b0:370:2d3:c361 with SMTP id
 r11-20020a819a0b000000b0037002d3c361mr7373226ywg.251.1668793199261; Fri, 18
 Nov 2022 09:39:59 -0800 (PST)
MIME-Version: 1.0
References: <20221118011714.70877-1-hal.feng@starfivetech.com>
 <20221118011714.70877-7-hal.feng@starfivetech.com> <Y3d0GE7msiWGlRcd@spud>
In-Reply-To: <Y3d0GE7msiWGlRcd@spud>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Fri, 18 Nov 2022 18:39:43 +0100
Message-ID: <CAJM55Z_3m9w83D9J2y+MV8VLc+uU0Gwo8xpD=fnCGZSAGntu7Q@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] riscv: dts: starfive: Add initial StarFive JH7110
 device tree
To:     Conor Dooley <conor@kernel.org>
Cc:     Hal Feng <hal.feng@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Nov 2022 at 13:01, Conor Dooley <conor@kernel.org> wrote:
>
> On Fri, Nov 18, 2022 at 09:17:12AM +0800, Hal Feng wrote:
> > From: Emil Renner Berthing <kernel@esmil.dk>
> >
> > Add initial device tree for the JH7110 RISC-V SoC by StarFive
> > Technology Ltd.
> >
> > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > Co-developed-by: Jianlong Huang <jianlong.huang@starfivetech.com>
> > Signed-off-by: Jianlong Huang <jianlong.huang@starfivetech.com>
> > Co-developed-by: Hal Feng <hal.feng@starfivetech.com>
> > Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> > ---
> >  arch/riscv/boot/dts/starfive/jh7110.dtsi | 437 +++++++++++++++++++++++
> >  1 file changed, 437 insertions(+)
> >  create mode 100644 arch/riscv/boot/dts/starfive/jh7110.dtsi
> >
> > diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > new file mode 100644
> > index 000000000000..c22e8f1d2640
> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> > @@ -0,0 +1,437 @@
> > +// SPDX-License-Identifier: GPL-2.0 OR MIT
> > +/*
> > + * Copyright (C) 2022 StarFive Technology Co., Ltd.
> > + * Copyright (C) 2022 Emil Renner Berthing <kernel@esmil.dk>
>
> @Emil, I feel like I have to ask given the 2022 date, but should this
> stuff be attributed to your canonical address or is this fine?

Yeah, this is fine. I did this on my own time before I was actually
tasked with working on the JH7110 based boards.

> Other than that, a cursory check /looks/ fine, other than the:
>
> > +       gmac0_rgmii_rxin: gmac0_rgmii_rxin {
> > +               compatible = "fixed-clock";
> > +               #clock-cells = <0>;
> > +               /* This value must be overridden by the board */
> > +               clock-frequency = <0>;
> > +       };
>
> If you remove the clock-frequency = <0> bit, dtb validation will force
> people to set the value in jh7110-board.dts which I'd prefer to rely on
> than a comment.
>
> Glad to see you sorted out the clock/reset stuff too!
>
> Thanks,
> Conor.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
