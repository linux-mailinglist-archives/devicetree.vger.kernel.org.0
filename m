Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 313DB6B7C4D
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 16:45:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230033AbjCMPp3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 11:45:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjCMPp2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 11:45:28 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7567234EE
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 08:45:26 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id a32so13088118ljq.1
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 08:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678722325;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X/tx4J6LJimmOalWj5bK2cKRpn0NIEM6z3rrObStaYA=;
        b=Ya6YjiCHxnUQfVRSZBJJBiXWXj/k+vMAMip290SDX1t1E+Mpq2ahwSuTyxkXsvdJUU
         P37COhxgFaDM1j+SaRPssUYIUGKSyIL1aWTdSO7fyEMpRbE57rk2QMiuMC1BZMd1u3BQ
         W55H46dz8MAYQDDQeSaJ0igdH6NjPrHIOAu6ZRt9MiWKnARGPPZ9jrci0vI1NN6Jzapo
         Tzyt1/G/qlkZN5p24YYHI5n77ug5G3uNwIw8c9wTtgL5PZA5VEEf5F3MRKqVIosmpLWj
         nQFaQdedqLdgJThvop0rlTh2Qo3zf/CsIuzs1zpwn2197HgsD/AmLRtScJqvC2WRiVWB
         pHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678722325;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X/tx4J6LJimmOalWj5bK2cKRpn0NIEM6z3rrObStaYA=;
        b=XXH0AggPxWowq3xfyAHQ/YFfmcxkomtU+9jw8VUlYN3yYELGBZglixXZPbkC4DRz6i
         ggqf7dFXVxcejxEq53y0idPCWIzJGbL3X1OdNKWvumArFepb5l3jOsWjXdRERK1Mawo8
         h+b7b89Pu6JHdLxMuwql8Si3i2tSEAfZx/eoeR7D+94LLJF4hXlvt2tT2/WRDJqNg+Z0
         /zRUMWMm3cGayEE7ufwAAA3idW/CY5AsY3zdCtuMAtDGDPSMjRCL1CEFUXlQtpJ18TkS
         KiZsGEl/VZE+7dXAXknPZGrz9Z7g8+VgjdYSYbIL3Kq5iX3MT9FVTLlJjx+k0HALKcsM
         F4zQ==
X-Gm-Message-State: AO0yUKW99k35QuxzTAB0YiOG51a8tf9e6TXunS8JLc/JGiYU7qxvrj4t
        vui9w5ao3CSXNxVSkmNgmFWnPA==
X-Google-Smtp-Source: AK7set99IMiMkFYO61NIAvCQKMsK1kLV8VnRO2EYGJDE55ut0yKSLyZJp7D/M6exdw1vpZfmhZVAnA==
X-Received: by 2002:a2e:b94a:0:b0:293:1565:4353 with SMTP id 10-20020a2eb94a000000b0029315654353mr10480143ljs.10.1678722325079;
        Mon, 13 Mar 2023 08:45:25 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id v19-20020a2e87d3000000b002959b1162f0sm35426ljj.96.2023.03.13.08.45.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 08:45:24 -0700 (PDT)
Message-ID: <9305de1e-1ee7-af9f-80b8-ee013108b131@linaro.org>
Date:   Mon, 13 Mar 2023 16:45:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm845-xiaomi-beryllium: add
 notification LED
Content-Language: en-US
To:     Joel Selvaraj <joelselvaraj.oss@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230313154226.136726-1-joelselvaraj.oss@gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230313154226.136726-1-joelselvaraj.oss@gmail.com>
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



On 13.03.2023 16:42, Joel Selvaraj wrote:
> The Poco F1 has a single color white notification LED. Enable the
> Qualcomm Light Pulse Generator (LPG) driver based notification LED.
> 
> Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> Changes in v2: (No functional changes)
> - Fixed the inconsistency in the commit title prefix
> - Minor update to commit message.
> 
>  .../boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index e0fda4d754fe..9d11502e5e0e 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -2,6 +2,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/leds/common.h>
>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include <dt-bindings/sound/qcom,q6afe.h>
> @@ -322,6 +323,16 @@ vol_up_pin_a: vol-up-active-state {
>  	};
>  };
>  
> +&pmi8998_lpg {
> +	status = "okay";
> +
> +	led@5 {
> +		reg = <5>;
> +		color = <LED_COLOR_ID_WHITE>;
> +		function = LED_FUNCTION_STATUS;
> +	};
> +};
> +
>  &pmi8998_wled {
>  	status = "okay";
>  	qcom,current-boost-limit = <970>;
