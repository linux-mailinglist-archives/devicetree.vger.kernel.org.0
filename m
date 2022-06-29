Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95EDD55FBCE
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 11:24:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231370AbiF2JXx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 05:23:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231277AbiF2JXw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 05:23:52 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEB1E369FB
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 02:23:51 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id lw20so31349957ejb.4
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 02:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=90oPbUZjWIrdVFwHuCcwlnH1DzBnkawJPEGv8+dYOgY=;
        b=et0B8ipcxLAqwpKDEuUybySKbX7Mop9S0Me/WEzpbuUcyy8FDLmGtl8IVobHaGXP18
         peoX4QRbjD6Y93UNGNw1V6zR6d9t7TCmMKBPDqpUiZvuUoSS/H4/RDs47J3+ZLArrlqm
         D/FJDtKA0gXMhgHVfSgjqAx+Ojoo9U1rt1vwhHJn/IBxPTBdnAO1XmEk1Wt3n1kTScg3
         4rjueOV/bGoFs85iEsYxbyFk7ngNMv5Hf/b4zwx+z7hv/2OuMSZjeFsRy7TRq/8rW7em
         wuazk9ddC36enNbbZXa2M6KTILayrU3ez5zPzLRkGlXrCc1BK4cpi0bOXvUxkozfZUlI
         AuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=90oPbUZjWIrdVFwHuCcwlnH1DzBnkawJPEGv8+dYOgY=;
        b=U32rgVQj6/ri/6VPQ75cQNpsh+mBo9+xmeL5JvS9atgrazqOZmVmMtSspEXulMnPII
         2yU5iMI6AId4m9E2WbAWr0Mq73pEE3AIZQlasMPFkfZPUJSdh64axLyGcvqs5KRdyFYr
         akpR8OiWbw1+2adMBYCdmO9UXT8AwoNmlZQIg6uZhy9rHlnRogapE/7U7oKHjqHowhOu
         t2FmKlfuGqrr8D03LTIZlHIvWSmq9rBmW/oZmEZR69hpJGk8EAnOcGeab3w4lkwz9RJ2
         AZi3lLeEHyMooKv/qRI5hi20J2WE0IcubxUUPRXNU8iWFE5R6q/YkC20AO08Rh+BBeLc
         LJww==
X-Gm-Message-State: AJIora9uJPULefa39Q//cl+lGI9iJWyyPx56OfsxqdQSZ7rqvq7cpSoa
        j52c7Sd2ojXZi4902u7zWPUe8w==
X-Google-Smtp-Source: AGRyM1sH34zUmPzWXRo+UkpWhTTGzBc2msaGYCRe6PpnoP/U/CXe6rqkeba7JnLYw13W5oRY1ZhUTQ==
X-Received: by 2002:a17:906:d555:b0:726:2b3a:d80a with SMTP id cr21-20020a170906d55500b007262b3ad80amr2412956ejc.144.1656494630452;
        Wed, 29 Jun 2022 02:23:50 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id bq15-20020a056402214f00b00435a742e350sm11074643edb.75.2022.06.29.02.23.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 02:23:49 -0700 (PDT)
Message-ID: <6e1b37e6-83e8-a920-61d9-044b08e93605@linaro.org>
Date:   Wed, 29 Jun 2022 11:23:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 08/11] dt-bindings: display/msm: add mdp-opp-table to
 dpu-sdm845
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
References: <20220625232513.522599-1-dmitry.baryshkov@linaro.org>
 <20220625232513.522599-9-dmitry.baryshkov@linaro.org>
 <20220627180506.GA2679395-robh@kernel.org>
 <772E0163-AC47-47E1-A0C6-CA04CA874282@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <772E0163-AC47-47E1-A0C6-CA04CA874282@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On 28/06/2022 22:23, Dmitry Baryshkov wrote:

>>> +    $ref: /schemas/opp/opp-v2.yaml#
>>> +
>>>    ports:
>>>      $ref: /schemas/graph.yaml#/properties/ports
>>>      description: |
>>> @@ -116,11 +120,12 @@ examples:
>>>                            <0x0aeb0000 0x2008>;
>>>                      reg-names = "mdp", "vbif";
>>>  
>>> -                    clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>>> +                    clocks = <&gcc GCC_DISP_AXI_CLK>,
>>> +                             <&dispcc DISP_CC_MDSS_AHB_CLK>,
>>
>> What does the OPP table have to do with clocks? Adding a clock anywhere 
>> but the end is an ABI break.
> 
> I should split this to a separate patch. And, I must admit, this clock change has already landed. We did not think that it is an ABI break since we have clock-names here.

xxx-names are only a helper and order of items is always strict, thus
any change in the order is always ABI break.

Best regards,
Krzysztof
