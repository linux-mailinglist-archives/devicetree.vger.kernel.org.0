Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D2B42FF637
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 21:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726943AbhAUUoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 15:44:19 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:54930 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725923AbhAUUoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 15:44:18 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LKgZa4107307;
        Thu, 21 Jan 2021 14:42:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611261755;
        bh=6APyx96OlhqoF+YR2i5KZliKDUq0CYB8+gOzH+jzq6Q=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=Ijt0SBzBcr5uIemXFfWEYbvoF12ffedz5byDDwl5ZsunLjP+RO5VxwUYx2mhJmUVA
         GypWyM78BjvXOb6svPg1toWA+L4EcDQrOrzP6KJ4QJU8UWY8fUrfb/oZrk8QCexpb6
         UGZkhCkX3xkXbazyOKIOxH3H9fya69dik2P4N2cA=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LKgZxH035840
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 14:42:35 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 14:42:35 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 14:42:35 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LKgYdA035534;
        Thu, 21 Jan 2021 14:42:34 -0600
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
To:     Nishanth Menon <nm@ti.com>
CC:     Arnd Bergmann <arnd@arndb.de>, Tony Lindgren <tony@atomide.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
 <20210121174639.jqbvem6b4ozd3six@sterling>
 <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
 <20210121183909.pwpboiptqbof2dfu@squint>
 <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
 <20210121201344.amp54x6d5fty7rkf@shriek>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <13be7980-1ce8-bf7f-a6cf-7de6469a1b9b@ti.com>
Date:   Thu, 21 Jan 2021 14:42:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121201344.amp54x6d5fty7rkf@shriek>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/21/21 2:13 PM, Nishanth Menon wrote:
> On 13:57-20210121, Suman Anna wrote:
>> This is all moot when your own tree doesn't boot properly. In this case, you are
>> adding MMC nodes, but yet for a boot test, you are saying use linux-next for the
>> nodes that were added or you need additional driver patches (which is not how
>> maintainer-level trees are verified).
> 
> Get your facts straight please.
> 
> What do you mean does'nt boot? It does boot with initramfs which is
> the minimum qual i had set for any new platform (along with. - your
> need is for a device node to work - which is both a combination of
> defconfig + driver updates.

And please re-read my first email, and what I started out with. I am not sure "I
will pick MMC nodes, but the entry criteria is only initramfs, and you need
additional patches to get MMC boot to work" is right. Normal thing to do is to
take in the next merge cycle.

> 
>>
>> Arnd,
>> Can you please guide us here as to what is expected in general, given that the
>> pull-request from Nishanth goes through you, and if there is some pre-existing
>> norms around this?
>>
>> Tony,
>> Appreciate your input as well since you probably have dealt with these kinda of
>> dependencies on OMAP.
> 
> I am more than happy to drop this entire SoC off my queue (I am yet to
> pick it up), which is probably what I will do.
> 

You are the maintainer, do what feels right to you. You can as well wait for the
MMC driver changes to be in, and then pick up the series next merge window. Or
you can accept the versions without taking in pieces that have external
dependencies.

regards
Suman
