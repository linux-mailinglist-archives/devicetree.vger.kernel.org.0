Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EBA65F1B11
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 11:15:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbiJAJPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 05:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbiJAJPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 05:15:13 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0FDBD075
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 02:15:10 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id u26so1564402lfk.8
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 02:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=hwwcj6BaFuVQz7qA2py8bjOyBJyZuebu5GhWDMiNRtY=;
        b=Z5KxcmvLJIHEJVDthoBBAVwK4AmIioam04mFM/Mu3+TAqBGQb88/uWFi7B7R4wgtsx
         Rbkbwzb79L4f7C8u/W3H0Of/7DxhSBHXkfHr8EejhmmDqlJwUW5En1pTFK3hOOLS6uC2
         dSkBT2n8hPyr2/EYwOBIifW5WzkVlfwjionXDfh+Kc7CtHb+gIVlqU0beNJY3Ta+dvSo
         q3eWJpwidmeMT0asmi2Hjfc6Fh2W9DMb0B6GzcXRgm7Ye+c3QbwIMdwlO2IPvDQ56lgu
         sc+roJW9zGn+z5ulsJ9jSaIQwYom8MlraDh5u9vjrPhnOiZ9pCnJ+b2S0sGBFbNyLPVE
         Zxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=hwwcj6BaFuVQz7qA2py8bjOyBJyZuebu5GhWDMiNRtY=;
        b=N3wW5R0evUl/ywOWexmBYg1W1s3PC6gc0V1plw22DQBMjW2W0a7pIWY2dbUF7v6FVF
         EC2W5EY8ko8XelfyJUdmKuk0iCFIvXDaPqQg4vcihaUvuwdi0L87hOfLz0Ahl5pkHu05
         R0IoqM15NjNuZp8NBrwlgz8EaMNw5Bp7GHkjP2IgoDujGyqaBoq9N7MJZgkyk0rmUKZQ
         F7k/H0vDi49KhDUv5gUQz97u/kQdJENsC5bQvqyIg0OOsGps68+ZEzYTriUNkl2iq3QZ
         /kMbHqJp0l7+BTOylPfTzsHCfMWHnQfTsSi7voLQfSVUzFWdQ9dLLv6Wk7+C161MkOxy
         3Y+A==
X-Gm-Message-State: ACrzQf3ql7zIL9AGjku5sjsZTOqIcDG4YCyOjKZTKn5Yawyzu4xc9pJ5
        EfwGoOITp53lgMiUe1YV0qf8/A==
X-Google-Smtp-Source: AMsMyM5NCGESFYSmECJsYGxXS6LePqJwiPfiT+hYUMDYvv9uZOYS4/O9lb5VJdWLrIpEb3j6Ov+s1A==
X-Received: by 2002:a05:6512:1515:b0:4a1:fb01:1cf4 with SMTP id bq21-20020a056512151500b004a1fb011cf4mr4858370lfb.536.1664615709149;
        Sat, 01 Oct 2022 02:15:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x24-20020a05651c105800b0026c3975f488sm379434ljm.26.2022.10.01.02.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Oct 2022 02:15:08 -0700 (PDT)
Message-ID: <79975718-ab91-f781-d46c-ac274e97a668@linaro.org>
Date:   Sat, 1 Oct 2022 11:15:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 07/19] arm64: dts: qcom: qdu1000-idp: Add RPMH regulators
 nodes
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221001030656.29365-1-quic_molvera@quicinc.com>
 <20221001030656.29365-8-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221001030656.29365-8-quic_molvera@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2022 05:06, Melody Olvera wrote:
> Add RPMH regulators for the QDU1000 IDP platform.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qdu1000-idp.dts | 200 +++++++++++++++++++++++
>  1 file changed, 200 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> index 0ecf9a7c41ec..654b50220c2e 100644
> --- a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> @@ -5,6 +5,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "qdu1000.dtsi"
>  
>  / {
> @@ -19,6 +20,205 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	ppvar_sys: ppvar-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "ppvar_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vph_pwr: vph-pwr-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +
> +		vin-supply = <&ppvar_sys>;
> +	};
> +};
> +
> +&apps_rsc {
> +	pm8150-rpmh-regulators {

regulators

> +		compatible = "qcom,pm8150-rpmh-regulators";
> +		qcom,pmic-id = "a";
> +

Best regards,
Krzysztof

