Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8E4B73581C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 15:12:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjFSNMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 09:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231650AbjFSNMP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 09:12:15 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32A5BAF
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:12:13 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f849a0e371so4289753e87.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687180331; x=1689772331;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X12p4kWv82UZBTeKwICewBBkEg+IP+pA/vu3Dv338JE=;
        b=y5l5PeeFVcBagcFQ/Ok+6w6J44xS2Dk6s2pk+0Wh00D0eJ1v0SDgGJUU89K6qbR0mh
         P4+2SEHOLzDVomGLBPkUDv2mQEvJf53+BmiN32uBOCrgubpu6n50Rb/NSqsinixsuzr/
         WMrqlMEJ/bYIeCqXn28KtmxOdhCByJGEzi6BQgMWdZqP6SQTszx2DT0P/Tx0NyCcN6z6
         AsdsBOyICSjQIIw0LZOxPRx3uyHwg2/oUXqx2tbOhFA4yBSqqi9nKR1TQwbOc1eTNrPn
         +sLyXY/fdfSKBfpoNOsaUu0RhY01KQOZP5n4cmVZprLJpJ7ozaf2IHjm1r+Oni3hKXQO
         CArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687180331; x=1689772331;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X12p4kWv82UZBTeKwICewBBkEg+IP+pA/vu3Dv338JE=;
        b=ch/5wvJDmneHl8MYhozMcaHDyUsjx/R8o4DgU0KYLHGjqciqNr62mOhnvfjxPtIabe
         VWXlrhu5WZYBkTOX3TTB1fuUjGWFFnMYspV85TTMKKOdDKIuAgjSRJSVYI0OeyICr1E9
         5g+MoHUl/YJtnRIHCskEwmw+bD6JqlJXqUU1yrL69MLF3DlHiUHrsivRyaGQvVtUMMB1
         Wcdd+V5BpM3S/TVhTa9b1KBA19fw9Wvf/kFxPfTBWqbmCQbGKouKS+2K/y3mNzLDvbWg
         er1fFTE0Kt8R2eN9HJzTT9zSOLuQ6sBJzaZCajCaL09xl0zRUYDtEqNsZUMBFK0dv8yh
         /7Gg==
X-Gm-Message-State: AC+VfDwRNn8VFQeqcUfcVUaGRCctUBkzLZjfZwL9EzUMPXgi7DW3i1B8
        Pa+7OjSaOb6tT72M9DlS0+IT2g==
X-Google-Smtp-Source: ACHHUZ6ndYgoyXJXv20U9oqu9GIBhX3zJ5yk8Mn32DuFVSzk7Y4WwUyd0lSBT+n0O5LPC34jw7N8/g==
X-Received: by 2002:a19:4419:0:b0:4f3:a99f:1e91 with SMTP id r25-20020a194419000000b004f3a99f1e91mr5083448lfa.52.1687180331442;
        Mon, 19 Jun 2023 06:12:11 -0700 (PDT)
Received: from [192.168.1.101] (abyl242.neoplus.adsl.tpnet.pl. [83.9.31.242])
        by smtp.gmail.com with ESMTPSA id t10-20020ac2548a000000b004f6458054basm4234068lfk.243.2023.06.19.06.12.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 06:12:11 -0700 (PDT)
Message-ID: <ad43c064-0593-a30a-84eb-33618d0c868e@linaro.org>
Date:   Mon, 19 Jun 2023 15:12:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 03/15] arm64: dts: qcom: apq8016-sbc: drop label from I2C
 and SPI
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Nikita Travkin <nikita@trvn.ru>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
 <20230617171541.286957-3-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230617171541.286957-3-krzysztof.kozlowski@linaro.org>
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

On 17.06.2023 19:15, Krzysztof Kozlowski wrote:
> I2C and SPI controller bindings do not allow label property:
> 
>   apq8016-sbc.dtb: spi@78b7000: Unevaluated properties are not allowed ('label' was unexpected)
>   apq8016-sbc.dtb: i2c@78b6000: Unevaluated properties are not allowed ('label' was unexpected)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
> index f3d65a606194..e0993e32ee38 100644
> --- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
> +++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
> @@ -172,15 +172,13 @@ led@6 {
>  };
>  
>  &blsp_i2c2 {
> -	/* On Low speed expansion */
> +	/* On Low speed expansion: LS-I2C0 */
>  	status = "okay";
> -	label = "LS-I2C0";
>  };
>  
>  &blsp_i2c4 {
> -	/* On High speed expansion */
> +	/* On High speed expansion: HS-I2C2 */
>  	status = "okay";
> -	label = "HS-I2C2";
>  
>  	adv_bridge: bridge@39 {
>  		status = "okay";
> @@ -228,21 +226,18 @@ adv7533_out: endpoint {
>  };
>  
>  &blsp_i2c6 {
> -	/* On Low speed expansion */
> +	/* On Low speed expansion: LS-I2C1 */
>  	status = "okay";
> -	label = "LS-I2C1";
>  };
>  
>  &blsp_spi3 {
> -	/* On High speed expansion */
> +	/* On High speed expansion: HS-SPI1 */
>  	status = "okay";
> -	label = "HS-SPI1";
>  };
>  
>  &blsp_spi5 {
> -	/* On Low speed expansion */
> +	/* On Low speed expansion: LS-SPI0 */
>  	status = "okay";
> -	label = "LS-SPI0";
>  };
>  
>  &blsp_uart1 {
