Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A4C12FF59E
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 21:15:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727044AbhAUUOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 15:14:55 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:35606 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727085AbhAUUOw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 15:14:52 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LKDjbI100336;
        Thu, 21 Jan 2021 14:13:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611260025;
        bh=tbTXUnQ8YTCCCu6dSMJgtaUtLrQxPpzC7ssm5HpePts=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=dpvDMvZ6hcx1RmZf3eHGjqVkfc84IxY4uCKylFjZFfUaPwCwMyWlflKUWwGSI9mx/
         tSy2zvxLuDwdCR8iGgFPGWGsCUZAnVnby5iriQVlwXxlAQ0be85PESrgy2wG88RnHT
         +om0V3mEep/paPVLLWA7YqUdKdoIPgzi3DRBycNo=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LKDjTh121785
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 14:13:45 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 14:13:44 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 14:13:44 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LKDiYZ030502;
        Thu, 21 Jan 2021 14:13:44 -0600
Date:   Thu, 21 Jan 2021 14:13:44 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
Message-ID: <20210121201344.amp54x6d5fty7rkf@shriek>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
 <20210121174639.jqbvem6b4ozd3six@sterling>
 <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
 <20210121183909.pwpboiptqbof2dfu@squint>
 <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13:57-20210121, Suman Anna wrote:
> This is all moot when your own tree doesn't boot properly. In this case, you are
> adding MMC nodes, but yet for a boot test, you are saying use linux-next for the
> nodes that were added or you need additional driver patches (which is not how
> maintainer-level trees are verified).

Get your facts straight please.

What do you mean does'nt boot? It does boot with initramfs which is
the minimum qual i had set for any new platform (along with. - your
need is for a device node to work - which is both a combination of
defconfig + driver updates.

> 
> Arnd,
> Can you please guide us here as to what is expected in general, given that the
> pull-request from Nishanth goes through you, and if there is some pre-existing
> norms around this?
> 
> Tony,
> Appreciate your input as well since you probably have dealt with these kinda of
> dependencies on OMAP.


I am more than happy to drop this entire SoC off my queue (I am yet to
pick it up), which is probably what I will do.


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
