Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A24A573621
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 14:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234986AbiGMMNi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 08:13:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231236AbiGMMNh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 08:13:37 -0400
X-Greylist: delayed 4698 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 13 Jul 2022 05:13:35 PDT
Received: from 12.mo583.mail-out.ovh.net (12.mo583.mail-out.ovh.net [46.105.39.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C825595
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 05:13:35 -0700 (PDT)
Received: from player696.ha.ovh.net (unknown [10.108.4.183])
        by mo583.mail-out.ovh.net (Postfix) with ESMTP id 7344024464
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 10:55:15 +0000 (UTC)
Received: from RCM-web6.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player696.ha.ovh.net (Postfix) with ESMTPSA id 2348B226D0A0E;
        Wed, 13 Jul 2022 10:55:03 +0000 (UTC)
MIME-Version: 1.0
Date:   Wed, 13 Jul 2022 12:55:03 +0200
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Linux ARM List <linux-arm-kernel@lists.infradead.org>,
        kursad.oney@broadcom.com, anand.gore@broadcom.com,
        dan.beygelman@broadcom.com,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        joel.peshkin@broadcom.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 3/3] arm64: dts: bcmbca: update bcm4808 board dts file
In-Reply-To: <900ac3ed-a77c-3cc0-f5ab-c45267a1a4ba@gmail.com>
References: <20220712021144.7068-1-william.zhang@broadcom.com>
 <20220712021144.7068-4-william.zhang@broadcom.com>
 <d93e55fa-3359-2609-aad5-c80eca78f380@linaro.org>
 <900ac3ed-a77c-3cc0-f5ab-c45267a1a4ba@gmail.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <b350020eee4de0caf36f88f299e61930@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 11858822245462879195
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrudejjedgfeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghffgfkgihitgfgsehtjehjtddtredvnecuhfhrohhmpeftrghfrghlpgfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeegvdffjeelvdeggeetheegveejieetgeeiiefggeelveejffehieekhfduueelhfenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrheileeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkeef
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-07-12 17:36, Florian Fainelli wrote:
> On 7/12/22 00:47, Krzysztof Kozlowski wrote:
>> On 12/07/2022 04:11, William Zhang wrote:
>>> Update compatible string based on the new bcmbca binding rule
>>> for BCM4908 famliy based boards
>> 
>> Typo - family
>> 
>> Please explain why breaking the ABI (and users of these DTS_ is 
>> acceptable.
> 
> This will be largely targeted towards Rafal who supports these kinds
> of devices with an upstream kernel. My understanding is that this is
> OK because we will always ship a DTB matching the Linux kernel, and I
> believe this is true for both the way that William and his group
> support these devices, as well as how OpenWrt, buildroot or other
> build systems envision to support these devices.
> 
> Rafal, does that sound about right?

Right - in all cases I'm aware of - Linux gets shipped with DTB files.
So such change won't actually break anything in real world.
