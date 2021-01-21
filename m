Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC6B32FF71C
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 22:23:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726668AbhAUVXR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 16:23:17 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53096 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727256AbhAUVVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 16:21:34 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LLIqx3124538;
        Thu, 21 Jan 2021 15:18:52 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611263932;
        bh=bH4hkOLbVYMxyOkYiR7QGJczKFpP1XcQCOzroj5A2Ik=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=THxV8yHcPX6zfPLrpu2TqDZWk46LF39rrXTHBwAQnRrRkpyIOJGqy2qC351HGVufa
         /wEgbm7epPR1b7DZsdv8BpEtYUYVzAoJcvkfAbkrSxH/hJdhB3uJoM/0FnMpA3R5O8
         u4vbhrVCDovNPUYP7Lb3gCiwWxD4Kstdz/9oqyLs=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LLIqvu089847
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 15:18:52 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 15:18:51 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 15:18:51 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LLIp0d065954;
        Thu, 21 Jan 2021 15:18:51 -0600
Date:   Thu, 21 Jan 2021 15:18:51 -0600
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
Message-ID: <20210121211851.muqqyhkmwhhz3mlm@password>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
 <197af185-d2ea-3c76-d0bf-714485f8f195@ti.com>
 <20210121174639.jqbvem6b4ozd3six@sterling>
 <4ee6f005-2eee-42b2-b573-e10602839e1b@ti.com>
 <20210121183909.pwpboiptqbof2dfu@squint>
 <2b35fb8b-0477-f66d-bcbd-ad640664a888@ti.com>
 <20210121201344.amp54x6d5fty7rkf@shriek>
 <13be7980-1ce8-bf7f-a6cf-7de6469a1b9b@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <13be7980-1ce8-bf7f-a6cf-7de6469a1b9b@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:42-20210121, Suman Anna wrote:
> On 1/21/21 2:13 PM, Nishanth Menon wrote:
> > On 13:57-20210121, Suman Anna wrote:
> >> This is all moot when your own tree doesn't boot properly. In this case, you are
> >> adding MMC nodes, but yet for a boot test, you are saying use linux-next for the
> >> nodes that were added or you need additional driver patches (which is not how
> >> maintainer-level trees are verified).
> > 
> > Get your facts straight please.
> > 
> > What do you mean does'nt boot? It does boot with initramfs which is
> > the minimum qual i had set for any new platform (along with. - your
> > need is for a device node to work - which is both a combination of
> > defconfig + driver updates.
> 
> And please re-read my first email, and what I started out with. I am not sure "I
> will pick MMC nodes, but the entry criteria is only initramfs, and you need
> additional patches to get MMC boot to work" is right. Normal thing to do is to
> take in the next merge cycle.

Sigh.

As I stated, the reason I prefer not to do that is because the drivers
will bit-rot for a kernel window without users. Why is it just MMC?

Start off with uart:

compatible = "ti,am64-uart", "ti,am654-uart";

That is not in v5.11-rc1 - it only works because driver is falling back
on the backward compatible nature of the device. The binding and driver
fixes are already on next.

MMC by itself wont boot unless the defconfig changes were merged in
upstream - and that was a painful choice to make to prevent the common Image
file from bloating too much..

I mean, is there a real concern that
https://lore.kernel.org/linux-devicetree/20201029065318.2437-1-vigneshr@ti.com/
or
https://lore.kernel.org/linux-devicetree/20210115193218.5809-1-grygorii.strashko@ti.com/
or ....

will be dropped, in which case, we should'nt introduce in the next
kernel version, so that also means that those drivers will remain as is
without users for a complete kernel cycle.

I am not saying there are'nt instances where things have happened..
these changes have been in next for sufficiently long cycles for that
NOT to happen. Without users, they can unfortunately break and no one
will be the wiser till we enable the nodes again.. That would be a waste
of everyone's time.


> >>
> >> Arnd,
> >> Can you please guide us here as to what is expected in general, given that the
> >> pull-request from Nishanth goes through you, and if there is some pre-existing
> >> norms around this?
> >>
> >> Tony,
> >> Appreciate your input as well since you probably have dealt with these kinda of
> >> dependencies on OMAP.
> > 
> > I am more than happy to drop this entire SoC off my queue (I am yet to
> > pick it up), which is probably what I will do.
> > 
> 
> You are the maintainer, do what feels right to you. You can as well wait for the
> MMC driver changes to be in, and then pick up the series next merge window. Or
> you can accept the versions without taking in pieces that have external
> dependencies.


Sure, I explained the rationale, you are adamant on not being convinced,
without a counter reason - what is the breakage here that you can see
when merged through to rc1 target OR to linux-next?

And maybe doing some thing like this will help on (say on arm-soc PR in
5.11?)

 for f in `git diff v5.10-rc3..|diffstat|cut -d '|' -f1 |tr -d ' '|grep dts$|sed -e "s/^b/./g"`; do ./scripts/checkpatch.pl -f $f |grep compatible; done


At all points in time, nodes are just inactive if the driver is
disabled for some reason (either the driver is not enabled or the
binding changes are not in) - they are never broken, Boot is not
broken (a function is broken when that function support exists in
Image file AND dts node for some reason results in that function
not working) - yes, someone can claim NFS boot is broken or WIFI is
brokken when NFS boot or WIFI is not even introduced. etc.

If I go by the strictest rules, then I cannot even introduce a bugfix
which involves dts via arm-soc dts pull request since the dependencies
of erratum and property enabling the erratum all should come from the
subsystem trees.

Drivers being broken is not in anyone's interest. They tend to get
broken if there are no active users.. let us release often and test
often.. and I believe there is plenty of precedence in doing this
already - if there is a risky property, OK fine, lets discuss about it.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
