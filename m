Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04DB559C7BB
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 21:01:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237461AbiHVTAF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 15:00:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237259AbiHVS7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 14:59:48 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24DC94B497
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:57:50 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id bx38so11470655ljb.10
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 11:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=PKpchvUqRtUWsP9nxTTzrZHGbNMFxGhFv9cu7yF3NDk=;
        b=cxXulSdw7Cw0GjAfGRSFFZ6IKO29G4hpnfruPRhudEkW8RZD3TGtcyKVQZdzgFCuDP
         lXUOs2Av7eBl8sRi7fTQ+K2e10iD9xw5n3hdaxGrCqCW2nOv4Ild1+NAEs70uttS4vFi
         OwmFA7lcwkE9C4RXjJTiuYYeUN+k4leujPLWhP2Gza1SIieWcXdzEp13+jwb3LRBHZWf
         +mbqHeI5sU4asrkZdGPMA9vSJ64k5qlzJatn2mfwDq2rVlpt/ky7+Xnesil9cBu2ioVV
         f6CnRFW15xKo5qWoooXS0i60qBn/imgsA9FXYL4pyjRT7gfMaF17IWtY76wlDJJGAyeG
         fKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=PKpchvUqRtUWsP9nxTTzrZHGbNMFxGhFv9cu7yF3NDk=;
        b=gLaVw7ldrL7XLubltyGts1mnUI/iecpI2Z+MWL1pIs9QurwCH2SQnjMFroL+WykPdO
         eD7aDak1lXOmbA7v+sQEI0NnJ7P2hAZwV9J6s8Xehrrve10A/RvEzcHd3Rm7lZfW4W9Y
         krTti279x4n5NZdCuRk3cU7Yyex8oPCuPKDcrhacS+Ff6CtxffxW6w0jxsTf1dYg9PsB
         Rz6FQTNdoyO/bPHNq9rkxNLRwHnx8Zm05jGekH5xBrVAFdjwKEKsdqvF+Jo1zcqR+txb
         QsXOLTw76AZLd5nb4Xa6pkIdssSz6rWL5lNRMjbwznYkHitBbH1514ciVw0lxDqirYmc
         MdQA==
X-Gm-Message-State: ACgBeo2Cve9Ig/0reE1mD28+koXCTUvIhUANLFeGT0Q9/lgiPA+3e8hz
        ySRA+kX5AHf2rt/h4R7gjVuLcw==
X-Google-Smtp-Source: AA6agR7kkHoz/rYO+7VF0jeAcDX6Z8QWqV+1tmT5zpZZsnZNVXs+R+ybeWNb1Vfk5ZzJh3a/pgcS3g==
X-Received: by 2002:a2e:9d0a:0:b0:261:85c6:efa8 with SMTP id t10-20020a2e9d0a000000b0026185c6efa8mr6605218lji.477.1661194665588;
        Mon, 22 Aug 2022 11:57:45 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m9-20020a056512358900b00492cd4bd376sm1627741lfr.239.2022.08.22.11.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Aug 2022 11:57:45 -0700 (PDT)
Message-ID: <201ec2be-f8a0-066a-f7b3-2d6ac58fe674@linaro.org>
Date:   Mon, 22 Aug 2022 21:57:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2 04/11] dt-bindings: display/msm: split qcom, mdss
 bindings
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
 <20220710090040.35193-5-dmitry.baryshkov@linaro.org>
 <677d6387-6225-29c2-3190-8f443222019f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <677d6387-6225-29c2-3190-8f443222019f@linaro.org>
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

On 11/07/2022 14:37, Krzysztof Kozlowski wrote:
> On 10/07/2022 11:00, Dmitry Baryshkov wrote:
> 
> Thank you for your patch. There is something to discuss/improve.
> 
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - interrupts
>> +  - interrupt-controller
>> +  - "#interrupt-cells"
>> +  - power-domains
>> +  - clocks
>> +  - clock-names
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - ranges
>> +
>> +patternProperties:
>> +  "^mdp@(0|[1-9a-f][0-9a-f]*)$":
> 
> You used some unusual pattern. It's just "[0-9a-f]+" - the device
> schema's job is not to validate patterns in unit addresses.
> 
> Another question - why do you allow "@0" alone?

I think this was c&p from the other file. Dropped the @0 alternative.

> 
>> +    type: object
>> +    # TODO: add reference once the mdp5 is converted
>> +
>> +  "^dsi@(0|[1-9a-f][0-9a-f]*)$":
>> +    $ref: dsi-controller-main.yaml#
> 
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

