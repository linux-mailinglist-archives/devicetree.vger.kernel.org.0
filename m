Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A91A5767C3
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 21:49:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230190AbiGOTt0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 15:49:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231214AbiGOTtX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 15:49:23 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4238952FD5
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 12:49:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E8ED7B82E3D
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 19:49:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F77FC341C6
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 19:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1657914553;
        bh=laxksdvhup7dnXtmS3AAT3Sq9yxB/R7zQS73khYVs/k=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=BQfl9xtgNeZx9VNOWQ/ZEmLaJkb3JTGexjbPqcxObG1BfbDIlFtCluqgAPG7JWSU5
         U9xhmpnRbnBv4Dpe1ahWBBRWNbVtlLSzzKNfvWVQtm9RhdnmsePUxEmQde+PpFMW3V
         m8fRwjkCa6Y4mVfzLpYolCzT5red77988YPuLx6dsZdgIshzwtYxlv2r53oM35EXpu
         fCqXEZaWAeZt0yYSzpFDskKkh78v7fhKITnbNkk9AVNNOiB4j3/50sJpmBNxTra930
         1SMbGrVgIm1ZUTOznGWkWyGslPOPJ5XL86fAKgEru6DdK7r8op2N9JtfrOAyq6S6R6
         IVAFEpFRA5E6g==
Received: by mail-vs1-f42.google.com with SMTP id d187so5135877vsd.10
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 12:49:13 -0700 (PDT)
X-Gm-Message-State: AJIora92maiw1P8dcgQ6j6D556ABp0DhYqKltpPnOr4U8XRNvNpDrHF4
        IWZhNDjTPj5FTyG4aMctavfdPTjbOwAx8CZlIA==
X-Google-Smtp-Source: AGRyM1sKlX5BHshjR0amRBFTHhcp5O/2wkE35OJhQLseqt90axMDC3RTiX5RIHSiuSTp7wTFtAFLZq6NWhUBlnbD30k=
X-Received: by 2002:a67:f301:0:b0:357:1b13:2691 with SMTP id
 p1-20020a67f301000000b003571b132691mr6003012vsf.6.1657914552508; Fri, 15 Jul
 2022 12:49:12 -0700 (PDT)
MIME-Version: 1.0
References: <f4d9a3e1-bb7f-353f-44e1-501fd7985b37@gmail.com>
 <CAL_Jsq+o27gCfzJH39ct8rRSY2nGgLpzNuw71aqBHQK62iAf+A@mail.gmail.com> <2fff1d95-c257-2756-ff63-5efe7b3c528c@gmail.com>
In-Reply-To: <2fff1d95-c257-2756-ff63-5efe7b3c528c@gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 15 Jul 2022 13:49:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLCVjbsPfNOOqfsZQY-KUp8foJqwjK54JU+YZOfonkS7w@mail.gmail.com>
Message-ID: <CAL_JsqLCVjbsPfNOOqfsZQY-KUp8foJqwjK54JU+YZOfonkS7w@mail.gmail.com>
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

On Fri, Jul 15, 2022 at 9:16 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:
>
> On 15.07.2022 17:02, Rob Herring wrote:
> > On Fri, Jul 15, 2022 at 5:59 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.c=
om> wrote:
> >>
> >> I need Linux to support MTD partitions drivers. They should get probed
> >> for MTD partitions, access it, do their stuff. Random example:
> >>
> >> partitions {
> >>          compatible =3D "fixed-partitions";
> >>          #address-cells =3D <1>;
> >>          #size-cells =3D <1>;
> >>
> >>          partition@0 {
> >>                  compatible =3D "u-boot,bootloader";
> >>                  label =3D "loader";
> >>                  reg =3D <0x0 0x100000>;
> >>          };
> >>
> >>          partition@100000 {
> >>                  compatible =3D "u-boot,env";
> >>                  label =3D "image";
> >>                  reg =3D <0x100000 0x100000>;
> >>          };
> >> };
> >>
> >> (please don't confuse them with parsers which are MTD internals)
> >>
> >>
> >> To support that I added of_platform_populate() calls, see commit
> >> bcdf0315a61a2 ("mtd: call of_platform_populate() for MTD partitions"):
> >> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/?id=3Dbcdf0315a61a29eb753a607d3a85a4032de72d94
> >>
> >>
> >> The problem I just noticed is it triggers errors like:
> >> OF: Bad cell count for /bus@ff800000/nand-controller@1800/nand@0/parti=
tions
> >>
> >> It comes from (forward-trace):
> >> of_platform_populate()
> >> of_platform_bus_create()
> >> of_platform_device_create_pdata()
> >> of_device_alloc()
> >> of_address_to_resource()
> >> of_address_to_resource()
> >> __of_address_to_resource()
> >> of_translate_address()
> >> __of_translate_address()
> >> OF_CHECK_COUNTS()
> >> pr_err()
> >>
> >>
> >> It's caused by "partitions" node having 1 address cell and 0 size cell=
s.
> >> It's a consequence of inheriting sizes from NAND CS:
> >>
> >> nand-controller@1800 {
> >>          ...
> >>
> >>          #address-cells =3D <1>;
> >>          #size-cells =3D <0>;
> >>
> >>          nand@0 {
> >>                  compatible =3D "brcm,nandcs";
> >>                  reg =3D <0>;
> >>
> >>                  partitions {
> >>                          ...
> >>                  };
> >>          };
> >> };
> >>
> >>
> >> Is that something that can / should be fixed in OF implementation?
> >>
> >> I don't think I should assign sizes to "partitions" node as it doesn't
> >> use "reg" at all. All "reg" in "partitions" subnodes contain flash
> >> relative offsets and they should not be translated.
> >
> > Yes, you should. The parent node of a node with 'reg' must have
> > #address-cells and #size-cells. Simple as that.
>
> For "parent node of a node with 'reg'" it's obvious. We have a different
> case here though.
>
> Please take one more look. Node named "partitions" does not have "reg".
> That is what I don't have #foo-cells in the nand@0.
>
> A complete example:

Okay, that looks valid.

Back to your original issue, I think the issue is that for (DT)
platform devices, the assumption is that they are MMIO (i.e.
translatable) based devices. Certainly that's the case for devices
created by the DT core if not all devices created. Maybe we could
relax this... But reg could not be a struct resource in this case
because there's not an address space for it (it's not MEM or IO). That
all seems to me a bit of abuse of the platform bus. Perhaps a
partition bus and devices are needed? You'll need to ask a wider
audience that.

Rob
