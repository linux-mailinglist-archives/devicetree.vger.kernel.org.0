Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 497E75EE055
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 17:27:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233455AbiI1P1f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 11:27:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233601AbiI1P0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 11:26:52 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FA8A2DE7
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:26:50 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l8so8754908wmi.2
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=4vRbbcHbcrOiR6go7yqFhgd/koQMW1xjrskbucXoscA=;
        b=LPI8ujC0MKnhB9g1VbZA3RhwaKjsnbLP0ZIYI3YYgLwnEl2fsJSEeF7hdnRgwTGpap
         LjoxG32ZgZNht4+7P6cduq16u+t98S/j1EABGQYKsPASlKJUub4WK3b8VB/MF/AlHBkx
         HnSeswNmSLqJZ4MZKAu6rCP1YcWdRHcgLwON6zruQqWdM6BOurz9h30PW0W9+wzCt8us
         EewkSY7ww++W+KUQOlTTj/Z8j7BnMcSmaoYzmxjpqiGMhT3lbJFDmpQBQiEeCEUzVfzZ
         Kf/2lt6fTWoLXQao0iVdzU7JlxuQelz/hyMb3qRCPM9oKrXzQf/mOGn1m3U1USXShev+
         pCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=4vRbbcHbcrOiR6go7yqFhgd/koQMW1xjrskbucXoscA=;
        b=sgJwVceX+TLTxEJRO/oUG08hTBlm9ctrkygo2LSxKA/rX7CKP/NEdQcEVbAWSK++Nk
         SlWl5qzbxsQcGSjXZGHoSUgw8t8MKcSr24fRKVmQZDmq8sHJzyJbKYIonQXE5LzsGi+E
         uiOJWmMCRN30+zukqMRHzBrtSgCJ2AG/qIJNg9ZPEuMt8kiacCX3xlnDMDjlaXyuHuQw
         yZ8rXqM8eO50BJijAlLWly5C4uHlxiapeCWoC72646I6p6lgWXOEuVmIYbdnJzPCC8B4
         qCPxofhPjq1jyuc6YA3mLqZ9noYLvCsZcfqMHfb4aLqJ8ZhMJZfOtPGlW7QDWf4XC49f
         E7RQ==
X-Gm-Message-State: ACrzQf3/0ACQ/pNPn0HQJFEJhBVCAPa8pojygP6x3OnEwwYBi4nRnLYV
        33NP+caCt/VpdUpvU+vfiE+FmA==
X-Google-Smtp-Source: AMsMyM7ybmeJ8NO0Fn1CHOToWfRT8tDA7MClVCd0cvNeY/zHRkVJUPQFIEbyJwg8JODXANAi1JU+dg==
X-Received: by 2002:a05:600c:4f8d:b0:3b4:9f2f:4311 with SMTP id n13-20020a05600c4f8d00b003b49f2f4311mr7154611wmq.17.1664378809054;
        Wed, 28 Sep 2022 08:26:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id i11-20020a05600c354b00b003b4935f04a4sm2670412wmq.5.2022.09.28.08.26.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 08:26:48 -0700 (PDT)
Message-ID: <8294b620-7e41-cdf7-2c44-eddc1bc54cec@linaro.org>
Date:   Wed, 28 Sep 2022 17:26:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 07/11] clk: qcom: mmcc-msm8974: move clock parent tables
 down
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220928145958.376288-1-dmitry.baryshkov@linaro.org>
 <20220928145958.376288-8-dmitry.baryshkov@linaro.org>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Organization: Linaro Developer Services
In-Reply-To: <20220928145958.376288-8-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 28/09/2022 16:59, Dmitry Baryshkov wrote:
> Move clock parent tables down, after the PLL declrataions, so that we
Typo:                                        s/declrataions/declarations/
> can use pll hw clock fields in the next commit.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/clk/qcom/mmcc-msm8974.c | 170 ++++++++++++++++----------------
>   1 file changed, 85 insertions(+), 85 deletions(-)
> 

<snip>

Otherwise looks good, with typo fixed:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
