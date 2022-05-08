Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B378951EE6C
	for <lists+devicetree@lfdr.de>; Sun,  8 May 2022 17:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234239AbiEHPG3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 11:06:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233907AbiEHPG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 11:06:29 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C0C6DEA4
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 08:02:37 -0700 (PDT)
Received: from mail-yw1-f170.google.com ([209.85.128.170]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1N94uf-1nq0D63m9X-016C0f for <devicetree@vger.kernel.org>; Sun, 08 May
 2022 17:02:36 +0200
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-2f863469afbso122048827b3.0
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 08:02:35 -0700 (PDT)
X-Gm-Message-State: AOAM532QczlN/B6zJe9UsqX1Rq4pLxvIJq0ptBwCp9DrBjepy+GRR5ci
        lDisKgehB7aIoXoAzFad1NDx75BPgdMwYOKHkxk=
X-Google-Smtp-Source: ABdhPJxbTpi++I6rfHDjCikv2HNJk3QYOfNP65hhn6On+1lujYkOPjF33yOfZnKt19tjyf5UPS8htLMILILGJixNd5w=
X-Received: by 2002:a81:1697:0:b0:2fa:32f9:78c8 with SMTP id
 145-20020a811697000000b002fa32f978c8mr10492606yww.135.1652022154717; Sun, 08
 May 2022 08:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220427162123.110458-1-maukka@ext.kapsi.fi> <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
 <1509d16c-d244-19c7-610b-4c8ea8ca1624@ext.kapsi.fi> <CAK8P3a3g4CZjiVHHoBqJLrdN0chghaskODVvtWY1Fjj8TcB8KQ@mail.gmail.com>
 <b09847c4-90f8-509d-835b-85613712344d@ext.kapsi.fi>
In-Reply-To: <b09847c4-90f8-509d-835b-85613712344d@ext.kapsi.fi>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Sun, 8 May 2022 17:02:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1miLk8YU+T5ozyf-X8qUB3sJq6cyTovBs9XWb9MrJxMw@mail.gmail.com>
Message-ID: <CAK8P3a1miLk8YU+T5ozyf-X8qUB3sJq6cyTovBs9XWb9MrJxMw@mail.gmail.com>
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     Arnd Bergmann <arnd@arndb.de>, SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:iQVDHgFsxAwXm8Vt3V9q4k81xN3SBkm8jxGTu4CYfJF5lLVEzB8
 Q/gjtG1MwaMIWHnXjVD4fgzq9g5KbXfONQm7/DSjn05LkFAMbMx78tUoGs8G0863qd1EVeN
 S/E0oJ5ZO9AilkCd6TjxoVuBr+3+smAtok7H4Lhhl+BGXwSu0/fMtR2VrgZ22QT4GgflEMT
 c/TldsrSMxispNF02fosA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:NwpWW6LSmcU=:EpVrcZZhej5uBIRemBysLP
 onCgL081Ge2WnHgZyeV7Aj8S+bMhaVBIQ+fkY2O6GTIkin2FJqOHpNy4Vb0UzpLZkvd/0EYVt
 mSxEmwPDESI3r35jPWfnSpOpM/imGONZBlah4jrbX/02FzFcot622YFU7XKaA3VSSs7Z4NNoq
 ZFWvQjpqVenLcpJIVp8QT8wVAslhD+EvjoYkbsT/rX7GAGxMH5xgyWVizDcnNc1sE7X4+JFsp
 lUgsBZD01oJ+Nf2V3QXQfRu5IW3aAZrZumrHqdll3n9Eunu1rnCcOLyGpsfU6JWZ9zPRLHod+
 bXNDlyZScB5hiEBuu30Mb0v/hMFpVNknKjaqMc7j6z+hM3MgPhNjgiX3oJ0/NgSqxsWqFCb01
 8ZKlOcghT0RdJUrNTJHYaqxdC6kYzXZh7NwHPQ7NZgY5HE7Q+LovUvboB1gChRqLMCes4y+Z2
 a0uIJCDbhatNWdbX1rIRLq1OPqb1U2+A6ye5x0RwOZSsbgyq3Cx/J1qt9qlynk8JFnLvtseeS
 wECYxWCWGs3appqNGJ8zq9envePKxERZqNFxTqAmPsV682wQUq1lBQTonWCDrJ234iCStfcNP
 GWZ5TEFdxTlHOzrDukK1blwjWTAdnJ+x7lT2qE/N++5Kwi2q6CWiV/2eUE2Z89hJz39U3thcJ
 MZ8PwlhKwSHVEnlz0ZpUKu5+SDMX1qPYU3Muzzunx35WKdj0TplNwiIgV4VBgYtXbELY=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 8, 2022 at 4:06 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
> On 28.4.2022 23.56, Arnd Bergmann wrote:
> > On Thu, Apr 28, 2022 at 10:01 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
> >> On 27.4.2022 21.10, Arnd Bergmann wrote:
> >>> On Wed, Apr 27, 2022 at 6:21 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
> >>>> - sata_mv fails to initialise with -22 (-EINVAL)
> >>>
> >>> No idea, I'd try inserting a printk in every code path that can return -EINVAL
> >>> from there
> >>>
>
> With debugging the reason for -EINVAL remains a bit mystery.
>   - sata_mv calls ata_host_activate() [1]
>   - later on, in request_threaded_irq(), there are sanity checks [2]
>   - that fail with irq_settings_can_request() returning 0 [3]
>
> I cannot really put my finger on why the irq cannot be requested in DT
> approach.

Are you sure the marvell,orion-intc driver is successfully probed
at this point? If not, the interrupt won't be there.

I see that the "sata_mv" driver can be used either as a platform
driver for the orion5x on-chip controller, or as a PCI driver for
an add-on chip connected to the external bus. It sounds like
your system has both. Do you know which one fails?

The PCI driver cannot work unless the PCI host works correctly,
and that in turn requires a correct devicetree description for it.

> >> Is there a way to describe the PCIe bus in the
> >> device tree? The initalisation of that bus is done for rev A1 only.
> >
> > I'm not too familiar with the platform, but my interpretation is that the
> > DT support here is incomplete:
> >
> > The DT based PCI probe using drivers/pci/controller/pci-mvebu.c
> > is not hooked up in orion5x.dtsi, and the traditional pci code does
> > not work with DT.
>
> Can the existing pci code still be used to init the PCI bus and describe
> the rest in the DT or is it a futile attempt?
>
> > I see that orion5x has two separate blocks --  a PCIe host that is
> > similar to the kirkwood one, and a legacy PCI host that needs
> > a completely separate driver.
> >
> > Which of the two do you actually need here?
> >
>
> I really cannot say which one is it. How can I tell? The functions given
> in struct hw_pci find their way to drivers/pci/probe.c eventually and
> use pci_scan_root_bus_bridge(). Nothing seems to utilising mvebu or
> kirkwood explicitly at least.
>
> Here's the output from lspci if the ids reveal anything.
>
> # lspci -v -k
> 00:00.0 Class 0580: 11ab:5181
> 01:00.0 Class 0580: 11ab:5181
> 00:01.0 Class 0100: 11ab:7042 sata_mv

The first two seem to be the host bridges, but unfortunately they
 seem both have the same device ID, despite being very different
devices.  The first one (00:00.0) should be the PCIe driver, the
second one (01.00.0) the legacy PCI one. In this case, the 11ab:7042
device is a PCIe device, and it's on the bus (00) of the first host
bridge. I think this should work with drivers/pci/controller/pci-mvebu.c
if you add the bits for probing.

Thomas Petazzoni originally wrote the new driver, and I think he was
planning at one point to use it for orion5x. I don't know if there were
any major problems preventing this at the time, or if it just needs to
get hooked up in the dtsi file.

         Arnd
