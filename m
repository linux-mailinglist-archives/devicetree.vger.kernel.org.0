Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B442263A8CD
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 13:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230462AbiK1M6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 07:58:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbiK1M6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 07:58:11 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3E00DF54
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 04:58:09 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b3so17215076lfv.2
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 04:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ySA7bRXHeIR11FzsN6t6JCDddPE/x+8Ds1P9CNQXQOg=;
        b=lH2Z/gd3UH+oqwY2SOhBzqVjGuJqhBvscZA+S7Gx+WNUrzF9oDc1la6QCOV6+PDjz0
         n/jz7GN5yoUKVSqxMSxRhRjoPQ3KRhJQuLK4ccqUhvW8bu/g5P4pdJqizJ/JljZMUWMC
         5MrPEzHBrWHblEuwlxAqWf/DiBNMl6AZC5CwT6/Uq2eq/m3i9Pt8GtNHl6+IOXlxg0gt
         WNcT2HEvjQVrERngJYXH6/Q7pNE2+oHQ8PtSFf+yZknzJBfxBQ0fllRki1iCTJeic0Nm
         RWdb1uNBObR8Law4uhsIxBBJrrQUgInmLIhKXrtsMC7F9JSOdstYpGW4L14LQFgDkBS/
         VETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ySA7bRXHeIR11FzsN6t6JCDddPE/x+8Ds1P9CNQXQOg=;
        b=r/Zbe9oamM2L3f2fGlxIH4+lWO8YoFsOjDxJnlaOV6junp8FUgY/GjGKuZiifdPdx3
         NNhmZDJ81672Z05QY/LDJKHiabmfHUZX7N9gqM5dcPkinZkmqyHEt717vmFrqGH/7q4r
         gWIH8+M1kVGTOpbljS2X4xdK4/6k4QXKSrFUR+Ex4isKNfp8nlNawQzDuygKYGk3zPqp
         lQqlmTg5XezYZehUDIRW3Jz2pn5UW5v6TnbNgYWJBcGDjbxq+oeZgVjKQwzzqgHslGqR
         ikb9PsEucjKFtf28VvGqzO2l+Jxspdj/HTFpSH3ngDbHqE0HVBBxLsGjj4j3/uDLyzzZ
         PYLA==
X-Gm-Message-State: ANoB5pkQeS3E+aFe+A/skbUilWOJbDnfk4gtSGrciwU+RnMK8cq6CY/T
        iqxiV53fvzYyOwKorswXQwPvYA==
X-Google-Smtp-Source: AA0mqf6QMGVwH029Cx6pZZnvN0zEryx1Qgz1H57o+s8YWwyVX83vzqVbypfZ8EgrqhifThnmbSuQvw==
X-Received: by 2002:a05:6512:36c5:b0:4a5:fda9:70b1 with SMTP id e5-20020a05651236c500b004a5fda970b1mr19558003lfs.473.1669640288100;
        Mon, 28 Nov 2022 04:58:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i12-20020a056512318c00b004b51cec187bsm62406lfe.290.2022.11.28.04.58.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 04:58:07 -0800 (PST)
Message-ID: <b647750a-65e1-3cd2-6e66-1b8c2823b354@linaro.org>
Date:   Mon, 28 Nov 2022 13:58:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sc8280xp-x13s: Add soundcard
 support
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        agross@kernel.org, andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
References: <20221123104342.26140-1-srinivas.kandagatla@linaro.org>
 <20221123104342.26140-4-srinivas.kandagatla@linaro.org>
 <30be93a3-c57f-d4c9-c154-6f12b9dc5dc5@linaro.org>
In-Reply-To: <30be93a3-c57f-d4c9-c154-6f12b9dc5dc5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2022 13:44, Krzysztof Kozlowski wrote:
> On 23/11/2022 11:43, Srinivas Kandagatla wrote:
>> +
>> +&swr1 {
>> +	status = "okay";
>> +
>> +	wcd_rx: wcd9380-rx@0,4 {
>> +		compatible = "sdw20217010d00";
>> +		reg = <0 4>;
>> +		qcom,rx-port-mapping = <1 2 3 4 5>;
>> +	};
>> +};
>> +
>> +&swr2 {
>> +	status = "okay";
>> +
>> +	wcd_tx: wcd9380-tx@0,3 {
>> +		compatible = "sdw20217010d00";
>> +		reg = <0 3>;
>> +		qcom,tx-port-mapping = <1 1 2 3>;
> 
> I think I solved my head-phones one-channel problem.
> This should be <1 2 3> and in DTSI:
> qcom,din-ports = <3>;
> 
> The downstream waipio-audio-overlay.dtsi says:
> 
>  56                         qcom,swr-port-mapping = <1 SWRM_TX1_CH1 0x1>,
>  57                                 <1 SWRM_TX1_CH2 0x2>,
>  58                                 <1 SWRM_TX1_CH3 0x4>, <1 SWRM_TX1_CH4 0x8>,
>  59                                 <2 SWRM_TX2_CH1 0x1>, <2 SWRM_TX2_CH2 0x2>,
>  60                                 <2 SWRM_TX2_CH3 0x4>, <2 SWRM_TX2_CH4 0x8>,
>  61                                 <3 SWRM_TX3_CH1 0x1>, <3 SWRM_TX3_CH2 0x2>,
>  62                                 <3 SWRM_TX3_CH3 0x4>, <3 SWRM_TX3_CH4 0x8>;
> 
> I just don't know what how to trim the port config properties - we
> have there four entries, but channels are only three?
> 
> Where do these come from? The downstream:
> asoc/waipio-port-config.h / lahaina-port-config.h
> Do do not have port config for this SWR.

Eh, not sure anymore. My second headphone started to work without these
changes, so I have no clue.

Best regards,
Krzysztof

