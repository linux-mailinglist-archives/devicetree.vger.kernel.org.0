Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91B8C393CB0
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 07:23:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233565AbhE1FYn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 01:24:43 -0400
Received: from lizzard.sbs.de ([194.138.37.39]:46327 "EHLO lizzard.sbs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234995AbhE1FYf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 May 2021 01:24:35 -0400
Received: from mail2.sbs.de (mail2.sbs.de [192.129.41.66])
        by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id 14S5MVwG009038
        (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Fri, 28 May 2021 07:22:31 +0200
Received: from [167.87.36.150] ([167.87.36.150])
        by mail2.sbs.de (8.15.2/8.15.2) with ESMTP id 14S5MUQK010752;
        Fri, 28 May 2021 07:22:30 +0200
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
From:   Jan Kiszka <jan.kiszka@siemens.com>
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
Cc:     Grygorii Strashko <grygorii.strashko@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20210514224759.9987-1-s-anna@ti.com>
 <20210514224759.9987-2-s-anna@ti.com>
 <f1930b9c-1a36-dd82-b276-908375b3e1c8@siemens.com>
Message-ID: <00fbd9c1-ed43-822c-06bf-9642b5c03568@siemens.com>
Date:   Fri, 28 May 2021 07:22:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <f1930b9c-1a36-dd82-b276-908375b3e1c8@siemens.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28.05.21 07:09, Jan Kiszka wrote:
> On 15.05.21 00:47, Suman Anna wrote:
>> From: Roger Quadros <rogerq@ti.com>
>>
>> The ICSSGs on K3 AM65x SoCs contain an MDIO controller that can
>> be used to control external PHYs associated with the Industrial
>> Ethernet peripherals within each ICSSG instance. The MDIO module
>> used within the ICSSG is similar to the MDIO Controller used
>> in TI Davinci SoCs. A bus frequency of 1 MHz is chosen for the
>> MDIO operations.
>>
>> The nodes are added and enabled in the common k3-am65-main.dtsi
>> file by default, and disabled in the existing AM65 board dts
>> files. These nodes need pinctrl lines, and so should be enabled
>> only on boards where they are actually wired and pinned out for
>> ICSSG Ethernet. Any new board dts file should disable these if
>> they are not sure.
>>
>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>> [s-anna@ti.com: move the disabled status to board dts files]
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>  .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 12 ++++++++
>>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 30 +++++++++++++++++++
>>  .../arm64/boot/dts/ti/k3-am654-base-board.dts | 12 ++++++++
>>  3 files changed, 54 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
>> index de763ca9251c..63140eaba524 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
>> @@ -653,3 +653,15 @@ &pcie1_rc {
>>  &pcie1_ep {
>>  	status = "disabled";
>>  };
>> +
>> +&icssg0_mdio {
>> +	status = "disabled";
>> +};
>> +
>> +&icssg1_mdio {
>> +	status = "disabled";
>> +};
>> +
>> +&icssg2_mdio {
>> +	status = "disabled";
>> +};
> 
> We will need this here for PRU networking. What would be the impact of
> leaving it enabled already at this stage?
> 

Ah, now reading our backlog completely - there will be more coming in to
this file than not disabling icssg mdio (and that only for mdio0). So:

Acked-by: Jan Kiszka <jan.kiszka@siemens.com>

Jan

PS: How far are we away from icssg-prueth?

-- 
Siemens AG, T RDA IOT
Corporate Competence Center Embedded Linux
