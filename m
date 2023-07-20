Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D332075A694
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 08:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231150AbjGTGgH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 02:36:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231163AbjGTGfv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 02:35:51 -0400
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D468126B5
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 23:34:44 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
        (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
        (Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
        by ex01.ufhost.com (Postfix) with ESMTP id 3252324E36A;
        Thu, 20 Jul 2023 14:34:04 +0800 (CST)
Received: from EXMBX068.cuchost.com (172.16.6.68) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 20 Jul
 2023 14:34:04 +0800
Received: from [192.168.125.113] (113.72.147.86) by EXMBX068.cuchost.com
 (172.16.6.68) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 20 Jul
 2023 14:34:03 +0800
Message-ID: <d397c3ba-4ac9-bf21-5ae4-79db6c2ad16e@starfivetech.com>
Date:   Thu, 20 Jul 2023 14:34:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for
 starfive devices
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>
CC:     Felix Moessbauer <felix.moessbauer@siemens.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        <linux-riscv@lists.infradead.org>, <devicetree@vger.kernel.org>
References: <20230627080620.329873-1-felix.moessbauer@siemens.com>
 <20230710-villain-dainty-d1a90ce57a27@spud>
 <CAJM55Z_0X+UT1s9s4kqKuyg4hF2JooTMXe4RYTAzoEgY=+8A1Q@mail.gmail.com>
 <20230712-single-crestless-93bf57c09773@spud>
From:   Walker Chen <walker.chen@starfivetech.com>
In-Reply-To: <20230712-single-crestless-93bf57c09773@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [113.72.147.86]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX068.cuchost.com
 (172.16.6.68)
X-YovoleRuleAgent: yovoleflag
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2023/7/13 0:23, Conor Dooley wrote:
> On Wed, Jul 12, 2023 at 06:17:19PM +0200, Emil Renner Berthing wrote:
>> On Mon, 10 Jul 2023 at 20:29, Conor Dooley <conor@kernel.org> wrote:
>> >
>> >
>> > Emil, Walker,
>> >
>> > On Tue, Jun 27, 2023 at 04:06:20PM +0800, Felix Moessbauer wrote:
>> > > Add the '-@' DTC option for the starfive devices. This option
>> > > populates the '__symbols__' node that contains all the necessary symbols
>> > > for supporting device-tree overlays (for instance from the firmware or
>> > > the bootloader) on these devices.
>> > >
>> > > The starfive devices allow various modules to be connected and this
>> > > enables users to create out-of-tree device-tree overlays for these modules.
>> > >
>> > > Please note that this change does increase the size of the resulting DTB
>> > > by ~20%. For example, with v6.4 increase in size is as follows:
>> >
>> > Whatcha think?
>> 
>> I'm fine with it. I just wonder why it's only the Nvidia Tegra boards
>> and the VisionFive's that need this. Surely other boards have pins for
>> expansion cards.
> 
> It's totally not just these two - there's been a flurry of similar
> patches recently. The RPi stuff got it - I think I Acked that one from
> the DT side while Rob and Krzysztof were out of office, partially on the
> basis that the Nvidia stuff had it (and IIRC Renesas).
> Since then there's been a couple other ones that got the same treatment,
> including 32-bit ARM Microchip stuff. I've been avoiding doing it for the
> RISC-V Microchip to see if Rob decides that what I Acked was a problem.
> 
> It seems generally helpful, so I've been a little suspicious as to why
> it was not done already...

I agree to use DT overlay though this will increase a little bit size for DTB.
For users who want to use expansion card like audio daughter board, it provides a convenient way.

Best regards,
Walker
