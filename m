Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDE8A576401
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 17:02:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbiGOPCj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 11:02:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiGOPCh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 11:02:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8AC97AC35
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:02:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 65AF062021
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 15:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEBD1C3411E
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 15:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657897355;
        bh=BK8ytkdFjMdnz6neKCAKWOYw6gHaXrEgAU0QASlMvT4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=uStj5YqXBrLvIJgnyOOilmO09xftdpfIjmBqf/F1wK6mL8PV39LTY4ZX3+Wvzu01E
         P4npqPVfSTMihtRjdc0JiUKS0bznN5oyXs4fIonZJGajrsLC20o9gQtEHibz/zFMJ2
         bj6fRPuKyA7MZOpJh9PttVyWyTptELGuPtiNIjMOxzgFefeiCZatrcCe9aKqDiFCKB
         0GwgHey62imOuc8Zc0ZO0iLPaRCi5ExOHy641igUANI8RzPCOmqApfDMP9fvCVrYLU
         vsq+GObvycToLsBPmk+/fOsXybABmVjZuL/gQdmIeN1JXqjfrVuFWtm7YZuN89o5Bq
         6/+IpySyumigA==
Received: by mail-ua1-f53.google.com with SMTP id l7so2056437ual.9
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:02:35 -0700 (PDT)
X-Gm-Message-State: AJIora/c0P2oi8roUHvEdcC0CxvbuxzRxaFeAtn4h/37UqJrCw9KzlQX
        mL4UezE61l05kfEp+6ua0+gs9t6oD9utNYwiEQ==
X-Google-Smtp-Source: AGRyM1vSUrimWoqSrgWmAHBOV402QdNvZO15NMKNBGvxsiEBnnHc0HphlP+BMFjal29QthzzBCuF3Y/AYh3q0bxvjXI=
X-Received: by 2002:ab0:2887:0:b0:382:714c:c31b with SMTP id
 s7-20020ab02887000000b00382714cc31bmr5885390uap.86.1657897354724; Fri, 15 Jul
 2022 08:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <f4d9a3e1-bb7f-353f-44e1-501fd7985b37@gmail.com>
In-Reply-To: <f4d9a3e1-bb7f-353f-44e1-501fd7985b37@gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 15 Jul 2022 09:02:23 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+o27gCfzJH39ct8rRSY2nGgLpzNuw71aqBHQK62iAf+A@mail.gmail.com>
Message-ID: <CAL_Jsq+o27gCfzJH39ct8rRSY2nGgLpzNuw71aqBHQK62iAf+A@mail.gmail.com>
Subject: Re: of_platform_populate() for address-less nodes (OF: Bad cell count
 for ...)
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 15, 2022 at 5:59 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:
>
> I need Linux to support MTD partitions drivers. They should get probed
> for MTD partitions, access it, do their stuff. Random example:
>
> partitions {
>         compatible =3D "fixed-partitions";
>         #address-cells =3D <1>;
>         #size-cells =3D <1>;
>
>         partition@0 {
>                 compatible =3D "u-boot,bootloader";
>                 label =3D "loader";
>                 reg =3D <0x0 0x100000>;
>         };
>
>         partition@100000 {
>                 compatible =3D "u-boot,env";
>                 label =3D "image";
>                 reg =3D <0x100000 0x100000>;
>         };
> };
>
> (please don't confuse them with parsers which are MTD internals)
>
>
> To support that I added of_platform_populate() calls, see commit
> bcdf0315a61a2 ("mtd: call of_platform_populate() for MTD partitions"):
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dbcdf0315a61a29eb753a607d3a85a4032de72d94
>
>
> The problem I just noticed is it triggers errors like:
> OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/partitio=
ns
>
> It comes from (forward-trace):
> of_platform_populate()
> of_platform_bus_create()
> of_platform_device_create_pdata()
> of_device_alloc()
> of_address_to_resource()
> of_address_to_resource()
> __of_address_to_resource()
> of_translate_address()
> __of_translate_address()
> OF_CHECK_COUNTS()
> pr_err()
>
>
> It's caused by "partitions" node having 1 address cell and 0 size cells.
> It's a consequence of inheriting sizes from NAND CS:
>
> nand-controller@1800 {
>         ...
>
>         #address-cells =3D <1>;
>         #size-cells =3D <0>;
>
>         nand@0 {
>                 compatible =3D "brcm,nandcs";
>                 reg =3D <0>;
>
>                 partitions {
>                         ...
>                 };
>         };
> };
>
>
> Is that something that can / should be fixed in OF implementation?
>
> I don't think I should assign sizes to "partitions" node as it doesn't
> use "reg" at all. All "reg" in "partitions" subnodes contain flash
> relative offsets and they should not be translated.

Yes, you should. The parent node of a node with 'reg' must have
#address-cells and #size-cells. Simple as that.

It is 'ranges' that determines if addresses are translatable or not.

Rob
