Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 105E6724A2A
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 19:28:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbjFFR22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 13:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233652AbjFFR21 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 13:28:27 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 602B010F8
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 10:28:24 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 011038211C;
        Tue,  6 Jun 2023 19:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1686072501;
        bh=O5vqdbylVz3feV+qU6lPkZROfIuMwAV3pRI3BH9Ak9I=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=sbQ50PoUTm1YxFTO+Dr3EEes+Nr09aXD13fnojaNkYC8gXYL2LsOPmvfpKYjaOXBk
         OXXZpdJrtb4u0ANoDW6VV0mtoUjqP1cak8qQH3AKU3xui1cuh2wbXE2rX+eWHOuZkL
         6zD4TiHRgSiqy5KNzuhfDhIJ77h3UiY9ZTrP3jXUjGtU/sRg2OY2P4aukaEniXgSy2
         MrGtFW411vpasF5eFg6D8W3SrtZ+3LENkAuoT/nkcFXKagSsJG7oKQwbKe4cgmp+8Y
         zoeAxSpR0xuuJU0TC+XIft+wcEZqqhJQc6galrPVlHDX5JppMwn4WmlRxYZCuzgCz3
         7voZg5jR4HeLQ==
Message-ID: <0d304968-74c8-47ce-f87a-127449f36f4b@denx.de>
Date:   Tue, 6 Jun 2023 19:28:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [Linux-stm32] [PATCH 1/5] ARM: dts: stm32: Add missing detach
 mailbox for emtrion emSBC-Argon
Content-Language: en-US
To:     Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        "linux-stm32@st-md-mailman.stormreply.com" 
        <linux-stm32@st-md-mailman.stormreply.com>,
        "kernel@dh-electronics.com" <kernel@dh-electronics.com>
References: <20230518011246.438097-1-marex@denx.de>
 <PAXPR10MB471850924065C987981634C1F14B9@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <133c8b4a-8680-f613-807a-2d7931d0a186@denx.de>
 <PAXPR10MB4718D37242FF00D47DF0CEF1F1499@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
 <81f4574d-38c2-21f2-b947-d13e5fc99c60@denx.de>
 <PAXPR10MB471825B145645894D626F070F152A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <PAXPR10MB471825B145645894D626F070F152A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/6/23 18:21, Arnaud POULIQUEN wrote:
> Hi,

Hi,

>>>> I assume that if the firmware does not use the detach mailbox, then
>>>> the detach mailbox is just ignored and unused, so there is no problem
>>>> with having it described in the DT in any case ?
>>>
>>> Yes, The aim of the ST evaluation board is to provide a DT  to a
>>> support different firmwares for demo and tests.  But it is not the case of all
>> boards...
>>> If your boards provide demo using the "detach" it is justified.
>>> If you just add it as a workaround to mask the warnings, you just mask the
>> issue.
>>
>> Then it seems there is no issue with the boards modified here, because as far
>> as I can tell, those are all general purpose SoMs and evaluation boards. With
>> such systems, you cannot predict what the user would like to use those for,
>> that could include whatever ST demo.
>>
>>>> And if that's the case, then I would much rather prefer to have all
>>>> the boards describe the same set of mailboxes, so they don't diverge
>>>> . What do you think ?
>>>>
>>>
>>> I would avoid this.  It is only a configuration by default for current demo.
>>
>> That current demo is restricted to ST produced boards only, or can it also be
>> run on development kits manufactured by other vendors ? I think it is the
>> later, and I don't see why those should be kept out.[]
> 
> ST Demos are boards dependent.

I was under the impression those demos can be built from this CubeMX 
stuff for any board, all you need is the CubeMX BSP ?

[...]

>>>>> Rather than adding unused optional mailbox, I will more in favor of
>>>>> having a mbox_request_channel_byname_optional helper or something
>>>>> similar
>>>>
>>>> See above, I think it is better to have the mailbox described in DT
>>>> always and not use it (the user can always remove it), than to not
>>>> have it described on some boards and have it described on other boards
>> (inconsistency).
>>>
>>> Adding it in the DT ( and especially in the Soc DTSI) can also be
>>> interpreted as "it is defined so you must use it". I would expect that
>>> the Bindings already provide the information to help user to add it on need.
>>
>> Why should every single board add it separately and duplicate the same stuff,
>> if they can all start with it, and if anyone needs to tweak the mailbox
>> allocation, then they can do that in the board DT ? I really don't like the
>> duplication suggestion here.
> 
> I was speaking about "detach mailbox. Here is what I would like to propose to
> you
> 
> 1)  move all the mailbox declaration in the DTSI except "detach"
> 2) don't declare "detach" in boards DTS ( except ST board for legacy compliance)
> 3) as a next step we will have to fix the unexpected warning on the
>     "detach" mailbox.

Why not make the mailbox available by default on all boards ?

As far as I can tell, if the software is not using the detach mailbox, 
there is no downside, it would just be unused. User can always remove it 
in their DT if really needed.

I believe once can build demos using the detach mailbox for boards with 
stm32mp15xx not manufactured by ST, correct ?

[...]
