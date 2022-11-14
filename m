Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 785EF627D0F
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 12:55:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236710AbiKNLzJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 06:55:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236722AbiKNLys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 06:54:48 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A79302D77D
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 03:50:22 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id k8so17758298wrh.1
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 03:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xq2tLSCLZkgPzxgMCTyBgdDINhDq1LxipubitB9NtGc=;
        b=jp5LIGFyzgk18hF30BUu0NW++CriKjixjmz09zSAaf+g7nwjzDof+dXGKg6RhtzK3B
         vWzHHt82Av++1rTsXceQ0OgBcf+nrBHDKS7ZZakYiZP5LEP4PSp5lGeo6zXWZdjCZSGy
         uVCQpaR/YYBwADrGEdpTEvFgl44KhnkYC2qbSL7nGNY/C8PHlVmuWGLVq3wvjzlRmBVq
         l6D52DiE8OySgVb5fHw7yeAsNdx7u6ANS/KGSLWfALg9ccfhigNYytzy1CzCqpu6JPtJ
         OoluBvWlyFEGwRPUyR6NpzC7XvNTNbaCUalAp8bXsdu0EObbhpNNmdBJNLXJaOJPIVph
         lJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xq2tLSCLZkgPzxgMCTyBgdDINhDq1LxipubitB9NtGc=;
        b=Ef3syV4njFlM0nu2KtxGzmI8Sj3Ijh3gdxsQN0C+lAZuPwaRjhvLVf4WBdKgarrgw6
         0H4p963xqc1aKRpZsipieCDCXof6Y2aj4DbvKZSACyJOe4Bj9aRrfJjzdR/Sj2QHjNeK
         JD7LK5nExE/6ecgC9KX30IWLMIhEeKNBqTbABS+bV3v7SM1WKqhxks08gRkKP3TcU0xw
         /GGyWwmJ+ocjPNi9pqWEsiKBwbcXeHl09k+UA6KBCtdD7raoO7HRIUPUqyHSk2HHpnsL
         6m2rcPnFeSjNJC8NVRMtCCgervWueoF/CQ/dno74spgh4oydgT1CwZTeUGqoIDZzMRFI
         /sMQ==
X-Gm-Message-State: ANoB5pmaFEWiYAkZIXWKmPgNEN0ks+cIFLEeK6wKD0gYa65Z16/lH8e4
        xceklZT3iwVcVZSNi4QyYdfnGA==
X-Google-Smtp-Source: AA0mqf4rMQ5IoaeqZxSBWClknQ8RJO+tiaua1Mop1YSfULd72iGpshuFtqP45IWvYkcMSG9XheN5cQ==
X-Received: by 2002:a5d:6e55:0:b0:23a:239b:7e73 with SMTP id j21-20020a5d6e55000000b0023a239b7e73mr7200305wrz.233.1668426620997;
        Mon, 14 Nov 2022 03:50:20 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id x11-20020a5d54cb000000b002415dd45320sm9329910wrv.112.2022.11.14.03.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 03:50:20 -0800 (PST)
Message-ID: <48883bd6-217d-f513-316c-2b5caf486e5e@linaro.org>
Date:   Mon, 14 Nov 2022 11:50:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 00/10] ASoC: dt-bindings: Rework Qualcomm APR/GPR Sound
 nodes for SM8450
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Patrick Lai <plai@qti.qualcomm.com>,
        Srinivasa Rao Mandadapu <srivasam@qti.qualcomm.com>
References: <20221111113547.100442-1-krzysztof.kozlowski@linaro.org>
 <06da072c-8cf0-8181-3c32-4592fe41f9c2@linaro.org>
 <0ee5db9e-d80c-947d-73d6-6214e9299b23@linaro.org>
Content-Language: en-US
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <0ee5db9e-d80c-947d-73d6-6214e9299b23@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14/11/2022 07:48, Krzysztof Kozlowski wrote:
> On 11/11/2022 17:15, Srinivas Kandagatla wrote:
>>
>>
>> On 11/11/2022 11:35, Krzysztof Kozlowski wrote:
>>> Adding sound support for Qualcomm SM8450 SoC (and later for SC8280XP) brought
>>> some changes to APR/GPR services bindings.  These bindings are part of
>>> qcom,apr.yaml:
>>>
>>>     apr-or-gpr-device-node <- qcom,apr.yaml
>>>       apr-gpr-service@[0-9] <- qcom,apr.yaml
>>>         service-specific-components <- /schemas/sound/qcom,q6*.yaml
>>>
>>> The schema for services (apr-gpr-service@[0-9]) already grows considerably and
>>> is still quite not specific.  It allows several incorrect combinations, like
>>> adding a clock-controller to a APM device.  Restricting it would complicate the
>>> schema even more.  Bringing new support for sound on Qualcomm SM8450 and
>>> SC8280XP SoC would grow it as well.
>>
>> Why would this grow? All the dsp services are static and they will not
>> change per SoC unless there is a total firmware change in DSP.
> 
> They grow now with SM8450 which requires changes there. Otherwise DTS
> does not pass with current bindings. The bindings before my fixing in
> 2022 were really incomplete. Now they are complete, but:
> 1. Not for SM8450 - this will bring new things,
> 2. Very unspecific as they allow multiple invalid configurations.
> 
Okay, I looked at all the patches, they are fine as it is, the confusion 
part is the subject and comments which are misleading and trying to say 
that these are specific to SM8450 or SC8280XP. Infact this is not true, 
none of these changes are specific to any SoC, they are part of AudioReach.

--srini
>>
>>>
>>> Refactor the bindings before extending them for Qualcomm SM8450 SoC.
>>
>> I dont understand this bit, what is SoC audio support to do with DSP
>> bindings. DSP bindings should be totally independent of this.
> 
> APR/GPR bindings are for SoC audio, so while adding SoC audio the first
> are affected. If you went through the commits here, you would notice the
> changes.
> 
> Best regards,
> Krzysztof
> 
