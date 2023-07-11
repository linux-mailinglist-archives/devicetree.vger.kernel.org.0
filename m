Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D77A74F06E
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 15:40:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjGKNkb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 09:40:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbjGKNkb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 09:40:31 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14FD8E69
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 06:40:25 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A0CE1867FA;
        Tue, 11 Jul 2023 15:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1689082823;
        bh=tUDBxlDTmv0syY4vfDaQSccp8l4ILPwe/UXoRMvbWng=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=rQuIxI+INqlEN0RsfDrwZlvlu499xj3LAxFra/lxZ/mU46DbX0fqWn0ZLJB6/1sYU
         dQ7ovXM4uh+TPC60LL+2JwgZINp4SR0hLP0yQLbiLGIx0I3FKiX13P14WxpQmfLz2B
         /ddxBjLfOtN8jKG6E70eGfwE81zunny/MQtieRssU6sdIrBX0ZNsnLyG3F3KGOt9Tv
         LDIa9ZSRKMWoXCNs8fGfpVgvlwYhHTQ9MMaNitsZt4hIx9/dKDi6n5cYWgF8Gf1LBU
         DPbwGMSqPmJGvFxthjkL+hqw+YDDFeuUYTPAMaCPJrJDrNLaUwNrU5Rjd8Rg9F8lkd
         tsT94t7JA4DHw==
Message-ID: <c260edf6-d0a9-4108-5a41-ba501f7cf308@denx.de>
Date:   Tue, 11 Jul 2023 15:40:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 4/5] ARM: dts: stm32: Add missing detach mailbox for DHCOR
 SoM
Content-Language: en-US
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        kernel@dh-electronics.com, linux-stm32@st-md-mailman.stormreply.com
References: <20230518011246.438097-1-marex@denx.de>
 <20230518011246.438097-4-marex@denx.de>
 <42b1d80b-9cbc-16e2-73a4-ee8b67f5cb2b@denx.de>
 <9e15a84e-33f7-3654-6ad2-66328c120ee6@foss.st.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <9e15a84e-33f7-3654-6ad2-66328c120ee6@foss.st.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/11/23 15:37, Alexandre TORGUE wrote:
> Hi Marek
> 
> On 7/11/23 04:05, Marek Vasut wrote:
>> On 5/18/23 03:12, Marek Vasut wrote:
>>> Add missing "detach" mailbox to this board to permit the CPU to inform
>>> the remote processor on a detach. This signal allows the remote 
>>> processor
>>> firmware to stop IPC communication and to reinitialize the resources for
>>> a re-attach.
>>>
>>> Without this mailbox, detach is not possible and kernel log contains the
>>> following warning to, so make sure all the STM32MP15xx platform DTs are
>>> in sync regarding the mailboxes to fix the detach issue and the warning:
>>> "
>>> stm32-rproc 10000000.m4: mbox_request_channel_byname() could not 
>>> locate channel named "detach"
>>> "
>>>
>>> Fixes: 6257dfc1c412 ("ARM: dts: stm32: Add coprocessor detach mbox on 
>>> stm32mp15x-dkx boards")
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>> Cc: Richard Cochran <richardcochran@gmail.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: kernel@dh-electronics.com
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>> ---
>>>   arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi 
>>> b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>>> index 864960387e634..f0351f599a508 100644
>>> --- a/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>>> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
>>> @@ -227,8 +227,8 @@ &iwdg2 {
>>>   &m4_rproc {
>>>       memory-region = <&retram>, <&mcuram>, <&mcuram2>, <&vdev0vring0>,
>>>               <&vdev0vring1>, <&vdev0buffer>;
>>> -    mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>;
>>> -    mbox-names = "vq0", "vq1", "shutdown";
>>> +    mboxes = <&ipcc 0>, <&ipcc 1>, <&ipcc 2>, <&ipcc 3>;
>>> +    mbox-names = "vq0", "vq1", "shutdown", "detach";
>>>       interrupt-parent = <&exti>;
>>>       interrupts = <68 1>;
>>>       status = "okay";
>>
>> Is anything blocking 1/5..4/5 (i.e. the duplication in each board DT) 
>> patches from being applied ?
> 
> Nothing. I was just waiting to discuss with you about patch 5 at Prague 
> then merge windows.
> 
> So patch 1 to 4 applied on stm32-next.

Thank you
