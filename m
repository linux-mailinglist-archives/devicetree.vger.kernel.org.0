Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEBAE697A18
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 11:42:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234127AbjBOKmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 05:42:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231590AbjBOKmI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 05:42:08 -0500
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com [216.71.153.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AAFD36FC6
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 02:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676457725; x=1707993725;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=bYOeNaHyaVrirbdon1Wxef62nvktUzAM/kkBHGbdOTg=;
  b=BwT5jQg0GLjQNaej0u/V7ooi+/mFKTpnAtIg0yG0m2/5q05tosODLTb/
   3mqHhrgxJJD9Kmoocgs08MM1afJNaF2moZYGfBjaFTCd+BAkJ09/IpgsK
   e4mG/AfcoSt6IUJwsiRGmL+3perAC3V/9Xsot8sqquwJOjL+r2coZLQ9M
   6BW61c8p+eDvkDryS+8NBdxJgAbUE6spkeEysEb/41cmCbvpeCP/iMFEG
   GBMx6wtfSNvfEm554qQI2XkD5zmvBopK7z87n+ZN8LiWFlcMW4iMQbcGr
   U39KXNIE7D+yYoofyHGgOFS9vvQcX42tLfPXmzgpBDM0doCQqLtG8s3t4
   g==;
X-IronPort-AV: E=Sophos;i="5.97,299,1669046400"; 
   d="scan'208";a="228332145"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 18:42:05 +0800
IronPort-SDR: 2ar5ARKD6p0maPG3JeNDM56sAKnjj9ATo0GHQzslRMCHz3W6J+mGgtdXmh2Tp2htQkm2CBOcrE
 wCqh/GqfFjTl60C/3LwUw5qKSO6uwGsIk52q9vYHQIPqLa2ooY2Ox0KzN2Wf1Tco+e1tja8h2G
 XtzaVExUteDwfoTbqUho6dZXA1HG5UEk9H/BgXIOE/ssGkXsT6KCuSsdR34sN3ujPJPnSrr1iK
 w832t824d1QWGLUSdU1OcYsQVEWWZhbixP1O04wJmn/5DhnBQ/jBVVfqIRnl8u8AKZpv4nMKB6
 GAM=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 01:53:27 -0800
IronPort-SDR: 69Q5x1UZGwMlWu8/6Ro2xXL2uPYcvrBdpR5S1s1ysopWHXGlIeZvIUNS0D9bnXOmmouDOzwiDz
 FJzuJKmwN36EHOG4o8a5onsL+i5LyEjRvTCwMYhF+YRGY+sH4asuxOGZQanWOHWl3xbUt0QO1r
 0sIhtyA8uWXHKblGWyEpJWkHSkPGuzd5AGy6xS8AuDx2p8Cp0oDQw9iEV3HMurJdl/QC+XZvzR
 e8FT+uBWFthiHL0yXOPsSIelb7CX60LU1J+dcxGxDFrAssfqy9Jh2rL77keipnjj5hQ4pkLXvK
 m0I=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 02:42:05 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGvlc4KNcz1RvTp
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 02:42:04 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676457722; x=1679049723; bh=bYOeNaHyaVrirbdon1Wxef62nvktUzAM/kk
        BHGbdOTg=; b=GijKWfcc90dG7VUgYF5cHhuBdG8ouhdAvOpUF3wC+2/zxIYch6F
        qgZi5NqkRdRBu91oD6el702eDbIq+ikksXqahGTKWVw329/u8sDQy7nzGIFFbXNa
        Kk99hEsztDkPuK/DhFRBSyKQE7hfmD5ebBE+5YNomJoCDM1/P203A3a+DK/3z2lO
        qC5peI72bsDN+FvYIvnMr0OGqxyVnaaFC5kHUfoRtlWXkoQ2a59mYdpFuND/1wOW
        Gs4KUk6nsf3yAntrByfS5xRn4lYzSS2tK8dTQZ27UIIrsR1x5HXmtwB42WpXa2eu
        VPPYUzzaHWLZq4YNHK92Whn5b2M19+7a36A==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id sxClh3uvU-tO for <devicetree@vger.kernel.org>;
        Wed, 15 Feb 2023 02:42:02 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGvlW6T6dz1RvLy;
        Wed, 15 Feb 2023 02:41:59 -0800 (PST)
Message-ID: <b0219543-dec3-dfa2-8bba-93e4bc32eee2@opensource.wdc.com>
Date:   Wed, 15 Feb 2023 19:41:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller
 driver
Content-Language: en-US
To:     Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc:     alberto.dassatti@heig-vd.ch, xxm@rock-chips.com,
        rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Mikko Kovanen <mikko.kovanen@aavamobile.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <7b8a8d38-feef-d2af-f23f-6b2b46f78110@opensource.wdc.com>
 <CAAEEuhrzysR-xfx7X-gVqUdi17R1YiWxyBM+0asQxtyZ9PQozg@mail.gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhrzysR-xfx7X-gVqUdi17R1YiWxyBM+0asQxtyZ9PQozg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/15/23 19:28, Rick Wertenbroek wrote:
> On Wed, Feb 15, 2023 at 2:51 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> Note about that: with your series applied, nothing was working for me on
>> my pine Rockpro64 board (AMD Ryzen host). I got weird/unstable behavior
>> and the host IOMMU screaming about IO page faults due to the endpoint
>> doing weird pci accesses. Running the host with IOMMU on really helps in
>> debugging this stuff :)
> 
> Thank you for testing, I have also tested with a Ryzen host, I have IOMMU
> enabled as well.
> 
>>
>> With the few fixes to your series I commented about, things started to
>> work better, but still very unstable. More debugging and I found out that
>> the pci-epf-test drivers, both host and endpoint sides, have nasty
>> problems that lead to reporting failures when things are actually working,
>> or outright dummy things being done that trigger errors (e.g. bad DMA
>> synchronization triggers IOMMU page faults reports). I have a dozen fix
>> patches for these drivers. Will clean them up and post ASAP.
>>
>> With the test drivers fixed + the fixes to your series, I have the
>> pci_test.sh tests passing 100% of the time, repeatedly (in a loop). All solid.
>>
> 
> Good to hear that it now works, I'll try them as well.
> 
>> However, I am still seeing issues with my ongoing work with a NVMe
>> endpoint driver function: I see everything working when the host BIOS
>> pokes at the NVMe "drive" it sees (all good, that is normal), but once
>> Linux nvme driver probe kicks in, IRQs are essentially dead: the nvme
>> driver does not see anything strange and allocates IRQs (1 first, which
>> ends up being INTX, then multiple MSI one for each completion queue), but
>> on the endpoint side, attempting to raise MSI or INTX IRQs result in error
>> as the rockchip-ep driver sees both INTX and MSI as disabled. No clue what
>> is going on. I suspect that a pci reset may have happened and corrupted
>> the core configuration. However, the EPC/EPF infrastructure does not
>> catch/process PCI resets as far as I can tell. That may be the issue.
>> I do not see this issue with the epf test driver, because I suspect the
>> host BIOS not knowing anything about that device, it does not touch it.
>> This all may depend on the host & BIOS. Not sure. Need to try with
>> different hosts. Just FYI :)
>>
> 
> Interesting that you are working on this, I started to patch the RK3399 PCIe
> endpoint controller driver for a similar project, I want to run our NVMe
> firmware in a Linux PCIe endpoint function.
> 
> For the IRQs there are two things that come to mind:
> 1) The host driver could actually disable them and work in polling mode,
> I have seen that with different versions of the Linux kernel NVMe driver
> sometimes it would choose to use polling instead of IRQs for the queues.
> So maybe it's just the
> 2) The RK3399 PCIe endpoint controller is said to be able only to generate
> one type of interrupt at a given time. "It is capable of generating MSI or
> Legacy interrupt if the PCIe is configured as EP. Notes that one PCIe
> component can't generate both types of interrupts. It is either one or the
> other." (see TRM 17.5.9 Interrupt Support).
> I don't know exactly what the TRM means the the controller cannot
> use both interrupts at the same time, but this might be a path to explore

The host says that both INTX is enabled and MSI disabled when the nvme driver
starts probing. That driver starts probe with a single vector to enable the
device first and use the admin SQ/CQ for indentify etc. Then, that IRQ is freed
and multiple MSI vectors allocated, one for each admin + IO queue pair.
The problem is that on the endpoint, the driver says that both INTX and MSI are
disabled but the host at least sees INTX enabled, and the first IRQ allocated
for the probe enables MSI and gets one vector. But that MSI enable is not seen
by the EP, and the EP also says that INTX is disabled, contrary to what the host
says.

When the BIOS probe the drive, both INTX and MSI are OK. Only one IRQ is used by
the BIOS and I tried both by setting & disabling MSI. What I think happens is
that there may be a PCI reset/FLR or something similar, and that screws up the
core config... I do not have a PCI bus analyzer, so hard to debug :)

I did hack both the host nvme driver and EP driver to print PCI link status etc,
but I do not see anything strange there. Furthermore, the BAR accesses and admin
SQ/CQ commands and cqe exchange is working as I get the identify commands from
the host and the host sees the cqe, but after a timeout as it never receives any
IRQ... I would like to try testing without the BIOS touching the EP nvme
controller. But not sure how to do that. Probably should ignore the first CC.EN
enable event I see, which is from the BIOS.

-- 
Damien Le Moal
Western Digital Research

