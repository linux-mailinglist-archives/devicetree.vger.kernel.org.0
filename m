Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93ECF514EC5
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 17:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378112AbiD2POs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 11:14:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359559AbiD2POo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 11:14:44 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D1DFD4471
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 08:11:24 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id t25so14595846lfg.7
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 08:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=TvFsyI7NAksekaViwUx4f2psKYTKDusGU6diNyW4wEY=;
        b=T8o72y8HKqohLMREw3MtTyqotxs7B5HFBhFLyKmIfaTKxZBXu3ZutL0Azktumql+b5
         4pG5NpDWFKiFDQ/LQrOkkRzRjQQEH7WrNV9Dzvqi5uslhe85raPC2PNEwxQWMwSdKLaO
         rBXloVU9g6kkznIBzursT9frKbk8tXM5outfJOSwUdjcjyU7M8MASSYi9udAUWb2JnPX
         8IE8WLsna9DNKNt0MrnaCBVVhsJNp2FlRs5DL8COBeTLr1jHddjAbDoMk9VbGWWKCsgh
         svs8h7vojmZkbRP3cIw0c0Bhg5cYnssId94RwzAcqvNZrt0+nvYzwI9pvAZgpEl/JqWU
         7diw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TvFsyI7NAksekaViwUx4f2psKYTKDusGU6diNyW4wEY=;
        b=GntyNCNHYcpPIwUUR21cBpoAkj9xExyQ7FiLQX3SOwezRsE7MJY2j2JElXjIu9bw6z
         Xuh1g5mh0iTo7WaBrofFN6/KOOmUM2Q76T2eMUQNNXtzjjhSPs/nzx6Zq6OVaxjGo0Yr
         OH5L4dy3lnDpEey2QKy4BwW5VVhI7omDIuTOYzoqvlJBOHyBfLMjBivpuqAZanoNcTBJ
         cQko9jIeCvdcXZhQi5opSI93coX0Bi5rD/zjx7pOZKINPOI6IwmlShZOuM0gkDtf0s0u
         nFsx8ftfTxeZkPvfHDH+wQpZzwVcTKq7p+EFjzXQPT2E0/U1nR8AKcGFxnMkh4RgCE8O
         O8HQ==
X-Gm-Message-State: AOAM533Th/+l/UD+NEsBNCo1ODswN+is5ykFACTuOHofLIpB7pBYyF0E
        UjOzzXpPxHHXXcVxLsbeSMHk+A==
X-Google-Smtp-Source: ABdhPJxRjwQAnlbxeqaHOGvshYhAXFOvclIamfeS7o45Me22vXNEXn5PNl4tpW2ISRMWPCvf3MslZQ==
X-Received: by 2002:ac2:4c53:0:b0:471:a9db:5d15 with SMTP id o19-20020ac24c53000000b00471a9db5d15mr28179347lfk.634.1651245083092;
        Fri, 29 Apr 2022 08:11:23 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id l6-20020a2e9086000000b0024f3d1daf04sm286705ljg.140.2022.04.29.08.11.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 08:11:22 -0700 (PDT)
Message-ID: <f260cf81-9db9-710b-1242-45a232e7c7c4@linaro.org>
Date:   Fri, 29 Apr 2022 18:11:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] ARM: dts: qcom: replace gcc PXO with pxo_board fixed
 clock
Content-Language: en-GB
To:     Ansuel Smith <ansuelsmth@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220429122951.13828-1-ansuelsmth@gmail.com>
 <20220429122951.13828-3-ansuelsmth@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220429122951.13828-3-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/04/2022 15:29, Ansuel Smith wrote:
> Replace gcc PXO phandle to pxo_board fixed clock declared in the dts.
> gcc driver doesn't provide PXO_SRC as it's a fixed-clock. This cause a
> kernel panic if any driver actually try to use it.
> 
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>

Fixes: 40cf5c884a96 ("ARM: dts: qcom: add L2CC and RPM for IPQ8064")

It would be nice if you add Fixes tags to your patches in future. Fixes 
tags allow picking up patches for stable/LTS trees.

For these two patches I'd suggest reordering them. A fix should go first 
(you'll have to define pxa_board label in it). It can then be accepted 
into other kernel without dependency on the other patch.

The gcc patch will come next, it will define cxo_board label and use 
both clocks in the gcc node. It is not fixing a bug, so there is no need 
about backporting it.

Generic rule: fixes go first (in the patch series), so that they have 
minimum inter-dependencies.

> ---
>   arch/arm/boot/dts/qcom-ipq8064.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom-ipq8064.dtsi
> index 9817448cfa95..ad30f7c8a5a7 100644
> --- a/arch/arm/boot/dts/qcom-ipq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-ipq8064.dtsi
> @@ -784,7 +784,7 @@ tcsr: syscon@1a400000 {
>   		l2cc: clock-controller@2011000 {
>   			compatible = "qcom,kpss-gcc", "syscon";
>   			reg = <0x2011000 0x1000>;
> -			clocks = <&gcc PLL8_VOTE>, <&gcc PXO_SRC>;
> +			clocks = <&gcc PLL8_VOTE>, <&pxo_board>;
>   			clock-names = "pll8_vote", "pxo";
>   			clock-output-names = "acpu_l2_aux";
>   		};


-- 
With best wishes
Dmitry
