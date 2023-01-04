Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42C6E65D0EE
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 11:49:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239171AbjADKtE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 05:49:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239148AbjADKsZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 05:48:25 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3F0A34759
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 02:46:58 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id f34so49772546lfv.10
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 02:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NfmlmwOicK+P4Fj19lQDKKUueXvm4uJUNgQaNuxICg4=;
        b=JSuQn1rOdaxTDZtFChmYr1iKMXcr8UELgNW3/stAYotGA2EIeyL/+xXgdDBYkrU0/p
         UL8uTjP1eQh2c+d71VwAcT5rxp2P4BygBNye1lDkReI41EsU0TC1246fndj1D5vRGfzB
         W1mFcEVn5iNtdQunPlbie2r8kAq3HrvQ/fL1KCWI8mDLDbvgrmEFYv5jTZZHEBfV6xf+
         XPNI6pPCG1EM42swVNv+3sWQqbF8B2eWRTsK/cgW9I/lMUFG95nd3wwvmWMNuMDZlMxg
         CwtX8YOH31DatVuN7I8cl/naEd/i3kLV3Ppxf6ugAjx4q2IN89Q8lw4Y+GiOCfUHFaYt
         a0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NfmlmwOicK+P4Fj19lQDKKUueXvm4uJUNgQaNuxICg4=;
        b=bJFAbAcPT0k0dEWYZdtfeRTK7S1QO/g/fuXT6cL7H5QMEDMv0EukTHsu8EdowFSd+C
         D+zrY6Zj01lULVR+Uib6+VEe37Hbts/5gMmpupOwmpi4EDOPE4ClUWC1vax5dF8wcWh9
         ZDknamuTRc24qVmcUI7EVbvxDE+WrTxnUKqc2pGAZPoJNDEeIOEORhLdnRGtJBwh0Scr
         JNOyCLwi8k2jOtV1rYck8UYHCmcJ5AEpJcVBrwcWtBwOEZ43dDWKgr8UExHxq0MndzRY
         m2qTx/FIr0Kl7T6fStdXve5J6I9OZNA/4LIWoKhTF8rEZ3FhGkRWR2Z7Bg6jfCcBo+/q
         phCw==
X-Gm-Message-State: AFqh2krnMXCmSkrScK+KT0E6b2imGJ/XUwp0MVATocdVvghhG5d0aPS6
        3K52PgXLl6TBuQDr4txDzdObJJLdRsuBt0/V
X-Google-Smtp-Source: AMrXdXvhE08HUtoKGH4kUNqXmHmA8bNtvf777aR10BcsOI6lrQfH9CSmNxcPQ4lE7kpI1o5TljnNmQ==
X-Received: by 2002:a05:6512:2a90:b0:4ac:b7bf:697a with SMTP id dt16-20020a0565122a9000b004acb7bf697amr14010829lfb.4.1672829217065;
        Wed, 04 Jan 2023 02:46:57 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id m6-20020a056512114600b004b584204b85sm5093407lfg.161.2023.01.04.02.46.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 02:46:56 -0800 (PST)
Message-ID: <07a849a9-03dc-f3af-1d3f-2369cb71451e@linaro.org>
Date:   Wed, 4 Jan 2023 12:46:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v8 3/4] clk: qcom: rpmh: Add support for SM8550 rpmh
 clocks
Content-Language: en-GB
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mike Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20230104093450.3150578-1-abel.vesa@linaro.org>
 <20230104093450.3150578-4-abel.vesa@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230104093450.3150578-4-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/01/2023 11:34, Abel Vesa wrote:
> Adds the RPMH clocks present in SM8550 SoC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/clk/qcom/clk-rpmh.c | 36 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 36 insertions(+)

I think the plan was to have the _PAD clock as a child node of the 
rpmcc. Is it still the planned implementation?

-- 
With best wishes
Dmitry

