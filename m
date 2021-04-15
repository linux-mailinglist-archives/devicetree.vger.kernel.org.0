Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F1A3361079
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 18:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234299AbhDOQxv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 12:53:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234288AbhDOQxv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 12:53:51 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE200C061756
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 09:53:27 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id o20so2629045edc.7
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 09:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1bUGrlN4ylkHThjUoi+HED6zB9xuS8ilfhf5hNRnO/k=;
        b=WPBdgOH1gwDi727OGI2cea8FqqZVyRJMj/1D9o/V2Q52xTf51iDODDauPxuE3LHd7c
         xY9fbLKGUWX3pkw8vgZPfSDh8h7mAP8gT0o6LpbQDez7vh7u1ITHLW7nn8ME51GrGHtP
         iDD+NH9uxjH9hcBxb3I1jqbr2Xcobwtl0YRTyKLlQxHNE253oy9nhJ3A5xkDwZrWVDRn
         XOFh0ricvACjdGYDvT7o8Wzz+LQcLzPv3ln4QPAx5/aZeI6vJs99LFgz/2Jfz95qROob
         WKeJBHNG7vHt/nrBFBkYjA8s/2pLHRPOFrjf+ly3sUbBSKTBUk6WXWdat+J2E5Wa95Db
         N1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1bUGrlN4ylkHThjUoi+HED6zB9xuS8ilfhf5hNRnO/k=;
        b=KVtnFYlQIZCReD3gYB9a5G7Dl29zqwHdFtowNw1VBlWvSD849QgZrIo5myu9kXNJ0H
         1UhphLC7pZfI8orZKPkHM0bCvGR/f+Z1kyvdtUo4xObweKUzlxWBcpmohVLG4Vki4AKa
         PxEFv+tH74U0uuzCd5al6yEGK7E8jc48XRXtSp9fPig4P+lCfoFQ2rqwn8emAr92WcJb
         4vAnukktsEVBDXQUzEYLy5KKzQgp1HpHr04gmmysqiX9gndP5QBNLQ8fWmbKqEBiEHmL
         90+g+IVlTgnR1o3H2Zkju8WGmTczt605hciy6SNFY2vb8FT649j3SQH956Jq1ies6qh9
         6ybw==
X-Gm-Message-State: AOAM533K5ujU16y824BVh8eZ9t82nhZpwspxvp7c7rceHLFvJmNQ71YS
        E3Xy5ot7bVIG5UZG/cuRhg5jqQ==
X-Google-Smtp-Source: ABdhPJyQXH5rz6htXutrsGmB1wjoMyGaB/A5NUr6BX7JAQ9JCVuLhw9VCD19t/elxAxtEvsGCND5Pg==
X-Received: by 2002:a05:6402:cb8:: with SMTP id cn24mr5379165edb.105.1618505606039;
        Thu, 15 Apr 2021 09:53:26 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id gn6sm874985ejc.83.2021.04.15.09.53.25
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:53:25 -0700 (PDT)
Subject: Re: [PATCH v4 1/9] ASoC: dt-bindings: wcd938x: add bindings for
 wcd938x
To:     Rob Herring <robh@kernel.org>
Cc:     broonie@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com
References: <20210414154845.21964-1-srinivas.kandagatla@linaro.org>
 <20210414154845.21964-2-srinivas.kandagatla@linaro.org>
 <20210415162947.GA1511094@robh.at.kernel.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <96e7c752-a962-cb5b-c936-8151fd4c32ea@linaro.org>
Date:   Thu, 15 Apr 2021 17:53:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210415162947.GA1511094@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Rob for quick review,

On 15/04/2021 17:29, Rob Herring wrote:
> On Wed, Apr 14, 2021 at 04:48:37PM +0100, Srinivas Kandagatla wrote:
>> Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC
>> connected over SoundWire. This device has two SoundWire device RX and
>> TX respectively, supporting 4 x ADCs, ClassH, Ear, Aux PA, 2xHPH,
>> 7 x TX diff inputs, 8 DMICs, MBHC.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   .../bindings/sound/qcom,wcd938x.yaml          | 176 ++++++++++++++++++
>>   1 file changed, 176 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
>> new file mode 100644
>> index 000000000000..4c8fa8290af0
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
>> @@ -0,0 +1,176 @@

...

>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    codec {
>> +        compatible = "qcom,wcd9380-codec";
>> +        reset-gpios = <&tlmm 32 0>;
>> +        #sound-dai-cells = <1>;
>> +        qcom,tx-device = <&wcd938x_tx>;
>> +        qcom,rx-device = <&wcd938x_rx>;
>> +        qcom,micbias1-microvolt = <1800000>;
>> +        qcom,micbias2-microvolt = <1800000>;
>> +        qcom,micbias3-microvolt = <1800000>;
>> +        qcom,micbias4-microvolt = <1800000>;
>> +        qcom,mbhc-hphl-switch;
>> +        qcom,mbhc-ground-switch;
>> +        qcom,mbhc-button0-vthreshold-microvolt = <75000>;
>> +        qcom,mbhc-button1-vthreshold-microvolt = <150000>;
>> +        qcom,mbhc-button2-vthreshold-microvolt = <237000>;
>> +        qcom,mbhc-button3-vthreshold-microvolt = <500000>;
>> +        qcom,mbhc-button5-vthreshold-microvolt = <500000>;
>> +        qcom,mbhc-button6-vthreshold-microvolt = <500000>;
>> +        qcom,mbhc-button7-vthreshold-microvolt = <500000>;
>> +    };
>> +
>> +    /* ... */
>> +
>> +    soundwire@3230000 {
>> +        #address-cells = <2>;
>> +        #size-cells = <0>;
>> +        reg = <0x03230000 0x2000>;
>> +        wcd938x_tx: codec@0,3 {
>> +            compatible = "sdw20217010d00";
>> +            reg  = <0 3>;
>> +            qcom,direction = "tx";
>> +            qcom,port-mapping = <2 3 4 5>;
>> +        };
>> +
>> +        wcd938x_rx: codec@0,4 {
>> +            compatible = "sdw20217010d00";
>> +            reg  = <0 4>;
>> +            qcom,direction = "rx";
>> +            qcom,port-mapping = <1 2 3 4 5>;
>> +        };
> 
> This is a single device, right? We shouldn't need 3 nodes to describe
> it. I think this should all be a single node like this:
> 
No, WCD938x is a Audio Codec which has two SoundWire Slave device (TX 
and RX). WCD938X reset lines and supplies are common for both TX and RX 
SoundWire devices.

However TX SoundWire device only has register access to codec 
CSR(Control Status registers).

So there are two SoundWire devices and a WCD938X common parts. Now 
making the common Codec part as a separate device made more sense here.
So we ended with total 3 devices.

1 . WCD938x Codec which deals with all the codec side including Common 
parts.
2. TX SoundWire device to configure TX SoundWire ports/interface and 
provide CSR access.
3. RX SoundWire device to configure RX Soundwire ports/interface


> codec@0,3 {
>          reg = <0 3>, <0 4>;

We can't have this, as these two SoundWire devices hang on different 
SoundWire bus instances.

> 	compatible = "sdw20217010d00";
> 
>          reset-gpios = <&tlmm 32 0>;
>          #sound-dai-cells = <1>;
>          qcom,micbias1-microvolt = <1800000>;
>          qcom,micbias2-microvolt = <1800000>;
>          qcom,micbias3-microvolt = <1800000>;
>          qcom,micbias4-microvolt = <1800000>;
>          qcom,mbhc-hphl-switch;
>          qcom,mbhc-ground-switch;
>          qcom,mbhc-button0-vthreshold-microvolt = <75000>;
>          qcom,mbhc-button1-vthreshold-microvolt = <150000>;
>          qcom,mbhc-button2-vthreshold-microvolt = <237000>;
>          qcom,mbhc-button3-vthreshold-microvolt = <500000>;
>          qcom,mbhc-button5-vthreshold-microvolt = <500000>;
>          qcom,mbhc-button6-vthreshold-microvolt = <500000>;
>          qcom,mbhc-button7-vthreshold-microvolt = <500000>;
> };
> 
> You'll have to figure out the qcom,direction and qcom,port-mapping parts
> though.

That is the reason why we ended up with 3 devices here.

--srini
> 
> Rob
> 
