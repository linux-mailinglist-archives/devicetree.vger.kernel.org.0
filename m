Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FCA1611DA9
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 00:48:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbiJ1WsZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 18:48:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230146AbiJ1WsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 18:48:00 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88F11D5577
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 15:47:59 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id b5so6025188pgb.6
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 15:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PUbdrJIexM2PmxhWqwHeRbpmJO2wc72laJAHiT+SdrY=;
        b=SXhC0xT0j1O3099HzLxYhiDHa0sl/KIFOG53mQzJmSQbCJ1VIp02ViUAjZ4gJ73sY4
         T156y9oNY0K7tsJbRJysN7MKJFoRWhWmDZdqulVJe1c51T6qBf9krTbEf6R1hyVVSyJ9
         m9bfFrOBxREcd6U39/u7VuQMqm/RMhABTEF0Qo2emZ2VPwtCkNg0YZaCKZ3NZUyRSP8L
         wesUOl7ThlMVpv4jloQhhkC6tEjaf1vNeTc9g/5JnnVOyZQl2eAIR9rFHdiybQ46NeL8
         hzJln7utJvAkvtP2TW4A2WyzGXhotujxdM+7sqCXGHF7Hfsd9Vdheton1YV9RAowc9ZI
         gNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PUbdrJIexM2PmxhWqwHeRbpmJO2wc72laJAHiT+SdrY=;
        b=tL3v1YNhArdxvKD//KugjkZIkDjVtpDHAHoJfWdGK2IBz/nSFi8QH1ErSUPem/s7rk
         vqbfLriGfHlq1WFL/MSK0CSzpRlKbqXnvzM6V9qbEikfsWGm72LsbhX2clbGwWf4TsTr
         pwwRihbPthSqvkip/yWtf9xY8ecK+/Wy3wpwGa+jNo4KFIuscLdKabQNALRV7UAP9Q6B
         oCfiSsPajjp8/TOqijVOftg3/s4claTBA1r+dWsVHo/5jLkKqGT4SPeOnD/9ynRt0ePT
         9UtsI9vJm1hM4uqpXYroDgdfQ4mEGqGDpe7F5DfNlGAIVY/JHOpYBi5GnD0Leelz6Kg7
         iP+g==
X-Gm-Message-State: ACrzQf07WzBwNdIzevRy+BF/DX6++BOq3Xt9qgpRd9jlMdhe6MpDTj4B
        PcFq9m5w8VFXIzSMK9Q3vIL3VA==
X-Google-Smtp-Source: AMsMyM5wcdv4vaAvLa/8L59ro1q5+Z6ez29oP4z6iKYbz+sl1LRtZmebdPWN2bVwnC6jdfsXR0fnZQ==
X-Received: by 2002:a63:5a1b:0:b0:461:9934:6f62 with SMTP id o27-20020a635a1b000000b0046199346f62mr1606820pgb.266.1666997278953;
        Fri, 28 Oct 2022 15:47:58 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id q6-20020a17090a178600b00210c84b8ae5sm2992406pja.35.2022.10.28.15.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 15:47:58 -0700 (PDT)
Date:   Fri, 28 Oct 2022 15:47:58 -0700 (PDT)
X-Google-Original-Date: Fri, 28 Oct 2022 15:42:40 PDT (-0700)
Subject:     Re: [PATCH v1] riscv: dts: sifive unleashed: Add PWM controlled LEDs
In-Reply-To: <20221012110928.352910-1-emil.renner.berthing@canonical.com>
CC:     linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        alexandre.ghiti@canonical.com, bin.meng@windriver.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     emil.renner.berthing@canonical.com
Message-ID: <mhng-a36f2ace-57aa-4bd0-811d-c3aaa3018969@palmer-ri-x1c9a>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Oct 2022 04:09:28 PDT (-0700), emil.renner.berthing@canonical.com wrote:
> This adds the 4 PWM controlled green LEDs to the HiFive Unleashed device
> tree. The schematic doesn't specify any special function for the LEDs,
> so they're added here without any default triggers and named d1, d2, d3
> and d4 just like in the schematic.
>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> ---
>
> Yes this board is old, but I'm trying to get rid of custom riscv patches in
> the Ubuntu kernel.

IMO fixing stuff for old boards is great, particularly if they're broken 
upstream but supported by distro kernels -- that's kind of a messy spot 
to be in.

>  .../boot/dts/sifive/hifive-unleashed-a00.dts  | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> index ced0d4e47938..900a50526d77 100644
> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> @@ -3,6 +3,8 @@
>
>  #include "fu540-c000.dtsi"
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pwm/pwm.h>
>
>  /* Clock frequency (in Hz) of the PCB crystal for rtcclk */
>  #define RTCCLK_FREQ		1000000
> @@ -42,6 +44,42 @@ gpio-restart {
>  		compatible = "gpio-restart";
>  		gpios = <&gpio 10 GPIO_ACTIVE_LOW>;
>  	};
> +
> +	led-controller {
> +		compatible = "pwm-leds";
> +
> +		led-d1 {
> +			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
> +			active-low;
> +			color = <LED_COLOR_ID_GREEN>;
> +			max-brightness = <255>;
> +			label = "d1";
> +		};
> +
> +		led-d2 {
> +			pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
> +			active-low;
> +			color = <LED_COLOR_ID_GREEN>;
> +			max-brightness = <255>;
> +			label = "d2";
> +		};
> +
> +		led-d3 {
> +			pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
> +			active-low;
> +			color = <LED_COLOR_ID_GREEN>;
> +			max-brightness = <255>;
> +			label = "d3";
> +		};
> +
> +		led-d4 {
> +			pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
> +			active-low;
> +			color = <LED_COLOR_ID_GREEN>;
> +			max-brightness = <255>;
> +			label = "d4";
> +		};
> +	};
>  };
>
>  &uart0 {
