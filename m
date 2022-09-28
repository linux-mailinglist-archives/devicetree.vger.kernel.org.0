Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F0845EDADF
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 13:01:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234065AbiI1LBF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 07:01:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234050AbiI1LAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 07:00:38 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B76B95A8A2
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 03:59:51 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id v28so6357100wrd.3
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 03:59:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=EiTpD7cEgVBoBOUE2lmr7W+I+wnkmC0cYFWXX1Du1y0=;
        b=fFrknCoz7n1lr2jcH21Q6U0X6sxgqPMx7AbH1/cmqXAmolUPpJcTiDLD3iQRGE/AdJ
         B8PUWIStqWbEiuGeqn5VsLMf3ZR6sNoQE2DLV/omxyBywGN1RPBMOUrMjL3aO7GDXLGm
         4NwJVob1L/cX+bWRyfxUIzvN1FIUy8vv0Hzk3DEAS/uvPw0IWR7NQo0493BRJp1lM3lq
         RYILSjiC1ZxUpc7OZEoycl+ZY+k7lTLDCt3ltK1zRUSIDWIceE/totWsb1Kmktow9GN+
         DIrs7rwoBiHZnrHUNbD8wt17EhpEz7T8tRs7Qts9/mWSdRVNdc5uM010wY/sYnmNaUSi
         6hSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=EiTpD7cEgVBoBOUE2lmr7W+I+wnkmC0cYFWXX1Du1y0=;
        b=Ull43u5H0/jxI+ubmV9E6H1Lp79F6CLA3XLmMIMFtj+qXvi5CC+yeoAVBP9vpYNORk
         VD9pp/WjrXFQXu6O5nlXDvP9RvlbAuBc53dHz1EPckwgKgF3rB33XcfjpI6uUCOpF0TV
         HuaLiJKMPd8mUew0apN+PDk+axWfdxzjZlTEgHOQsYJcYOM+TsMI0m5kMksj1t8JBO+G
         JpSZVqbA3vHfF6L21i9ONBjskEiTAFO98PbDaoKmj12ROd4ASvK9ay4fGMSBWeQ7tWGL
         ARl2U1+hPaHgGMsT2oqKoX7PCVmZEx45guIxWiATlyf0BPGtj18gYi7NgN8rMwUGRCVO
         D0zw==
X-Gm-Message-State: ACrzQf10bCmM+z6VJarQjknSESXaElufOGys/EZnumjROwX8fmGictDN
        e8TwKP/PqJjY6VLPSvwk4qLwQw==
X-Google-Smtp-Source: AMsMyM7dx/gQQsVRQkWfOPbFKGug9aP4NEs8gED+qbzk2SkJ0uBr2SCCDoj/61UJvNhXq9EG4l6Ivg==
X-Received: by 2002:adf:d1ca:0:b0:22a:cb10:450d with SMTP id b10-20020adfd1ca000000b0022acb10450dmr19451526wrd.120.1664362789885;
        Wed, 28 Sep 2022 03:59:49 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id a3-20020a05600c348300b003b3365b38f9sm1472627wmq.10.2022.09.28.03.59.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 03:59:49 -0700 (PDT)
Message-ID: <3b76d507-d35e-e72b-d576-2c14e0718aa3@linaro.org>
Date:   Wed, 28 Sep 2022 11:59:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v4 2/2 RESEND] extcon: qcom-spmi: Switch to
 platform_get_irq_byname_optional
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>
Cc:     myungjoo.ham@samsung.com, cw00.choi@samsung.com, agross@kernel.org,
        bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        gurus@codeaurora.org, aghayal@codeaurora.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220926113143.40768-1-bryan.odonoghue@linaro.org>
 <20220926113143.40768-3-bryan.odonoghue@linaro.org>
 <20220928085313.6fscjxuxto4kdz6s@SoMainline.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20220928085313.6fscjxuxto4kdz6s@SoMainline.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 09:54, Marijn Suijten wrote:
> On 2022-09-26 12:31:43, Bryan O'Donoghue wrote:
>> Valid configurations for the extcon interrupt declarations are
>>
>> - usb_id
>> - usb_vbus
>> - (usb_id | usb_vbus)
>>
>> In the case of a standalone usb_id or usb_vbus failure to find one of the
>> interrupts shouldn't generate a warning message. A warning is already in
>> place if both IRQs are missing.
>>
>> Switch to using platform_get_irq_byname_optional() in order to facilitate
>> this behaviour.
>>
>> Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> Feel free to carry my review from [1] even after addressing the
> commit-message nit - thanks for doing so by the way!
> 
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20220704214444.p5oqik2cqo6h7723@SoMainline.org/
> 
> - Marijn

Cool, thanks.

