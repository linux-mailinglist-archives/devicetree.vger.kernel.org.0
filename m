Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFD592C9EE0
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 11:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729350AbgLAKMs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 05:12:48 -0500
Received: from imap3.hz.codethink.co.uk ([176.9.8.87]:49930 "EHLO
        imap3.hz.codethink.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729226AbgLAKMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 05:12:48 -0500
Received: from cpc79921-stkp12-2-0-cust288.10-2.cable.virginm.net ([86.16.139.33] helo=[192.168.0.18])
        by imap3.hz.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
        id 1kk2dT-0004w8-Pi; Tue, 01 Dec 2020 10:11:51 +0000
Subject: Re: [PATCH 1/6] mbox: add polarfire soc system controller mailbox
To:     Damien Le Moal <Damien.LeMoal@wdc.com>,
        "Conor.Dooley@microchip.com" <Conor.Dooley@microchip.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
        "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
        "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
        "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Cc:     "Cyril.Jean@microchip.com" <Cyril.Jean@microchip.com>,
        "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
        "Daire.McNamara@microchip.com" <Daire.McNamara@microchip.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        Atish Patra <Atish.Patra@wdc.com>,
        "Lewis.Hanly@microchip.com" <Lewis.Hanly@microchip.com>
References: <20201119170419.18272-1-conor.dooley@microchip.com>
 <BL0PR04MB6514AA9B313828842F7EF0D8E7FF0@BL0PR04MB6514.namprd04.prod.outlook.com>
 <ffa091eb-0963-f2b5-de9a-c76767d6776c@microchip.com>
 <CH2PR04MB6522D8B7E1EC319733D72CA5E7F50@CH2PR04MB6522.namprd04.prod.outlook.com>
From:   Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <bf2e38ae-dbc0-8952-9a30-b56a5340c28a@codethink.co.uk>
Date:   Tue, 1 Dec 2020 10:11:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CH2PR04MB6522D8B7E1EC319733D72CA5E7F50@CH2PR04MB6522.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/11/2020 21:50, Damien Le Moal wrote:
> On 2020/11/30 22:23, Conor.Dooley@microchip.com wrote:
>> On 20/11/2020 00:05, Damien Le Moal wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>>
>>> On 2020/11/20 2:05, conor.dooley@microchip.com wrote:
>>>> From: Conor Dooley <conor.dooley@microchip.com>
>>>>
>>>> This driver adds support for the single mailbox channel of the MSS
>>>> system controller on the Microchip PolarFire SoC.
>>>>
>>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>>>> ---
>>>>   drivers/mailbox/Kconfig        |  12 ++
>>>>   drivers/mailbox/Makefile       |   2 +
>>>>   drivers/mailbox/mailbox-mpfs.c | 296 +++++++++++++++++++++++++++++++++
>>>>   3 files changed, 310 insertions(+)
>>>>   create mode 100644 drivers/mailbox/mailbox-mpfs.c
>>>>
>>>> diff --git a/drivers/mailbox/Kconfig b/drivers/mailbox/Kconfig
>>>> index 05b1009e2820..4881a519683a 100644
>>>> --- a/drivers/mailbox/Kconfig
>>>> +++ b/drivers/mailbox/Kconfig
>>>> @@ -153,6 +153,18 @@ config MAILBOX_TEST
>>>>          Test client to help with testing new Controller driver
>>>>          implementations.
>>>>
>>>> +config MPFS_MBOX
>>>> +     tristate "MPFS Mailbox"
>>>> +     depends on HAS_IOMEM
>>> Shouldn't this dependency be on SOC_MICROCHIP_POLARFIRE ?
>> Not entirely sure what you mean by this one. You want the HAS_IOMEM to be selected by SOC_MICROCHIP_POLARFIRE ?
> 
> Sorry, I was not clear. I was referring to MPFS_MBOX: shouldn't it be dependent
> on SOC_MICROCHIP_POLARFIRE ? E.g.:
> 
> config MPFS_MBOX
> 	tristate "MPFS Mailbox"
> 	depends on HAS_IOMEM
> 	depends on SOC_MICROCHIP_POLARFIRE
> 	...

probably depends on SOC_MICROCHIP_POLARFIRE || COMPILE_TEST
so that you can build a "compile test" kernel with as much enabled as 
possible

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html
