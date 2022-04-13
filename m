Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C37364FFCB0
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 19:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236604AbiDMRbL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 13:31:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236989AbiDMRbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 13:31:10 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D86FB6C491
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 10:28:47 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id o2so4743354lfu.13
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 10:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=FNo+I9GAGanJLFi+i76TeBuEVOOSEjjny0k1u196lSk=;
        b=n6zmZui8R/44EJZ1zBFJvb6+hpwa6QjmX1EFAVWUUOUDV17usQp0Kwpb7ulEJQL9wl
         OFJB5cRBWULjZR0l0dXoXh1F1OHDBpXnnBedP/r/LjfvSYtiQ1UWWCxKIFdWZJMhgk0c
         W7dbn5TDMbFFc/Uhfrgu65MFkHvE1ZhkheCHi1dkZoM3CtRyEwnvbu+F2lSFI/GLQTXw
         LJD8+JfKEcE1mHkYKGDwkcos7qk7RgvzdTMi1EdksowHfTCjXDUprwac+l4RLWHDL3RY
         V1TZduEMi9L2q2aQT/pNYjtRc/FPN59H+dz1qpWzl0q4NSS9UKKMstXBsUlBzZxk+Qem
         BHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FNo+I9GAGanJLFi+i76TeBuEVOOSEjjny0k1u196lSk=;
        b=lnNs/Wyv1vjcf/9rT6hw3EcqVBBSNCwr90lFjclRXvl5lTw9pjSMRUbZx++HF6LFsA
         7cHyhc1y4v95/MS/HSHZBAGjmdMjuL62N0/jXBMDFa5Sv4yOSiGlzL1aoYQ6Wa5eGZmj
         eNgew6onKV0kwzJ9rXoQJebqLMws3b1aidNDfpl+vtjpAqAKmVCjyuBKGrxIHghIup2Z
         /wA/DDjoLlRMTw2i4vaL7hCeBkTVKNMWJLlknQX8Ofspzc+WuoNyeDEyiiCadebmeWnn
         4hsm2NQPjbTkJLjL/HMm2yXukReYEt+rReyqXuE+GHYxMm8MZlCsknwE+Z9qMP0v6lAw
         2HIQ==
X-Gm-Message-State: AOAM530s8RRWBGZ9GUiByfW7MCs36TNl0VJacI2ti2tyBcjAeVQYfOgG
        UN7G9T6xOFIC9FUTQpBdjJ1MnA==
X-Google-Smtp-Source: ABdhPJzjvFgT7yA/F8R81dfytbv81OzF39Dg3ucpcUlBeH92XgV1yXsTItaYDDI4nz0JpAIDOhbBQg==
X-Received: by 2002:a05:6512:4004:b0:46c:39a4:ac76 with SMTP id br4-20020a056512400400b0046c39a4ac76mr3181124lfb.676.1649870926058;
        Wed, 13 Apr 2022 10:28:46 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i14-20020a198c4e000000b0044a279d25d2sm4209371lfj.244.2022.04.13.10.28.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 10:28:45 -0700 (PDT)
Message-ID: <5052e89f-244b-b76f-1889-5294243c6921@linaro.org>
Date:   Wed, 13 Apr 2022 20:28:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v6 13/18] clk: qcom: clk-krait: add enable disable ops
Content-Language: en-GB
To:     Ansuel Smith <ansuelsmth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20220321231548.14276-1-ansuelsmth@gmail.com>
 <20220321231548.14276-14-ansuelsmth@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220321231548.14276-14-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2022 02:15, Ansuel Smith wrote:
> Add enable/disable ops for krait mux. On disable the mux is set to the
> safe selection.

Why? It it used during system suspend? cpuidle? cpufreq?

> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>   drivers/clk/qcom/clk-krait.c | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-krait.c b/drivers/clk/qcom/clk-krait.c
> index 7ba5dbc72bce..061af57b0ec2 100644
> --- a/drivers/clk/qcom/clk-krait.c
> +++ b/drivers/clk/qcom/clk-krait.c
> @@ -85,7 +85,25 @@ static u8 krait_mux_get_parent(struct clk_hw *hw)
>   	return clk_mux_val_to_index(hw, mux->parent_map, 0, sel);
>   }
>   
> +static int krait_mux_enable(struct clk_hw *hw)
> +{
> +	struct krait_mux_clk *mux = to_krait_mux_clk(hw);
> +
> +	__krait_mux_set_sel(mux, mux->en_mask);
> +
> +	return 0;
> +}
> +
> +static void krait_mux_disable(struct clk_hw *hw)
> +{
> +	struct krait_mux_clk *mux = to_krait_mux_clk(hw);
> +
> +	__krait_mux_set_sel(mux, mux->safe_sel);
> +}
> +
>   const struct clk_ops krait_mux_clk_ops = {
> +	.enable = krait_mux_enable,
> +	.disable = krait_mux_disable,
>   	.set_parent = krait_mux_set_parent,
>   	.get_parent = krait_mux_get_parent,
>   	.determine_rate = __clk_mux_determine_rate_closest,


-- 
With best wishes
Dmitry
