Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6037665411B
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 13:34:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235432AbiLVMeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 07:34:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235746AbiLVMeJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 07:34:09 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2DF629355
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 04:33:46 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id s22so1751414ljp.5
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 04:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cARFTJWtDuk9+UyitJm9k7wkYEdMwkmNHWJAq+EQPpw=;
        b=vPeC1BaKtZE5pMUxAG5SM6jZlp180jBN2SlLdlL9eeaOmXwYMXi0BkCUubQbUDxYTh
         2VG6Xvc5DoWW7vJFQtjz7276alQ+nSK64AnS9x86F2/d7B+tOX7Zu/gS6VdVk+PYcGFk
         mJ1qNsivO3pTry4nS4bOlKpoFWFpAOsRm7tI4KjtxuCKbQjkTCWMKwQ9GwBC23pYx5AG
         2kQV7f10Gz8K/28oCbafnubprYwRqS2sruV2WTDvbobNiChCeOQ1drq+HZqI5pHB3nUk
         JJWgqPAojoBB1Jytrw6agjTuWdQMiF3TrACOEvgWLwbIpgwkL2/YzdY4r73Y0f1S8hT4
         eE0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cARFTJWtDuk9+UyitJm9k7wkYEdMwkmNHWJAq+EQPpw=;
        b=vKWnzyAvuXU2TCy09lVR+a6goFmvR16zP1KPUzyGnNMsgjLkd+ZDvRMgugx0Y8Q3Zp
         g4mUSXGC62pDgzGOaBNEICavgaf0WhYsSBJ955X9fyb7zU68uFzUSbMq5Ajex0UrYws5
         C9TnTrU9/dQfJZmKglz3Wpc+DtCp9hj65auQkiA1kSjqUrKBVZeV78PfkZkRkEY6hGVE
         1E/o1Tj/mNAVcSSO4kcjB+owfEb4LlT4sm9EEsQUx/Zr3PzqMZBvOosvDTjmHA9eFlIN
         NEcxbLYVGLi4V8zyUaAZ4h0sCxaCNtK4oyyoi3+Vn8jMgFbxZwSGdj7cww7dkYxZ/f0W
         63LA==
X-Gm-Message-State: AFqh2krq5UIklFVRS6WPwEq24xV8eOqttp1PT+UEe2B4yPuW1mB8TqF2
        VxdnO1QXHh5frw/NcaVlko3lQA==
X-Google-Smtp-Source: AMrXdXvGMaTJeABrLToC+zikKzf9zrazSJ87HAO+6RWeUMDEaTAdJ1fcLgFDvpX12JGvpPgTQXY9xw==
X-Received: by 2002:a05:651c:1722:b0:27a:51d:53d0 with SMTP id be34-20020a05651c172200b0027a051d53d0mr2372159ljb.11.1671712425119;
        Thu, 22 Dec 2022 04:33:45 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id w10-20020a05651c118a00b0027706d22878sm34444ljo.94.2022.12.22.04.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 04:33:44 -0800 (PST)
Message-ID: <a5673bb4-3a98-1e37-c6e0-f2a82c4575bc@linaro.org>
Date:   Thu, 22 Dec 2022 13:33:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [EXTERNAL] Re: [PATCH v2] arm64: dts: ti: k3-j721s2: Add support
 for ADC nodes
Content-Language: en-US
To:     Bhavya Kapoor <b-kapoor@ti.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        kristo@kernel.org, nm@ti.com, Vignesh Raghavendra <vigneshr@ti.com>
References: <20221221055144.7181-1-b-kapoor@ti.com>
 <e21d15f9-10fa-671b-b49c-a9f748aae75d@linaro.org>
 <baf09a74-ecf7-e60e-4a24-18f023a802f5@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <baf09a74-ecf7-e60e-4a24-18f023a802f5@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/12/2022 13:13, Bhavya Kapoor wrote:
> 
> On 22/12/22 17:32, Krzysztof Kozlowski wrote:
>> On 21/12/2022 06:51, Bhavya Kapoor wrote:
>>> J721s2 has two instances of 8 channel ADCs in MCU domain. Add DT nodes
>>> for 8 channel ADCs for J721s2 SoC.
>>>
>>> Signed-off-by: Bhavya Kapoor <b-kapoor@ti.com>
>>> ---
>>>
>>> Changelog v1 -> v2:
>>> 	- Updated Interrupt Values for tscadc
>>>
>>>   .../dts/ti/k3-j721s2-common-proc-board.dts    | 14 +++++++
>>>   .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     | 42 ++++++++++++++++++-
>>>   2 files changed, 55 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>>> index a7aa6cf08acd..67593aa69327 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>>> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>>> @@ -309,3 +309,17 @@ &mcu_mcan1 {
>>>   	pinctrl-0 = <&mcu_mcan1_pins_default>;
>>>   	phys = <&transceiver2>;
>>>   };
>>> +
>>> +&tscadc0 {
>>> +	status = "okay";
>>> +	adc {
>>> +		ti,adc-channels = <0 1 2 3 4 5 6 7>;
>>> +	};
>>> +};
>>> +
>>> +&tscadc1 {
>>> +	status = "okay";
>>> +	adc {
>>> +		ti,adc-channels = <0 1 2 3 4 5 6 7>;
>>> +	};
>>> +};
>>> \ No newline at end of file
>> Same errors as before.
>>
>> I don't know how many same patches we need to see - this is fourth. None
>> of them seems to be correct...
>>
>> Best regards,
>> Krzysztof
>>
> This is a v2 patch. Please read the changelog. Link to its v1 is 
> https://lore.kernel.org/all/20221220101249.46450-1-b-kapoor@ti.com/

Sure, you still need to correct patch error. I am writing about this
fourth time and you never responded.

Best regards,
Krzysztof

