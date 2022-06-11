Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB8BA54776D
	for <lists+devicetree@lfdr.de>; Sat, 11 Jun 2022 22:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231540AbiFKUDa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Jun 2022 16:03:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231518AbiFKUDa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Jun 2022 16:03:30 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CBEC5639A
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 13:03:28 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id g25so2436445ljm.2
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 13:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZvGDk7Bq0Wof6CggpEcET5lmb7c1IlUihfL2eBkhzh8=;
        b=QgPr8qMfSh1AAkbOnzlzXZGO+ZlRLHbIq69KAdOoOq9CuUIjc0IPBCUi3CtVl4cGOM
         TIN4WzmZGjdS5b8A46Lhsut22l+De3djDhsc6bk2qJOKTD/eYnxR2tEUuw67Z/wHpRq1
         LOh59ChBTRpMvA/mJ69ln9VqRUAeNehC2SfSKl3i6jE5pQ6UrdeGH+YiwJYqiq6bdvdT
         uhcu25F/1jsgg4z0IiAn6UTTrVqGTyBTM/ptyKBe38+duFJxPugK9QXaNMEL2HBKQeSC
         EW6V4igpz5s+zGU0XUK+uWNQ+WcRFVtpNTh1r8gxj75CCEePD2/ygEqUJgMmDVLVm38S
         ANfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZvGDk7Bq0Wof6CggpEcET5lmb7c1IlUihfL2eBkhzh8=;
        b=23ok/3dSmw6AH+mwvXkvVozc9jznbz4IR5TTRsa6Byo7RBhQyLrWc2o/WrR4KMKfm+
         A70vtEkzYqMfV16flGPi47TIrrMYrbBeiCTggvu9MN0uvLYfNS9b73xKsdFruKN2LqLb
         DKI8t7hZTa81gEvpX2mTAcf82yb6eCdGsZnwozpokZqlC1i0lFjc8/079y7/ss0Te+e5
         Yq4xmbOJMQ7yrK4pNeDUCgcghC3Rb7XCFVlhZbPVrHKLtxqPrXV0EYtcDlkXqAuWQYd7
         ewyRSBifscBdmTXTwvOomS2cYrf9b3Ugk4gRv2h6rnPrPJDnHO4n6KFvxelZqnDTB5iH
         w9Sg==
X-Gm-Message-State: AOAM533Vy02skCTOcQOXsIac/sti94JW5qce73tR2ay9LAoWAfApIEla
        Fv0fqjuaGNr9q3qMSOr65EDkxw==
X-Google-Smtp-Source: ABdhPJw8IIT0yledAbbk6uY2u7TxgQ+2N2RTx7bDqxiPxVhW5f5BVZHrzYt3jvXS7vfCD1kXqa7F7g==
X-Received: by 2002:a2e:4952:0:b0:255:6f2d:600b with SMTP id b18-20020a2e4952000000b002556f2d600bmr27509489ljd.405.1654977806553;
        Sat, 11 Jun 2022 13:03:26 -0700 (PDT)
Received: from [192.168.88.251] (78-107-206-185.broadband.corbina.ru. [78.107.206.185])
        by smtp.gmail.com with ESMTPSA id y1-20020a199141000000b0047255d2119bsm363254lfj.202.2022.06.11.13.03.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jun 2022 13:03:26 -0700 (PDT)
Message-ID: <acbf7147-7db0-2b2f-795c-d165b6f59f70@linaro.org>
Date:   Sat, 11 Jun 2022 23:03:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] arm64: dts: qcom: qcs404: fix default pinctrl settings
 for blsp1_spi1
Content-Language: en-US
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        vinod.koul@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220611195713.131597-1-andrey.konovalov@linaro.org>
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
In-Reply-To: <20220611195713.131597-1-andrey.konovalov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/11/22 22:57, Andrey Konovalov wrote:
> The current settings refer to "blsp_spi1" function which isn't defined.
> For this reason an attempt to enable blsp1_spi1 interface results in
> the probe failure below:
> 
> [    3.492900] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> [    3.502460] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> [    3.517725] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> [    3.532998] qcs404-pinctrl 1000000.pinctrl: invalid function blsp_spi1 in map table
> [    3.548277] spi_qup: probe of 78b6000.spi failed with error -22
> 
> Fix this by making the functions used in qcs404.dtsi to match the contents
> of drivers/pinctrl/qcom/pinctrl-qcs404.c.

... and Documentation/devicetree/bindings/pinctrl/qcom,qcs404-pinctrl.txt.

> 
> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/qcs404.dtsi | 21 +++++++++++++++++++--
>   1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index d912166b7552..0d9e1f19aa67 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -669,8 +669,25 @@ blsp1_spi0_default: blsp1-spi0-default {
>   			};
>   
>   			blsp1_spi1_default: blsp1-spi1-default {
> -				pins = "gpio22", "gpio23", "gpio24", "gpio25";
> -				function = "blsp_spi1";
> +				mosi {
> +					pins = "gpio22";
> +					function = "blsp_spi_mosi_a1";
> +				};
> +
> +				miso {
> +					pins = "gpio23";
> +					function = "blsp_spi_miso_a1";
> +				};
> +
> +				cs_n {
> +					pins = "gpio24";
> +					function = "blsp_spi_cs_n_a1";
> +				};
> +
> +				clk {
> +					pins = "gpio25";
> +					function = "blsp_spi_clk_a1";
> +				};
>   			};
>   
>   			blsp1_spi2_default: blsp1-spi2-default {
