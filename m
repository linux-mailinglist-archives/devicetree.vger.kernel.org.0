Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C64956B131
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 05:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236950AbiGHD7G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 23:59:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230230AbiGHD7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 23:59:06 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08E1B74DD4
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 20:59:05 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id t19so33704921lfl.5
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 20:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aAubjKUK2nvZa3+RCLOOAOMis1QabrjDrjrCRAE8h/E=;
        b=qww2OpEmxQcjgXhzyViRkvjf67EADqjJIy1LBy1nME9FLCw8/Q1HrvzxEdN7ReePYw
         QGB6qXnJFoPiR3CIdkO1UdR/aAmZ0tEgvs7EiisvvKTR8Sc9YuvWqDkHuN5TZ94Qt5Fl
         NlgUPJ+8kIXh6jzraFGtchfvszL+kDbg8R46P1nGKzHBoQQup/aId1wApLfj506VoAnW
         dEEKAhPyYRnILhMD9J3qwEH6kabuBGjqbg3uxRDFON0qoyhaelgMFcddBS2UER4VFOZT
         qOBGIHmOtJAtzjfzMqowtY+0D0niWmurk+rttHduGEW9noGdfgCnB1NcO2oVizoNyUC4
         7/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aAubjKUK2nvZa3+RCLOOAOMis1QabrjDrjrCRAE8h/E=;
        b=UdfniInHmXJc0IIhBEwyStyQ1U15Ny7d7G0pd0ZlDPFXk8IIUEUyj+mCssnEewzHSF
         iUVD6bBq5uMzA36PJjf0Z5HIMslsjl790fg5e279RabffyBFf+cM3GGxwfgiqgncNj86
         dzHk+xb4IYMm+nsQ8IWjKvy6cObAn+tYQ3UnWvx5AlGcMK33HaA/pbzitXAVl/z1NgHM
         ImcAjnllSiYH6UCouZ/AMIKCfPoWAzYHfFtxW47/ofU2B5nkwAFDGyp69lDrb5FpwsUA
         1haQSTbj6Yu0JZ8gd5N2LxyTCDsr+clZYYJXMSfvjyClQScdS3rTqdSo1Ax5fbXz06sL
         4cxw==
X-Gm-Message-State: AJIora+icgRVKrAr2nZ+CHEBjjcNXzf0R2uOTlZ1+s1/UJDVGx0jEckI
        EC1yPO4BqImVCovrNXwicr8vjA==
X-Google-Smtp-Source: AGRyM1vzkVpTNli+0OYoyR5TM0tYAsic8Qhv+kQwSwdOh6zSfqRjoNSH4KsvEUsAI54nceW4y4w6Kw==
X-Received: by 2002:a05:6512:68b:b0:485:f4a1:c2db with SMTP id t11-20020a056512068b00b00485f4a1c2dbmr1023356lfe.119.1657252743410;
        Thu, 07 Jul 2022 20:59:03 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c7-20020a19e347000000b004791fc12f6asm7199835lfk.46.2022.07.07.20.59.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 20:59:02 -0700 (PDT)
Message-ID: <36a3490f-5c94-0c54-caa4-1b381dae7745@linaro.org>
Date:   Fri, 8 Jul 2022 06:59:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 5/9] dt-bindings: msm/dp: account for clocks specific for
 qcom,sc7280-edp
Content-Language: en-GB
To:     Stephen Boyd <swboyd@chromium.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org>
 <20220707213204.2605816-6-dmitry.baryshkov@linaro.org>
 <CAE-0n53An_S5H-jj7GPorLg0Q4jW=KqEn5CCrfqs6fn6LBtGNA@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <CAE-0n53An_S5H-jj7GPorLg0Q4jW=KqEn5CCrfqs6fn6LBtGNA@mail.gmail.com>
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

On 08/07/2022 04:32, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2022-07-07 14:32:00)
>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> index f00eae66196f..1ef845005b14 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> @@ -119,6 +111,50 @@ required:
>>     - power-domains
>>     - ports
>>
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,sc7280-edp
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: XO clock
> 
> What is this for? I would guess it's for the eDP phy, but that isn't
> part of the eDP controller, so probably it can be removed.

Good question. I was documenting what is present in the sc7280-edp 
controller DT entry. Could you please check if we can drop them? I don't 
have the hardware at hand.

> 
>> +            - description: eDP reference clock
> 
> Same for this one, looking at the binding for qcom,sc7280-edp-phy. Can
> we simply remove these two clks from sc7280? I think it will be fine.


-- 
With best wishes
Dmitry
