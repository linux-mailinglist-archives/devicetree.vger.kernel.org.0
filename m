Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA1C978AF54
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 13:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231960AbjH1Lz0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 07:55:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229962AbjH1LzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 07:55:00 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F3F11A
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 04:54:57 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9a1de3417acso863174166b.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 04:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693223695; x=1693828495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CghXjnmhGYaNTmxkJrC++UaP4UDjN3m0O5QjItGpeIc=;
        b=FLPoTEzxDi6uOfWWH09o0o9SH8DdilxsokEm2h8931d9lRjd96++Imf45kvcbTTawO
         qdCGqNn3kmPh0RxE+l2HwR6TRppG0MvrZ+0T1752zyAhB2aX7AVMDWIR1MbkGQ1cdOwk
         JNyhISkKYitk6ZG8NQUPH1KO7dzHtcy/gzCexqWFDGD0yRWt1LHZmqsLLCB7rdeiS4jx
         nkWI8CoZ4LQGDxZg1EukxvAO4pNOnww15Mzyymnp3gTvWLIM3EJ/qZbvDCGmBZ1aD/C4
         mbiLB189yyBoubboogEOBklW8Vt74Me9UvRGxdHZGcDqcxrQTgdTHhOtN5uLZdddy22V
         DOrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693223696; x=1693828496;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CghXjnmhGYaNTmxkJrC++UaP4UDjN3m0O5QjItGpeIc=;
        b=AvqOYX1v5OWORTREC8yRrM9wHTKC9j4Es/du5a+/obsmT9Jr0+UIiZ/kek7F0uJdt5
         N0Mk9lKpdpj7/w0ybY+Cq4FRMLANRmI+kF6cb1B5+m4J3X4SRFmVdfbgXFmLo4wxFvLT
         sTkKtYqo+Fa2FxLeD89HSbrhVpufdKpJaJ1eGPt8PZwBQnflc41lqbrkodidunawRrWV
         Xodp506r9/OKbWHH2eZnepdf7leaF95w+NutXF7HzaE6IUDoQ/dAP95na+kg9JdLKt0L
         rudL3o1OIkninXjg9Mq2l7gU/R956gobxKerFmC6Zyqsj5vSQyjmccS40LOhmJE/mHy6
         wc2w==
X-Gm-Message-State: AOJu0YzIMeq/0ttx7toq9fy3HytmB6hDxl8+VMMQEKZfXXmxdybRdxJV
        b9XMwtDbUwh/f4r0zMRT1FsdOQ==
X-Google-Smtp-Source: AGHT+IGSevbzv9y6W2qDDFwFBahmZ75ulPmjKvMSfcsIPU4w5/uFCsjEOezSMRpGXMsPleyd3tO+uQ==
X-Received: by 2002:a17:907:2c43:b0:9a5:ae8a:6e0b with SMTP id hf3-20020a1709072c4300b009a5ae8a6e0bmr3032324ejc.24.1693223695598;
        Mon, 28 Aug 2023 04:54:55 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id k6-20020a17090646c600b009a168ab6ee2sm4513777ejs.164.2023.08.28.04.54.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 04:54:55 -0700 (PDT)
Message-ID: <3a5e343c-a0cc-8d1b-eadc-82c3d038aaa1@linaro.org>
Date:   Mon, 28 Aug 2023 13:54:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [-next v1] riscv: dts: starfive: visionfive 2: Enable usb0 and
 fix tdm pins sort order
To:     Hal Feng <hal.feng@starfivetech.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230828115239.16012-1-hal.feng@starfivetech.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230828115239.16012-1-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 13:52, Hal Feng wrote:
> usb0 was disabled by mistake when merging, so enable it.
> tdm_pins node should be sorted alphabetically.
> 
> Fixes: e7c304c0346d ("riscv: dts: starfive: jh7110: add the node and pins configuration for tdm")
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  .../jh7110-starfive-visionfive-2.dtsi         | 49 ++++++++++---------
>  1 file changed, 25 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index d79f94432b27..382dfb5e64e4 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -440,30 +440,6 @@ GPOEN_ENABLE,
>  		};
>  	};
>  
> -	uart0_pins: uart0-0 {
> -		tx-pins {
> -			pinmux = <GPIOMUX(5, GPOUT_SYS_UART0_TX,
> -					     GPOEN_ENABLE,
> -					     GPI_NONE)>;
> -			bias-disable;
> -			drive-strength = <12>;
> -			input-disable;
> -			input-schmitt-disable;
> -			slew-rate = <0>;
> -		};
> -
> -		rx-pins {
> -			pinmux = <GPIOMUX(6, GPOUT_LOW,
> -					     GPOEN_DISABLE,
> -					     GPI_SYS_UART0_RX)>;
> -			bias-disable; /* external pull-up */
> -			drive-strength = <2>;
> -			input-enable;
> -			input-schmitt-enable;
> -			slew-rate = <0>;
> -		};
> -	};
> -
>  	tdm_pins: tdm-0 {
>  		tx-pins {
>  			pinmux = <GPIOMUX(44, GPOUT_SYS_TDM_TXD,
> @@ -497,6 +473,30 @@ GPOEN_DISABLE,
>  			input-enable;
>  		};
>  	};
> +
> +	uart0_pins: uart0-0 {
> +		tx-pins {
> +			pinmux = <GPIOMUX(5, GPOUT_SYS_UART0_TX,
> +					     GPOEN_ENABLE,
> +					     GPI_NONE)>;
> +			bias-disable;
> +			drive-strength = <12>;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		rx-pins {
> +			pinmux = <GPIOMUX(6, GPOUT_LOW,
> +					     GPOEN_DISABLE,
> +					     GPI_SYS_UART0_RX)>;
> +			bias-disable; /* external pull-up */
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-enable;
> +			slew-rate = <0>;
> +		};


What is fixed in this hunk? Order of nodes is just a style, not a bug
needing backports.

Best regards,
Krzysztof

