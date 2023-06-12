Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40ED872BA71
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 10:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233379AbjFLI0s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 04:26:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234089AbjFLI0j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 04:26:39 -0400
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073EA1BC1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:26:30 -0700 (PDT)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35C7gpvX010127;
        Mon, 12 Jun 2023 10:26:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=ZdSuXdliB6GsADqF1N5hXj4+X7GJHpgFDArdmaQU6eg=;
 b=5rQ0DjHc879WwjcQHfYRtF/lq94Uo8lxx60FZnhoq7RXoWEjkQ+0ROgoqojqd7zCwLet
 fiBjo8LVdl5hPP6NFwhxTblExK7F0kGlc72akqi/QMAqQtKvytesV5EQ/LzgDaFPsCqi
 RMl+m16ZPaPHoXc9/r0OIng65zVRqaIzUJY6WewJgE7hNYtquIxlk0k22DAVdIONOJ5E
 bl8MTSMn7P0tVbqoGmoWi6MZpS7682r8nD+RiJQtSaBshcsLkzpq7vEX5pLst8S37b9G
 SWIpo/JBSVc3gyua9dg7wglVxtuOrg3isENhRca4Xxhmvp9zggizx0ahxRAemG9CDqVz fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3r5smd229f-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 12 Jun 2023 10:26:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BEBF910002A;
        Mon, 12 Jun 2023 10:26:06 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 94E072194CD;
        Mon, 12 Jun 2023 10:26:06 +0200 (CEST)
Received: from [10.252.14.202] (10.252.14.202) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Mon, 12 Jun
 2023 10:26:05 +0200
Message-ID: <c944123c-bcd8-89cf-c2cd-8d5742931f68@foss.st.com>
Date:   Mon, 12 Jun 2023 10:26:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [Linux-stm32] [PATCH 1/5] ARM: dts: stm32: Add missing detach
 mailbox for emtrion emSBC-Argon
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>,
        Arnaud POULIQUEN <arnaud.pouliquen@st.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
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
 <b65288f6-1d3d-424f-5df5-98e86cc51dec@denx.de>
From:   Arnaud POULIQUEN <arnaud.pouliquen@foss.st.com>
Organization: STMicroelectronics
In-Reply-To: <b65288f6-1d3d-424f-5df5-98e86cc51dec@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.252.14.202]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-12_05,2023-06-09_01,2023-05-22_02
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/10/23 15:46, Marek Vasut wrote:
> On 6/7/23 11:53, Arnaud POULIQUEN wrote:
> 
> Hi,
> 
> [...]
> 
>>>>>>>> Rather than adding unused optional mailbox, I will more in favor
>>>>>>>> of having a mbox_request_channel_byname_optional helper or
>>>>>>>> something similar
>>>>>>>
>>>>>>> See above, I think it is better to have the mailbox described in DT
>>>>>>> always and not use it (the user can always remove it), than to not
>>>>>>> have it described on some boards and have it described on other
>>>>>>> boards
>>>>> (inconsistency).
>>>>>>
>>>>>> Adding it in the DT ( and especially in the Soc DTSI) can also be
>>>>>> interpreted as "it is defined so you must use it". I would expect
>>>>>> that the Bindings already provide the information to help user to add it
>>> on need.
>>>>>
>>>>> Why should every single board add it separately and duplicate the
>>>>> same stuff, if they can all start with it, and if anyone needs to
>>>>> tweak the mailbox allocation, then they can do that in the board DT ?
>>>>> I really don't like the duplication suggestion here.
>>>>
>>>> I was speaking about "detach mailbox. Here is what I would like to
>>>> propose to you
>>>>
>>>> 1)  move all the mailbox declaration in the DTSI except "detach"
>>>> 2) don't declare "detach" in boards DTS ( except ST board for legacy
>>>> compliance)
>>>> 3) as a next step we will have to fix the unexpected warning on the
>>>>      "detach" mailbox.
>>>
>>> Why not make the mailbox available by default on all boards ?
>>
>> It has been introduced mainly to test the detach feature,
>> on a second platform to help remoteproc maintainers for the review
>> process. But the feature is not fully implemented on stm32mp1
>> ( auto reboot of thye M4 on crash, appropriate resource table clean-up,...)
> 
> This is a driver bug, unrelated to DT description, please just fix it.

No, it is a system usecase that depends on Hardware, M4 firmware, A7
applications, ...
The detach/re-attach is a quite complex feature that needs to understand
the whole picture. As already mentioned above it as been introduced for
test on upstream.

> 
>> I would prefer to remove it in ST board DT than add it in the DTSI.
>> That said as mentioned for legacy support, better to keep for ST board.
> 
> Why not remove it from ST boards if this was legacy test feature and is no
> longer needed ?

If you can guaranty that this will not introduce regression on legacy, yes we can.

> 
>>> As far as I can tell, if the software is not using the detach mailbox, there
>>> is no
>>> downside, it would just be unused. User can always remove it in their DT if
>>> really needed.
>>
>> The inverse it true, User can add it in their DT if really need.
> 
> Is there a downside if this is enabled by default, yes or no ?

Yes, by doing this you impose that this channel is reserved for the detach.
making it no more optional.

> 
>>> I believe once can build demos using the detach mailbox for boards with
>>> stm32mp15xx not manufactured by ST, correct ?[]
>>
>> Everything could be possible...
>> Once can want to replace the shutdown mailbox by the detach.
>> Once can also build demo using the detach mailbox channel for another purpose.
>>
>> I quite confuse why you insist to declare this detach mailbox in the DTSI?
>> Is there a strong constraint on your side?
> 
> I just don't see any explanation why ST board(s) should be somehow special and
> have the detach mailbox described in DT by default, while other boards would
> require separate DT patch to use the detach mailbox first. That just reduces
> usability of non-ST-manufactured boards and increases fragmentation. I do not
> like that.

The "somehow special" should only be an internal M4 firmware  allowing to test
the feature to help remoteproc maintainers to verify it on demand.
But I can not know if someone in the community have another firmware using
detach on the ST boards.
Anyway what you propose here is that we impose it for all boards. Some boards
would require separate DT patch to not use it. We just inverse the things...
The difference is that I would not impose something optional.

In term of fragmentation I can only see a specificity for the ST boards.As
already said if you can ensure that this will not generate impact on legacy,
it can be removed from the ST DT.

@Alex: any opinion on that?

Regards
Arnaud



> _______________________________________________
> Linux-stm32 mailing list
> Linux-stm32@st-md-mailman.stormreply.com
> https://st-md-mailman.stormreply.com/mailman/listinfo/linux-stm32
