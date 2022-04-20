Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAE42508585
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 12:09:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377540AbiDTKMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 06:12:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377502AbiDTKMb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 06:12:31 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEAA83ED0B
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 03:09:45 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id g18so2435139ejc.10
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 03:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sdG7qvBirC2zQaJJGKB84zZqh+8RTcfnaddRvMlGhFg=;
        b=pSw2/fpKA2ZqjR9+UfIhMec/7VYwXTlnWpO78qWqgqK+x1FbjFKEpsmtJaqqY1B6on
         HTPJyXfmw4ZxQvLshG5fWvmwBwZFaDvN7OyxuVTAQHLKe+Oc8CjBiA78U95nthoyufQp
         jkQV19nA8ltcPfZGcHe89VLMswcTBTdnw6qlD11GlkQ/gmyooHCZ9blJLFN5AJbIF4sY
         sc2F5TFBJWh6MsrdioGFXRbGMDJElXuxsHAhJBmhIhrWh5PLMswC4bkTeIGF0lqHRhmD
         B8f05q4SyAqqxUKZMpKxOn9d9xFT9FFsZQx5kcC2rA3ucXi+ICpCcZ7ubM8BQ9gvxMEy
         XNYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sdG7qvBirC2zQaJJGKB84zZqh+8RTcfnaddRvMlGhFg=;
        b=vNIV5dDYk6JxIEciooYXtVpixces85jolTZhprm+DifPoKCjHiLiDUCxI06Fjp38YH
         UXW46meluplmxWiET2I93khLsExcQMsxl9rfbfg9kFvpgvPYkSGnUoKJYr/CU+EH+ziV
         iK7ksKoJzRqpVQhfk7/OehHFv31J3hyZ2VRGAGCZ1PivOuJtSgm4gDEANi2moptzlztx
         myny9D2CEd+urXHh8Aw9ENrRDq77Q22NCC7VEiXuqwbCJjrW3paH20OwxteldIJw4bf0
         jZW7TBCXE696TsJyQyc6GZ1BDqLYhYSGL6LzLCvvKFO9PpI/x9pV3pzV23pbyHBSQpGN
         iubQ==
X-Gm-Message-State: AOAM532w3pEcL9FYU/PQsydCi0+l2jLevYV5k1DI/TGaCCkLkH/6/+8f
        qOAipdkCTGLO9QOq9mCj9PQSU45EZ4Q2Aw==
X-Google-Smtp-Source: ABdhPJx2ttp/F1QXGk5CsxhRav9EY4aPDxFgFnj0bH9ImbCbaMfyCgucMHEBx8vZaDsJ70rQdumnoQ==
X-Received: by 2002:a17:906:314b:b0:6d6:da31:e545 with SMTP id e11-20020a170906314b00b006d6da31e545mr18077663eje.125.1650449384570;
        Wed, 20 Apr 2022 03:09:44 -0700 (PDT)
Received: from [192.168.0.224] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m19-20020a170906849300b006e89efedf50sm6611689ejx.171.2022.04.20.03.09.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 03:09:44 -0700 (PDT)
Message-ID: <c634b6ac-1e3f-5dad-b04a-403daf741249@linaro.org>
Date:   Wed, 20 Apr 2022 12:09:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 2/4] arm64: dts: Add msm8939 SoC
Content-Language: en-US
To:     Jun Nie <jun.nie@linaro.org>
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, benl@squareup.com, jwillcox@squareup.com,
        jgates@squareup.com, mchen@squareup.com, zac@squareup.com,
        Leo Yan <leo.yan@linaro.org>
References: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
 <20220419010903.3109514-3-bryan.odonoghue@linaro.org>
 <737d44a9-56ba-846e-24ad-36b2da52d2d7@linaro.org>
 <CABymUCOAKvZXZKYtvunjn=K9mpZmAd4x3WTXH571k5BsBH6CEA@mail.gmail.com>
 <0cb490f4-3df8-7fc8-277f-070e0133f5db@linaro.org>
 <CABymUCN_N_yKuuF0zdwZ_jfd-UsfSt-HY5O4PjZ_sNmYGQ2UJw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABymUCN_N_yKuuF0zdwZ_jfd-UsfSt-HY5O4PjZ_sNmYGQ2UJw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2022 11:57, Jun Nie wrote:
>>>>
>>>> Generic node names, no underscores in node names. This applies everywhere.
>>>>
>>>>> +                     compatible = "qcom,qfprom";
>>>>> +                     reg = <0x00058000 0x1000>;
>>>>> +                     #address-cells = <1>;
>>>>> +                     #size-cells = <1>;
>>>>> +                     cpr_efuse_init_voltage1: ivoltage1@dc {
>>>>
>>>> s/ivoltageX/voltage/
>>>
>>> How about cpr_efuse_init_voltage_dc? There are 3
>>> cpr_efuse_init_voltage* node here.
>>
>> The node names should be generic, so this should be maybe even just
>> "efuse"? Feel free to add some prefix to it, so "init-voltage-efuse",
>> but no underscores and no suffixes in such case (but "init-voltage2-efuse").
> 
> The nodes are referenced by other node, such as below case. 
> So I have
> to name them,
> underscore is the best separator. While I have 3 init_voltage related
> nodes to name.
> What's the name you suggest for them?
> 
> arch/arm/boot/dts/qcom-apq8084.dtsi: nvmem-cells = <&tsens_calib>,
> <&tsens_backup>;

You should not reference them by node names, but by phandle (and use
label which you have there). Labels use underscores, node names do not
(hyphen/dash instead).


Best regards,
Krzysztof
