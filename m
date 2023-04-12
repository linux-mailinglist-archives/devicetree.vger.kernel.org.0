Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0BAC6DFFC2
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 22:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjDLU11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 16:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbjDLU1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 16:27:25 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155DE127
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 13:27:24 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id z8so18102690lfb.12
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 13:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681331242; x=1683923242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qdD6X2tsWvNw/zRsltriRHxCTaK999MB9DdSQty7sIk=;
        b=m8RhPAagGIaAQM2rpwxDNqnkNsbDrLnvyXQuIL5Gb0pw04I6kEZMHvihT394Lk8U5E
         EsuPjFYRZBzfJu2GBHTaKq60kv9SGJX/48XubuFNGcklk8JMDxuU6L4CLbZ3Oa8Nv4sN
         pQ1Fa3s2dy3Le660qvhYqQ4W26Bk0Q3a0wkXYIgskj2PCtX5sYVPHzmrWfI/2ZsZmixc
         L8jHWFdJSnpDSYN19mKrGRf3uMsAskRXaufjgIB2i7lG/RduE0Pj9u6hX5Hz0MnJzNKa
         +BH6CxBBEl+dHGXQjF7nFIQ50DXq3Q2z8Xhz80neSLWgy4+TVnSak647ncaxX37B7CxV
         OQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681331242; x=1683923242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qdD6X2tsWvNw/zRsltriRHxCTaK999MB9DdSQty7sIk=;
        b=BxmpAEmJPofjbOiPsIR3ljZ0uUe6a1Fn6Ewr2bvBPLF5WF+DGKJMgjuW51/RfKBF3I
         Hl70qCE7EDqSVdMXYdKxsHNf1qcViA+c3QksxfBTRUZ/XMqvoBLU8wTvc+D/LQAB8Y6C
         p3bcIDI21YyLEd3pOCUtYdG5anmDVrpRQzK1AHdPzTlUEeJF4nvEtwwFloywNHFbhqO5
         eMhVBsZCGEeVM9JdwLOskmZQcJiv9z43CGeAlyxBOP2FWSr+ZMWZKETUQ4rl/DufBbbH
         CDsjZHNV5PbCX1SSJ2+kpwnrcTUT8avs+u55xqh7tR5fP/RYdSSjBP0SBkwPiF4fEy1G
         Vq8g==
X-Gm-Message-State: AAQBX9ewgmsShbM0AajGFdRsKvzN4XMdiscCpo1NGUt6z7dzP2rNAtUf
        BglNWXezxUQr5Sh3hkabWparvw==
X-Google-Smtp-Source: AKy350YVIRTv5R7AgdTvAxHjSp0NWPnZQJUJ/JGfN/ZvzkW+8RZBZ6F4DAfnpDpJ//H7u9TvnQiIpA==
X-Received: by 2002:ac2:55ae:0:b0:4dd:a445:e69d with SMTP id y14-20020ac255ae000000b004dda445e69dmr36307lfg.26.1681331242291;
        Wed, 12 Apr 2023 13:27:22 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id c25-20020a197619000000b004eacd90e0c7sm3165151lff.81.2023.04.12.13.27.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 13:27:21 -0700 (PDT)
Message-ID: <0d56d963-a9dc-f6c5-60c0-421da030e1b3@linaro.org>
Date:   Wed, 12 Apr 2023 23:27:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop
 legacy bindings
Content-Language: en-GB
To:     neil.armstrong@linaro.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-5-dmitry.baryshkov@linaro.org>
 <656c6ae6-41c5-9b7e-8602-02d8b3b4149e@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <656c6ae6-41c5-9b7e-8602-02d8b3b4149e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 11:00, Neil Armstrong wrote:
> On 24/03/2023 22:55, Dmitry Baryshkov wrote:
>> The qcom,msm8996-qmp-usb3-phy.yaml defines bindings for several PHYs
>> which predate USB -> USB+DP migration. Now as sm8150 has been migrated,
>> drop the legacy bindings completely. No device trees use them anymore.
>> Newer USB+DP bindings should use combo bindings from the beginning.
> 
> Shouldn't we mark then as deprecated first ?

Not sure. What would be the reason to do that? There are no users for 
them anymore. They do not describe properties (which can be deprecated), 
instead they describe devices which are no longer present in DT.

> 
> Neil
> 
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 80 -------------------
>>   1 file changed, 80 deletions(-)
>>
>> diff --git 
>> a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml 
>> b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>> index e81a38281f8c..5684eaf170e4 100644
>> --- 
>> a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>> +++ 
>> b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
>> @@ -24,26 +24,17 @@ properties:
>>         - qcom,msm8996-qmp-usb3-phy
>>         - qcom,msm8998-qmp-usb3-phy
>>         - qcom,qcm2290-qmp-usb3-phy
>> -      - qcom,sc7180-qmp-usb3-phy
>> -      - qcom,sc8180x-qmp-usb3-phy
>> -      - qcom,sdm845-qmp-usb3-phy
>>         - qcom,sdm845-qmp-usb3-uni-phy
>>         - qcom,sdx55-qmp-usb3-uni-phy
>>         - qcom,sdx65-qmp-usb3-uni-phy
>>         - qcom,sm6115-qmp-usb3-phy
>> -      - qcom,sm8150-qmp-usb3-phy
>>         - qcom,sm8150-qmp-usb3-uni-phy
>> -      - qcom,sm8250-qmp-usb3-phy
>>         - qcom,sm8250-qmp-usb3-uni-phy
>> -      - qcom,sm8350-qmp-usb3-phy
>>         - qcom,sm8350-qmp-usb3-uni-phy
>> -      - qcom,sm8450-qmp-usb3-phy
>>     reg:
>> -    minItems: 1
>>       items:
>>         - description: serdes
>> -      - description: DP_COM
>>     "#address-cells":
>>       enum: [ 1, 2 ]
>> @@ -128,28 +119,6 @@ required:
>>   additionalProperties: false
>>   allOf:
>> -  - if:
>> -      properties:
>> -        compatible:
>> -          contains:
>> -            enum:
>> -              - qcom,sc7180-qmp-usb3-phy
>> -    then:
>> -      properties:
>> -        clocks:
>> -          maxItems: 4
>> -        clock-names:
>> -          items:
>> -            - const: aux
>> -            - const: cfg_ahb
>> -            - const: ref
>> -            - const: com_aux
>> -        resets:
>> -          maxItems: 1
>> -        reset-names:
>> -          items:
>> -            - const: phy
>> -
>>     - if:
>>         properties:
>>           compatible:
>> @@ -204,7 +173,6 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> -              - qcom,sm8150-qmp-usb3-phy
>>                 - qcom,sm8150-qmp-usb3-uni-phy
>>                 - qcom,sm8250-qmp-usb3-uni-phy
>>                 - qcom,sm8350-qmp-usb3-uni-phy
>> @@ -225,29 +193,6 @@ allOf:
>>               - const: phy
>>               - const: common
>> -  - if:
>> -      properties:
>> -        compatible:
>> -          contains:
>> -            enum:
>> -              - qcom,sm8250-qmp-usb3-phy
>> -              - qcom,sm8350-qmp-usb3-phy
>> -    then:
>> -      properties:
>> -        clocks:
>> -          maxItems: 3
>> -        clock-names:
>> -          items:
>> -            - const: aux
>> -            - const: ref_clk_src
>> -            - const: com_aux
>> -        resets:
>> -          maxItems: 2
>> -        reset-names:
>> -          items:
>> -            - const: phy
>> -            - const: common
>> -
>>     - if:
>>         properties:
>>           compatible:
>> @@ -271,28 +216,6 @@ allOf:
>>               - const: phy_phy
>>               - const: phy
>> -  - if:
>> -      properties:
>> -        compatible:
>> -          contains:
>> -            enum:
>> -              - qcom,sdm845-qmp-usb3-phy
>> -              - qcom,sm8150-qmp-usb3-phy
>> -              - qcom,sm8350-qmp-usb3-phy
>> -              - qcom,sm8450-qmp-usb3-phy
>> -    then:
>> -      patternProperties:
>> -        "^phy@[0-9a-f]+$":
>> -          properties:
>> -            reg:
>> -              items:
>> -                - description: TX lane 1
>> -                - description: RX lane 1
>> -                - description: PCS
>> -                - description: TX lane 2
>> -                - description: RX lane 2
>> -                - description: PCS_MISC
>> -
>>     - if:
>>         properties:
>>           compatible:
>> @@ -319,13 +242,10 @@ allOf:
>>                 - qcom,ipq6018-qmp-usb3-phy
>>                 - qcom,ipq8074-qmp-usb3-phy
>>                 - qcom,qcm2290-qmp-usb3-phy
>> -              - qcom,sc7180-qmp-usb3-phy
>> -              - qcom,sc8180x-qmp-usb3-phy
>>                 - qcom,sdx55-qmp-usb3-uni-phy
>>                 - qcom,sdx65-qmp-usb3-uni-phy
>>                 - qcom,sm6115-qmp-usb3-phy
>>                 - qcom,sm8150-qmp-usb3-uni-phy
>> -              - qcom,sm8250-qmp-usb3-phy
>>       then:
>>         patternProperties:
>>           "^phy@[0-9a-f]+$":
> 

-- 
With best wishes
Dmitry

