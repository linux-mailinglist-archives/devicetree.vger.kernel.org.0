Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84FF169AA73
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 12:32:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbjBQLc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 06:32:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbjBQLc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 06:32:26 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D84644E3
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:32:24 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id o3so1277915lfo.3
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xGMpYHsIeYJDIJGefg+6ErVmQQfHtNGslmwfKU0O4yI=;
        b=OvsZ7iovA4L6oucKG0b9h02NIVhPzkSAPETFU8v1m/z6VtZgecZFuPmTkEZNGjIPqO
         UjoWZ+ykHvNt8ppV6hXRCz0aiIUH+HqmT1bEYUeKQhfL1mt1ER3hhfvoRfD5xMvWQia1
         HUzSLNEp/TrSrSuCrH7uznPaDgkiXzZNkeJRp+AmH4MkhVAXY7U1rRSuRXbmv6BuODCh
         WLAAZKuGLjK/8DZ4IedVBHSo8B6Q4sXFfwc5UFGpEDIEZjTvLsuFsmDcXGEnDLXhw00U
         LkX4p1r+ZnaaFFV4hAPbehmyp3LMmJ8x2FdkMXsH4BQ38cp/net6qL7oB5ZdVgJ8BP//
         QW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xGMpYHsIeYJDIJGefg+6ErVmQQfHtNGslmwfKU0O4yI=;
        b=RABxkth7yZAa2HczABSOKf6slGs5FDehmU3scyIkB900cnKKn+xC2OWZTlRpei9otT
         dmG7AHUfaDqK2jsl6cElhWfOIxfTUujfMeAD5IzNY2cs1JstbINPkPs+WWtSnZgkAA62
         l0W3jtkRg4E5QlmA7z4xWzBaOGo6NvN8ds60FvD1xhwQDaPKtJYN5ngmuwmWNJE8ew8B
         2vRLoS8bKVW1G86UUkE1uBiDxY0nz+acpknu2JxiVFPFvRFDdV0NAlnU0PoZRkz66SIN
         KHWf15JjfbpEBHEBzYG0o56ASecj+c+xhlNKRc+nA5zAREPJ3wWKgTk5kEx3LMFQ+ViO
         lzKA==
X-Gm-Message-State: AO0yUKWlBGIZUjwR1ZC6VzT6lEysr/X8+YFkMJR+brJ4JeyHb4NDyObI
        kvDDlKuDU5b00si4QQQ2pSQzpQ==
X-Google-Smtp-Source: AK7set9R6HGSn4FUFt0xxRI8wa1ODUDTPvkHwALZ1Cga62wXb4eVDRWoWs4V4aiV88nkdhF7UYiKEA==
X-Received: by 2002:a05:6512:3b88:b0:4cc:a107:4227 with SMTP id g8-20020a0565123b8800b004cca1074227mr1429190lfv.22.1676633543025;
        Fri, 17 Feb 2023 03:32:23 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id x17-20020a19f611000000b004cc82b70809sm653491lfe.150.2023.02.17.03.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 03:32:22 -0800 (PST)
Message-ID: <a4eaccfd-34ba-15f3-033f-165b46c43317@linaro.org>
Date:   Fri, 17 Feb 2023 12:32:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v2 1/2] dt-bindings: display/msm: dsi-controller-main: Fix
 deprecated QCM2290 compatible
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230217111316.306241-1-konrad.dybcio@linaro.org>
 <c49904be-d842-fc12-a443-17f229d53166@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <c49904be-d842-fc12-a443-17f229d53166@linaro.org>
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



On 17.02.2023 12:30, Krzysztof Kozlowski wrote:
> On 17/02/2023 12:13, Konrad Dybcio wrote:
>> SM6115 previously erroneously added just "qcom,dsi-ctrl-6g-qcm2290",
>> without the generic fallback. Fix the deprecated binding to reflect
>> that.
>>
>> Fixes: 0c0f65c6dd44 ("dt-bindings: msm: dsi-controller-main: Add compatible strings for every current SoC")
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>> Depends on (and should have been a part of):
>>
>> https://lore.kernel.org/linux-arm-msm/20230213121012.1768296-1-konrad.dybcio@linaro.org/
>>
>> v1 -> v2:
>> New patch
>>
>>  .../devicetree/bindings/display/msm/dsi-controller-main.yaml     | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
>> index 41cdb631d305..ee19d780dea8 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
>> @@ -37,7 +37,6 @@ properties:
>>        - items:
> 
> If this way stays, drop the items as it is just an enum.
> 
>>            - enum:
>>                - qcom,dsi-ctrl-6g-qcm2290
>> -          - const: qcom,mdss-dsi-ctrl
> 
> Wasn't then intention to deprecate both - qcm2290 and mdss - when used
> alone?
"qcom,dsi-ctrl-6g-qcm2290", "qcom,mdss-dsi-ctrl"

was never used. The only upstream usage of the 2290 compat
is in sm6115.dtsi:

compatible = "qcom,dsi-ctrl-6g-qcm2290";
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/qcom/sm6115.dtsi?h=next-20230217#n1221

Konrad
> 
> 
> Best regards,
> Krzysztof
> 
