Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF57570646
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 16:53:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231843AbiGKOxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 10:53:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231837AbiGKOxr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 10:53:47 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3BE821831
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:53:43 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id r9so6492731ljp.9
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2xrfXrsfhBR+bokEXhKJoTSx+P/5u/go3fRYAk2iNd0=;
        b=xp/1VM+YnovbgVqn0d8nA+COQSe++ltPEGJkXmkSv/oXaHpjZsbK+OaG97pNpYMpJG
         jeDmUGabzohC8mT8pxMrCf7XGy8HYkMrLxFYEId98pU0Gs+R3c2UE0U7afcx0yPyWlRd
         G7+Ivzh42hunlUfGSqrNJbTiYDKLwVBExHApSUiY0jp+khtLdxrNiWZ6yBRL9BvSVG9H
         E8mRM6VUgJPG/KBg7iWjpKx5zXKDzx5KVBsiN+fw5Pa3fNBMgZtW5ZrnUUD4L1W2pPNl
         +X4PPgMIMZoyESlrfgQIHm4L3WrMLr1swfIYT/HwmEv8efkdFRoFxSnU/bMM7Ad9xQJy
         T0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2xrfXrsfhBR+bokEXhKJoTSx+P/5u/go3fRYAk2iNd0=;
        b=PXuHk9H8Gb0LUHH0RIknIn+wI04gii7/wBkHo1caUG+0MfyPGwDGkzVBkrb8j4uelR
         uVQwALXxREZWJH36VhVyeFlbU764Qk0tegsry38L57CmFrOPZDgNJqLMm0N3uamy3UCD
         UwOTtO7/3WuLRY+M7ut6ypyzV+7vZPC6bUeTgd6QJoPvkQFGeskihYeDxb9WyEIuDET8
         46wRG5i2O/AjKJVcsfGrn0kK9U9Hce0Op7ETMvBcl39KwvbmlPETCF8s0fIXxKgik0yk
         Ivnl9Em2g3ZJEJtOpHHEyEFHYdpiBvrIPxWlJ/unSVHecxZp72i/oPdRHntKLVr2eSM/
         S7Hg==
X-Gm-Message-State: AJIora+Ju6K+3Pd2VTrv+c7o5Z4auUFGKpMGTxQUQJ4zSBuCNjYFP/5K
        WJSt1Cp5ftMcqC8zJRdUY17dNA==
X-Google-Smtp-Source: AGRyM1uoWBsGsB4gV4RsG3DmErdXvK4zRJnl8r/uOClUAsfgWjKuVbm+j0ZD4Qa4Xv5lXSuVCQO5wg==
X-Received: by 2002:a05:651c:1207:b0:25d:4eba:e247 with SMTP id i7-20020a05651c120700b0025d4ebae247mr9773676lja.100.1657551221541;
        Mon, 11 Jul 2022 07:53:41 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id y17-20020ac255b1000000b00489c92779f8sm1569616lfg.184.2022.07.11.07.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 07:53:41 -0700 (PDT)
Message-ID: <f8744ff8-15a0-bf31-c49f-b1bb35ba5cdd@linaro.org>
Date:   Mon, 11 Jul 2022 16:53:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 2/5] dt-bindings: mmc: sdhci-msm: constrain reg-names
 perp variants
Content-Language: en-US
To:     Doug Anderson <dianders@chromium.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
References: <20220711082940.39539-1-krzysztof.kozlowski@linaro.org>
 <20220711082940.39539-3-krzysztof.kozlowski@linaro.org>
 <CAD=FV=WUCPzzZHAPqoz-vhmcVxzYDxkKQs=+1tLZvsQjWe4q3Q@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD=FV=WUCPzzZHAPqoz-vhmcVxzYDxkKQs=+1tLZvsQjWe4q3Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 16:52, Doug Anderson wrote:
> Hi
> 
> On Mon, Jul 11, 2022 at 1:29 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> The entries in arrays must have fixed order, so the bindings and Linux
>> driver expecting various combinations of 'reg' addresses was never
>> actually conforming to guidelines.
>>
>> The 'core' reg entry is valid only for SDCC v4 and lower, so disallow it
>> in SDCC v5.  SDCC v4 supports CQE and ICE, so allow them, even though
>> the qcom,sdhci-msm-v4 compatible is used also for earlier SoCs with SDCC
>> v2 or v3, so it is not entirely accurate.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Changes since v1:
>> 1. Rework the patch based on Doug's feedback.
>> ---
>>  .../devicetree/bindings/mmc/sdhci-msm.yaml    | 61 ++++++++++++-------
>>  1 file changed, 38 insertions(+), 23 deletions(-)
> 
> In the ${SUBJECT} I'm not sure what a "perp variant" is. Is that a
> typo or just a phrase I'm not aware of?

Should be:
"per variants"

> 
> 
>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> index fc6e5221985a..2f0fdd65e908 100644
>> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>> @@ -49,33 +49,11 @@ properties:
>>
>>    reg:
>>      minItems: 1
>> -    items:
>> -      - description: Host controller register map
>> -      - description: SD Core register map
>> -      - description: CQE register map
>> -      - description: Inline Crypto Engine register map
>> +    maxItems: 4
>>
>>    reg-names:
>>      minItems: 1
>>      maxItems: 4
>> -    oneOf:
>> -      - items:
>> -          - const: hc
>> -      - items:
>> -          - const: hc
>> -          - const: core
>> -      - items:
>> -          - const: hc
>> -          - const: cqhci
>> -      - items:
>> -          - const: hc
>> -          - const: cqhci
>> -          - const: ice
>> -      - items:
>> -          - const: hc
>> -          - const: core
>> -          - const: cqhci
>> -          - const: ice
>>
>>    clocks:
>>      minItems: 3
>> @@ -177,6 +155,43 @@ required:
>>  allOf:
>>    - $ref: mmc-controller.yaml#
>>
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,sdhci-msm-v4
>> +    then:
>> +      properties:
>> +        reg:
>> +          minItems: 2
>> +          items:
>> +            - description: Host controller register map
>> +            - description: SD Core register map
>> +            - description: CQE register map
>> +            - description: Inline Crypto Engine register map
>> +        reg-names:
>> +          minItems: 2
>> +          items:
>> +            - const: hc
>> +            - const: core
>> +            - const: cqhci
>> +            - const: ice
>> +    else:
>> +      properties:
>> +        reg:
>> +          minItems: 1
>> +          items:
>> +            - description: Host controller register map
>> +            - description: CQE register map
>> +            - description: Inline Crypto Engine register map
>> +        reg-names:
>> +          minItems: 1
>> +          items:
>> +            - const: hc
>> +            - const: cqhci
>> +            - const: ice
> 
> Do you need to set "maxItems" here? If you don't then will it inherit
> the maxItems of 4 from above?

No, items determine the size instead.


Best regards,
Krzysztof
