Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED15756B111
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 05:47:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237024AbiGHDqt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 23:46:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230230AbiGHDqs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 23:46:48 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ECBD74DC3
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 20:46:47 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id t19so33675194lfl.5
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 20:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BqnCXi3hFwX+gJLrgLBhrt7Qzd6TSa0MoJ61QYVzy4E=;
        b=RZ3Nk0ZROIPez1V5MMBryu6/7I8uXedhc6CeNeskxvfMC+l6AOmCzTxu0UXcyQE+WA
         hMwryQtgp+UcwA1qABUjq3ntw3q9LbOUwELgVnHeCVkFi8LTNBXG6mvbpoxfCwuwu2D1
         4FO7kcJLO8vy2hdPaJP5esItiGSysP0RdgtIemR/2NDpqsEUXfs8OCcW1zw8WzqiPONF
         VUvHidXWA9T4nOXzFtFibrkMB+ojfObaYVwBdOS83r9m8oyGO91wHj1I9sbiL+vc5KFb
         0Hqr+16h9qTBSQxsSS2m9HCCncsisED12QxGN5wq3vvL8JJF9bXgpRRz/5YY7WYgwDjZ
         BPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BqnCXi3hFwX+gJLrgLBhrt7Qzd6TSa0MoJ61QYVzy4E=;
        b=Kgh0m2X4dTFoplWScxdFnDKL8Bdz1t4V+grpPqatwCLe4Hd5Nb2ICOGvotPFf9CZtJ
         1uss0SfrPkjOghzo3cRdawaZlAOZE40WDPMEIcahN3SNgz2gT0h9VFtXv0Y4aDT+eegn
         Rf4IXWMMHRLu0d1APZBFcHecaDjRqOKO61Eatic5WeljGEfnsalPM2DXc3Dz4omzOHvW
         MBROObQyzxYlzhvKyqojvIHTiajWzaRYuGpLz+uvAcwqEUQVB3cqnt7KW62I06fD07Yy
         eQpty9qgHjFYSk6TMkbPNcfk4/2PQnUl0DJDXa8sxzMJ5UAAn1fk5JBa/JYi8pV5llkj
         RkZg==
X-Gm-Message-State: AJIora9TQVaemJ/47RINVfH5Z6vepxiTm7ahKPlYBk7SO4QZRl606BkU
        XtEgucvuIYQty3IMzE/K+jpNig==
X-Google-Smtp-Source: AGRyM1sKT8szMXfjnFBIEzhyqg49K4tUUgVw6UFCa270cKcbGYd7ZsszdH/U+2dGJ/fE2ZlA+H759g==
X-Received: by 2002:a05:6512:b96:b0:489:3a4:a267 with SMTP id b22-20020a0565120b9600b0048903a4a267mr944515lfv.18.1657252005333;
        Thu, 07 Jul 2022 20:46:45 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r25-20020ac25a59000000b0048355942defsm1892032lfn.249.2022.07.07.20.46.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 20:46:44 -0700 (PDT)
Message-ID: <b8ee5a03-1168-d5ca-97fe-f82a9d7e453e@linaro.org>
Date:   Fri, 8 Jul 2022 06:46:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/9] dt-bindings: msm/dp: drop extra p1 region
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
 <20220707213204.2605816-2-dmitry.baryshkov@linaro.org>
 <CAE-0n53zV2OjXxjJ_AwCDcAZvOY+BU0-xipxQkup3muHMRCPXA@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <CAE-0n53zV2OjXxjJ_AwCDcAZvOY+BU0-xipxQkup3muHMRCPXA@mail.gmail.com>
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

On 08/07/2022 04:28, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2022-07-07 14:31:56)
>> The p1 region was probably added by mistake, none of the DTS files
>> provides one (and the driver source code also doesn't use one). Drop it
>> now.
> 
> Yes, looks like the driver doesn't use it.
> 
>>
>> Fixes: 687825c402f1 ("dt-bindings: msm/dp: Change reg definition")
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> index 94bc6e1b6451..d6bbe58ef9e8 100644
>> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
>> @@ -29,7 +29,6 @@ properties:
>>         - description: aux register block
>>         - description: link register block
>>         - description: p0 register block
>> -      - description: p1 register block
> 
> The p1 registers exist on sc7180. They start where the example starts,
> at 0xae91400.

Do they exist on e.g. sc7280? In other words, should we add the region 
to the DTS? For now I'm going to mark it as optional.

-- 
With best wishes
Dmitry
