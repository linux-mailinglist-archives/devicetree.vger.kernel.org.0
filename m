Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C69A7669C09
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 16:27:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbjAMP1l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 10:27:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbjAMP1B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 10:27:01 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8578381C2A
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 07:20:10 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id q2so22791444ljp.6
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 07:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SSgTXFHyKy3EKW5amzFNddURi7wwL3JPtHEB4W2PJIQ=;
        b=E+Ko3HoaAn/SbNq2+BoHjVxHOcFXzxcMw5eAnMS7INVdgfQwkd47z0/mJOV5XoH498
         scTjG3apXZotcgyYBbdTB1cUhowgMekHOy1hfNWvlASySy0yRd7gG4cWcB5FR7gy/508
         BxaNCdVHU/hZlmXCX11/vmpk7b3qlV3Mom9au2tVJ36szclEsWxoaKG1SrKU1+5r6TmC
         phFiurVXNenluvCVRtvFrmBL5DAxUUj/0PoGhJp1toeZdMGZkQujloCxNS+e1QNClM3X
         HsvM8DnHrtWSbIkFQrovljY1C8ndbwfkHRDo85zbuIaZCICMW2Dr1oAdkQ2yKx7O2mff
         64mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SSgTXFHyKy3EKW5amzFNddURi7wwL3JPtHEB4W2PJIQ=;
        b=UkaTGnsqX7hnRBWtoaf/VP0rEIJyjRva++r+6eZUaIwPl0kQg1N1+bgYnrmgfKQ8VY
         Op7lzy32BmJnuOG1/6f0Ac4/xG4ZE+PEohxeDaiiFoFcMXppJgHMvxwtHddQtXvLrMaf
         R3MIXvtev7ZaYv+s/6Z1Au7oORWHw/uN62my0yAcOymCMkQ6weHmZ2aqvafa/v/1TQjP
         uJg+3JR8p7XnuFU5aSkwv+26z2PQE7CWEu/5dVnu4cZ4nRZAkjS2BIfwsp3amjSYu7Bp
         JFmcYWhStICIZCjXgGt5xmR0lY8tXpsWqRx5z1OhQoQcXen8vdFk2rjnHau5z7yOhQjN
         MyFQ==
X-Gm-Message-State: AFqh2kplhGipDdF961xTPW2eW8NXe2C4gnXQWZPULv635EADHaW+w/DY
        OjlONc3OpS8aMXpq9AxaJXDlT4bBjJ9SwQfS
X-Google-Smtp-Source: AMrXdXtlAwax9wzqDnNUzguINen9TYLIV91ebf6KZx6f+zkSZhQ803ZvgPpY7xs8wCz4XL7zPvUNXw==
X-Received: by 2002:a2e:a48a:0:b0:281:e762:35aa with SMTP id h10-20020a2ea48a000000b00281e76235aamr62619lji.3.1673623208570;
        Fri, 13 Jan 2023 07:20:08 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id p6-20020a2ea406000000b00289cfd2088csm693673ljn.73.2023.01.13.07.20.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 07:20:08 -0800 (PST)
Message-ID: <b87ab80d-0936-5a5a-25da-35c0dbdede33@linaro.org>
Date:   Fri, 13 Jan 2023 16:20:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 6/6] clk: qcom: Fix APSS PLL and RCG Configuration
Content-Language: en-US
To:     devi priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, jassisinghbrar@gmail.com,
        catalin.marinas@arm.com, will@kernel.org, shawnguo@kernel.org,
        arnd@arndb.de, marcel.ziswiler@toradex.com,
        dmitry.baryshkov@linaro.org, nfraprado@collabora.com,
        broonie@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_poovendh@quicinc.com
References: <20230113143647.14961-1-quic_devipriy@quicinc.com>
 <20230113143647.14961-7-quic_devipriy@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230113143647.14961-7-quic_devipriy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13.01.2023 15:36, devi priya wrote:
> Included CLK_IS_CRITICAL flag which helps to properly enable
> the APSS PLL during bootup.
Please describe the issue and not only the user-visible impact it
makes. Does the PLL get shut down by clk_ignore_unused? Maybe you
would be interested in the sync_state changes that landed in recent
-next that may solve it for you?

I don't think it should be always-on, as you have an alternate source
for low power modes, adding CLK_IS_CRITICAL will keep the PLL enabled
even if you're not using it.

> clk_rcg2_ops should be used for APSS clock RCG, as other ops
> will not configure the RCG register
RCG register meaning RCG register*s*, meaning in this case M/N/D
which would be required for proper rate setting and not only input
switching (which arguably doesn't seem to be of much concern on a
single-parent clock)? This all is not obvious..

Konrad
> 
> Co-developed-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: devi priya <quic_devipriy@quicinc.com>
> ---
>  drivers/clk/qcom/apss-ipq-pll.c | 1 +
>  drivers/clk/qcom/apss-ipq6018.c | 8 +++++++-
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/apss-ipq-pll.c b/drivers/clk/qcom/apss-ipq-pll.c
> index dd0c01bf5a98..75486a124fcd 100644
> --- a/drivers/clk/qcom/apss-ipq-pll.c
> +++ b/drivers/clk/qcom/apss-ipq-pll.c
> @@ -33,6 +33,7 @@ static struct clk_alpha_pll ipq_pll = {
>  			},
>  			.num_parents = 1,
>  			.ops = &clk_alpha_pll_huayra_ops,
> +			.flags = CLK_IS_CRITICAL,
>  		},
>  	},
>  };
> diff --git a/drivers/clk/qcom/apss-ipq6018.c b/drivers/clk/qcom/apss-ipq6018.c
> index f2f502e2d5a4..0d0e7196a4dc 100644
> --- a/drivers/clk/qcom/apss-ipq6018.c
> +++ b/drivers/clk/qcom/apss-ipq6018.c
> @@ -33,15 +33,21 @@ static const struct parent_map parents_apcs_alias0_clk_src_map[] = {
>  	{ P_APSS_PLL_EARLY, 5 },
>  };
>  
> +static const struct freq_tbl ftbl_apcs_alias0_clk_src[] = {
> +	{ .src = P_APSS_PLL_EARLY, .pre_div = 1 },
> +	{ }
> +};
> +
>  static struct clk_rcg2 apcs_alias0_clk_src = {
>  	.cmd_rcgr = 0x0050,
> +	.freq_tbl = ftbl_apcs_alias0_clk_src,
>  	.hid_width = 5,
>  	.parent_map = parents_apcs_alias0_clk_src_map,
>  	.clkr.hw.init = &(struct clk_init_data){
>  		.name = "apcs_alias0_clk_src",
>  		.parent_data = parents_apcs_alias0_clk_src,
>  		.num_parents = ARRAY_SIZE(parents_apcs_alias0_clk_src),
> -		.ops = &clk_rcg2_mux_closest_ops,
> +		.ops = &clk_rcg2_ops,
>  		.flags = CLK_SET_RATE_PARENT,
>  	},
>  };
