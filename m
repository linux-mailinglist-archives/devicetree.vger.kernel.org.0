Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C525F5F2BDC
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:32:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231215AbiJCIcZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:32:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231247AbiJCIcA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:32:00 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B26121BEBE
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 01:04:24 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id t16so10885952ljh.3
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 01:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=eHR2QgoMMUuKS7OLDjdoZFbdNgv1Xu+YNA1WXwRK1CM=;
        b=jtWSJTj7FThxxMEIQaEBiGjssqNRWufiPt1iqtIMhsz5xdGzv6Rhtdyd1p152+AB6M
         fHlMAVw+Z+/rndjcjHVaCILYlfusjwTN/+3wCXE19ZqCp+Ij99W6uAOdnr0mQMje+JzR
         jeQx7pWzkIx4WtecGf1DOBh76pYUqypWPB9ywTGvrFL/o4j8sI6r5l7izZ1RMEqIA5Yd
         zIQ4cT0e28RM8MOIHA/2LPgSka9Apo2cO4/Kl5CC46PSW0NNsQUHYq6zUZQjQqNO6MnI
         CNIJz/bRNDwU0KmhGqA2NPmJNoTGnweq5PZLwEOpfsxV8dgr63OC9+Vt109zdzF2H9oa
         otAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=eHR2QgoMMUuKS7OLDjdoZFbdNgv1Xu+YNA1WXwRK1CM=;
        b=wPcOhttXhWTE7CmSRrgQxuZn3+s7SnngW7gH+1r9oH2+NI4W93HuyeWQOWGRg6wQL1
         GVVpeeq7CvHR9WpKBHXCzZfQykiwN3COyHmd/S0LFKqk8O8tWNBR6GV6pqiCqtBDQxBi
         w93k2/2A2aDjcPVyMUfIWEZo5SH4js5ZaiW7fSRrmb1XQOYe5z2G9T7dfTUwjZTel+Wb
         8bH7AdInW6xwh/OMV/12b+NoNqWo2TuPcKITBNK3W2IVs6ULqZdO4WnhcYB4mCcRe6OA
         bMZMGvqaDO2RC9ZsxXbMx1Gk3w/Y74MKkIH9JTP/QwpObLl+FQFtJrhJNDoEI0n+Yuzk
         9ccg==
X-Gm-Message-State: ACrzQf33xa4Q21TUgA9NoRjZieP8Hg5/cUFevbdcD+zXgm7RYfOn1Vdb
        uz6Un4bWmCuEl2l5iIXv1zMJQw==
X-Google-Smtp-Source: AMsMyM7RGAZ6P3MDq/as0qbW5GpLroDZI5xdw/I09pWfQWGtQnEYhchlxMK5HUYYmov3qAOVBNgh2g==
X-Received: by 2002:a05:651c:158f:b0:26b:dd9c:dca5 with SMTP id h15-20020a05651c158f00b0026bdd9cdca5mr6066893ljq.400.1664784259201;
        Mon, 03 Oct 2022 01:04:19 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z7-20020a2eb527000000b0026dc69247e8sm348456ljm.99.2022.10.03.01.04.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 01:04:18 -0700 (PDT)
Message-ID: <f9ecdb22-2827-989e-ada2-9eec95dba687@linaro.org>
Date:   Mon, 3 Oct 2022 10:04:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add nodes to support WoW on
 WCN6750
Content-Language: en-US
To:     Manikanta Pubbisetty <quic_mpubbise@quicinc.com>,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220926045735.719-1-quic_mpubbise@quicinc.com>
 <f1057c78-39a2-6b26-f3c9-51cd99450dd2@linaro.org>
 <a6e94553-c62f-128a-4122-94483b02bee7@quicinc.com>
 <f7ea53ce-421f-f608-ba50-f107a7f5cb87@linaro.org>
 <d215c841-987a-bf53-0c62-d8688cbd4e6b@quicinc.com>
 <fc390436-92a3-2b2a-0078-cf50a9073b8c@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fc390436-92a3-2b2a-0078-cf50a9073b8c@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 09:59, Manikanta Pubbisetty wrote:
> On 10/3/2022 10:25 AM, Manikanta Pubbisetty wrote:
>> On 9/28/2022 12:17 PM, Krzysztof Kozlowski wrote:
>>> On 28/09/2022 08:00, Manikanta Pubbisetty wrote:
>>>> On 9/26/2022 2:30 PM, Krzysztof Kozlowski wrote:
>>>>> On 26/09/2022 06:57, Manikanta Pubbisetty wrote:
>>>>>> Add DT nodes to support WoW (Wake on Wireless) feature on WCN6750
>>>>>> WiFi hardware on SC7280 SoC.
>>>>>>
>>>>>> Signed-off-by: Manikanta Pubbisetty <quic_mpubbise@quicinc.com>
>>>>>
>>>>> Thank you for your patch. There is something to discuss/improve.
>>>>>
>>>>>
>>>>>> ---
>>>>>> Changes from V1:
>>>>>> - Rebased on ToT
>>>>>>
>>>>>>    arch/arm64/boot/dts/qcom/sc7280.dtsi | 13 +++++++++++++
>>>>>>    1 file changed, 13 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi 
>>>>>> b/arch/arm64/boot/dts/qcom/sc7280.dtsi
>>>>>> index 212580316d3e..3f6a3f575339 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
>>>>>> @@ -752,6 +752,17 @@ wpss_smp2p_in: slave-kernel {
>>>>>>                interrupt-controller;
>>>>>>                #interrupt-cells = <2>;
>>>>>>            };
>>>>>> +
>>>>>> +        wlan_smp2p_out: wlan-ap-to-wpss {
>>>>>
>>>>> Does not look like you tested the DTS against bindings. Please run 
>>>>> `make
>>>>> dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
>>>>> for instructions).
>>>>>
>>>>
>>>> I'm sorry I was not aware of checking the DTS against bindings. I'll do
>>>> the due diligence going forward. `make dtbs_check is throwing error of
>>>> "No rule to make target". Not sure if we need pass any options to the
>>>> command. I did try to understand the problem but all went in vain. Pls
>>>> help understand if I'm missing anything.
>>>
>>> There is doc explaining possible usage, but in general works perfect
>>> without argument. If you do not have such target, means you run it on
>>> some ancient kernel, so anyway patch cannot be accepted and has to be
>>> rebased. Please always develop on newest kernel - newest mainline rc,
>>> maintainer's for-next branch or linux-next.
>>>
>>
>> I'm working on the latest kernel (ath.git which is maintained by Kalle 
>> Valo for Atheros drivers). I'll give a try on the linux-next branch once.
>>
>> Thanks for the suggestions.
>>
> 
> Hi Krzysztof,
> 
> I have tested the DTS against the bindings. Have used this command `make 
> CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 dtbs_check -m 
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml`.
> 
> `make dtbs_check` did not report any error.

You selected some schema to test, so yes, maybe it passes. It's not a
proof of anything. Run with either applicable bindings (the one which I
commented about) or with all of them.

If you did it, you would see the check will fail. The bindings would
report error. There is no need to engage reviewers if bindings find the
errors for you, right?

Nodes you added here are not allowed.

Best regards,
Krzysztof

