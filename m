Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0424513CF3
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 22:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbiD1VAe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 17:00:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241199AbiD1VAd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 17:00:33 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61C37393EE
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 13:57:17 -0700 (PDT)
Received: from mail-yb1-f182.google.com ([209.85.219.182]) by
 mrelayeu.kundenserver.de (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MtPzy-1nzuIX1QlC-00umbh for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022
 22:57:15 +0200
Received: by mail-yb1-f182.google.com with SMTP id w17so11177296ybh.9
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 13:57:15 -0700 (PDT)
X-Gm-Message-State: AOAM532TD54T22NN0fHJpIkkUSjO2EYeBVuytqVmlwrtqzmjO+zqsOCK
        b67IgywFpAopkOFct7aYVjwa2bIWLSlmt114n4c=
X-Google-Smtp-Source: ABdhPJxZ0jJTKv13jEU1ixYQwpduWcc1BZiMpsGqsbIhCzoeqzzL54Ca2wlwAbMvXrkH4d8qIV52yQztcIMUSlYcS+s=
X-Received: by 2002:a25:d3c2:0:b0:645:74df:f43d with SMTP id
 e185-20020a25d3c2000000b0064574dff43dmr32292197ybf.394.1651179434204; Thu, 28
 Apr 2022 13:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220427162123.110458-1-maukka@ext.kapsi.fi> <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
 <1509d16c-d244-19c7-610b-4c8ea8ca1624@ext.kapsi.fi>
In-Reply-To: <1509d16c-d244-19c7-610b-4c8ea8ca1624@ext.kapsi.fi>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Thu, 28 Apr 2022 22:56:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3g4CZjiVHHoBqJLrdN0chghaskODVvtWY1Fjj8TcB8KQ@mail.gmail.com>
Message-ID: <CAK8P3a3g4CZjiVHHoBqJLrdN0chghaskODVvtWY1Fjj8TcB8KQ@mail.gmail.com>
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
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:jU/6Pr14czKUqiBBUqVSHmjGA1DkUzqyrB150TOIGEhIkP5zGky
 UkSEI2Vl4uqmHQNxZ3Z1kn1ZTEV0W4rezlC9iFLm/OLs7uCOMo9+WQGnxKHOr5PgEhyfNnu
 rzB/SoZf3GlgNeNdfK2BJFfDzPC+ttwIFAUAHz+90E9fXqNlQL+pXAV/mNHYfU1XKW5m+4+
 0j/ca5wGtWUiKlP4WBkzA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:A8hIR8DCc5Q=:G5FmzAJ5g3lnVDKE0vLE/k
 yxWVnLmMBLIXNhlEj3t6fdDOMtLDkYnE3QppMAtP/UvhwnAfu+3QvIntsJFKsQmvEOigarjIp
 HSIGkxldExmUHphFCqt51zKUFzAu0cs7BQAP/ldtcvCK4quBIzzba1sDMCr1FtN09eQun/84H
 FOjAQD1AAvhUgGBJT2WA4PiQjKLyxtVvWRjr527iZcW2grFxaTfIsnZdfCvBlCaeZM4YCQ3zK
 OjgIrPMEf5HfxDiZR/d8EWv4/2DfIuqqFPI9A5xoi7hh+d+Duqum6YYvraOZX0SbRRpPctM8G
 HJvVC9ZQjzdGF+BQRrz1HaBt73Z/MjyFJrZ5rxI1N69bvlKhtJeijBTyUtkVGnBg3nw1V4f7q
 NKGXEZElj8OUb71xMBV2n0cfqhkHXZ+GHpAOjA3mSgp8DwbO78MgYEuMa6gb1WqWs3RDdkcLu
 lACXr+mYHpfp24tFlWQdbm3+RwhWqeTpli6u1pY24bR3Njqe20i59ZVBms+MPf4Cg830K52R1
 Fvv31tOlI//BT57SnRQexkjUSexWD0BsY50YqIx9k9LEaAyb4KWXzoCth91kMqYskn4FsUwbF
 Eqg3b1hTAr+4FnVOHmkesCpaSjI4eiKwEbuDFdY6muAN4TamdFQ1KGdfhL/KRNm8KYrcbQFjz
 dlYP3WlYQIHYOaWAak8V3Th2ngI54xAxJlweNbxZMILKmH8Fe6GWRRRzQf3pS78/U3AhQ7YAt
 p5wjKnFConLtWenIk32/2n3XV/p8OllCPe7ifgBeR8R897frT4brY1pwQ/Y3bsieZQaytVGTr
 zOWu5z0jNNE5SCv1kzDhg9KQRPeHcD416gdN055sgvRl9JX62o=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 28, 2022 at 10:01 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
> On 27.4.2022 21.10, Arnd Bergmann wrote:
> > On Wed, Apr 27, 2022 at 6:21 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
> > This is all normal: with a board file, all on-board IRQs are statically
> > assigned to fixed numbers. With DT based boot, IRQ controllers
> > usually define their own IRQ domains, which get a number space assigned
> > according to probe order, and above the preallocated IRQ numbers.
> >
> >> - sata_mv fails to initialise with -22 (-EINVAL)
> >
> > No idea, I'd try inserting a printk in every code path that can return -EINVAL
> > from there
> >
> I had something like that but I didn't get any wiser immediately. Then I
> suspected it's something to do with initialisation of the PCIe bus and
> that clashing with sata_mv initialisation and thought it's better to
> ask. The PCIe initialisation uses hardwired irq and maybe that was
> getting in the way. Is there a way to describe the PCIe bus in the
> device tree? The initalisation of that bus is done for rev A1 only.

I'm not too familiar with the platform, but my interpretation is that the
DT support here is incomplete:

The DT based PCI probe using drivers/pci/controller/pci-mvebu.c
is not hooked up in orion5x.dtsi, and the traditional pci code does
not work with DT.

I see that orion5x has two separate blocks --  a PCIe host that is
similar to the kirkwood one, and a legacy PCI host that needs
a completely separate driver.

Which of the two do you actually need here?

> >> - there is no concensus on how to get ascii formatted MAC address from mtd
> >>    partitions so eth is not fully functional without setting the MAC from
> >>    userspace
> >
> > Ideally this is handled by the boot loader, but that requires being
> > able to update
> > it. If you cannot, this could perhaps be done using something like
> > https://github.com/zonque/pxa-impedance-matcher
>
> I had a look at the pxa-impedance-matcher but I am not sure how to use
> it. Should it be flashed on the device and then it would the boot the
> rest of the system? Maybe I'll have to add some dns323 specifics there
> too first. On the dns323 there are these mtd partitions MTD1 and MTD2,
> which I am not really sure what they are for. Maybe those could
> accommodate a 3rd stage loader. But I'll consider it as my last resort
> as they put it in their documentation too. In linux-mtd there's been a
> few attempts to find a solution and I am hoping one will be found
> eventually.
>
> Adding support in the u-boot was stalled back in the days for some
> reason and I am not sure I will be much wiser than the previous people
> that were at it. But I have jtag programmer that should be suitable.

I think the idea of the impedance-matcher is that you can combine it
with a DT-enabled kernel image into a file that looks to the existing
boot loader like an old kernel and then provides both a way for
code to run before booting the kernel, and for adding in the DT.

       Arnd
