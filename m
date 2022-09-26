Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA86F5EB520
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 01:08:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbiIZXIZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 19:08:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbiIZXIY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 19:08:24 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 383A2AA4C3
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 16:08:23 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id jm5so7537783plb.13
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 16:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=2ZAUfIPdByJYOZmyUsHUmUEiuSWh8jC/LVnniqZNqUg=;
        b=Bzbe+DqnRQd9k01snesjOx+VUOIfxbjHBuxNxGzX47BL0dIH9+H6WLU2ypKFArCHWd
         o/zyvYwG0wRr8Ot9TXa5SE5wFTM9PH+xRYWvc1LZc8ekSN5fIQZt/7v3PB/xamUJz6l5
         BxM1apc9ZYKlY/ECXH2aGXDTAGpUl3211gjPKeedVh8UidzjJZ8Lrl58oQVG9JbX2jy0
         K8QLTe/UFY1UCcCZcM2t/Rtumm6EcVM7y39JRAQ8IPJn3XEr70SYcbhzKKQRzfpMh80r
         CDByO8m+U+bKVkvm0tz6s9vaYGDmb+pu7eSeP/tBTi+AIA3TavTrUQTRX4wydQ38H9Wd
         weNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=2ZAUfIPdByJYOZmyUsHUmUEiuSWh8jC/LVnniqZNqUg=;
        b=wERtRIacvnuYaOCaTfjNdEUK9YGZBORf3cfjAFhOTJQQswVCP3iAS9zjCBJqezYZYc
         p11TNi2DsPC1MzqKQAMwlxPjaJSOid+C9X2KkVm1+Z8BzBb4BB7WT0/IlV3mXQmok/jb
         7uDqJ600fu3QvQEC7GmgrrFL4R78QmJAn41Kk90bUBNDwdsNHRLrf3kL+7vF+c47+3eA
         oE+mWKEU9N3PhO6rlKX/3cmpsYM/WGtY6nhWJe69bcggjbw7s2g8friRY8Vg1eK+pxij
         LMWibaAq5/pognH8XcUYO/otPNbsNE8019E+O17SO8Qv0NWk9mMOTkku91V1M+2GC+XN
         lFZQ==
X-Gm-Message-State: ACrzQf3J6gp1jO0OwkJCwDoRxNqaVBefD162zYvMoN6H4b7xRqWSUurA
        OqvMwC0Ta/E8AvcmLznzBFqDuQ==
X-Google-Smtp-Source: AMsMyM6ja986Bea6QxDYKP83KR9jnujZd9Kbe9TE4zYOid18RlEl1jd+C4Loo7hfa8FcWV6bJ5lp5g==
X-Received: by 2002:a17:903:1109:b0:179:d220:1f55 with SMTP id n9-20020a170903110900b00179d2201f55mr11548054plh.42.1664233702422;
        Mon, 26 Sep 2022 16:08:22 -0700 (PDT)
Received: from google.com (201.215.168.34.bc.googleusercontent.com. [34.168.215.201])
        by smtp.gmail.com with ESMTPSA id e13-20020a170902784d00b0017887d6aa1dsm11774170pln.146.2022.09.26.16.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 16:08:21 -0700 (PDT)
Date:   Mon, 26 Sep 2022 23:08:18 +0000
From:   William McVicker <willmcvicker@google.com>
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Christoph Hellwig <hch@lst.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Frank Li <Frank.Li@nxp.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 20/20] PCI: dwc: Add Baikal-T1 PCIe controller support
Message-ID: <YzIw4pO03s3wO0tw@google.com>
References: <20220822184701.25246-1-Sergey.Semin@baikalelectronics.ru>
 <20220822184701.25246-21-Sergey.Semin@baikalelectronics.ru>
 <YwzbARMkb/69+l2d@lpieralisi>
 <20220912000211.ct6asuhhmnatje5e@mobilestation>
 <YzF8N/jzkWsjcgdD@lpieralisi>
 <20220926124924.4vodhncnuaorrlwj@mobilestation>
 <20220926143127.GB19031@lst.de>
 <20220926205333.qlhb5ojmx4sktzt5@mobilestation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926205333.qlhb5ojmx4sktzt5@mobilestation>
X-Spam-Status: No, score=-15.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/26/2022, Serge Semin wrote:
> On Mon, Sep 26, 2022 at 04:31:28PM +0200, Christoph Hellwig wrote:
> > On Mon, Sep 26, 2022 at 03:49:24PM +0300, Serge Semin wrote:
> > > @Christoph, @Marek, @Bjorn, @Rob could you please join to the
> > > DMA-mask related discussion. @Lorenzo can't decide which driver should
> > > initialize the device DMA-mask.
> > 
> 
> > The driver that does the actual DMA mapping or allocation functions
> > need to set it.  But even with your comments on the questions I'm
> > still confused what struct device you are even talking about.  Can
> > you explain this a bit better?
> 
> We are talking about the DW PCIe Root Port controller with DW eDMA engine
> embedded. It' simplified structure can be represented as follows:
> 
>          +---------------+     +--------+
>          | System memory |     | CPU(s) |
>          +---------------+     +--------+
>                 ^  |              |  ^
>                 | ... System bus ... |
>                ... |              | ...
>                 |  v              v  |
>  +------------+------+--------+----------+------+
>  | DW PCIe RP | AXI-m|        | AXI-s/DBI|      |
>  |            +------+        +----------+      |
>  |                ^              ^     |        |
>  |         +------+----+         |    CSRs      |
>  |         v           v         v              |
>  |     +-------+  +---------+ +----------+      |
>  |     | eDMA  |  | in-iATU | | out-iATU |      |
>  |     +-------+  +---------+ +----------+      |
>  |         ^           ^           ^            |
>  |         +--------+--+---+-------+            |
>  +------------------| PIPE |--------------------+
>                     +------+
>                       | ^
>                       v |
>                    PCIe bus
> 
> The DW PCIe controller device is instantiated as a platform device
> defined in the system DT source file. The device is probed by the
> DW PCIe low-level driver, which after the platform-specific setups
> initiates the generic DW PCIe host-controller registration. On the way
> of that procedure the DW PCIe core tries to auto-detect the DW eDMA
> engine availability. If the engine is found, the DW eDMA probe method
> is called in order to register the DMA-engine device. After that the
> PCIe host bridge is registered. Both the PCIe host-bridge and
> DMA-engine devices will have the DW PCIe platform device as parent.
> 
> Getting back to the sketch above. Here is a short description of the
> content:
> 1. DW eDMA is capable of performing the data transfers from/to System
> memory to/from PCIe bus memory.
> 2. in-iATU is the Inbound Address Translation Unit, which is
> responsible for the PCIe bus peripheral devices to access the system
> memory. The "dma-ranges" DT-property is used to initialize the
> PCIe<->Sys memory mapping. (@William note the In-iATU setup doesn't
> affect the eDMA transfers.)
> 3. out-iATU is responsible for the CPU(s) to access the PCIe bus
> peripheral devices memory/cfg-space.
> 
> So eDMA and in-iATU are using the same AXI-master interface to access
> the system memory. Thus the DMAable memory capability is the same for
> both of them (Though in-iATU may have some specific mapping based on
> the "dma-ranges" DT-property setup). Neither DW eDMA nor DW PCIe Root
> Port CSRs region have any register to auto-detect the AXI-m interface
> address bus width. It's selected during the IP-core synthesize and is
> platform-specific. The question is: "What driver/code is supposed to
> set the DMA-mask of the DW PCIe platform device?" Seeing the parental
> platform device is used to perform the memory-mapping for both DW eDMA
> clients and PCIe-bus peripheral device drivers, and seeing the AXI-m
> interface parameters aren't auto-detectable and are platform-specific,
> the only place it should be done in is the DW PCIe low-level device
> driver. I don't really see any alternative... What is your opinion?
> 
> -Sergey

I believe this eDMA implementation is new for an upstream DW PCIe device
driver, right? If so, this will require some refactoring of the DMA mask code,
but you need to also make sure you don't break the MSI target address use case
that prompted this 32-bit DMA mask change -- [1]. My changes were directly
related to allowing the DW PCIe device driver to fallback to a 64-bit DMA mask
for the MSI target address if there are no 32-bit allocations available. For
that use-case, using a 32-bit mask doesn't have any perf impact here since
there is no actual DMAs happening.

Would it be possible for the DW PCIe device driver to set a capabilities flag
that the PCIe host controller can read and set the mask accordingly. This way
you don't need to go fix up any drivers that require a 32-bit DMA'able address
for the MSI target address. For example, I see several of the PCI capability
features have 64-bit flags, e.g. PCI_MSI_FLAGS_64BIT and PCI_X_STATUS_64BIT. If
not, then you're going to have to re-work the host controller driver and DW
PCIe device drivers that require a 32-bit MSI target address.

[1] https://lore.kernel.org/all/20201117165312.25847-1-vidyas@nvidia.com/

Thanks,
Will

