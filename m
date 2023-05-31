Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B9F9718B5F
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 22:41:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbjEaUlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 16:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbjEaUli (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 16:41:38 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F49132
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:41:35 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 36E5A861FE;
        Wed, 31 May 2023 22:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1685565687;
        bh=GvRpcrTeNzkvuL6E29AMLQlRsSktEVlc7ybojQ1NjcQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=fQAGsQNR9Rdg6oMAS+eq5tc4Ldc8cFZ/WK3mJxG2lNay/WNaK0xDX3l+jm9YfR1FM
         prsHoJWRo/etFZ69/ElvMp1NePspZcRJJrJKoWzDUr5NAb2ceHVV2qmpnvE8ConqQy
         Q9DAk5c5moAVp15mOw3RHR4dxd5By2rp5suioS9nJYrCi5SBLUPZkmehjrZgzOdWk4
         O4CwIynBcbybBSwAuu17qgiHu1DDrEXw6wG8yOkGMgAwt94TRY0+sbxJwmgh16R8F6
         ebOHjJjRqcRsIULNoSCn0q4+z157t0O2e6qEualFp8DXLkcfBddfQJ3INxa7KuqggZ
         4E7UJE2RSuo2A==
Message-ID: <ca06d11c-36b9-7a16-31a2-9e4edafe137f@denx.de>
Date:   Wed, 31 May 2023 22:41:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Daniel Golle <daniel@makrotopia.org>
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <1ad00eb9-7bcb-b93a-191e-7673c835c31e@linaro.org>
 <2ff8d48f-c069-6ece-7865-4268296618fd@denx.de>
 <6699ec62-9eb5-8b9a-97e0-4b0d5f760962@linaro.org>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <6699ec62-9eb5-8b9a-97e0-4b0d5f760962@linaro.org>
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

On 5/31/23 21:40, Krzysztof Kozlowski wrote:
> On 24/05/2023 05:29, Marek Vasut wrote:
>> On 5/18/23 16:30, Krzysztof Kozlowski wrote:
>>> On 17/05/2023 17:25, Marek Vasut wrote:
>>>> Add trivial bindings for driver which permits exposing syscon backed
>>>> register to userspace. This is useful e.g. to expose U-Boot boot
>>>> counter on various platforms where the boot counter is stored in
>>>> random volatile register, like STM32MP15xx TAMP_BKPxR register.
>>>>
>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>> ---
>>>
>>> Let me also leave a note here - cross linking for all parties:
>>>
>>> Please propose a solution solving also mediatek,boottrap, probably
>>> extendable to range of registers. Other solution is what Rob mentioned -
>>> this might not be suitable for generic binding and device.
>>
>>   From what I can tell, shouldn't the mediatek 1g MAC driver have a
>> nvmem-cells phandle to this OTP/fuses/whatever area and shouldn't the
>> driver read out and decode its settings within the kernel ?
> 
> Maybe, but since you both implement the same driver and similar
> bindings, it's a NAK for having both. It looks like solution matching
> both or boottrap is not really nvmem syscon (as you said).

The later.

>> That doesn't seem really related to this particular issue I'm trying to
>> solve I'm afraid.
> 
> It's similar in implementation, not necessarily in hardware.

It seems to me what the mediatek thing is doing is already a solved 
problem, look e.g. at what imx8mp is doing, they read MAC address from 
OTP via nvmem . That's however unrelated to this work .
