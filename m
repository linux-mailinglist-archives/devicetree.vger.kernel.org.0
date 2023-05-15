Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 287D0702BD8
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 13:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241439AbjEOLx4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 07:53:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241326AbjEOLxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 07:53:30 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2287F558A
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 04:41:02 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f139de8cefso64683349e87.0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 04:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684150860; x=1686742860;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mfl3EsimtWONnHrSgudubPW0vWnp/rlekvieGjohodc=;
        b=DVjy5Y28IoNdb7W9uxatzcGQFek3rJO5sQqXG+IyV9PmxuPaOYV2rDPbQjiv+3xvBO
         LCrYWPhdhg1x8XjtTXxjv0CBQuKw+kImFYBZdgW/mGCJxYeUy3Q1L2FpKUfxvxNyj6KZ
         OuXx9cWCjBvjQRPxyny6APe6oZ4QQxPV0I19CSGDkg/b0irRQW3tFmtgVKQ82IRrNZZg
         pBlIdMR0k2wDY5fmaEQ+81+Jg1DbvxlXe0v48UrQU80hg8qfojsA85xgjAdB4sp6J6Xv
         Gsn1NJnTHadeT/y2jnkQWghZFg5tpqqmB3oTIQT9Y3AiTN30m9xUPNQGh7Vk2vXMYWsY
         7skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684150860; x=1686742860;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mfl3EsimtWONnHrSgudubPW0vWnp/rlekvieGjohodc=;
        b=SXv1YG+2LfAfgXkOtoHdxA53DgroH5HILX34TjpzlbN/dKQR8JXgEYeRB22Y/3MXkM
         iDgEKtisgdj0H28TVkUqNBxXm9f0bvmm9LmSUnb0v7jnxC6jcjo39tfP7EVBlM7MYtCT
         Ag5Lj+CBZZTp6lVnYRxsqjuhA9/LAbi9/oHsZvInmq2na3236b5eMOGBb7nquyXhPix7
         KupjE+xQHgGKSIzIa8DNgwgfCoNrQt8B3bxVGhyGjIj44ziSa/S0M1Wvd6mDd9Fef1jM
         WGHgfxtBvPY9RN3h0Xs1GSBN8iHAGwfg8+pP8f/xOoSAqNZjo53fj5CT9aM1GoM8Me7+
         E4SQ==
X-Gm-Message-State: AC+VfDzAcmpAbMocfn0vTR8FE0wRiZeRI79Wcv31mFVF2ksPUnnlitaz
        m49p3d7O2aOgvMBqKaILOL++Ig==
X-Google-Smtp-Source: ACHHUZ48P9pfy7XrwSlIgqNNvgYYov+NHIgGCc58pIfCZmW0CShVkmUg0Wu9Nv9kzjfOih0BJLIafw==
X-Received: by 2002:ac2:44b8:0:b0:4e8:487a:7c2e with SMTP id c24-20020ac244b8000000b004e8487a7c2emr7358625lfm.14.1684150860343;
        Mon, 15 May 2023 04:41:00 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id p14-20020a05651211ee00b004e84d64ab51sm2560194lfs.58.2023.05.15.04.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 04:41:00 -0700 (PDT)
Message-ID: <ec2c87e3-7962-ea64-daf0-fad9c4599b35@linaro.org>
Date:   Mon, 15 May 2023 13:40:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 08/10] clk: qcom: gcc-mdm9615: drop the cxo clock
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20230512211727.3445575-1-dmitry.baryshkov@linaro.org>
 <20230512211727.3445575-9-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230512211727.3445575-9-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.05.2023 23:17, Dmitry Baryshkov wrote:
> The gcc and lcc devices have been switched to the DT-defined cxo_board
> clock. Now we can drop the manually defined cxo clock.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/clk/qcom/gcc-mdm9615.c | 17 -----------------
>  1 file changed, 17 deletions(-)
> 
> diff --git a/drivers/clk/qcom/gcc-mdm9615.c b/drivers/clk/qcom/gcc-mdm9615.c
> index 458c18b639db..64d4f508e43a 100644
> --- a/drivers/clk/qcom/gcc-mdm9615.c
> +++ b/drivers/clk/qcom/gcc-mdm9615.c
> @@ -26,17 +26,6 @@
>  #include "clk-branch.h"
>  #include "reset.h"
>  
> -static struct clk_fixed_factor cxo = {
> -	.mult = 1,
> -	.div = 1,
> -	.hw.init = &(struct clk_init_data){
> -		.name = "cxo",
> -		.parent_names = (const char *[]){ "cxo_board" },
> -		.num_parents = 1,
> -		.ops = &clk_fixed_factor_ops,
> -	},
> -};
> -
>  enum {
>  	DT_CXO,
>  	DT_PLL4,
> @@ -1623,10 +1612,6 @@ static struct clk_branch ebi2_aon_clk = {
>  	},
>  };
>  
> -static struct clk_hw *gcc_mdm9615_hws[] = {
> -	&cxo.hw,
> -};
> -
>  static struct clk_regmap *gcc_mdm9615_clks[] = {
>  	[PLL0] = &pll0.clkr,
>  	[PLL0_VOTE] = &pll0_vote,
> @@ -1736,8 +1721,6 @@ static const struct qcom_cc_desc gcc_mdm9615_desc = {
>  	.num_clks = ARRAY_SIZE(gcc_mdm9615_clks),
>  	.resets = gcc_mdm9615_resets,
>  	.num_resets = ARRAY_SIZE(gcc_mdm9615_resets),
> -	.clk_hws = gcc_mdm9615_hws,
> -	.num_clk_hws = ARRAY_SIZE(gcc_mdm9615_hws),
>  };
>  
>  static const struct of_device_id gcc_mdm9615_match_table[] = {
