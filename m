Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6694A46EE
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 13:24:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376986AbiAaMYo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 07:24:44 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:46300
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232017AbiAaMYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 07:24:43 -0500
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F33F13F19C
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 12:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643631877;
        bh=RS8b/Wq/sjAzqIIpV7S5JBsz6wb8tK0SUM0mXHn4sk0=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=KJTqPUOESMyy8RXTqKx2Pfyk7xYYnZ3PCgAZRA0Ayg7USWYpRhLntlJywmRz6wgZG
         2g+S4HDfeuPFH79R6zCbpjwWBs3NwQHv5aNdqZEXM/w3JQXZxEQw3XC8Mm0sZZnqdj
         +6ssXOhyMdsVA9s/sVNcn72c672/kH+vYpn5zlDUVN2YOixhzg4sI5n56CTsfxSYin
         j/wY49UZFfjwKhsPAPcozuDISvQQHCuWpphh4aMgjC/Xa0PgTKqgzpyA+/LtJn7B0d
         pjw/Fi6b+1eE5/OzmnjzH48CPOSeLXBF8qumCmNb68V4aZTFxnct97eGz8YPUCMIs1
         TquuGyZT9DNxA==
Received: by mail-ej1-f70.google.com with SMTP id lb14-20020a170907784e00b006aa178894fcso4942147ejc.6
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 04:24:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RS8b/Wq/sjAzqIIpV7S5JBsz6wb8tK0SUM0mXHn4sk0=;
        b=usNSuOtVlg1Mdwl+ch0leqyJQ+eHSfXZlGPCcKNydpKjWYzsG9LZ9PY+orJXrTK8wH
         a0fkDkXrlVgCq9Kd8WoMBwB88B5RscxmejawFA5V5Zy0rSXlo06h5X3BHiE++h0K/fQI
         +70Kpf14u9AGnizaFBLXVSUuErLrm5rldeXJFSi1gLtAEpDbGs6tPfuxmMJP8l7wfdle
         mjiW458Yi/3fEf18yNw4EwNXC1g7Oouyq44V6X1xt54DCvCpP9hP6dZOLUvPi7mIXuhi
         Q+0jEHcGYLnX0zSN4GnNcRGCuSh9AXYju4TH8QlXTnegMKzSnbEUiPvIWReVSQO7rDG/
         A+og==
X-Gm-Message-State: AOAM533UAtchV4+8/LTYNC3XRSIgH2n9SGj+Bt93zAwoI2Ddq8Lbsm3z
        uCROOccPA5vy425CqD0dehlmzhZn5vmpAEBfjKo4s9RgzymUIeCB5u5XIzd0d1iPA3hYcQRGVjH
        txMJ+1falq13f4y8+7NBOVJC1JZOZnJe1rAC9QKM=
X-Received: by 2002:a17:906:5d0e:: with SMTP id g14mr16809391ejt.211.1643631877674;
        Mon, 31 Jan 2022 04:24:37 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyNtuvn5vB5b3DM+JHOgOOezTxGo5qVfsW4JApSUhBXJObPfK5NT15b1j1a986n8t0sT14T+w==
X-Received: by 2002:a17:906:5d0e:: with SMTP id g14mr16809378ejt.211.1643631877535;
        Mon, 31 Jan 2022 04:24:37 -0800 (PST)
Received: from [192.168.0.73] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id a23sm17585360eda.94.2022.01.31.04.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 04:24:37 -0800 (PST)
Message-ID: <1b04c8b0-389b-8937-ef2c-47719e771a25@canonical.com>
Date:   Mon, 31 Jan 2022 13:24:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] ARM: dts: add 533 MHz step to p4note GPU opp table
Content-Language: en-US
To:     =?UTF-8?Q?Martin_J=c3=bccker?= <martin.juecker@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220129221452.GA36524@adroid>
 <131c9bd9-b035-8a75-ca27-f9c2b3993566@canonical.com>
 <20220131121559.GA4022@adroid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220131121559.GA4022@adroid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2022 13:15, Martin Jücker wrote:
> On Mon, Jan 31, 2022 at 09:54:00AM +0100, Krzysztof Kozlowski wrote:
>> On 29/01/2022 23:14, Martin Jücker wrote:
>>> The p4note devices support 533 MHz GPU speed, so let's make use of it.
>>>
>>
>> If there is going to be resend, please add prefix "exynos:" in subject.
>> Just like other commits (git log --oneline arch/arm/boot/dts/exynos*).
>>
>>> Signed-off-by: Martin Jücker <martin.juecker@gmail.com>
>>> ---
>>>  arch/arm/boot/dts/exynos4412-p4note.dtsi | 7 +++++++
>>>  1 file changed, 7 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/exynos4412-p4note.dtsi b/arch/arm/boot/dts/exynos4412-p4note.dtsi
>>> index 4ae6eb3091c4..d277b2337ae0 100644
>>> --- a/arch/arm/boot/dts/exynos4412-p4note.dtsi
>>> +++ b/arch/arm/boot/dts/exynos4412-p4note.dtsi
>>> @@ -355,6 +355,13 @@ &gpu {
>>>  	status = "okay";
>>>  };
>>>  
>>> +&gpu_opp_table {
>>> +	opp-533000000 {
>>> +		opp-hz = /bits/ 64 <533000000>;
>>> +		opp-microvolt = <1075000>;
>>> +	};
>>> +};
>>
>> This looks like Exynos4412 Prime. Please check also CPU frequencies and
>> if they match, just include exynos4412-prime.dtsi (like Odroid U3).
>>
>>> +
>>>  &hsotg {
>>>  	vusb_a-supply = <&ldo12_reg>;
>>>  	dr_mode = "peripheral";
>>
>>
>> Best regards,
>> Krzysztof
> 
> I just noticed, that I overlooked a condition in the code which
> decreases the step count by one which eliminates the 533 MHz step.
> Please ignore this patch.

Yeah:
	if(samsung_rev() < EXYNOS4412_REV_2_0)
		step_num = MALI_DVFS_STEPS - 1;

Your case, although possible, would be unlikely.

Best regards,
Krzysztof
