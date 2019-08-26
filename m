Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C57B9CE9D
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 13:53:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727538AbfHZLwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 07:52:39 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:48630 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726497AbfHZLwj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 07:52:39 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QBq5Nx049472;
        Mon, 26 Aug 2019 06:52:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1566820325;
        bh=v0aciQjisgKYogmk2PfzrLrYloxSKwU1/ECr878ZyYI=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=lXmR9dMTBG4UxH20J3JCMGpMv2CrJ5qdx25aYa2ui4lGNMDWt9YYR+RbCXT2mk43A
         rUxZivGcYrjg51SlxNAFxfpXPCOFkktGXfMSU969FgyjEDWeawM50TPb1GUgKfjyT3
         mIrbHrgT1f2PQceil3uoDa0VMsXzTrSM06s9nJ44=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QBq5d6012494
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 26 Aug 2019 06:52:05 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 06:52:05 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 06:52:05 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QBpxoW020794;
        Mon, 26 Aug 2019 06:52:01 -0500
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
To:     Miquel Raynal <miquel.raynal@bootlin.com>
CC:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Matt Pelland <mpelland@starry.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com> <20190824135414.5c490337@xps13>
From:   Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <8c91e2e3-2a83-a6f0-c98a-d0dbfcddfee3@ti.com>
Date:   Mon, 26 Aug 2019 17:21:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190824135414.5c490337@xps13>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 24/08/19 5:24 PM, Miquel Raynal wrote:
> Hi Kishon,
> 
> + Matt Pelland
> 
> Kishon Vijay Abraham I <kishon@ti.com> wrote on Fri, 23 Aug 2019
> 08:46:14 +0530:
> 
>> On 31/07/19 5:51 PM, Miquel Raynal wrote:
>>> Armada CP110 have a COMPHY IP which supports configuring SERDES lanes
>>> in one mode, either:
>>> - SATA
>>> - USB3 host
>>> - PCIe (several width)
>>> - Ethernet (several modes)
>>>
>>> As of today, only a few Ethernet modes are supported and the code is
>>> embedded in the Linux driver. A more complete COMPHY driver that can
>>> be used by both Linux and U-Boot is embedded in the firmware and can
>>> be run through SMC calls.
>>>
>>> First the current COMPHY driver is updated to use SMC calls but
>>> fallbacks to the already existing functions if the firmware is not
>>> up-to-date. Then, more Ethernet modes are added (through SMC calls
>>> only). SATA, USB3H and PCIe modes are also supported one by one.
>>>
>>> There is one subtle difference with the PCIe functions: we must tell
>>> the firmware the number of lanes to configure (x1, x2 or x4). This
>>> parameter depends on the number of entries in the 'phys' property
>>> describing the PCIe PHY. We use the "submode" parameter of the generic
>>> PHY API to carry this value. The Armada-8k PCIe driver has been
>>> updated to follow this idea and this change has been merged already:
>>> http://patchwork.ozlabs.org/patch/1072763/  
>>
>> Some of the patches are not applying cleanly. Care to resend the series after
>> rebasing to phy -next?
> 
> Besides two conflicts that I can fix very easily about missing
> of_node_put() calls, you just merged in phy-next this patch:
> 
> phy: marvell: phy-mvebu-cp110-comphy: implement RXAUI support
> 
> Which totally conflicts with my series while I also add RXAUI support
> in patch 5. Please note that even the third version of my series
> was contributed before this patch.
> 
> There is one difference to note though: in the patch from Matt Peland,
> RXAUI support is embedded in the driver while I do SMC calls.
> 
> Anyway, would it be possible to change the order of application if
> you want both methods in the driver because it will be much easier
> to add Matt's patch on top of my series than the opposite. I can
> even do it myself if you wish.

I've resolved this. Can you review in phy -next if the changes looks okay?

Thanks
Kishon
