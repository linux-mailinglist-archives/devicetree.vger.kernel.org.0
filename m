Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7C06978CC
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 10:17:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233804AbjBOJRj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 04:17:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233775AbjBOJRi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 04:17:38 -0500
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com [216.71.153.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 318C2305C1
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 01:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676452657; x=1707988657;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=e3HD0nrhTESjQnCb3qI75cEUboW40Vk12cqIYJvudOo=;
  b=gp4SbVnwhRg0hGc3zKp4FMV2sSOPyyD0zHWAKV05uQbMmC5YYds3pdrZ
   AzT2zASJrluVL6Mkpdk0EuCCXdlOe4KcevU2W/gJLzT++bzKZaEkVrmvo
   37r6tYblf9LN3RxYzD5PfYXzuI0fFVlznddFMeqgdUkfkay4XIjcBewvi
   jMROvmYzGY0mJF4MMpNfeckbNmKRv6HCSLXKDHHkls5VgBcEqdz+jL4O1
   xqJXe1joIbqrvrlO1KuWQ8gP9oTmWnIOxfjvrs51xZvSPKskyykGW9J8Z
   FkUK7It3A3+DV1J/vumjZPj4e2j+9hsOu5CSSf2pwFHyWNEgcV05PVycs
   A==;
X-IronPort-AV: E=Sophos;i="5.97,299,1669046400"; 
   d="scan'208";a="228326960"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 17:17:35 +0800
IronPort-SDR: EVsMnfoSNKUSGkLqK+xXQhto4QpvJI4DXNTBppo0OCKFNQxWbz5QZycueGLJ+GJotltZzSiHtI
 iNpa9GFb4zqU0269S1uGP5qw5tk31v6fZpwwEkjiDKfwfoTOwKALD8m6Fd3qbVX9gf6HN71YWl
 xW6RTaiABOhdypQhUP+xsz36Tg/5fY0gVCI4CKRSrKGMXvY7p1umzyLyWyCtpUVDwoz2bzrbq5
 RAl64+67HiFoQVtXfroF+myolStCZJdbnHAdGpeNgwDN1IAb5y4mcfZjLrXExf9s02tnEIojcg
 63o=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 00:28:58 -0800
IronPort-SDR: skmNifIDwiOp0ZJQFgCNMX0sSP69icpsOrTx14SGJs6bRt2tutbJgUxtPtNRIp/55vrjqyEpCI
 f6rRZjG0H/IR/78avnvbEQKqsMvtE1LyK5IhfWDGogLx+EWqkjwfTL5l5f3TvIEMOCRuMA2erq
 Y9ilMfzSHKZwKY2jatVtKjmU2T35VEL1cLsUBr3XNSs8jyoWT7SS61arMO20S48MUCIjMW6uyy
 3yH3pq0+5LgITd+3ymtkbNsy9fwyWLaYxenVf9WHlp7wSoeZ5YTgRb1Ae0X6wIzQuL4ouztKPC
 rV0=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Feb 2023 01:17:35 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGst63Jkvz1RvTr
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 01:17:34 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1676452652; x=1679044653; bh=e3HD0nrhTESjQnCb3qI75cEUboW40Vk12cq
        IYJvudOo=; b=fwVKCLARgAL0g8/a0qIIJmVk2MKNJ42H3tH0gKF0eyNcFevpNlD
        i1sIfqffdWRJdFwPB7FwXlh8pmt4xUmt4epYul2RM5qECk0PU4tWGwm7MzxdeV+F
        cafRxNGz0Djie64ZAvRnECg+xZa+rJhR+QK+DvZdpTcP4VhgFLvHNiCd4270iwz3
        5W8+AcB2MYcWs9rsc9T5DsFaZeUy+smhhOmBy16AVHH49LqF8VTy73keqdElefXq
        cBccjyO65EXGnvNGCeC3mCSvc9Ra0myzoUC7ikkR1He/yAjuXLrSjhFG5p4HIGl8
        aRSKw/0yneWQV+ZqWqKVUvjyC/eSt4UCNNg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id r1q8bBrPVOvu for <devicetree@vger.kernel.org>;
        Wed, 15 Feb 2023 01:17:32 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGst20hHrz1RvLy;
        Wed, 15 Feb 2023 01:17:29 -0800 (PST)
Message-ID: <f607214d-6ad3-7475-0d3c-76268893aaf5@opensource.wdc.com>
Date:   Wed, 15 Feb 2023 18:17:28 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/9] PCI: rockchip: Remove writes to unused registers
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
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Mikko Kovanen <mikko.kovanen@aavamobile.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-2-rick.wertenbroek@gmail.com>
 <2ebd33e2-46ef-356d-ff4c-81b74950d02f@opensource.wdc.com>
 <CAAEEuhr273bKFBWiTVyTjhHhxjuTK=TVd+5K2B07WfWMD+N7mA@mail.gmail.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <CAAEEuhr273bKFBWiTVyTjhHhxjuTK=TVd+5K2B07WfWMD+N7mA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/15/23 18:04, Rick Wertenbroek wrote:
> On Wed, Feb 15, 2023 at 12:56 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
>>
>> I checked the TRM and indeed these registers are listed as unused.
>> However, with this patch, nothing work for me using a Pine rockpro64
>> board. Keeping this patch, your series (modulo some other fixes, more
>> emails coming) is making things work !
> 
> Hello, Thank you for testing the driver and commenting, I'll incorporate your
> suggestions in the next version of this series.
> 
> This patch alone does not make the driver work. Without the fixes to the
> address windows and translation found in [PATCH v2 6/9] ("PCI: rockchip:
> Fix window mapping and address translation for endpoint") transfers will not
> work. However, as you said, with the patch series, the driver works.
> Good to see that you have the driver working on the rockpro64 which is a
> very similar but different board than the one I used (FriendlyElec NanoPC-T4).
> 
>> So I think the bug is with the TRM, not the code. THinking logically about
>> htis, it makes sense: this is programming the address translation unit to
>> translate mmio & dma between host PCI address and local CPU space address.
>> If we never set the PU address, how can that unit possibly ever translate
>> anything ?
> 
> No, the bug is not in the TRM:
> The RK3399 PCIe endpoint core has the physical address space of 64MB
> @ 0xF800'0000 to access the PCIe address space (TRM 17.5.4).
> This space is split into 33 windows, one of 32MBytes and 32 of 1MByte.
> Read-write accesses by the CPU to that region will be translated. Each
> window has a mapping that is configured through the ATR Configuration
> Register Address Map (TRM 17.6.8) and the registers addr0 and addr1
> will dictate the translation between the window (a physical CPU addr)
> into a PCI space address (with this the unit can translate). The other
> registers are for the PCIe header descriptor.
> The translation process is documented in TRM 17.5.5.1.1
> The core will translate all read-write accesses to the windows that fall
> in the 64MB space @ 0xF800'0000 and generate the PCIe addresses
> and headers according to the values in the registers in the ATR
> Configuration Register Address Map (@ 0xFDC0'0000).
> 
> Translation does indeed take place and works
> but requires the changes in [PATCH v2 6/9] ("PCI: rockchip:
> Fix window mapping and address translation for endpoint")
> because it was broken from the start...
> 
> The two writes that were removed are to unused (read-only) registers.
> The writes don't do anything, manually writing and reading back these
> addresses will always lead to 0 (they are read-only). So they are removed.

OK. I tried so many things to get something working that I probably got
confused with this one :) Let me retry with this patch 1 to see if I get
the same results, which is: pci-epf-test solidly working (with the patches
I sent earlier today), and my on-going nvme epf driver working-ish (BIOS
OK, but IRQs to Linux miserably failing to be sent from EP).

-- 
Damien Le Moal
Western Digital Research

