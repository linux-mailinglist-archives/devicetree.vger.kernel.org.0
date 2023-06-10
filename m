Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6B4272ABD6
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 15:46:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbjFJNqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 09:46:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231397AbjFJNqg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 09:46:36 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E5BC30FC
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 06:46:30 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 47BDB84724;
        Sat, 10 Jun 2023 15:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1686404783;
        bh=wGO+TnXtPeHAIqAQfdV/EaXawcXWSsPuxjJ5o0piLSE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YVKuiMGz4L8BrSPMPtf7r5vK017PlrzV39ofAzTmJT1Zitr2cuiw8w/J/2o632nxf
         hjUcMInkHF3wYQL6Ngrd5LC707f96dQRNVc+zdrSuOv9Nx1gSomprtCCxUT8SCCX52
         8ll8n2vFXoG88I2DW/xv9fWwi3iXMgfGbGi8BYsNjK5GVbKQ2jx9vxx6fF3MP9fvLo
         T3SSNnQhgFXm/92v06cbI7xGco0XDTpk9T8/W4KO1UA27Fpw6eA3rmx4uXIebOayVm
         pw5xUAoGKfRm3verYIR07e86WYAEH9yWDVbAkPpLRfjiC6SxcP9YUxZBstoshDKSWT
         WAKri/kthE8ag==
Message-ID: <b65288f6-1d3d-424f-5df5-98e86cc51dec@denx.de>
Date:   Sat, 10 Jun 2023 15:46:21 +0200
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
 <0d304968-74c8-47ce-f87a-127449f36f4b@denx.de>
 <PAXPR10MB4718E8CE58A881DAE3983A27F153A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <PAXPR10MB4718E8CE58A881DAE3983A27F153A@PAXPR10MB4718.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE,T_SPF_TEMPERROR,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/7/23 11:53, Arnaud POULIQUEN wrote:

Hi,

[...]

>>>>>>> Rather than adding unused optional mailbox, I will more in favor
>>>>>>> of having a mbox_request_channel_byname_optional helper or
>>>>>>> something similar
>>>>>>
>>>>>> See above, I think it is better to have the mailbox described in DT
>>>>>> always and not use it (the user can always remove it), than to not
>>>>>> have it described on some boards and have it described on other
>>>>>> boards
>>>> (inconsistency).
>>>>>
>>>>> Adding it in the DT ( and especially in the Soc DTSI) can also be
>>>>> interpreted as "it is defined so you must use it". I would expect
>>>>> that the Bindings already provide the information to help user to add it
>> on need.
>>>>
>>>> Why should every single board add it separately and duplicate the
>>>> same stuff, if they can all start with it, and if anyone needs to
>>>> tweak the mailbox allocation, then they can do that in the board DT ?
>>>> I really don't like the duplication suggestion here.
>>>
>>> I was speaking about "detach mailbox. Here is what I would like to
>>> propose to you
>>>
>>> 1)  move all the mailbox declaration in the DTSI except "detach"
>>> 2) don't declare "detach" in boards DTS ( except ST board for legacy
>>> compliance)
>>> 3) as a next step we will have to fix the unexpected warning on the
>>>      "detach" mailbox.
>>
>> Why not make the mailbox available by default on all boards ?
> 
> It has been introduced mainly to test the detach feature,
> on a second platform to help remoteproc maintainers for the review
> process. But the feature is not fully implemented on stm32mp1
> ( auto reboot of thye M4 on crash, appropriate resource table clean-up,...)

This is a driver bug, unrelated to DT description, please just fix it.

> I would prefer to remove it in ST board DT than add it in the DTSI.
> That said as mentioned for legacy support, better to keep for ST board.

Why not remove it from ST boards if this was legacy test feature and is 
no longer needed ?

>> As far as I can tell, if the software is not using the detach mailbox, there is no
>> downside, it would just be unused. User can always remove it in their DT if
>> really needed.
> 
> The inverse it true, User can add it in their DT if really need.

Is there a downside if this is enabled by default, yes or no ?

>> I believe once can build demos using the detach mailbox for boards with
>> stm32mp15xx not manufactured by ST, correct ?[]
> 
> Everything could be possible...
> Once can want to replace the shutdown mailbox by the detach.
> Once can also build demo using the detach mailbox channel for another purpose.
> 
> I quite confuse why you insist to declare this detach mailbox in the DTSI?
> Is there a strong constraint on your side?

I just don't see any explanation why ST board(s) should be somehow 
special and have the detach mailbox described in DT by default, while 
other boards would require separate DT patch to use the detach mailbox 
first. That just reduces usability of non-ST-manufactured boards and 
increases fragmentation. I do not like that.
