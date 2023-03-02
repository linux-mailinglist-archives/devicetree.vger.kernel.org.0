Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 815E26A86FD
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 17:40:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230009AbjCBQky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 11:40:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229935AbjCBQkl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 11:40:41 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D667815161
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 08:40:38 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id f18so58918lfa.3
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 08:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nte8mciSWK9PGJnSmONLh/qsDi2gUtT8Fsq0Nw7PJt0=;
        b=n8mCYfOolzeQIcsKRAPvTQGuSxe+pWJwOuG5SoO3idRp8K3AG3GIWZPd4vLFLFDepI
         JKI18SCrowvdB0O2lp+ZlMPMaDKDGMLrS1LeE7Fm/eBG+U+5V6mtjy9XnWyZ0Xt+UG01
         HvcB/37u6Icp4rEQ/ygVtyGx3dhCCsUL+3ohyLRkKbj+clxCcHnge6CXTx5rBr2u94C4
         nvF3LUvdjYgPgMsZkyFU/GKcKJ0FnjERqJ9T3pgbmKFeQZCqehGYhXrcA+st+UfehZIG
         QJQ2y6cUlL7QKUM78ExssiRgs86LusK+tKj4rlIhhBMtDK+bBIWQXAX4zaWwsRHtZ3K7
         I1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nte8mciSWK9PGJnSmONLh/qsDi2gUtT8Fsq0Nw7PJt0=;
        b=q59+8A7rAkEIvbLj/IvA5RnIOsGOM0UxtsbeoG1eXIRlqiaYtO2NE6V2Hjc4f0HB1G
         HVEmSykVVS1+RNDO9new/xGomS0bcxzFtXUvA8IB6HYq4acQ/kw6Dp4ix6aXkA/8+d4l
         /NQvmIM5osP52toz2qH4Ne89wKWiQCSNg35h8SYLxz38kKcQ5DGFG1wbq+uGlhMp6vQQ
         QCWRnolVybju5i7iBaPPwAapaOEsP1Iq8ZBZ+Vj4lyBR2d58BCM04i5RSOuUSqddBtl7
         FCZ9QtMQ5uIBUruWPeynjzGdrU6Fig4GljBRH0frMiIJR7F9IdX9rBZYghNPb/q70nio
         3uuQ==
X-Gm-Message-State: AO0yUKU5Gjq/WCBsv0DJKt6QiLG3MCT9JKwfZVmvD6PuN80uRgyfzcxa
        5iP++ve9R2eOcAmH4WNP63E80Q==
X-Google-Smtp-Source: AK7set+drVKOINN+znKqCAyISLLIQMoCmPUECbi3LjEUtLHHXRst41ojwkfBko9m0zPNOxITvFGqDQ==
X-Received: by 2002:a05:6512:21d2:b0:4dd:a9d7:52fa with SMTP id d18-20020a05651221d200b004dda9d752famr3136501lft.37.1677775237072;
        Thu, 02 Mar 2023 08:40:37 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id q20-20020ac24a74000000b004d5a6dcb94fsm2202758lfp.33.2023.03.02.08.40.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 08:40:36 -0800 (PST)
Message-ID: <b15e16c2-1389-cd26-19bb-8023e5bd96f5@linaro.org>
Date:   Thu, 2 Mar 2023 18:40:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] arm64: dts: qcom: msm8976: Add and provide xo clk to
 rpmcc
Content-Language: en-GB
To:     Adam Skladowski <a39.skl@gmail.com>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230302123051.12440-1-a39.skl@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230302123051.12440-1-a39.skl@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/03/2023 14:30, Adam Skladowski wrote:
> In order for consumers of RPMCC XO clock to probe successfully
> their parent needs to be feed with reference clock to obtain proper rate,
> add fixed xo-board clock and supply it to rpmcc to make consumers happy.
> Frequency setting is left per board basis just like on other recent trees.
> 
> Fixes: 0484d3ce0902 ("arm64: dts: qcom: Add DTS for MSM8976 and MSM8956 SoCs")
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/msm8976.dtsi | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8976.dtsi b/arch/arm64/boot/dts/qcom/msm8976.dtsi
> index 2d360d05aa5e..e55baafd9efd 100644
> --- a/arch/arm64/boot/dts/qcom/msm8976.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8976.dtsi
> @@ -20,6 +20,13 @@ / {
>   
>   	chosen { };
>   
> +	clocks {
> +		xo_board: xo-board {
> +			compatible = "fixed-clock";
> +			#clock-cells = <0>;

With the clock-frequency moved here:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +		};
> +	};
> +
>   	cpus {
>   		#address-cells = <1>;
>   		#size-cells = <0>;
> @@ -351,6 +358,8 @@ rpm_requests: rpm-requests {
>   
>   				rpmcc: clock-controller {
>   					compatible = "qcom,rpmcc-msm8976", "qcom,rpmcc";
> +					clocks = <&xo_board>;
> +					clock-names = "xo";
>   					#clock-cells = <1>;
>   				};
>   

-- 
With best wishes
Dmitry

