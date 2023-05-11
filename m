Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C5786FEECA
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 11:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237616AbjEKJ3J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 05:29:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236438AbjEKJ2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 05:28:37 -0400
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 996DE6E9D
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:28:10 -0700 (PDT)
Received: (Authenticated sender: gregory.clement@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id E182160002;
        Thu, 11 May 2023 09:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1683797289;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=6uPLNGbW4yp7ziUWLP7+hFbqYAf7UUsJem/P457yyI4=;
        b=FzIY/BRoD2YCFOYQBC6tIBVoPUbfnI+NLJtHitEzFRgTnE4KzwnKpxgd4KlYi27Y2f3Hip
        fwjyvYDb06v2MXVBsSHFTMPLGJgUfNz3Y4+bfpakQJTwj+mT9AOZmPs6pFxEwGvWyt1up0
        N0TurHdThBG8NQxdghww52kF58ANn3c2vPFEpDwoly5gfKaZShuU7ZrW3nT+5uBkLDZJes
        Y72UH0nFqXSBUtgzt48iuenKMIoLzmz4Hvjkd9RPIQ0co/B9hHl8JyRkAKaRBcYQDbcCM5
        p4T9Sec0omCVy+8dyB6UOlMQmTZitwuozRa1r6y1aIY8bPQPLplGr6QsSNr3SA==
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     =?utf-8?Q?Pawe=C5=82?= Dembicki <paweldembicki@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: kirkwood: Add Endian 4i Edge 200 board
In-Reply-To: <CAJN1Kkzv2Q76RR5VkV7kU=i13eq_h3ksN5Ob=SF3eVi6MHveYQ@mail.gmail.com>
References: <20221003073443.1511266-1-paweldembicki@gmail.com>
 <Y4ahUWz0z8nBRWCN@lunn.ch>
 <CAJN1Kkzv2Q76RR5VkV7kU=i13eq_h3ksN5Ob=SF3eVi6MHveYQ@mail.gmail.com>
Date:   Thu, 11 May 2023 11:28:08 +0200
Message-ID: <874jojz07r.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pawe=C5=82 Dembicki <paweldembicki@gmail.com> writes:

> =C5=9Br., 30 lis 2022 o 01:18 Andrew Lunn <andrew@lunn.ch> napisa=C5=82(a=
):
>>
>> On Mon, Oct 03, 2022 at 09:34:43AM +0200, Pawel Dembicki wrote:
>> > Add Endian 4i Edge 200 is 5-port firewall.
>> > It have also clone: Endian UTM Mini (The same hardware, with added WLAN
>> > card).
>> >
>> > Hardware:
>> >   - SoC: Marvell 88F6281-A1 ARMv5TE Processor 1.2GHz
>> >   - Ram: 512MB (4x Nanya NT5TU128M8GE-AC)
>> >   - NAND Flash: 512MB (Micron 29F4G08AAC)
>> >   - Lan 1-4: 4x GBE (Marvell 88E6171R-TFJ2)
>> >   - Lan 5: 1x GBE (Marvell 88E1116R-NNC1)
>> >   - Storage: MicroSD Slot
>> >   - MCPIE: MiniPCIe Slot present [fitted with SparkLan WPEA-110N/E
>> >           (Atheros AR9280 chipset) in Endian UTM Mini WLAN only]
>> >   - USB: 1x USB 2.0 port
>> >   - Console: RJ-45 port
>> >   - LEDs: 3x GPIO controlled
>> >
>> > Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
>>
>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>>
>>     Andrew
>
> Hi all,
>
> Gentle reminder for this patch.


Applied on mvebu/dt

Sorry to have missed it.

Thanks,

Gregory


>
> Best Regards,
> Pawe=C5=82 Dembicki

--=20
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
