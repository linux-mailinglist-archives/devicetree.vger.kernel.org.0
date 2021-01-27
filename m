Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30047306081
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 17:05:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235478AbhA0QEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 11:04:51 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:37314 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236250AbhA0QB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 11:01:58 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10RG10TT072838;
        Wed, 27 Jan 2021 10:01:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611763260;
        bh=Be5ODq2t5RWXEBx8SdxPZbptUXJc8ygAvzl4Ubl8Ov4=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=O/H63GUXuBFOx4JKTUUgRnfTHC1OQKJEcc2lLuyMorOnskH8MYYOQd+xP2kKmSef+
         5RsId31EWqQ8EH4HiswaIS46uQQLvTjvS/AwgSIIkMouYHXUOlvP5xHKMTTqJKnMma
         r7LqwZgMWsJ4O6W5jIdIKKb04SdPXvoMpdbrjutw=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10RG0xbr039369
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 27 Jan 2021 10:00:59 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 27
 Jan 2021 10:00:59 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 27 Jan 2021 10:00:59 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10RG0x0Y012859;
        Wed, 27 Jan 2021 10:00:59 -0600
Date:   Wed, 27 Jan 2021 10:00:59 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh@kernel.org>
CC:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4] arm64: dts: ti: k3: squelch warnings regarding no
 #address-cells for interrupt-controller
Message-ID: <20210127160059.xob2k57agzzgqaph@always>
References: <20210121060305.29133-1-lokeshvutla@ti.com>
 <161131973654.21299.8023411678794984222.b4-ty@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <161131973654.21299.8023411678794984222.b4-ty@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06:49-20210122, Nishanth Menon wrote:
> On Thu, 21 Jan 2021 11:33:05 +0530, Lokesh Vutla wrote:
> > With dtc 1.6.0, building TI device-tree files with W=2 results in warnings
> > like below for all interrupt controllers.
> > 
> > /bus@100000/bus@30000000/interrupt-controller1: Missing #address-cells in interrupt provider
> > 
> > Fix these by adding #address-cells = <0>; for all interrupt controllers in
> > TI device-tree files. Any other #address-cells value is really only needed
> > if interrupt-map property is being used (which is not the case for existing
> > TI device-tree files)
> 
> Hi Lokesh Vutla,
> 
> I have applied the following to branch ti-k3-next on [1].
> Thank you!
> 
> [1/1] arm64: dts: ti: k3: squelch warnings regarding no #address-cells for interrupt-controller
>       commit: 73d0af633c4bed02f8e71658c9e25ac8250b08c4
> 
> 
> All being well this means that it will be integrated into the linux-next
> tree (usually sometime in the next 24 hours) and sent up the chain during
> the next merge window (or sooner if it is a relevant bug fix), however if
> problems are discovered then the patch may be dropped or reverted.
[...]

Lokesh,

Based on discussion on [1] - looks like #address-cells = 0 usage
is still to be resolved and needs some alignment between Andre and
Rob on where to take this (dtc fixups to handle this Vs explicit
#address-cells = 0 and increase in dtb size).

I propose we drop this patch rather than having to revert this at a
later point after I send a PR. Anyone has any objections?

[1] https://lore.kernel.org/linux-arm-kernel/20210126163839.57491132@slackpad.fritz.box/

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
