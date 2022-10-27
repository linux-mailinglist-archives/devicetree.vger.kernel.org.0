Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D54F61045B
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 23:27:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236768AbiJ0V1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 17:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235349AbiJ0V1Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 17:27:24 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE56F62929
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 14:27:22 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id j21so2135658qkk.9
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 14:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TtH1yFO7yFt5dZxug/QRPjwrXsLw7ovhK2UTgaJtf0c=;
        b=pRXLtQ4JsdT7qc6uLLOpUJqYV9xHKfkYz5HvD5ORQfPcNraYpNaTux2YqAv/VSJoqn
         WeJ5tQkcwj46JXTegwgmDTs6F4ejSvDWaWAiTi+/Y8/LsQ57lLJmFFcILc2iMA6egGFX
         jG5gztuexapHx/BKVYZC8eRjSX3Qzkm0aUM5b10N+nFv91zmiGzbGoCbe3rHfARfRsjC
         J4uxZOP0Ajy0OvH+QedE+M/X5+dng20gjyQoN2VZSR0EVzD1/d7i0bW61a9yjqNaknOs
         iBnXCnQ6QcjG2Btb7xoYabmhp2C96SgB8eCz9273wVu6PrfMtq4FT83rOmDMdR7SMqda
         jumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TtH1yFO7yFt5dZxug/QRPjwrXsLw7ovhK2UTgaJtf0c=;
        b=uL+2yPRVZCV0ELDr8P4ZkvIglcwko0I2tkWvnDdUiEvxoMf5ss5PoMXqGmXOLqbGId
         W1f07fo6q7vkpYfcdcufKTd6/FOw5DAGfTeEEM90FiWTUsNT/2qkm9FeyDEpATGaj8rV
         WgpHse/UtrBpAg6f3c2SlCR62aiBMzVvaybmrJQcE2xiY8EC8QZlZhVyh845n3eHmtpP
         IQBArHN6qMxEmKzbO9NXWzrnqrs9NKyci89UdTq0wXuKGMceEAUUJ5LDynQiu//MIgyU
         2zUUMEPIy0ghcM8DEchhwRROBPi5N+TBDT/pLpg6+uld9BlbO7nhub6cR05IExxe8XRO
         GUUA==
X-Gm-Message-State: ACrzQf2M3vFyz8x+E9wq1ey/1KLdbj4nyM0XQzlaxefZ7zsgHOzczEiE
        KCxtM7bFVYHyGgSyMk6UFqu1Kg==
X-Google-Smtp-Source: AMsMyM4CXAxavR3yE0r2ThkF/G3WLVVqUVxSENxLPGjGRsZiF4RSyIAF6YHFw+TuPkDHVUbQf93E1g==
X-Received: by 2002:a05:620a:f11:b0:6cf:be4e:e953 with SMTP id v17-20020a05620a0f1100b006cfbe4ee953mr36389565qkl.437.1666906042083;
        Thu, 27 Oct 2022 14:27:22 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id d13-20020a05620a240d00b006f0fc145ae5sm1762251qkn.15.2022.10.27.14.27.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 14:27:15 -0700 (PDT)
Message-ID: <4236ab07-6ad3-efcd-7d5e-c244581d2944@linaro.org>
Date:   Thu, 27 Oct 2022 17:27:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 2/9] ARM: dts: nspire: Use syscon-reboot to handle
 restart
Content-Language: en-US
To:     Andrew Davis <afd@ti.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Daniel Tang <dt.tangr@gmail.com>,
        Fabian Vogt <fabian@ritter-vogt.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221027181337.8651-1-afd@ti.com>
 <20221027181337.8651-3-afd@ti.com>
 <050f3d65-5720-9c97-1930-bc458c4c2fb8@linaro.org>
 <a4688f2d-0a0f-dffc-92cc-4fa50938d0d8@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a4688f2d-0a0f-dffc-92cc-4fa50938d0d8@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2022 17:07, Andrew Davis wrote:
> On 10/27/22 2:33 PM, Krzysztof Kozlowski wrote:
>> On 27/10/2022 14:13, Andrew Davis wrote:
>>> Writing this bit can be handled by the syscon-reboot driver.
>>> Add this node to DT.
>>>
>>> Signed-off-by: Andrew Davis <afd@ti.com>
>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>> Tested-by: Fabian Vogt <fabian@ritter-vogt.de>
>>> Reviewed-by: Fabian Vogt <fabian@ritter-vogt.de>
>>> ---
>>>   arch/arm/boot/dts/nspire.dtsi | 7 +++++++
>>>   1 file changed, 7 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/nspire.dtsi b/arch/arm/boot/dts/nspire.dtsi
>>> index bb240e6a3a6f..48fbc9d533c3 100644
>>> --- a/arch/arm/boot/dts/nspire.dtsi
>>> +++ b/arch/arm/boot/dts/nspire.dtsi
>>> @@ -172,7 +172,14 @@ rtc: rtc@90090000 {
>>>   			};
>>>   
>>>   			misc: misc@900a0000 {
>>> +				compatible = "ti,nspire-misc", "syscon", "simple-mfd";
>>
>> You have syscon and simple-mfd, but bindings in patch #1 say only syscon.
>>
> 
> I'm not following, are you just saying my wording in the patch message just
> wasn't complete?

Your binding patch adds nspire compatible to the list of two items, so
you have two items in total - nspire followed by syscon.

What you implemented here is different.

> 
> Or are you saying something more about nodes that are both syscon and simple-mfd?
> In that case, having both syscon and simple-mfd seems rather common, looks like
> you added the rule for it[0].
> 
> Thinking on this, they almost represent the same thing. simple-mfd says "my child
> nodes should be considered devices", why do we need that? Couldn't we simply state
> that "syscon" node's children are always devices, I mean what else could they be,
> syscon is an MFD after all (and lives in drivers/mfd/).

No, syscon is not an MFD. Syscon means system controller and alone it
does not have children.

> 
> "syscon" often just says, others can use the registers within this node, so as a
> different option, make "syscon" a property of "simple-mfd" nodes. I'm seeing all
> these examples of devices that should have been children of the "syscon" device,
> but instead use
> 
> regmap = <&x>;
> syscon = <&x>;
> 
> or similar and put the device node out somewhere random. And in those cases,
> wouldn't it have been more correct to use the normal "reg" and "regions" to
> define the registers belonging to the child node/device?..

Sorry, I do not follow. How this is even related to your patch?

Your bindings say A, DTS say B. A != B. This needs fixing.

Unless you are asking me what your device is in general. This I don't
really know, but if you want to use it as regmap provider for system
registers and as a parent of syscon-based reboot device, then your
device is syscon and simple-mfd. With a specific compatible. Was this
your question?

Best regards,
Krzysztof

