Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B14A2B0D0C
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 19:57:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726148AbgKLS5F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 13:57:05 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:38156 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726137AbgKLS5E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 13:57:04 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ACIv0xc078639;
        Thu, 12 Nov 2020 12:57:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1605207420;
        bh=0mZ612yvY0+p6EwAFklsGOThGaWvihoymm9qWi7AN7Y=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=AwmOAaG+TkUIuCkejGp8Wq6wtLapYGt6fNnjQLi8BpVXcZRE/ddfo2Yb6iBVCIuom
         R2Q+IoqYfSjJZqbreYB0iCALVK2GPbuhFToMc42hz4ye62l6MyEBt2mCRiq0l9BlaN
         eCdXrItoXrFZca3CDZdA676Rtp16MuE5DdQvprH8=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ACIv05S084422
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 12 Nov 2020 12:57:00 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 12
 Nov 2020 12:56:56 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 12 Nov 2020 12:56:56 -0600
Received: from [10.250.64.205] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ACIut22040910;
        Thu, 12 Nov 2020 12:56:56 -0600
Subject: Re: [PATCH 0/8] Add R5F nodes on TI K3 AM65x and J721E SoCs
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
References: <20201029033802.15366-1-s-anna@ti.com>
 <160520312703.31666.11099218646919403503.b4-ty@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <ae6bb8d3-4c75-4c35-fbb6-0594251b4398@ti.com>
Date:   Thu, 12 Nov 2020 12:56:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160520312703.31666.11099218646919403503.b4-ty@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/12/20 11:48 AM, Nishanth Menon wrote:
> On Wed, 28 Oct 2020 22:37:54 -0500, Suman Anna wrote:
>> The TI K3 R5F remoteproc driver and bindings were merged into 5.10-rc1,
>> and this series adds the follow-on base dt nodes for the R5F remote
>> processors on TI K3 AM65x and J721E SoCs. Additional memory nodes were
>> also added to boot these processors successfully on applicable TI K3
>> AM65x and J721E EVM boards. The series uses previously accepted mailbox
>> nodes.
>>
>> [...]
> 
> Hi Suman Anna,
> 
> I have applied the following to branch ti-k3-dts-next on [1].
> Thank you!
> 
> [1/8] arm64: dts: ti: k3-am65-mcu: Add MCU domain R5F cluster node
>       commit: 5bb9e0f6e8505e31159963150104569d9b8a8911
> [2/8] arm64: dts: ti: k3-am654-base-board: Add mailboxes to R5Fs
>       commit: 10332cd6bcf287e22dac875d121b73adb762f96b
> [3/8] arm64: dts: ti: k3-am654-base-board: Add DDR carveout memory nodes for R5Fs
>       commit: 954ec5139db091ff51cec4bf57c42f9deebc8747
> [4/8] arm64: dts: ti: k3-am654-base-board: Reserve memory for IPC between R5F cores
>       commit: f82c5e0a8bc1311aee140bfed0888fc9a99afde0
> [5/8] arm64: dts: ti: k3-j721e-mcu: Add MCU domain R5F cluster node
>       commit: dd74c9459cf2c87c3143b4b9005b7c9056fccdb0
> [6/8] arm64: dts: ti: k3-j721e-main: Add MAIN domain R5F cluster nodes
>       commit: df445ff9de893146107d37e0cd5e542f800d9b39
> [7/8] arm64: dts: ti: k3-j721e-som-p0: Add mailboxes to R5Fs
>       commit: 2879b593c3784e5eafc67cae915d8b7d680455f3
> [8/8] arm64: dts: ti: k3-j721e-som-p0: Add DDR carveout memory nodes for R5Fs
>       commit: 0f191152bcba6758804eed4f6463f9bd32bdbfdb
> 
> 
> Please note:
> * I understand the complexity of the code requiring the split up in the
>   incremental patches, so I believe it has a case for us to do the same.
> * Special note on MCU R5: there are cases on J721e, J7200 and future devices
>   where "device management" functionality will run on MCU R5 core 0, which
>   means it is capable of running special firmware that may not respond on
>   mailbox at all.. The assumption is that the driver is capable of detecting
>   and handling such scenarios and this is a hardware description (as it
>   should be).

Yep, this is understood.

> 
> All being well this means that it will be integrated into the linux-next
> tree (usually sometime in the next 24 hours) and sent up the chain during
> the next merge window (or sooner if it is a relevant bug fix), however if
> problems are discovered then the patch may be dropped or reverted.
> 
> You may get further e-mails resulting from automated or manual testing
> and review of the tree, please engage with people reporting problems and
> send followup patches addressing any issues that are reported if needed.
> 
> If any updates are required or you are submitting further changes they
> should be sent as incremental updates against current git, existing
> patches will not be replaced.
> 
> Please add any relevant lists and maintainers to the CCs when replying
> to this mail.
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/nmenon/linux.git
> 

Thanks, Nishanth!

regards
Suman

