Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B078D4448E4
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 20:23:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbhKCT0V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 15:26:21 -0400
Received: from 6.mo576.mail-out.ovh.net ([46.105.50.107]:53729 "EHLO
        6.mo576.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229697AbhKCT0U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 15:26:20 -0400
X-Greylist: delayed 4201 seconds by postgrey-1.27 at vger.kernel.org; Wed, 03 Nov 2021 15:26:20 EDT
Received: from player694.ha.ovh.net (unknown [10.109.146.86])
        by mo576.mail-out.ovh.net (Postfix) with ESMTP id 4A2BF21122
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 18:03:59 +0000 (UTC)
Received: from RCM-web9.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player694.ha.ovh.net (Postfix) with ESMTPSA id B171E23D29938;
        Wed,  3 Nov 2021 18:03:46 +0000 (UTC)
MIME-Version: 1.0
Date:   Wed, 03 Nov 2021 19:03:46 +0100
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 2/2] mtd: rawnand: brcmnand: support "no-wp" DT property
In-Reply-To: <c59157a1-2c15-928f-f5a7-fab7128e8dd2@gmail.com>
References: <20211103151117.18690-1-zajec5@gmail.com>
 <20211103151117.18690-2-zajec5@gmail.com>
 <c59157a1-2c15-928f-f5a7-fab7128e8dd2@gmail.com>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <f4694a87a459ac19fea451294fda45ef@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 14920144091594271578
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrtddvgddutdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeffudffgfejgfdvieegudekffefveehjeeuieekheduieduhedvieefudetheeinecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrieelgedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-11-03 18:50, Florian Fainelli wrote:
> On 11/3/21 8:11 AM, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>> 
>> Some boards may use WP-capable controller but still have WP not
>> connected. This change fixes:
>> [    1.175550] bcm63138_nand ff801800.nand: timeout on status poll 
>> (expected c0000040 got c00000c0)
>> [    1.184524] bcm63138_nand ff801800.nand: nand #WP expected on
>> [    1.285547] bcm63138_nand ff801800.nand: timeout on status poll 
>> (expected c0000040 got c00000c0)
>> [    1.294516] bcm63138_nand ff801800.nand: nand #WP expected on
>> [    1.395548] bcm63138_nand ff801800.nand: timeout on status poll 
>> (expected c0000040 got c00000c0)
>> [    1.404517] bcm63138_nand ff801800.nand: nand #WP expected on
>> 
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c 
>> b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
>> index f75929783b94..8b6167457f0c 100644
>> --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
>> +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
>> @@ -714,7 +714,8 @@ static int brcmnand_revision_init(struct 
>> brcmnand_controller *ctrl)
>>  	if (ctrl->nand_version >= 0x0500)
>>  		ctrl->features |= BRCMNAND_HAS_1K_SECTORS;
>> 
>> -	if (ctrl->nand_version >= 0x0700)
>> +	if (ctrl->nand_version >= 0x0700 &&
>> +	    !of_property_read_bool(ctrl->dev->of_node, "no-wp"))
>>  		ctrl->features |= BRCMNAND_HAS_WP;
> 
> Should not this be a logical OR here or rather, should it be moved out
> of the check on ctrl->nand_version entirely? What revision of the NAND
> controller do you have on that chip?

It's NAND controller version 0x0701 (v7.1) and I think it's correct.

I think we want WP enabled on rev 7.0+ unless it was explicitly 
disabled.
