Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADFD46A7DA5
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 10:28:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbjCBJ2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 04:28:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjCBJ2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 04:28:41 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80A4015577
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 01:28:39 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bw19so15797543wrb.13
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 01:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677749318;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pN3D6KI8Uaa46h7G/TJdROkJgq6ZG8djshLY451h4ys=;
        b=ePgyFdWPqYzP5PsMiB6m/eTIZ/AdDvKD1geltdyzjjo+eHjCktcA4UW9yaInyU22lB
         qLoNyhRQW4r7akoe0EKzIqBMybTmuIvccUOgNupV9rLMLpH30V8n0VkdPAxvQn0oOX9/
         sDrZdoJbKfNw9F6Ju8EHhctCdgl8NUu0MYYSXqQVrrg5y8AaX/0Loebr+icGc8vsl0Qo
         4cCuXD8LRFnccVKoCCAv/oG0fbnKXF+dG0DRz02swexJqakmg8hUO1WrrnsT+vYGuxTH
         dl6l+KAJtKFZw3rPwVPn7PAL8P7PQPwiIaRkjo3qOHbOR8wruak4wkqNXXrAsV4HYd6J
         Sghw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677749318;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pN3D6KI8Uaa46h7G/TJdROkJgq6ZG8djshLY451h4ys=;
        b=rsNnRpnvU665nvXgjQCLPS8wAo3UbnvFDRWWypCjW7P5yZpCRmYppf1zfNiIQ61OCX
         uq26ry2UoU0JdV4e0JVEt2LKAr5DlWsn5pHSHI5dSXUp6bZB0rEBhoMvg9yODuzKfaxp
         jpenpNXNFS53C7x1Zf5w9H1ZQfflmj9MqtdloYImX3lBDGwWUXQNUnJeNnx+vvcEx4+V
         t4HnqSzxJwnCZq37q4/Xjz5WwuCRAL7n6C0aTg3bTr57Yc46lXdYSlXREI24vZNXhiC6
         EoofBW+GlSISHzgdWfCpHYHcDKUNKSbl54sIF5djKinLwZHW3rg4tWUpWZsd7FYzpVte
         6Teg==
X-Gm-Message-State: AO0yUKXZc168flPYjmDwq4d2oNnNJEVo1tTF8ajIqmiMs8n0oyu7BRD/
        7XYmRMNDKuhLUYWPIEMI7MaKNQ==
X-Google-Smtp-Source: AK7set9CWhecrLx281ewib0dIvx7MkBYjpt4sHuc9tY87sRrdwUG5w1d7q9EEY+x2f6djdKm6v6IZw==
X-Received: by 2002:a5d:68cc:0:b0:2c9:850c:6b13 with SMTP id p12-20020a5d68cc000000b002c9850c6b13mr7334493wrw.67.1677749317874;
        Thu, 02 Mar 2023 01:28:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:217a:db24:fe27:6b35? ([2a01:e0a:982:cbb0:217a:db24:fe27:6b35])
        by smtp.gmail.com with ESMTPSA id d16-20020adff850000000b002c55306f6edsm14632513wrq.54.2023.03.02.01.28.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 01:28:37 -0800 (PST)
Message-ID: <78b44cd8-adf1-d5fb-b140-6849fb77c679@linaro.org>
Date:   Thu, 2 Mar 2023 10:28:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: meson: add IR controller for Meson-S4 SoC
Content-Language: en-US
To:     zelong dong <zelong.dong@amlogic.com>, Sean Young <sean@mess.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20230302063402.42708-1-zelong.dong@amlogic.com>
 <20230302063402.42708-4-zelong.dong@amlogic.com>
Organization: Linaro Developer Services
In-Reply-To: <20230302063402.42708-4-zelong.dong@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/03/2023 07:34, zelong dong wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> Add the IR controller device of Meson-S4 SoC family, and enable
> hardware IR decoder.
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> ---
>   .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts   |  6 ++++++
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi        | 16 ++++++++++++++++
>   2 files changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> index 8ffbcb2b1ac5..4d3a81b3b762 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4-s805x2-aq222.dts
> @@ -28,3 +28,9 @@ memory@0 {
>   &uart_B {
>   	status = "okay";
>   };
> +
> +&ir {
> +	status = "disabled";

Why is this disabled ? disabled state is already set in dtsi, it should be "okay".

Neil

> +	pinctrl-0 = <&remote_pins>;
> +	pinctrl-names = "default";
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index ad50cba42d19..309352a83eda 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -106,6 +106,14 @@ gpio: bank@4000 {
>   					#gpio-cells = <2>;
>   					gpio-ranges = <&periphs_pinctrl 0 0 82>;
>   				};
> +
> +				remote_pins: remote_pin {
> +					mux {
> +						groups = "remote_in";
> +						function = "remote_in";
> +						bias-disable;
> +					};
> +				};
>   			};
>   
>   			gpio_intc: interrupt-controller@4080 {
> @@ -133,6 +141,14 @@ reset: reset-controller@2000 {
>   				reg = <0x0 0x2000 0x0 0x98>;
>   				#reset-cells = <1>;
>   			};
> +
> +			ir: ir@84000 {
> +				compatible = "amlogic,meson-s4-ir";
> +				reg = <0x0 0x84040 0x0 0x54>;
> +				interrupts = <GIC_SPI 22 IRQ_TYPE_EDGE_RISING>;
> +				amlogic,ir-support-hw-decode;
> +				status = "disabled";
> +			};
>   		};
>   	};
>   };

