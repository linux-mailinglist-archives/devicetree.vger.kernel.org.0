Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC65D511EBB
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:37:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233537AbiD0SOQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 14:14:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244713AbiD0SOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 14:14:15 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F08115FC6
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:11:03 -0700 (PDT)
Received: from mail-yb1-f170.google.com ([209.85.219.170]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MplsZ-1oD7Fo13iH-00qAL3 for <devicetree@vger.kernel.org>; Wed, 27 Apr
 2022 20:11:01 +0200
Received: by mail-yb1-f170.google.com with SMTP id y76so4892014ybe.1
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:11:01 -0700 (PDT)
X-Gm-Message-State: AOAM531fHGmylo6ibau2R3pcB4U86v9yQzgaxtF/S9+Duc/2OIV8e2vU
        6zfO02KSn5MRYtPzg4r9lSdUbXunYZbYlZv7tbs=
X-Google-Smtp-Source: ABdhPJz22H6zLwd+GQ1ANmp6QFVu2RDLvZP9bEbt2PnDoUH1ZGpsMPOKH9dNoFLAzC1zGYNRo02HhlzOZXnr+IAT5X8=
X-Received: by 2002:a25:cbc9:0:b0:645:879a:cdd3 with SMTP id
 b192-20020a25cbc9000000b00645879acdd3mr25485724ybg.550.1651083059995; Wed, 27
 Apr 2022 11:10:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220427162123.110458-1-maukka@ext.kapsi.fi>
In-Reply-To: <20220427162123.110458-1-maukka@ext.kapsi.fi>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Wed, 27 Apr 2022 20:10:44 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
Message-ID: <CAK8P3a0p-ev50UfGiHCpMM5Jz5Mf8pdfQtNep0M7qi7PANSBVg@mail.gmail.com>
Subject: Re: [RFC RFT PATCH v1 0/1] ARM: orion5x: convert D-Link DNS-323 to
 the Device Tree
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:RtpUKR4vPSkQrfbS98Mcoos8yFM8+7iI4gA89vauOI6NMjX1sEV
 KBxZ+KgeFFOxIeIWfs6nPhzEiva8CI+Cvf3X/NKkZk2wfzT8NEUo7G6uwJWQAbOfghizyTA
 3aGwiqnqSIZ4P4hOXD9h5g4gXxiOLkxaY9utdnHsmr8smLUlCEp5X1LtE3i3Jg1EIFuNmv+
 7uCmlgfLFSfKvsMsq3KNQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:k5jXt21ZFHg=:Yaw/aQVJYhgs60zDmurUcX
 n40fb1tFatZxYYVDw6D759OZ68nwqZIaSGCbE0rhMAHdBFiSVWkh2JgtNIrCoOtU/Byi1xAhK
 jwM41Rpg51vCZrw3+wvoiYXklGEWM62cAbZgaNKcZyItxnIo8oGB0jN8GW74k7345Wnim+YAP
 0znOwcfYfH0UH7h0slt+1Napd6iToM5FGjkjDKZj3u5VvJYx3uQ1xsGfi/2eRrH9NJY7iu4gk
 NN1SmDjlQyYqnb/IXz9vjV+QICFOvk4RvJYlE1tGD8OI+4K7zTNnjWILbgYrNJotoslWnwkPp
 TZV7x1VsSnrFUi7uF67hedL21slMH/I+9vT0RrFhrCPU+Y4KKlYj4Uh29DeRN97gIcAag4csD
 GNlH5wf5pOb9TInJNVtum3oLBNYJ10m42nS0MoR7dLbbPhSP3T0tvk3ekPXS/ABYC4kZp39Gr
 STdpugNIazs4r4bKGZ4cke/WU3SL9l5YMKs0LO043oUmIED03oZ++EK+v8wsT3pZcUFyj4NkU
 9wXic9yiAY5VW+JBmVpguoA+zKLEwSey61TQdXbkoq2rSVftk7nJ1oCwcuTrm3Ty+9Y0bC7Bk
 56nPbReSSXi9hqVSN3PIeRp9mmDtQgcJbR1yCqD8q5SmOhGD6bvQyDErhPV18T1DW2ZETHybB
 Zg0krU69fwyfyF9LAZg2dMx33HYBeyDpUuazYA2iSFkAXDKLpdNYASuiyF+Os8/0BKJxnsR7F
 sr4wYPx+B4wOC2znAwCTQDmgFL1bWHqMaPsynbEpHmHe5yl2gzisGfcufjDNEVxsGSVETGHBQ
 Ry/pqc21qFlHWk+9sTLQloQZvpy04IArhW43VVDMjVqoRBF+Xo=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 6:21 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:
>
> Hello all,
>
> I am making an attempt to create a device tree for D-Link DNS-323 devices
> but I am falling short on a few specific details. I am requesting a
> general review of the device tree files. I have access to DNS-323 rev A1
> only and the B1 and C1 need to be tested separately, so I am reaching out
> to people who might have them.

Hi Mauri,

It's really nice to see some progress on this! I don't have the hardware,
but I'll try to answer some of your questions anyway.

> The questions that I have at the moment are below.
>
> - some of resulting IRQs are different from what was requested in device tree
> - logs say NR_IRQS is different from mach file one

This is all normal: with a board file, all on-board IRQs are statically
assigned to fixed numbers. With DT based boot, IRQ controllers
usually define their own IRQ domains, which get a number space assigned
according to probe order, and above the preallocated IRQ numbers.

> - sata_mv fails to initialise with -22 (-EINVAL)

No idea, I'd try inserting a printk in every code path that can return -EINVAL
from there

> - there is no concensus on how to get ascii formatted MAC address from mtd
>   partitions so eth is not fully functional without setting the MAC from
>   userspace

Ideally this is handled by the boot loader, but that requires being
able to update
it. If you cannot, this could perhaps be done using something like
https://github.com/zonque/pxa-impedance-matcher

       Arnd
