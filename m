Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCB36574AF8
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 12:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238387AbiGNKnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 06:43:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231559AbiGNKnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 06:43:04 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CD11545D3
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 03:43:03 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id x10so1210774ljj.11
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 03:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HpklPWRSZF3VkeOLjuA+CekBCR2uS6eub9kaGTBZ0ks=;
        b=sqpJzEmb7JlJuOfQinW0SnLvkKVBnWVIfPCdSCyy7xvWa6/uLT189ZackdPfY5VJgF
         j+XFLw4ug9D2LBPq0Y+b8tCg3VJ6gD/RTj2KNg72LExi4yKsJrw5MPUTZo1uMoozUVzH
         8Jf4FnjXwXWjR3b7uijeW/uW+MAQE89q2OgxXWzd4InWc3UcI1V2RbF8kv6p+hDZ0db5
         IfZoGdJq2GC8gpW6oBUVY2q6GO0G5OySPUCBFuFy+PwAJjUir7axJapZSBUHJPcosTae
         2gJ/OxxiSjYM+FyYiedjAnbJRk5onkCEUZENaPKZ8ch1ePwhOcFHbSv7/JVoiUwyBYOO
         DjLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HpklPWRSZF3VkeOLjuA+CekBCR2uS6eub9kaGTBZ0ks=;
        b=rJttwZkLiHdrtKKj7/RN1d8t26UF8kNHEnMBhmH33irh1w9LERHokvcS5flQSaeQS9
         2egQhvBvnEBgLaGXnoCTvLi6hc6sQ/2BGNTQE++w5qG5XOsvb4RHRtkwXgxnpNvob97D
         +gjOi8dim74osUIjmcLyhy6ej3/E75IQUhlhQBEuAyuzy8J/+AzxXypySe/zeX1KIy53
         tijyu2IWcKX87n6rkcgGzW7JayYGROmXNCy5mbaE9lFqAgc/mPaW1TflrnS0OHA8BvKt
         ZG/oqkrInhmd9olEtI2GPWCDOXM5W7yOjhEYrFYLlquu/d4TxZ1vAgts5CjjTURZZLjj
         jBMQ==
X-Gm-Message-State: AJIora83VhQ+wq5HfBja5vhXPktp5gUVGJRvthSNpZ6cR/0Uw1q+wd4T
        jkjUZBoTKFDHaLkjyyMl+1klkw==
X-Google-Smtp-Source: AGRyM1uGHxh2vo0vrwrvXBu+cxylQzoIdS3mBxPptW69sUUfI3XzwVKLxiAxzIxdTR+TpotSyu2gng==
X-Received: by 2002:a2e:b0d3:0:b0:25d:6888:7c70 with SMTP id g19-20020a2eb0d3000000b0025d68887c70mr4184434ljl.244.1657795381851;
        Thu, 14 Jul 2022 03:43:01 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id o11-20020ac2494b000000b00489c5db8bb6sm290241lfi.176.2022.07.14.03.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 03:43:01 -0700 (PDT)
Message-ID: <c84de7ac-5e4f-ce04-bfca-0341f4d6bc1f@linaro.org>
Date:   Thu, 14 Jul 2022 12:42:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 16/30] dt-bindings: phy: qcom,qmp-ufs: add missing
 SM8450 clock
Content-Language: en-US
To:     Johan Hovold <johan@kernel.org>
Cc:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-17-johan+linaro@kernel.org>
 <e8046961-9555-07b7-721c-eeb278cb2ec7@linaro.org>
 <Ys/q1crMhS3Ou+qu@hovoldconsulting.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Ys/q1crMhS3Ou+qu@hovoldconsulting.com>
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

On 14/07/2022 12:07, Johan Hovold wrote:
> On Thu, Jul 14, 2022 at 11:21:52AM +0200, Krzysztof Kozlowski wrote:
>> On 07/07/2022 15:47, Johan Hovold wrote:
>>> Add the missing "qref" clock used by the SM8450 UFS QMP PHY to the
>>> binding.
>>>
>>> Fixes: e04121ba1b08 ("dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy compatible")
>>> Fixes: 07fa917a335e ("arm64: dts: qcom: sm8450: add ufs nodes")
>>
>> The second fixes seems not appropriate here, because you are not fixing
>> a DTS. A fix for DTS would be a fix for that one.
> 
> I wanted to highlight the fact the binding wasn't amended when the DTS
> started using the new clock, which it should have. But sure, that would
> have gone in a separate patch. I can replace the second Fixes with a
> Link to the dts submission as a reference instead.

Yes, that or mentioning as "commit xxx ..." in msg would be better.

Best regards,
Krzysztof
