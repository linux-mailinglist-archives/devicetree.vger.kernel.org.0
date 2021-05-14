Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ECAE381402
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 00:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233069AbhENW7x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 18:59:53 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:40666 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbhENW7x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 18:59:53 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EMwY60017761;
        Fri, 14 May 2021 17:58:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621033114;
        bh=yjXNFzKDT9XnHJAMJfsHn0VeIDaqB5jiNhXPOQAWyTw=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=o+90pKodBkKHvp9ZfmQOfML8Ls+sqv2pFpTtxQscZ4l9fq6/xegMgnoXA/m0MvUyy
         ht5N2wxC5AHPxicOjhfEbxeQDMZBUu3WCbynIRunP60f05KA25YAF2nkRN1eg0Iijp
         h3Osy/+YhDoVGyKWRtXr/6BssdZ2wl+oXn/0mD6M=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EMwYoV077164
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 17:58:34 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 17:58:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 17:58:33 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EMwVjB114250;
        Fri, 14 May 2021 17:58:32 -0500
Subject: Re: [PATCH 0/2] Add ICSSG MDIO nodes on AM65x & J721E SoCs
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210514224759.9987-1-s-anna@ti.com>
From:   Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <c639b3f7-d31b-99cb-6525-619de39df318@ti.com>
Date:   Sat, 15 May 2021 01:58:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210514224759.9987-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15/05/2021 01:47, Suman Anna wrote:
> Hi Nishanth,
> 
> The following series adds the base MDIO nodes representing the MDIO
> sub-module present in each of the ICSSG subsystem. These build on
> top of the foundation ICSSG nodes added in v5.13-rc1. Please see
> the previous ICSSG foundation series for more details [1].
> 
> The MDIO nodes would only be used on boards wired for supporting
> the ICSSG Ethernet, so in general are expected to be disabled in
> all boards where they are not pinned out.
> 
> I have added these as "enabled" by default in the base dtsi files,
> and have marked it disabled in all the existing board dts files
> until we are ready to add in the ICSSG Ethernet functionality.
> 
> Note that the bus_freq property throws a warning with W=2, but this
> had been a legacy property defined a long back. The davinci-mdio
> binding continues to use this.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210114194805.8231-1-s-anna@ti.com/
> 
> Roger Quadros (1):
>    arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
> 
> Suman Anna (1):
>    arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes
> 
>   .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 12 ++++++++
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 30 +++++++++++++++++++
>   .../arm64/boot/dts/ti/k3-am654-base-board.dts | 12 ++++++++
>   .../dts/ti/k3-j721e-common-proc-board.dts     |  8 +++++
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 +++++++++++++
>   5 files changed, 82 insertions(+)
> 

Thank you.
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

-- 
Best regards,
grygorii
