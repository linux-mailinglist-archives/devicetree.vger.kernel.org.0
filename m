Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AF036285C7
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 17:45:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237752AbiKNQp3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 11:45:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237871AbiKNQp2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 11:45:28 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 869A42F028
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 08:45:26 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id x21so13956811ljg.10
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 08:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y9dc45aT/JX/FTR0wgHvwdtMlLaHpziOS1SHGLUZmJo=;
        b=RsAuOQaCs1ObI5owjuNOo6L6z9OgvX+6gWIi7MrN0PtqC6XS0mYLk6jf+i7vRPaSVB
         WrKmgFF39r7PbiwVZrxykzO4DmP4m7JWdogkMC7cJO1wy4WhvVNseFVRL26o4YCKWWir
         iJimBjkv4CObcYKaRwzkj/ciCIs8lYeJ1GYwz/VnnGbC6+igomma3XFhHd9vuIimbR14
         YtGnc4GW4NvFOvrwSR8JE+BO3KPjhbalvLQGRKTWDASynwP6pL7lhRYCbEEwwbxnQmXb
         NY0BuNHIXevHkjUbGPZ0fnfWo3MtMboTwHdTqKxOucHRhDo7cuQiNkTC19JM+yYJjcYk
         wCig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9dc45aT/JX/FTR0wgHvwdtMlLaHpziOS1SHGLUZmJo=;
        b=1Tisk/Qf89hsPXZYN1jwYInrl76LMWUroLWsZr262bgwCckMy7IqWEwn/nxx1QOprU
         HKf8HxT3zg68kag+ezCe3ExKQz4bfGtMcEltw15zgt6lqo/odvKVV54oGscjHVN170UC
         xzrnqvfRzF4rpUagAtI+n4FaF4ce+VtNBZNkwz3r7ATOlYN5HHur76Zb162INZHgC7J5
         VSyaTz2vRPX/V0BWn/5m96tbYjRkrhpeNCoQfEykl4nEIhkq8/E783c1DPA9+5mBPUFx
         UZMF2GtWoSJkFtHh94+iyO5JqC5Ko/Ipu+UHO7D7fBxdjsJaxN72HwkUy/iOG9TFsk5Y
         MOqg==
X-Gm-Message-State: ANoB5pkvskQNdxCXeXOk3cT02wmHhjwpjcWcjCnVxExmbxhAE+d3gxmM
        ypOj/7NKWjMHcIjXvgaMOMAzDA==
X-Google-Smtp-Source: AA0mqf5oWsRFwI4o8EBhGbnJXOfSWE3mB6JPvEc2qERcM73WyXLi5uBVbcg+Z1b5VccvhXZ/XqHVIg==
X-Received: by 2002:a2e:940f:0:b0:277:2f7f:a14c with SMTP id i15-20020a2e940f000000b002772f7fa14cmr4209836ljh.96.1668444324898;
        Mon, 14 Nov 2022 08:45:24 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s8-20020a05651c200800b00277522fc29bsm2086012ljo.3.2022.11.14.08.45.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 08:45:24 -0800 (PST)
Message-ID: <ea17f523-a21f-6af8-7aec-db0a5825f6b2@linaro.org>
Date:   Mon, 14 Nov 2022 17:45:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v15 8/8] arm64: dts: qcom: sm8250: Add tpdm mm/prng
Content-Language: en-US
To:     Mao Jinlong <quic_jinlmao@quicinc.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Konrad Dybcio <konradybcio@gmail.com>,
        Mike Leach <mike.leach@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Leo Yan <leo.yan@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Tao Zhang <quic_taozha@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Hao Zhang <quic_hazha@quicinc.com>,
        linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20221114144027.14365-1-quic_jinlmao@quicinc.com>
 <20221114144027.14365-9-quic_jinlmao@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221114144027.14365-9-quic_jinlmao@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/11/2022 15:40, Mao Jinlong wrote:
> Add tpdm mm and tpdm prng for sm8250.
> 
> +---------------+                +-------------+
> |  tpdm@6c08000 |                |tpdm@684C000 |
> +-------|-------+                +------|------+
>         |                               |
> +-------|-------+                       |
> | funnel@6c0b000|                       |
> +-------|-------+                       |
>         |                               |
> +-------|-------+                       |
> |funnel@6c2d000 |                       |
> +-------|-------+                       |
>         |                               |
>         |    +---------------+          |
>         +----- tpda@6004000  -----------+
>              +-------|-------+
>                      |
>              +-------|-------+
>              |funnel@6005000 |
>              +---------------+
> 
> Signed-off-by: Mao Jinlong <quic_jinlmao@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 173 +++++++++++++++++++++++++++
>  1 file changed, 173 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 80193bb3c478..0914b4b9c862 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2746,6 +2746,76 @@
>  			};
>  		};
>  
> +		tpda@6004000 {
> +			compatible = "arm,primecell";

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

I don't think your bindings allow this to be alone...

Beside, your patch does not apply. Is it based on Bjorn's tree?

> +			reg = <0 0x06004000 0 0x1000>;
> +			reg-names = "tpda-base";
> +
> +			clocks = <&aoss_qmp>;
> +			clock-names = "apb_pclk";
> +
> +			out-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					tpda_out_funnel_qatb: endpoint {
> +						remote-endpoint = <&funnel_qatb_in_tpda>;
> +					};
> +				};
> +			};
> +
> +			in-ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@9 {
> +					reg = <9>;
> +					tpda_9_in_tpdm_mm: endpoint {
> +						remote-endpoint = <&tpdm_mm_out_tpda9>;
> +					};
> +				};
> +
> +				port@17 {
> +					reg = <23>;
> +					tpda_23_in_tpdm_prng: endpoint {
> +						remote-endpoint = <&tpdm_prng_out_tpda_23>;
> +					};
> +				};
> +			};
> +		};
> +
> +		funnel@6005000 {
> +			compatible = "arm,primecell";

Same problem, I guess.


Best regards,
Krzysztof

