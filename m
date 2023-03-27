Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BA7F6CA182
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 12:33:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232655AbjC0KdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 06:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233318AbjC0KdV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 06:33:21 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 324EB10EC
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:33:18 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id i13so10729340lfe.9
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679913196;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qbQRg8u+pefLM8JZR403sDG9iYkK36WkdcXFbk78A44=;
        b=tOveTQqMtkW7Qxdkg7RL3/C83D+R944ZQgmzFReUHxnL2W9AiowpYDXv2W5TwMCSzc
         yaxvEOl/hVUMurI5WDMExYDr+CdKHKmvMoJ9agQjExgwBrV3+d09ihM7UU3Isk9uAkou
         C/vmObrH4Q2RwLAoLc+nJX4kMyyIs0bHF/64Y9GPu/hZ6fqx6V7oIUkwP20GD4PjBNiD
         GkiJRXzNHJHZfQoQKwLWKPHk3VSRG/hUfqg0H5k6h2c51KMqGReylL9kFJGXCQL+fYXW
         zp0hnp4Q6DNA2DQjfYoGHnD6HzKAbDfXk5Yu2WtwKXD9LUG9pzqvSTVLzZjy6U5y9HRU
         Qwzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679913196;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qbQRg8u+pefLM8JZR403sDG9iYkK36WkdcXFbk78A44=;
        b=tU1t9SZr9M3j6/v6pFkRym3e7MImUsxQYOEFylcOHNTikru+ysks+GGYsF8OYuJei6
         v5t5OaePvyBIEleKuVukT+N1JVhylWu1EuDcwrzNOuPyKYMQx1VI2INZ5qkraNJjcVoR
         HbWxJxs3xsTr9QYs91WoWOZxGuVYe6Xx+hD8E8Pjeyd1WD2cVMLl18NanJcieoBG5/hX
         Q4dFa94hc3UV4SHqPT6f79z4Y7+FIIl+MtyRCfGMa+g+i3uiCjo5womUAl191Dv+mVLt
         WRZic3fU32w0K6XxCo5aCTqsSOwSbkJKqKev/m7HWJ8Uxi0J0vYIj/WEC5Md7vvVyswQ
         Jbhw==
X-Gm-Message-State: AAQBX9el7B8LdY5NBId4HakK9nT0wjkD6yTGwAmqiHQkJYNuLYTbXTaA
        dL/XSEiCt7Wtm+wtjaWnK/wbzg==
X-Google-Smtp-Source: AKy350Y/GS8kFAA51xnV0A3DHRS1Ph6Ep510Hy/Za24zSl7pvyabIzMLrcIdTbcTjntcwLbnFW9bsA==
X-Received: by 2002:ac2:51b3:0:b0:4eb:e7f:945 with SMTP id f19-20020ac251b3000000b004eb0e7f0945mr1154627lfk.41.1679913196409;
        Mon, 27 Mar 2023 03:33:16 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id v2-20020ac25922000000b004eb09081d77sm1134519lfi.91.2023.03.27.03.33.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:33:16 -0700 (PDT)
Message-ID: <21732296-107a-c9a8-9a32-723b864712d4@linaro.org>
Date:   Mon, 27 Mar 2023 12:33:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 0/5] usb: dwc3: qcom: Allow runtime PM
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     andersson@kernel.org, Thinh.Nguyen@synopsys.com,
        gregkh@linuxfoundation.org, mathias.nyman@intel.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230325165217.31069-1-manivannan.sadhasivam@linaro.org>
 <cc7392c1-0ea1-29b3-fab6-19c843413724@linaro.org>
 <20230327091733.GA14584@thinkpad>
 <506a7e48-2576-0fa6-d5e9-0157539bcebf@linaro.org>
 <20230327101055.GA16424@thinkpad>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230327101055.GA16424@thinkpad>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27.03.2023 12:10, Manivannan Sadhasivam wrote:
> On Mon, Mar 27, 2023 at 11:24:58AM +0200, Konrad Dybcio wrote:
>>
>>
>> On 27.03.2023 11:17, Manivannan Sadhasivam wrote:
>>> On Mon, Mar 27, 2023 at 11:01:35AM +0200, Konrad Dybcio wrote:
>>>>
>>>>
>>>> On 25.03.2023 17:52, Manivannan Sadhasivam wrote:
>>>>> Hi,
>>>>>
>>>>> This series allows the dwc3-qcom driver to do runtime PM itself without
>>>>> userspace intervention. Still, userspace is required to enable runtime PM
>>>>> for dwc3 glue and xhci drivers as we cannot enable runtime PM for them.
>>>>> But this series avoids one more additional step.
>>>> What sort of 'userspace intervention' are we talking about?
>>>> echo mem > /sys/power/state?
>>>>
>>>
>>> I forgot to add that bit:
>>>
>>> echo auto > /sys/devices/platform/soc@0/a8f8800.usb/a800000.usb/xhci-hcd.1.auto/power/control
>>> echo auto > /sys/devices/platform/soc@0/a8f8800.usb/a800000.usb/power/control
>>>
>>> You need to set "auto" for the runtime control for both xhci and dwc drivers.
>>>
>>> Then if you don't connect a usb device, all 3 drivers (dwc3-qcom, dwc3, and
>>> xhci) will become runtime suspended after a delay of 5s (default delay).
>>>
>>> This can be confirmed by:
>>>
>>> cat /sys/devices/platform/soc@0/a8f8800.usb/power/runtime_status
>>>
>>> After connecting a usb device, they will all become "active".
>> Thanks! And if I'm following correctly, we can't enable runtime PM
>> for the DWC3 glue and XHCI drivers, as that would cause havoc on
>> other, non-qc platforms. Is that correct?
>>
> 
> Kind of. Actually dwc3 glue is our qcom driver, other one is just dwc3 driver.
> 
> The havoc would apply to xhci driver because, once it is suspended, one of its
> parent drivers has to resume it. And that requires runtime PM support for all
> the parent drivers which is currently not available.
Makes sense, thanks for the explanation!

> 
> But for dwc3 driver, I'm not sure about the consequence though. Maybe I should
> send it as a separate patch later on and see what other platforms folks think
> of it.
May be worth a shot!

Konrad

> 
> Thanks,
> Mani
> 
>> Konrad
>>>
>>> Thanks,
>>> Mani
>>>
>>>> Konrad
>>>>>
>>>>> While enabling runtime PM, I noticed that the xhci driver suspends before
>>>>> catching the xhci interrupts during resume. This ended up deferring the
>>>>> device enumeration for some time. So I included a patch adding autosuspend
>>>>> delay of 200ms to the xhci driver. With this delay, usb enumeration happens
>>>>> properly.
>>>>>
>>>>> This series has been tested on SC8280XP-CRD and RB5 devices.
>>>>>
>>>>> Thanks,
>>>>> Mani
>>>>>
>>>>> Manivannan Sadhasivam (5):
>>>>>   arm64: dts: qcom: sc8280xp: Add missing dwc3 quirks
>>>>>   xhci: host: Use 200ms autosuspend delay for runtime suspend
>>>>>   usb: dwc3: qcom: Fix null ptr access during runtime_suspend()
>>>>>   usb: dwc3: qcom: Clear pending interrupt before enabling wake
>>>>>     interrupt
>>>>>   usb: dwc3: qcom: Allow runtime PM
>>>>>
>>>>>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 14 ++++++++++++++
>>>>>  drivers/usb/dwc3/dwc3-qcom.c           | 13 +++++++++----
>>>>>  drivers/usb/host/xhci-plat.c           |  2 ++
>>>>>  3 files changed, 25 insertions(+), 4 deletions(-)
>>>>>
>>>
> 
