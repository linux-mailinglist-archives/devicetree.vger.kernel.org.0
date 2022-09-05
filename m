Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 708CE5ACE38
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 10:55:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236450AbiIEInT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 04:43:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236704AbiIEInS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 04:43:18 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89FA213D12
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 01:43:15 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id v26so12089340lfd.10
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 01:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=mdfze3IG/68Q0hY7r9k6Tm1EFJSU0CNsI9YxIPTLjk0=;
        b=qkVcslTIhlFw7xN9p3IkpVjPpKwj+zO7BLAQeVpTAGrFgrmrq6BWqg6FYRv1e1W1xW
         n794WnRLrzFWWfX12O43B3g8Qj5HmUujHhsrXUFKTEYClZANggmHFcfyYHmJNO+YNhFh
         N3gWnMA5YOUsP1q2+yAmip4x6ZXAW/kPfA9d/99t4heflT06S3R4LeNp5ug/Dzw2jM7g
         c7P9Zc83t8lpD4mGXHjkmRviWbeV9XDCiXkZC/8MDBkHJBWn4krqgbnUbyv6AzPjPmPu
         QzT6gt1CEyckMK3nJ2TpOO3yTkPHMg5DhnK/eXl6lAz37r5QAZPRad31R/YxKZ+Ahi1W
         rm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=mdfze3IG/68Q0hY7r9k6Tm1EFJSU0CNsI9YxIPTLjk0=;
        b=jWoI+JV3nDob13dupqGCAvjlyP5p8WL5Dymk3Wb/OWHBkDTt6Gniwodz+k6qNMLyLf
         D9VM9sALLvEQWWcBx1UdvgABxF4hFD4mRRGiFa9SRpSwqPuzlxaoSGsF7xrdgvqzI+eC
         e9M57/fJ5KN8NLn8kKFprL/ZQbqL6F5CQMQ9/iey5dm+3NIhivBUszV/IiuWIfDhj+09
         klptvi2XP79tx3dib9b1HE/yr69yPZmVCa5BA7if0hTQCNlfKCvH1vk9d8+ckXAWEmXt
         C3x+CmcENhOG9EFN2r/tqg5PK8NSfNf52y6sfKYaJAfsMr59T7Ocb2YBsqug2aztWVc/
         6WcQ==
X-Gm-Message-State: ACgBeo3GUJ0dOysanyAAv2k7Czp3T1EISPwrGfyjdlWun6X1tusIKYUT
        J+LM7hwJ7ZnugTNdX1bpK+KH4g==
X-Google-Smtp-Source: AA6agR5dHp6nWbwS4SLMTmNEn8otA25gZ0388rXlsjGhk5Cy661cLbJLcfVYEJPg5aAM0EJ/wCxspQ==
X-Received: by 2002:a05:6512:3191:b0:494:68ed:268e with SMTP id i17-20020a056512319100b0049468ed268emr13284484lfe.78.1662367393772;
        Mon, 05 Sep 2022 01:43:13 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s20-20020a2e98d4000000b00261bfa93f55sm1326777ljj.11.2022.09.05.01.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 01:43:13 -0700 (PDT)
Message-ID: <103f05e7-fcb7-75a4-f36b-bddf8385cef8@linaro.org>
Date:   Mon, 5 Sep 2022 10:43:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] arm64: dts: qcom: sc8280xp-pmics: Remove reg entry &
 use correct node name for pmc8280c_lpg node
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, agross@kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>
References: <20220905070240.1634997-1-bhupesh.sharma@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220905070240.1634997-1-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2022 09:02, Bhupesh Sharma wrote:
> Commit eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
> dropped PWM reg declaration for pm8350c pwm(s), but there is a leftover
> 'reg' entry inside the lpg/pwm node in sc8280xp dts file. Remove the same.
> 
> While at it, also remove the unused unit address in the node
> label.
> 
> Also, since dt-bindings expect LPG/PWM node name to be "pwm",
> use correct node name as well, to fix the following
> error reported by 'make dtbs_check':
> 
>   'lpg' does not match any of the regexes
> 
> Fixes: eeca7d46217c ("arm64: dts: qcom: pm8350c: Drop PWM reg declaration")
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
> - v1 can be viewed here: https://lore.kernel.org/linux-arm-msm/20220903084440.1509562-1-bhupesh.sharma@linaro.org/
> - Fixed the review comments shared by Krzysztof.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
