Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D07444FDBE9
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 12:59:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354886AbiDLKI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352162AbiDLJmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 05:42:33 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 436951277F
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:51:32 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id b24so21474240edu.10
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 01:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VyKuoVOFtbJpQqYL42DYs7vEqjn6TG+3AG+tuB3ScVs=;
        b=R4JpCrbTrv7VPod1/4uHIpPG60WwEs6xdg5RD47te/xuroYSMJV17AJ9kTj+IjCRfl
         1vvR6A9B+eDfXxQpkBMMoUr1qtN8ZykBYccQDCshfgpuJSIW6r2x+qMueE6JZN8/31sv
         NyxM36AjZiwkWybsHCh+WNLUkZD/m+HTzhkVN5d3GsSnz+TOnW+oZ6DWwlnQHfFNEKt9
         8gi6kCzc/6dfh+pI59Xll/cqC4SVrUG0AYHSAy1sC30xGWHvUIYFVVrzPJp0NTKtNUrU
         FC70CNLpMPZ8gckRC69enVnqUIZkm5W9p4O3G3x5WYY7IOVJDDiJcmOAAI8CsfkInQX8
         5p5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VyKuoVOFtbJpQqYL42DYs7vEqjn6TG+3AG+tuB3ScVs=;
        b=kW4gR1OEOs3qR4STk7leV/0i+FiDb7+eokFTGT/+VacrHVmn+DyXBjNUogQFgZoa0N
         kPX9b6tKzGsr5nRWKinSrRLcp1gqGtiyDy1OlsovJ4pu95ZjtNChOltOIfXAD79Yrqjc
         amerEmq6/2djHadWZqoLooD2vZVkCmGHH6VLCOInwGbSZBYXBRuu4ASCiOXvDJft115g
         13f46SkNcm970ZYmsE9Bog7E0ffbqgTZTbhGvC0/jJGEwm454083Ip/VsFbGxBd/Ynot
         Bu3N2VRq2TEPxMR0W5vA5VsJr4emWU3nqEbL69R+Zsf/W43ADPsUVgP7adPu3xrllh/B
         ss7A==
X-Gm-Message-State: AOAM532Ccy1Ru35Ycm4Q/FxiTS5DmkZRgiGKTF88FCfU55qCxCMlUe3h
        rXqnYFr8bAk7uN2789mWlW9dgQ==
X-Google-Smtp-Source: ABdhPJzhgwKUzzSz6he1cnlPJJ1RdVI6ilJSVC2f6gsXEHJNEA9nt9WQDY78OnBYwejeXogZpjSQFA==
X-Received: by 2002:aa7:cac4:0:b0:418:85b7:adec with SMTP id l4-20020aa7cac4000000b0041885b7adecmr37427381edt.231.1649753490825;
        Tue, 12 Apr 2022 01:51:30 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id g2-20020a50bf42000000b0041cc5233252sm13505771edk.57.2022.04.12.01.51.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 01:51:30 -0700 (PDT)
Message-ID: <ad2c72e8-4608-9527-146d-43aa006e1306@linaro.org>
Date:   Tue, 12 Apr 2022 10:51:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/2] PM / devfreq: mediatek: Introduce MediaTek CCI
 devfreq driver
Content-Language: en-US
To:     Johnson Wang <johnson.wang@mediatek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        cw00.choi@samsung.com, krzk+dt@kernel.org, robh+dt@kernel.org,
        kyungmin.park@samsung.com
Cc:     khilman@kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, jia-wei.chang@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220408052150.22536-1-johnson.wang@mediatek.com>
 <20220408052150.22536-3-johnson.wang@mediatek.com>
 <76d58182-2f56-32b2-42e9-2ecbdd09ba3d@linaro.org>
 <d900f8181bddb20a56231310d46b9427c40e77b8.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d900f8181bddb20a56231310d46b9427c40e77b8.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2022 10:39, Johnson Wang wrote:
>>> +static struct platform_driver mtk_ccifreq_platdrv = {
>>> +	.probe	= mtk_ccifreq_probe,
>>> +	.remove	= mtk_ccifreq_remove,
>>> +	.driver = {
>>> +		.name = "mtk-ccifreq",
>>> +		.of_match_table = of_match_ptr(mtk_ccifreq_machines),
>>
>> You use of_match_ptr() so is it possible to build it without OF? If
>> so,
>> then mtk_ccifreq_machines needs maybe_unused.
>>
> 
> No, this driver must be built with OF due to our CPU arch.

COMPILE_TEST does not use your arch... There are stubs for most of
of-like functions, so !OF should build anyway.

> Should I add some dependencies in Kconfig to ensure OF is enabled?

There are different ways to solve it and it depends on what goal do you
want to achieve? One ways is to use maybe_unused and of_match_ptr. Other
way is to do not use them (skip both).

Best regards,
Krzysztof
