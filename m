Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163792FF856
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 00:00:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726315AbhAUW7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 17:59:49 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:51436 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725899AbhAUW7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 17:59:39 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LMvq2m032072;
        Thu, 21 Jan 2021 16:57:52 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611269872;
        bh=VB+sW/k+CM5j7eokYrCx5/l7U1N36tN+WwhFIqV9Uh4=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=Kj5ww1Jz8vAJfitHbauHpxM9CkgDQxSKtQmIfm2gi+TARq7sHgza6V74UpT6YG9VI
         tky6o2l2GeDg8NSIpDZE0GPdBj92PQtcCstwbOKAPFi+6A2CdZbcdiV3Sn9kFp86an
         UUw+GwPGZy3nMPeH89xjY32sbF9CGvJNkw85jok8=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LMvqXU114573
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 16:57:52 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 16:57:51 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 16:57:51 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LMvpWA077016;
        Thu, 21 Jan 2021 16:57:51 -0600
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
 <13be7980-1ce8-bf7f-a6cf-7de6469a1b9b@ti.com>
 <20210121211851.muqqyhkmwhhz3mlm@password>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <8bc162ca-117c-5e7d-bd4a-4aa8ae7c2cbc@ti.com>
Date:   Thu, 21 Jan 2021 16:57:46 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121211851.muqqyhkmwhhz3mlm@password>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/21/21 3:18 PM, Nishanth Menon wrote:
> On 14:42-20210121, Suman Anna wrote:
>> On 1/21/21 2:13 PM, Nishanth Menon wrote:
>>> On 13:57-20210121, Suman Anna wrote:
>>>> This is all moot when your own tree doesn't boot properly. In this case, you are
>>>> adding MMC nodes, but yet for a boot test, you are saying use linux-next for the
>>>> nodes that were added or you need additional driver patches (which is not how
>>>> maintainer-level trees are verified).
>>>
>>> Get your facts straight please.
>>>
>>> What do you mean does'nt boot? It does boot with initramfs which is
>>> the minimum qual i had set for any new platform (along with. - your
>>> need is for a device node to work - which is both a combination of
>>> defconfig + driver updates.
>>
>> And please re-read my first email, and what I started out with. I am not sure "I
>> will pick MMC nodes, but the entry criteria is only initramfs, and you need
>> additional patches to get MMC boot to work" is right. Normal thing to do is to
>> take in the next merge cycle.
> 
> Sigh.
> 
> As I stated, the reason I prefer not to do that is because the drivers
> will bit-rot for a kernel window without users. 

This is a classic chicken and egg problem, right? We need the bindings and
drivers to be in, and for validating those while submitting, you would need
additional dts nodes. But for adding the dts nodes, we need the bindings unless
the node you are adding has a fallback option, and lately does satisfy the
dtbs_check.

I understand what you are trying to say, but I am not sure of what to make of
this statement from Documentation/devicetree/bindings/submitting-patches.rst,
and how this is being followed in reality.

  6) Any compatible strings used in a chip or board DTS file must be
     previously documented in the corresponding DT binding text file
     in Documentation/devicetree/bindings.  This rule applies even if
     the Linux device driver does not yet match on the compatible
     string.  [ checkpatch will emit warnings if this step is not
     followed as of commit bff5da4335256513497cc8c79f9a9d1665e09864
     ("checkpatch: add DT compatible string documentation checks"). ]

So, this looks to be an open interpretation from the respective dts tree
maintainers then, isn't it, probably depends on how their automation tools work?

Why is it just MMC?
> 
> Start off with uart:
> 
> compatible = "ti,am64-uart", "ti,am654-uart";
> 
> That is not in v5.11-rc1 - it only works because driver is falling back
> on the backward compatible nature of the device. The binding and driver
> fixes are already on next.

He he, bad example :). This is in v5.11-rc1, see commit 441494ec2a30 ("
dt-bindings: serial: 8250_omap: Add compatible for UART controller on AM64 SoC")

> 
> MMC by itself wont boot unless the defconfig changes were merged in
> upstream - and that was a painful choice to make to prevent the common Image
> file from bloating too much..

The K3 MMC is enabled by default since v5.9, see commit
3506ddd676a3 ("arm64: defconfig: Enable AM654x SDHCI controller")

> 
> I mean, is there a real concern that
> https://lore.kernel.org/linux-devicetree/20201029065318.2437-1-vigneshr@ti.com/
> or
> https://lore.kernel.org/linux-devicetree/20210115193218.5809-1-grygorii.strashko@ti.com/
> or ....
> 
> will be dropped, in which case, we should'nt introduce in the next
> kernel version, so that also means that those drivers will remain as is
> without users for a complete kernel cycle.
> 
> I am not saying there are'nt instances where things have happened..
> these changes have been in next for sufficiently long cycles for that
> NOT to happen. Without users, they can unfortunately break and no one
> will be the wiser till we enable the nodes again.. That would be a waste
> of everyone's time.
> 
> 
>>>>
>>>> Arnd,
>>>> Can you please guide us here as to what is expected in general, given that the
>>>> pull-request from Nishanth goes through you, and if there is some pre-existing
>>>> norms around this?
>>>>
>>>> Tony,
>>>> Appreciate your input as well since you probably have dealt with these kinda of
>>>> dependencies on OMAP.
>>>
>>> I am more than happy to drop this entire SoC off my queue (I am yet to
>>> pick it up), which is probably what I will do.
>>>
>>
>> You are the maintainer, do what feels right to you. You can as well wait for the
>> MMC driver changes to be in, and then pick up the series next merge window. Or
>> you can accept the versions without taking in pieces that have external
>> dependencies.
> 
> 
> Sure, I explained the rationale, you are adamant on not being convinced,
> without a counter reason - what is the breakage here that you can see
> when merged through to rc1 target OR to linux-next?

There shouldn't be any issues when everything including the corresponding driver
changes gets merged to -rc1 (they are already in linux-next). I reported my
observations based on seeing MMC nodes and trying MMC boot on your tree, the one
that you would use to send your PR and the checkpatch warnings on it (dtbs_check
strangely didn't fail when I would have expected it to).

> 
> And maybe doing some thing like this will help on (say on arm-soc PR in
> 5.11?)
> 
>  for f in `git diff v5.10-rc3..|diffstat|cut -d '|' -f1 |tr -d ' '|grep dts$|sed -e "s/^b/./g"`; do ./scripts/checkpatch.pl -f $f |grep compatible; done
> 
> 
> At all points in time, nodes are just inactive if the driver is
> disabled for some reason (either the driver is not enabled or the
> binding changes are not in) - they are never broken, Boot is not
> broken (a function is broken when that function support exists in
> Image file AND dts node for some reason results in that function
> not working) - yes, someone can claim NFS boot is broken or WIFI is
> brokken when NFS boot or WIFI is not even introduced. etc.
> 
> If I go by the strictest rules, then I cannot even introduce a bugfix
> which involves dts via arm-soc dts pull request since the dependencies
> of erratum and property enabling the erratum all should come from the
> subsystem trees.
> 
> Drivers being broken is not in anyone's interest. They tend to get
> broken if there are no active users.. let us release often and test
> often.. and I believe there is plenty of precedence in doing this
> already - if there is a risky property, OK fine, lets discuss about it.
>

Yes, I understand all of this, and no comments here.

All I am asking is clarification on the process semantics, we have them for a
reason right? If there is a practical usage agreement/argument around it, I am
welcome to get acquainted to it..

regards
Suman
