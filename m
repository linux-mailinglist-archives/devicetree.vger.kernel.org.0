Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E2AC5EC51B
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 15:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232208AbiI0N5e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 09:57:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232372AbiI0N5S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 09:57:18 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1164146F9F
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 06:57:13 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id d42so15932341lfv.0
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 06:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ev3n3HXsdxmctruPXinckwm0/GHt4MhpPRr9m0oOsZc=;
        b=Bg3/vWwxHWbjWj+yyqdJTk09hhh/aL9pHflbIUI6Lnhex/jdIXnWo97O4rpLarE4k/
         YnO54AwZUehrw1kGbcEYJNIhJJDKW8XAM8TSOgpnq2YCbDQctFYJQyJDVT2a+aquyQFF
         SbXR1A8jHGrzXakcSYBebs6Howdb3o/VWjoPLt9TBqg5QIV9p2O0mxJlzlTWVND7GEwk
         m1RDnZNEeLkLzoDgHyxN4tuxoxt0MUqaxDuepIm1GzBXdSSkjBspxvoDen3ydYRi9Vuo
         MWq64ggmaStqY3MpKxYl2xhwwWV5kwhjBX73w8d+heu5r1Mth2kObEPHol9+GksUioYu
         UN8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ev3n3HXsdxmctruPXinckwm0/GHt4MhpPRr9m0oOsZc=;
        b=1xNXOBqcPOH/ATY4hsiIM768cHnDv4zhaq3e8tj/czfJAI6eRhnEAuZL3hdLdzYA2q
         FmThV3CoUHG66/h6IWcDiRjux2fbRlyYjIB4ICXuf17NTV0VS8OzP+4EqsZZ373Q9bYF
         5Yrl9dM73W640bjd8WWAOU2gtQ9QONrqeLkzQRjWo0BJeyE2+bUKkyaLB6yYMQf5ehIg
         ggSrd6kaDzyRrh9JIdnyRwxlKCMcnu5/UF7Wr1gCYQoUUumz3h/hoU1HM8xb0/S4Qw7v
         dKIrGDuYfNXo5ub6WtE6J5OKsOUH4fLsngvk5XCpSMOmpcHBHYwgDlF8oPYMjDOc/PAQ
         Z95w==
X-Gm-Message-State: ACrzQf2GwffomquyQiONbutTGWWS048hSHENHZ3kTTWV/ah4Yzevsgys
        om3TBY54V+86qqYoN/1aCc9hHg==
X-Google-Smtp-Source: AMsMyM6M47O8+8lVhBzSBboPo/7X+DVhNqB4VwbBpU1UI/8S5RUtO9VL4jj56EPB413fC/SuD5EwBA==
X-Received: by 2002:ac2:464b:0:b0:49e:b29c:2b04 with SMTP id s11-20020ac2464b000000b0049eb29c2b04mr10772069lfo.127.1664287031342;
        Tue, 27 Sep 2022 06:57:11 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i18-20020a056512007200b004a1e592837esm170924lfo.140.2022.09.27.06.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 06:57:09 -0700 (PDT)
Message-ID: <1029e512-02f0-8d08-2994-6440fa9c033d@linaro.org>
Date:   Tue, 27 Sep 2022 15:57:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 25/32] dt-bindings: pinctrl: qcom,qcm2290: do not require
 function on non-GPIOs
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sricharan R <sricharan@codeaurora.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220924080459.13084-1-krzysztof.kozlowski@linaro.org>
 <20220924080459.13084-26-krzysztof.kozlowski@linaro.org>
 <CAA8EJppxWu86+t=nejrqe_TnhoMLjtvWcvAaQA1awx3qW0t=fw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAA8EJppxWu86+t=nejrqe_TnhoMLjtvWcvAaQA1awx3qW0t=fw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 13:42, Dmitry Baryshkov wrote:
> On Sat, 24 Sept 2022 at 11:07, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> Certain pins, like SDcard related, do not have functions and such should
>> not be required.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../bindings/pinctrl/qcom,qcm2290-pinctrl.yaml        | 11 ++++++++++-
>>  1 file changed, 10 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
>> index 5324b61eb4f7..89453cb60c12 100644
>> --- a/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
>> @@ -60,7 +60,6 @@ patternProperties:
>>      description:
>>        Pinctrl node's client devices use subnodes for desired pin configuration.
>>        Client device subnodes use below standard properties.
>> -    $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
>>
>>      properties:
>>        pins:
>> @@ -116,6 +115,16 @@ patternProperties:
>>      required:
>>        - pins
>>
>> +    allOf:
> 
> Nit: I think you can drop allOf here and move the $ref up a few lines.
> 

It's anyway different in v2 - there is no if:then.

Best regards,
Krzysztof

