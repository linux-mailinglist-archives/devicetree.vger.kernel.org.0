Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED0F12FF26B
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 18:52:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389131AbhAURr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 12:47:57 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:51870 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389120AbhAURrm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 12:47:42 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LHkdW4043759;
        Thu, 21 Jan 2021 11:46:39 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611251199;
        bh=LtCWC+zfplDvxwmdpuGPDRkT7qfes0Jn/RdPmeQXLiU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=DDkIwG12oHc3YjxVXd1LhaxwzB79AzfjBjnJT02VUEeVIPVh0PDueP7EMLUq/5/QE
         j5ir/k0TEEPyXMNOKwCIcMSoJscxUY/X3dKOXmgOQADtbknPIbQe0qit/K9JsPZzbi
         bv7bQa/Sx/1L2WqTd5C6dqSzJRaP0JntOS7Pu2Oo=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LHkddc026988
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 11:46:39 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 11:46:39 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 11:46:38 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LHkdwJ016319;
        Thu, 21 Jan 2021 11:46:39 -0600
Date:   Thu, 21 Jan 2021 11:46:39 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
Message-ID: <20210121174639.jqbvem6b4ozd3six@sterling>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11:25-20210121, Suman Anna wrote:
> On 1/20/21 2:25 PM, Dave Gerlach wrote:
> > The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
> > providing advanced system integration to enable applications such as
> > Motor Drives, PLC, Remote IO and IoT Gateways.
> > 
> > Some highlights of this SoC are:
> > * Dual Cortex-A53s in a single cluster, two clusters of dual Cortex-R5F
> >   MCUs, and a single Cortex-M4F.
> > * Two Gigabit Industrial Communication Subsystems (ICSSG).
> > * Integrated Ethernet switch supporting up to a total of two external
> >   ports.
> > * PCIe-GEN2x1L, USB3/USB2, 2xCAN-FD, eMMC and SD, UFS, OSPI memory
> >   controller, QSPI, I2C, eCAP/eQEP, ePWM, ADC, among other
> >   peripherals.
> > * Centralized System Controller for Security, Power, and Resource
> >   Management (DMSC).
> > 
> > See AM64X Technical Reference Manual (SPRUIM2, Nov 2020)
> > for further details: https://www.ti.com/lit/pdf/spruim2
> > 
> > Introduce basic support for the AM642 SoC to enable ramdisk or MMC
> > boot. Introduce the sdhci, i2c, spi, and uart MAIN domain periperhals
> > under cbass_main and the i2c, spi, and uart MCU domain periperhals
> > under cbass_mcu.
> > 
> > Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> > Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> 
> Hmm, there are a few pieces contributed by me, so please do add
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>

Sure, thanks..

[...]

> > +
> > +	sdhci0: mmc@fa10000 {
> > +		compatible = "ti,am64-sdhci-8bit";
> 
> Hmm, I tried booting this series on top of 5.11-rc1 + Nishanth's current
> ti-k3-dts-next. So, boot of these patches using this baseline fails when using
> MMC rootfs, but is ok when using initramfs. This particular compatible and the
> corresponding driver change are only in linux-next coming through couple of
> patches from the MMC subsystem.
> 
> I am not sure why we would be including stuff that's dependent on some other
> patches being merged from a different sub-system? Strangely, this ought to be
> caught by dtbs_check, but it is not throwing any errors.
> 
> IMHO, these should only be added if you have no other external dependencies
> especially when you are applying on a 5.11-rc baseline. The MMC pull-requests
> would not go through arm-soc either.
> 

Yes, I am aware of this - this is no different from integration we have
done in the past as well.. intent is to get bindings in via subsystem
trees and dts changes via arm-soc. I always insist that basic ramdisk
boot always in the basic introduction tree. mmc, nfs are add-ons that
get added via subsystem tree and I host the dts changes - in this case
every dts node binding is fine with subsystems already queued in
linux-next. And this is no different from what I have noticed on other
ARM SoC maintainer trees as well.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
