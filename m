Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7934557739
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 11:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231362AbiFWJ4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 05:56:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbiFWJ4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 05:56:00 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C547445792
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 02:55:58 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id g4so20027582lfv.9
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 02:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7I3TTWN/wwecpZB3nSKMxEQGHr0b18hK3/YGntHqpBA=;
        b=USyuzvpLnWwvFy1lJjpUXIVRpcZYiLKJAcsuVnYfqiBnV102zpy7fueziMhn2hufjN
         h4twOEQhWIuonqAnuLn20dl8z81gVcRsMqcS8qgjPHR1JapoGgCVx47tZJXbbtdLZqRJ
         x5+it83WvReQj8rF5dwqsB9y8PTElnkMEfunpTyKk/l8ia/rU9J88YJR+dI9iHjjGC7Q
         dZ+K/djNtq+2nhgZfpgYUcY+xBZ3TxepPwermtqxWPf7qIakouHNUyGdYNMVgUxTrhfE
         wlv/C79XLKcsekEBYBzCFTbCpcaI+vD941Y35hxEP4Gvvt7MDMSaX8x9fmuzj8C+9s3t
         kKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7I3TTWN/wwecpZB3nSKMxEQGHr0b18hK3/YGntHqpBA=;
        b=JSCUMvXwiYKkttqOrQ5tOEgDjRDAFUf8FR5cfEVaWObPrcoUOSL9v2noro9qCQwkIE
         l6Q2BPbx0URvotayM2dGAdCQfva4iFMiTmgmfUtJ8VwDqERsk1xiTTEk5oBpU5an/VNg
         XR4tsEHBS5Y8P8rbF9IkEBFzSJWZrc7l83qhp3p7ZuSguoof7YGLx6s4irHSa0XXF6gV
         QIRye1tQYV/jDv9PcgwfgKI3VUuvWoogPI8P2Uv1Iuxlk/tSkI/QMWRs9A9dotD3GvYZ
         8WUVakeiDW7DFYxNTmg4MtldFTi1smxVdvs5V8eR4zn3eJfueYjpaeDD/hlEjPhSNdfR
         8Pzw==
X-Gm-Message-State: AJIora+j5weQEMwWDJ15NGN8/YtjX8/rp5e+o2so2ehLUVZvqV24RAIY
        jQUmq4TZcSG+o+O2fSAbpzWEhg==
X-Google-Smtp-Source: AGRyM1v4Q9yvmE7pbfBTUrw/Cd6mLuzEEELlqBH4NjBS6PsAsDd6asGEcJhZXpEdI1KBWqts81YnjA==
X-Received: by 2002:a05:6512:304d:b0:47d:c236:566f with SMTP id b13-20020a056512304d00b0047dc236566fmr4848838lfb.641.1655978157101;
        Thu, 23 Jun 2022 02:55:57 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s9-20020a056512214900b004790b5a0b22sm2923672lfr.239.2022.06.23.02.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jun 2022 02:55:56 -0700 (PDT)
Message-ID: <4c4efb31-14c8-9e58-edc2-7e2f787e6976@linaro.org>
Date:   Thu, 23 Jun 2022 12:55:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Removal of qcom,board-id and qcom,msm-id
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        krzysztof.kozlowski@linaro.org
Cc:     agross@kernel.org, arnd@arndb.de, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, olof@lixom.net, robh@kernel.org,
        sboyd@kernel.org
References: <a3c932d1-a102-ce18-deea-18cbbd05ecab@linaro.org>
 <20220522195138.35943-1-konrad.dybcio@somainline.org>
 <c072077a-cc16-c8f8-fcfa-891b3357cb66@linaro.org>
 <d0b55a37-428e-8081-6785-11be20aa14c7@somainline.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <d0b55a37-428e-8081-6785-11be20aa14c7@somainline.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/06/2022 14:53, Konrad Dybcio wrote:
> 
> 
> On 22.06.2022 10:21, Dmitry Baryshkov wrote:
>> On 22/05/2022 22:51, Konrad Dybcio wrote:
>>> Hi,
>>>
>>> removing these properties will not bring almost any benefit (other than making
>>> some checks happy any saving some <200 LoC) and will make the lives of almost
>>> all people doing independent development for linux-on-msm harder. There are
>>> almost unironically like 3 people outside Linaro and QUIC who have
>>> non-vendor-fused development boards AND the sources to rebuild the
>>> bootloader on their own. Making it harder to boot is only going to
>>> discourage people from developing on these devices, which is already not
>>> that pleasant, especially with newer platforms where you have to fight with
>>> the oh-so-bright ideas of Android boot chain..
>>>
>>> This only concerns devices released before sm8350, as the new ones will not
>>> even boot with these properties present (or at least SONY Sagami, but I
>>> doubt it's an isolated case), so other than completing support for older
>>> devices, it won't be an issue going forward, anyway.
>>
>> I almost missed this part of the discussion (and Krzysztof had to point me to it in discussion of his patches).
>>
>> I think this is a Sony peculiarity. At least the distributed SM8350 (lahaina) and SM8450 (waipio) Qualcomm device trees use these properties:
>>
>> https://github.com/MiCode/kernel_devicetree/blob/zeus-s-oss/qcom/lahaina-hdk.dts
>> https://github.com/MiCode/kernel_devicetree/blob/zeus-s-oss/qcom/lahaina-v2.1.dtsi
>> https://github.com/MiCode/kernel_devicetree/blob/zeus-s-oss/qcom/waipio-qrd-pm8010.dts
>> https://github.com/MiCode/kernel_devicetree/blob/zeus-s-oss/qcom/waipio-v2.dtsi
>>
>>
> Hi,
> 
> I was puzzled on this back when I first tried to get mainline booting on 8350 too. What I think happened, is that msm-id is used in some code paths, but not others (remember there are plenty of combinations including various Google's inventions from all over the years: QCDT, DTBO, vendor_boot, AVB signage, A/B presence/absence of recovery partition, virtual partitions etc etc).
> 
> Frankly, I have no idea why they are still here, but for booting just the kernel (no vendor_boot / GKI / dtbo mess), they need to be absent, at least on Sagami devices. This may be a bug in the Qualcomm bootloader, but they officially have to go with the GKI path to pass Google's compatibility tests, so this may not have been thouroughly tested (if at all), though I highly doubt this is going to change, as vendors are generally reluctant to update their bootloaders and Qualcomm is probably not interested in messing with a useless-to-the-main-purpose feature.

I remember that on early sm8450 boards/bootloaders we had the issues 
with the bootloader (I don't remember exact details). However I just 
checked the SM4850-HDK + the downstream kernel + appended dtb (which 
contains qcom,msm-id and qcom,board-id properties) and the kernel boots 
fine. So, I can suppose, there was some kind of an issue, which got 
fixed with later ABL releases.

Anyway the latest Krzysztof's text seems fine to me. And if anybody adds 
these properties to the DT, he knows what he is doing and why.

-- 
With best wishes
Dmitry
