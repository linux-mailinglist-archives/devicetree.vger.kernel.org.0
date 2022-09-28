Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E6595ED714
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 10:04:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233923AbiI1IEJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 04:04:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233938AbiI1IEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 04:04:05 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B0C91EF61F
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:04:02 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id u18so19157730lfo.8
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Ff2Af8wnvNaIb1kySsnmT6w66901VaPZOtaBt+Ba+mM=;
        b=tkDy8FSZCKEACGMbv7TNH3//AgxXuPUehbKo2oEdC7czFQIZsXiR0OB1yGPI1xu7iO
         OlEPCc8H12dHF5AZSpen+fhrCznTwgX8IoguDH4u2HC2YfJbjvIoIMDkCS3uHG0WDzA0
         zkTLALGvnpX2M94zwy8EI+y9LO6tURmyHfkaYVKFaSKtlgucTUY1BjKAKP+sjHHKDWW0
         gE0xTbfihCHSKDf7hS1x4AmewrY6VcTKQQHg9oVE5mtp6CMI3naJ0Cg4CIyUSpoOWMzG
         6AnKbvvMmTXVAj/I9wopPRdTsTzuU9aLm4XsFxReQvz7ymq+ct9fkjpi9AniUWRBr92l
         1MAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Ff2Af8wnvNaIb1kySsnmT6w66901VaPZOtaBt+Ba+mM=;
        b=BC1MBPNSJKFc8CFqaCnMOP7VIX+NqvE6U/7ANlTmpFGwfv5ET4L8sSdITi760nUdsU
         kISloXK+KonJg7w6EelJ7oSJ+dLkXs46qfjXFdAOpFyLF6ziNgLh6H0Vxg/DAsc08Wvz
         wKoP5em7gx6paYF5oVb8/mFW+6xitwTz/MOe5YGMIalzKhg/4NRGVwtCWcBXCKIu0juz
         NyxdNxiH9stdt3JkHB2so6UFhTnqB8gyD30t/Ur56NRyOQbBCVWxdNjll4iQ0TSnwdj5
         RxH8x328hTeb3/xoQUq2NrXY1CNhxDoXO3cFWOnYTyt3MyRguHv2SRegvqw37Oe9Q/Qb
         ynEA==
X-Gm-Message-State: ACrzQf3q2ULCfMab/60NWqRBpB63jhgPEpgn4e6rvMfY69p984yT02vS
        6io9DugVTXLmFVtSG8d1xm1Vii9IuYhI3Q==
X-Google-Smtp-Source: AMsMyM5rommvOYkkGtKyw4ykIU1WW2BqQpPqHrUuLl3CWZJ+QMgMkInkDSaF57srd731r7uRyEUUYw==
X-Received: by 2002:a05:6512:12c8:b0:49b:8005:1d9d with SMTP id p8-20020a05651212c800b0049b80051d9dmr13437045lfg.489.1664352240358;
        Wed, 28 Sep 2022 01:04:00 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j15-20020a056512344f00b00499f9aaa9desm400083lfr.179.2022.09.28.01.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 01:03:59 -0700 (PDT)
Message-ID: <9cf8e03a-9ae1-8af9-f786-95931aa3fedb@linaro.org>
Date:   Wed, 28 Sep 2022 10:03:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: cp01-c1: use "okay" instead of "ok"
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220927201415.1265191-1-robimarko@gmail.com>
 <20220927201415.1265191-2-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220927201415.1265191-2-robimarko@gmail.com>
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

On 27/09/2022 22:14, Robert Marko wrote:
> Use "okay" instead of "ok" in USB nodes as "ok" is deprecated.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

