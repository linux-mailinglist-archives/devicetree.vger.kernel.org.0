Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE76939470E
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 20:30:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbhE1Sbn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 14:31:43 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:50126 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbhE1Sbm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 14:31:42 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14SITxLM004420;
        Fri, 28 May 2021 13:29:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622226599;
        bh=Fe4lc5uIMLBIVdMlXhGUT+5LujHgjNzCRtd4ypIq5Y8=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=wkxf9QEYDjRRbYn9du7RsPlg/ySzp/V7gcMQ7sMsiUnVcISrI4sfjlXAyZHNeD7oJ
         bPajnqmoiFK7z4kyGBmZrHX/I9QFpo4YGF6isKtnb59jXOEQEvxZm9b6QAXzhRTW1G
         CwH+uWGaB4TPdBOiqm1DI8EqIjrSYJ5zbZN6hBrU=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14SITxVu126505
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 May 2021 13:29:59 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 28
 May 2021 13:29:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 28 May 2021 13:29:59 -0500
Received: from [10.250.35.153] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14SITxek010694;
        Fri, 28 May 2021 13:29:59 -0500
Subject: Re: [PATCH 0/2] Add ICSSG MDIO nodes on AM65x & J721E SoCs
To:     Nishanth Menon <nm@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210514224759.9987-1-s-anna@ti.com>
 <20210528182400.gjegxcl3umqqf5gl@filth>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <e0da118a-077b-2e04-1e75-1550bcfa3540@ti.com>
Date:   Fri, 28 May 2021 13:29:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210528182400.gjegxcl3umqqf5gl@filth>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/28/21 1:24 PM, Nishanth Menon wrote:
> On 17:47-20210514, Suman Anna wrote:
>> Hi Nishanth,
>>
>> The following series adds the base MDIO nodes representing the MDIO
>> sub-module present in each of the ICSSG subsystem. These build on
>> top of the foundation ICSSG nodes added in v5.13-rc1. Please see
>> the previous ICSSG foundation series for more details [1]. 
>>
>> The MDIO nodes would only be used on boards wired for supporting
>> the ICSSG Ethernet, so in general are expected to be disabled in
>> all boards where they are not pinned out.
>>
>> I have added these as "enabled" by default in the base dtsi files,
>> and have marked it disabled in all the existing board dts files
>> until we are ready to add in the ICSSG Ethernet functionality.
>>
>> Note that the bus_freq property throws a warning with W=2, but this
>> had been a legacy property defined a long back. The davinci-mdio
>> binding continues to use this.
>>
>> regards
>> Suman
>>
>> [1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210114194805.8231-1-s-anna@ti.com/
> 
> Did you mean https://lore.kernel.org/linux-arm-kernel/20210304160712.8452-1-s-anna@ti.com/
> the series we actually did pick up?
> 

v2 is the series we picked up, but I meant to give the v1 cover-letter only for
the details portion. v2 cover-letter didn't have much details.


>>
>> Roger Quadros (1):
>>   arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
>>
>> Suman Anna (1):
>>   arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes
>>
> 
> OK, does'nt apply on my tree as I am picking up patches.. There are
> new cleanups and nodes I have picked up, so could be conflicting with
> those.
> 
> Please rebase and post based on:
> https://git.kernel.org/pub/scm/linux/kernel/git/nmenon/linux.git/log/?h=ti-k3-dts-next
> 
> I'd suggest you do that on monday OR base on monday's linux-next tag for
> the next post.
> 

Yeah ok.

regards
Suman


