Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B78847681EE
	for <lists+devicetree@lfdr.de>; Sat, 29 Jul 2023 22:59:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjG2U7e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jul 2023 16:59:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbjG2U7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jul 2023 16:59:34 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8AED2D7C
        for <devicetree@vger.kernel.org>; Sat, 29 Jul 2023 13:59:32 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-583f65806f8so34003977b3.0
        for <devicetree@vger.kernel.org>; Sat, 29 Jul 2023 13:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690664372; x=1691269172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cfzpesW+hOlC1ZUbBq1IIGj/qNDgml+8JoQuSDI0Xns=;
        b=xfuQcnTt1k9BwayMFRabGsrbid8ZYAaCyZ+dh+p2Z9prQJaZaxqDiFhM98xtohYcfZ
         rwNLBqRVUuGhoZLaC45Clwk/wBFS5xGgCrwTwrtaM8eY1dwR5kkHTcyn9uIVT9mlRyFE
         mujgG4qSDflMs9+oGJjILrvHyzVTq1PksTTVzihLVrp3y/Zr00MRbbik06RAJliZrLQN
         J8Oal6eTt7r5T6S6K4qjHv4hpFqQI26Z3GSeOE3joah0z5E3sj1RfVfpXLKOkKEuwIU7
         GZNogMQcpJmzy2apxm3uSABoD8IJnFLEFSPW56N6c5Rkn54Ctf4sxfeiT9slRJFXVePl
         7UiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690664372; x=1691269172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfzpesW+hOlC1ZUbBq1IIGj/qNDgml+8JoQuSDI0Xns=;
        b=gqkRS450f1WLI7Y/+HHrsJh5lTe/o8f22TQbWURRYbaZw04jUXq5CQ7D25py8WzBZk
         j/Mp8FvwLXKSjvpu6klq4KXF3xchW3GPZo1LuzzR3Y3RkbG9A6d6dcuNcBTRWQxibiY2
         kR+BTSNX7TbgqbFRQJv07YMigVzKGpwhZkNajl2WfIEUGgrWdJ76keKAnmdNoYC42Wh8
         2KZDvya3CzwvUny5RD+3udF4bFtFj9PI+EdwnSWfiaSK+jH9TJYg3bf1Pb5ch097Il2A
         hh9zO3xqAxbgwiCNiTqURPSJKAt+fkvW1/iQZWwJiVCJ59Hn1oO+w8fw8pUhwW8Sv3aE
         oIUw==
X-Gm-Message-State: ABy/qLZvtoADIZRJYcP5QahxRlgN5WFpYIpZPm1CBvDgexrvdco+YOOD
        CyEmzTMzcetiFVMDnPki5URrq7th0zLhHHeipizTTg==
X-Google-Smtp-Source: APBJJlFY851kPPLZmbl8gzO3TdOllzPpcX7gGXuGgI5liIlSowpGtr42X+Nk5GuQWyhZfyYfw6Pt2oPNgjjNDbECIzQ=
X-Received: by 2002:a81:6c90:0:b0:583:8c5f:da11 with SMTP id
 h138-20020a816c90000000b005838c5fda11mr5581076ywc.0.1690664372059; Sat, 29
 Jul 2023 13:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230605-ep93xx-v3-0-3d63a5f1103e@maquefel.me>
 <20230605-ep93xx-v3-35-3d63a5f1103e@maquefel.me> <4b0f8b39-bec5-6f5d-1b98-8145e334ed94@linaro.org>
 <2c7e838ae4e49b72185626935f886d07895e8192.camel@maquefel.me>
In-Reply-To: <2c7e838ae4e49b72185626935f886d07895e8192.camel@maquefel.me>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 29 Jul 2023 22:59:20 +0200
Message-ID: <CACRpkdYA2MLdX5xY-rTcKyKH2eFXZyHHXcX9G-vdWT5GmChwaA@mail.gmail.com>
Subject: Re: [PATCH v3 35/42] ARM: dts: ep93xx: add ts7250 board
To:     Nikita Shubin <nikita.shubin@maquefel.me>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hartley Sweeten <hsweeten@visionengravers.com>,
        Lennert Buytenhek <kernel@wantstofly.org>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Michael Peters <mpeters@embeddedts.com>,
        Kris Bahnsen <kris@embeddedts.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 24, 2023 at 3:45=E2=80=AFPM Nikita Shubin <nikita.shubin@maquef=
el.me> wrote:

> > > +       nand-controller@60000000 {
> >
> > Where is this address? It does not work like that. If this is part of
> > SoC, then should be in DTSI and part of soc node. If not, then it is
> > some other bus which needs some description. Top-level is not a bus.
> >
>
> It's some kind of EBI, but it doesn't need a driver it is transparent
> on ts7250, the logic is controlled through installed CPLD.
>
> The EBI it self is a part of the SoC through:
>
> https://elixir.bootlin.com/linux/v6.5-rc3/source/arch/arm/mach-ep93xx/soc=
.h#L35
>
> EP93XX_CS0_PHYS_BASE_ASYNC to EP93XX_CS0_PHYS_BASE_SYNC.
>
> So for ts7250 this includes:
>
> - NAND
> - m48t86
> - watchdog
>
> I don't even know how to represent it correctly, would "simple-bus"
> with "ranges" defined suit here, so it will represent hierarchy but
> won't do anything ?

Check how I solved this on the IXP4xx EBI for an example:
Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-expansion=
-bus-controller.yaml

Top level bus inside soc:
arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi
Example platform:
arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-nslu2.dts

Notice chip select number in first cell.

I think you want to do something similar here?

Yours,
Linus Walleij
