Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 102816AA945
	for <lists+devicetree@lfdr.de>; Sat,  4 Mar 2023 12:15:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbjCDLPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Mar 2023 06:15:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbjCDLPo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Mar 2023 06:15:44 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 325ED1C5A0
        for <devicetree@vger.kernel.org>; Sat,  4 Mar 2023 03:15:42 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id da10so20141788edb.3
        for <devicetree@vger.kernel.org>; Sat, 04 Mar 2023 03:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677928540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ftk4PV2UVoiZ3+JPdTCAz4kPzDVIhLMOG9HeEl28Ozs=;
        b=vCHiWYscL9Kbfe0TAVo7UWRE8jVnjWvNU5XWSmAOdwXPwkTPh/2G2WO9Ax/EG753V/
         qfgLTp+FDuLjPUQhylZqyx1njWAtFwD94byKnj9eBsDX0J3Tx74pf+OpEZ/S5pAF+0YU
         KXOFha4Ilb/hwMEtKQbNQwJy2hPJIF8wZ+Cn0itd02eLGhIInbfuEFJ3DHx8kfHLmpiL
         VY/ndXwVLEa7EIW0ti0J+cst7EeghQc4gSzYLHkIgIgkLaoRkF5EGwsqXfQzc+DzYiH5
         CPWNg7ujEbay5ZqbNrW+3B4nwOS1III99ZEMhPpB4EAwxr4fCby5dhJU4XVj3iK2U+cy
         wD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677928540;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ftk4PV2UVoiZ3+JPdTCAz4kPzDVIhLMOG9HeEl28Ozs=;
        b=1nsuRNxpRt4ezNmtt4Q3nmXy8lWBD9tb7+vSKVF858zxkM7zvn07J4YqVIBhEZpCcL
         70q9gRZf+6aFE80YVm3SLMS/PwWRxuyjdIP5NW6w2/FDAFCqEiLjBfAJGpoR3ScYvN0c
         uJrCo8TD8CyKbqPkFI0i80Yyj8LxWLGQvOfMveCqg+wDlbd+5aBgo3L4v4tS6Valoy7Y
         YzR01Se0+fCtwYPAaw+rBiyYwoPMlPYx53LifAPYTNgrK+HSbak0+LM+uFMRiUz4C2EC
         +ug4Dln3iLrsEFxpO34IgCEUN2rzYbuazsH7oexVaP+9Vm/PnizH1nMy3+F0Eqh7Gtlj
         MTGg==
X-Gm-Message-State: AO0yUKXbyVpTw9ewjWPQ4LazfnXoxsya6oTPk093t3ObsMbiymeXrJc5
        yY7GzDCOmfToXcGgXQQNwS72Vg==
X-Google-Smtp-Source: AK7set/KGQOOy6z0wzqUoxZNRI9lxGHxaqc0AaV8j+0HjKSadP4nPVI5SC/GjiprJLDQAt/MuWv/dg==
X-Received: by 2002:a17:906:2756:b0:878:79e6:4672 with SMTP id a22-20020a170906275600b0087879e64672mr3595195ejd.42.1677928540692;
        Sat, 04 Mar 2023 03:15:40 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:b758:6326:1292:e2aa? ([2a02:810d:15c0:828:b758:6326:1292:e2aa])
        by smtp.gmail.com with ESMTPSA id s4-20020a1709062ec400b008f89953b761sm1968521eji.3.2023.03.04.03.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Mar 2023 03:15:39 -0800 (PST)
Message-ID: <db22af89-6ec5-437d-520e-38aafdb195fc@linaro.org>
Date:   Sat, 4 Mar 2023 12:15:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: Add initial support for BPI-CM4
 module with BPI-CM4IO baseboard
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
References: <20230303-topic-amlogic-upstream-bpi-cm4-v1-0-5a23a1ade6bd@linaro.org>
 <20230303-topic-amlogic-upstream-bpi-cm4-v1-2-5a23a1ade6bd@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230303-topic-amlogic-upstream-bpi-cm4-v1-2-5a23a1ade6bd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2023 18:37, Neil Armstrong wrote:
> Add support for both the BananaPi BPI-CM4 module and the BananaPi
> baseboard which is comnpatible with the RaspberryPi CM4IO baseboard.
> 
> The BananaPi BPI-CM4 module follows the CM4 specifications at [1],
> but with a single HDMI port and a since DSI output.
> 

(...)

> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpio GPIOAO_6 GPIO_ACTIVE_LOW>;
> +		clocks = <&wifi32k>;
> +		clock-names = "ext_clock";
> +	};
> +
> +	emmc_1v8: regulator-emmc_1v8 {

No underscores in node names.

> +		compatible = "regulator-fixed";
> +		regulator-name = "EMMC_1V8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vddao_3v3>;
> +		regulator-always-on;
> +	};
> +
> +	dc_in: regulator-dc-in {
> +		compatible = "regulator-fixed";
> +		regulator-name = "DC_IN";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +

> 

Best regards,
Krzysztof

