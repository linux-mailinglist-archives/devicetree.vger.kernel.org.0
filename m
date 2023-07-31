Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68345769553
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232095AbjGaLzs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:55:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbjGaLzo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:55:44 -0400
Received: from forward501b.mail.yandex.net (forward501b.mail.yandex.net [178.154.239.145])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A3B919F
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:55:43 -0700 (PDT)
Received: from mail-nwsmtp-smtp-production-main-45.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-45.sas.yp-c.yandex.net [IPv6:2a02:6b8:c14:c83:0:640:84f9:0])
        by forward501b.mail.yandex.net (Yandex) with ESMTP id BBC595E6CB;
        Mon, 31 Jul 2023 14:55:36 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-45.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id YtOFgmgWpKo0-KjdseJcn;
        Mon, 31 Jul 2023 14:55:35 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maquefel.me; s=mail; t=1690804536;
        bh=T92X+EUlvoAMejkCYSSobL4yVNXCuJQ8ClSXRwBBscE=;
        h=References:Date:In-Reply-To:Cc:To:From:Subject:Message-ID;
        b=cqR0tmSOK/p/Ol82ofhZt4rIB52qEUzA4yZThe2ErgfRRGvDlqlwlEb8UxuK6Im6m
         9UIp14u8ss6Nyr2pahp4y70CpcBv1DKpKHLwUd2UEym2lFClnBg5yr+38sekadk9KV
         p/Fha8cLk6a0U1QwSr9v2N4ILNCAqsg9L61wIDI8=
Authentication-Results: mail-nwsmtp-smtp-production-main-45.sas.yp-c.yandex.net; dkim=pass header.i=@maquefel.me
Message-ID: <e89067eed9055cd0f299bc6bb8e40a61232abfc0.camel@maquefel.me>
Subject: Re: [PATCH v3 35/42] ARM: dts: ep93xx: add ts7250 board
From:   Nikita Shubin <nikita.shubin@maquefel.me>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hartley Sweeten <hsweeten@visionengravers.com>,
        Lennert Buytenhek <kernel@wantstofly.org>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Michael Peters <mpeters@embeddedts.com>,
        Kris Bahnsen <kris@embeddedts.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Date:   Mon, 31 Jul 2023 14:55:34 +0300
In-Reply-To: <CACRpkdYA2MLdX5xY-rTcKyKH2eFXZyHHXcX9G-vdWT5GmChwaA@mail.gmail.com>
References: <20230605-ep93xx-v3-0-3d63a5f1103e@maquefel.me>
         <20230605-ep93xx-v3-35-3d63a5f1103e@maquefel.me>
         <4b0f8b39-bec5-6f5d-1b98-8145e334ed94@linaro.org>
         <2c7e838ae4e49b72185626935f886d07895e8192.camel@maquefel.me>
         <CACRpkdYA2MLdX5xY-rTcKyKH2eFXZyHHXcX9G-vdWT5GmChwaA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 
MIME-Version: 1.0
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Linus!

On Sat, 2023-07-29 at 22:59 +0200, Linus Walleij wrote:
> On Mon, Jul 24, 2023 at 3:45=E2=80=AFPM Nikita Shubin
> <nikita.shubin@maquefel.me> wrote:
>=20
> > > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nand-controller@60000000 {
> > >=20
> > > Where is this address? It does not work like that. If this is
> > > part of
> > > SoC, then should be in DTSI and part of soc node. If not, then it
> > > is
> > > some other bus which needs some description. Top-level is not a
> > > bus.
> > >=20
> >=20
> > It's some kind of EBI, but it doesn't need a driver it is
> > transparent
> > on ts7250, the logic is controlled through installed CPLD.
> >=20
> > The EBI it self is a part of the SoC through:
> >=20
> > https://elixir.bootlin.com/linux/v6.5-rc3/source/arch/arm/mach-ep93xx/s=
oc.h#L35
> >=20
> > EP93XX_CS0_PHYS_BASE_ASYNC to EP93XX_CS0_PHYS_BASE_SYNC.
> >=20
> > So for ts7250 this includes:
> >=20
> > - NAND
> > - m48t86
> > - watchdog
> >=20
> > I don't even know how to represent it correctly, would "simple-bus"
> > with "ranges" defined suit here, so it will represent hierarchy but
> > won't do anything ?
>=20
> Check how I solved this on the IXP4xx EBI for an example:
> Documentation/devicetree/bindings/memory-controllers/intel,ixp4xx-
> expansion-bus-controller.yaml
>=20
> Top level bus inside soc:
> arch/arm/boot/dts/intel/ixp/intel-ixp4xx.dtsi
> Example platform:
> arch/arm/boot/dts/intel/ixp/intel-ixp42x-linksys-nslu2.dts
>=20
> Notice chip select number in first cell.
>=20
> I think you want to do something similar here?

Thank you - it looks like what i need !

>=20
> Yours,
> Linus Walleij

