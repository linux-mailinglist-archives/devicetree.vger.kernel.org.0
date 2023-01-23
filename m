Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F357678661
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 20:30:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjAWTai (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 14:30:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231513AbjAWTah (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 14:30:37 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6C1CB771
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 11:30:13 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id h16so11816513wrz.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 11:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vVG/qABxXVSiTYOC6pdKipzDPp6lJGWe+6QSkO+wG4o=;
        b=TddBwYDVTrX5pt7/LtpKe11oyghFsqqWMo5+iuxR0872IjHlFjkiVsDP7xlQZFu9xU
         kLC9GTgG2jcZOir0fmDYjWsr3NQxIePl5cZelM40vakABUBA0+6VsTxRjmy8wJgDxKYQ
         gNV2cSdq/VFCwxwS1sXFiZ1+FsBEIh2RX+pfjycKAc22DUB7/C47k3dP9RDseXPlomrB
         7P6IG1yMab7hrY3+E/PjT2u6P2ImRigpf8wVENeCaGXcq9dJ4FiLA4Lho2ndY5fP5SoU
         iZcAbFx09IQXOqSX3tlS30wWY7yFx8/+XZoqXCthIhiNfUFarTNHaA06jI23syt908Ek
         2vrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vVG/qABxXVSiTYOC6pdKipzDPp6lJGWe+6QSkO+wG4o=;
        b=qEs6/V2AZ7REMjmHmvwYGoHC6UnsNvDlBkMIOfkKoTtfJVt8Y0cmAjEkiylCCVyoCj
         qHVwtqyqZTxzV9YyoRcQgZzDz+vuoLTL/tG8Gm46XtXxbcryrw5U3gV/a3UOHGQ2H/1w
         fqieQJefXKVK7TcQiLA0RvHCELEio8gytB2Kb/Y8TBmnDAWaFDzhVfBFcsxhhjG7Vlms
         6k2/jGTqNPYPFk6UXJBv39D74fvmJnUimXTjVFhhI57sQOdYPqiGx9vXTTeliUAqv04o
         gJdvms89lhPKl0eXKiez6I/yHdZwdWlX1oBYgsCOUS8sc5cHoKjkYpbdE8OiFRRwMT8i
         9qsg==
X-Gm-Message-State: AFqh2kqWeuirM2Ba96Nh+a+WRorJrRLlLAbUhEOWdpwkKfr6SlT9/MBm
        MScTdEmZwFMnI867cDu1lGIclzLa2L5jodqT
X-Google-Smtp-Source: AMrXdXv5deREaCg2e/R39OBQ9au1t2rwVSeazLIwo4khNfEMNJkCOW/Xa4IssMkNbZzhpiiFz0qCcA==
X-Received: by 2002:a05:6000:1816:b0:242:324e:b3d with SMTP id m22-20020a056000181600b00242324e0b3dmr21448863wrh.1.1674502212491;
        Mon, 23 Jan 2023 11:30:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n21-20020adf8b15000000b0028965dc7c6bsm143519wra.73.2023.01.23.11.30.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 11:30:11 -0800 (PST)
Message-ID: <980797c2-69bb-bbe7-4427-e521b7fc4a73@linaro.org>
Date:   Mon, 23 Jan 2023 20:30:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 2/2] arm64: dts: stratix10: add i2c pins for pinctrl
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230123192712.84537-1-dinguyen@kernel.org>
 <20230123192712.84537-2-dinguyen@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123192712.84537-2-dinguyen@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 20:27, Dinh Nguyen wrote:
> Add the I2C pins definition to the Stratix10 devkit. This allows for the
> I2C driver to use pinctrl on the pins to allow for GPIO recovery.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../dts/altera/socfpga_stratix10_socdk.dts    | 23 +++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
> index 17752ca743e5..beda04b9380b 100644
> --- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
> +++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
> @@ -65,6 +65,22 @@ sdmmca-ecc@ff8c8c00 {
>  	};
>  };
>  
> +&pinctrl0 {
> +	i2c1_pmx_func: i2c1_pmx_func {

No underscores in node names.

> +		pinctrl-single,pins = <
> +			0x78   0x4   /* I2C1_SDA (IO6-B) PIN30SEL) */
> +			0x7c   0x4   /* I2C1_SCL (IO7-B) PIN31SEL */
> +		>;
> +	};
> +
> +	i2c1_pmx_func_gpio: i2c1_pmx_func_gpio {

Same here.

> +		pinctrl-single,pins = <
> +			0x78   0x8   /* I2C1_SDA (IO6-B) PIN30SEL) */
> +			0x7c   0x8   /* I2C1_SCL (IO7-B) PIN31SEL */
> +		>;
> +	};
> +};
> +
>  &gpio1 {
Best regards,
Krzysztof

