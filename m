Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1313773E547
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 18:37:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbjFZQhc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 12:37:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjFZQhb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 12:37:31 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0083883
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 09:37:29 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b6a1fe5845so17913721fa.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 09:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687797448; x=1690389448;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2S+hgq49/8PMX2Sw/UBHkH7erVlWQird49ywR0DgC6c=;
        b=iQ2dtnRGO6sLFagFN121tgVoN6ddSFa0Dope7pddodC6ZlBIAZ1HG22rBPMMEjSbOm
         +FyoS3AR5dUbury98Hsx6aYVcVJOmwjKjiuKmWZ2GuOV5ZQX5wyMhtzfdXr5KXy+/Juz
         eWOYy1WKOF2f5P+OqZhRsHsdKX8b3Skvly7aHAw6XURFfdBRFu4zmj3D7gsdu9cFKX8B
         3Rz7jPuDvOz+d+Ldua7x1pXu1wyd0KfSeQg5W8E3Xn1ggAOxy679U8yckLgTeWsxRyE1
         6sPuBBONv5mIHuFkFgGWWWYO5YV8s8/negKxD6L4GUXlz6VrMEB7cfEavtlWxrU0Ue1X
         C6gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687797448; x=1690389448;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2S+hgq49/8PMX2Sw/UBHkH7erVlWQird49ywR0DgC6c=;
        b=LV5v3epnIRIGHD/ihdqLr28E23l9s0MFw7R0GsQ8+vlL+aZC0hCGK+XqNtQ69LYQah
         mv+29ms4gGPH3pSO569kDzS6DqqYAvoL3Kf5o7fuRZyzgkk0+UZgI3WTybdwRk3HKR1d
         U1JCTpnmiIkQoDRwMXDxh/741abJsOuJqqAu903yzHhM7kySSpDqrOcQiZpBlhoek03X
         n6a9n4E031c73KBLwUBNRQCh2tsKO3lm9VzA0QaMGPBoZ/TZlYhK4LTSTBMULDZsU+eu
         DvnUFjeCZq6ZgYeVg57RmgRK3Qt5up/u16S9sbNuPmSApPrQmA5YQ9sywaW4E9GBuQvT
         e0Uw==
X-Gm-Message-State: AC+VfDxcmZgV5p6QlLuDbr8G5Y2/uigTlJ431FYkyNd+X7JFmQoh6LbW
        vX1Ab4KqcoN62llvRxGy6xFqew==
X-Google-Smtp-Source: ACHHUZ7C+GL0ranNAERCN38ZVhW8Vq/IFa+uUnBjkLu55WYsM8tGdVHsOLP9P7uZAR+EGiaH52FJDg==
X-Received: by 2002:a2e:8747:0:b0:2b5:8eae:7848 with SMTP id q7-20020a2e8747000000b002b58eae7848mr8242640ljj.44.1687797448138;
        Mon, 26 Jun 2023 09:37:28 -0700 (PDT)
Received: from [192.168.1.101] (abyk179.neoplus.adsl.tpnet.pl. [83.9.30.179])
        by smtp.gmail.com with ESMTPSA id x12-20020a2e9dcc000000b002b0488ef239sm1313392ljj.93.2023.06.26.09.37.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 09:37:27 -0700 (PDT)
Message-ID: <9d49ecb6-1efd-0f19-c787-9baca79846fe@linaro.org>
Date:   Mon, 26 Jun 2023 18:37:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 16/26] ARM: dts: qcom: apq8064: add L2 cache scaling
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
References: <20230625202547.174647-1-dmitry.baryshkov@linaro.org>
 <20230625202547.174647-17-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230625202547.174647-17-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25.06.2023 22:25, Dmitry Baryshkov wrote:
> Populate L2 cache node with clock, supplies and OPP information to
> facilitate scaling L2 frequency.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Are the L2 voltage ranges independent of speedbin?

Konrad
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 101 ++++++++++++++++++++++-
>  1 file changed, 100 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> index 1eb6d752ebae..ac07170c702f 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -81,9 +81,108 @@ CPU3: cpu@3 {
>  		};
>  
>  		L2: l2-cache {
> -			compatible = "cache";
> +			compatible = "qcom,krait-l2-cache", "cache";
>  			cache-level = <2>;
>  			cache-unified;
> +			vdd-mem-supply = <&pm8921_l24>;
> +			vdd-dig-supply = <&pm8921_s3>;
> +			clocks = <&kraitcc KRAIT_L2>;
> +			#interconnect-cells = <1>;
> +			operating-points-v2 = <&l2_opp_table>;
> +
> +			l2_opp_table: opp-table-l2 {
> +				compatible = "operating-points-v2";
> +
> +				opp-384000000 {
> +					opp-hz = /bits/ 64 <384000000>;
> +					opp-microvolt = <1050000 1050000 1150000>,
> +							<950000 950000 1150000>;
> +				};
> +
> +				opp-432000000 {
> +					opp-hz = /bits/ 64 <432000000>;
> +					opp-microvolt = <1050000 1050000 1150000>,
> +							<1050000 1050000 1150000>;
> +				};
> +
> +				opp-486000000 {
> +					opp-hz = /bits/ 64 <486000000>;
> +					opp-microvolt = <1050000 1050000 1150000>,
> +							<1050000 1050000 1150000>;
> +				};
> +
> +				opp-540000000 {
> +					opp-hz = /bits/ 64 <540000000>;
> +					opp-microvolt = <1050000 1050000 1150000>,
> +							<1050000 1050000 1150000>;
> +				};
> +
> +				opp-594000000 {
> +					opp-hz = /bits/ 64 <594000000>;
> +					opp-microvolt = <1050000 1050000 1150000>,
> +							<1050000 1050000 1150000>;
> +				};
> +
> +				opp-648000000 {
> +					opp-hz = /bits/ 64 <648000000>;
> +					opp-microvolt = <1050000 1050000 1150000>,
> +							<1050000 1050000 1150000>;
> +				};
> +
> +				opp-702000000 {
> +					opp-hz = /bits/ 64 <702000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-756000000 {
> +					opp-hz = /bits/ 64 <756000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-810000000 {
> +					opp-hz = /bits/ 64 <810000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-864000000 {
> +					opp-hz = /bits/ 64 <864000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-918000000 {
> +					opp-hz = /bits/ 64 <918000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-972000000 {
> +					opp-hz = /bits/ 64 <972000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-1026000000 {
> +					opp-hz = /bits/ 64 <1026000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-1080000000 {
> +					opp-hz = /bits/ 64 <1080000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +
> +				opp-1134000000 {
> +					opp-hz = /bits/ 64 <1134000000>;
> +					opp-microvolt = <1150000 1150000 1150000>,
> +							<1150000 1150000 1150000>;
> +				};
> +			};
>  		};
>  
>  		idle-states {
