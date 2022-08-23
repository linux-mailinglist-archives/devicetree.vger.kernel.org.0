Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7140C59E591
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:04:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239109AbiHWPDu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:03:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239780AbiHWPDV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:03:21 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04344F5CE9
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:28:25 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id d23so15090946lfl.13
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=7G9C+Co4+yWWKBexgp2TB7hElj+FoeQOLsH/nAPFK8E=;
        b=bE/a+j6rjSDnhBoAqIiRf+qTLj/0MgBuX9JZ7Lbs1UVsbTC5VnKo2IGUKFJDJ0UCG+
         jd5J9SVNPFUZ90SsIB9BzR7R25gkC68Gt67wU42UPETV+3eNfoK+GQdjdz0KbPiYElU0
         jyE7tnnLMb2Xh5XIfcc5tphiX7DmEY0TWLP2uusvqzfvcZXeta4CYraxcR5rxDeO3NRB
         pqwZKNJq4oUTtLvaE+EQjJKkdQIiraYvnO22krGcav7aZd5u4si13vlbSELLliSTM4DS
         5ZeMlcdKBREItoqi/en2wU/r0MNOL8J0XsBUqurznGLcqvzoazzgWn+8Z/lP/kRaZ2Ft
         CD/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=7G9C+Co4+yWWKBexgp2TB7hElj+FoeQOLsH/nAPFK8E=;
        b=XZP2OhaGwsovYHYgo+aiY+8Qem3wsd31n0J7PPq2MPdfGICVkbDdSR71xfo69O68AD
         hNiTEjBEoUM6Yaslr6Sxtck/ss1BPTfAiXpKInDJVlkJvNFu6dBzxx8Nd2LbK1O8HdFd
         JnuPy6r43A9YZNM3QBs1doTjlFRudHACjXdZVa/SleRsC/EFP6HMWW94z1H2XcOGo4S4
         WKYgrCvNYzW0auWLyxFUZUMWYHO732lCOXUx8IIsgj/VWrMgaZDWa8NpeDET7qB3KS0k
         hOqH1UW5z1sk8zvNkPMyanshe5TTGwgRELahoulTYpPTfFdO9ps74dg30xrjtZv1W3gd
         aFtw==
X-Gm-Message-State: ACgBeo3t6vtC19p16nRgLQoQItBh7ISnGH1JA+TZbvEae15nbc+h4aN5
        OKlAQ/lHVVtQenDt3FwdkJn6iw==
X-Google-Smtp-Source: AA6agR6mzHIbf0VJjFNdGRAF4LvDP681wp00MElTPS2vKdJVMsq93L0UrD3svamyI4FNxclZ3Fq4bw==
X-Received: by 2002:a05:6512:1082:b0:48a:f9b5:a563 with SMTP id j2-20020a056512108200b0048af9b5a563mr9327597lfg.471.1661257685398;
        Tue, 23 Aug 2022 05:28:05 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id a23-20020a056512201700b00492e16b7ab3sm1220108lfb.94.2022.08.23.05.28.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:28:04 -0700 (PDT)
Message-ID: <da8df5f3-a69f-6807-3104-37e6c92e5788@linaro.org>
Date:   Tue, 23 Aug 2022 15:28:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To:     Maya Matuszczyk <maccraft123mc@gmail.com>,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Chris Healy <cphealy@gmail.com>,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2022 11:40, Maya Matuszczyk wrote:
> Hello,
> 
> sob., 20 sie 2022 o 00:26 Chris Morgan <macroalpha82@gmail.com> napisał(a):
>>
>> From: Chris Morgan <macromorgan@hotmail.com>
>>
>> Anbernic RG353P and RG503 are both RK3566 based handheld gaming devices
>> from Anbernic.
>>
>> Both devices have:
>>  - 2 SDMMC slots.
>>  - A Realtek rtl8821cs WiFi/Bluetooth adapter.
>>  - A mini HDMI port.
>>  - A USB C host port and a USB C otg port (currently only working as
>>    device).
>>  - Multiple GPIO buttons and a single ADC button.
>>  - Dual analog joysticks controlled via a GPIO mux.
>>  - A headphone jack with amplified stereo speakers via a SGM4865 amp.
>>  - A PWM based vibrator for force feedback.
>>
>> The RG353P has:
>>  - 2GB LPDDR4 RAM.
>>  - A 32GB eMMC.
>>  - A 3.5 inch 640x480 4-lane DSI panel of unknown origin with an i2c
>>    controlled touchscreen (touchscreen is a Hynitron CST340).
>>
>> The RG503 has:
>>  - 1GB LPDDR4 RAM.
>>  - A 5 inch 960x544 AMOLED 2-lane DSI/DBI panel manufactured by Samsung
>>    with part number ams495qa04. Data for this panel is provided via the
>>    DSI interface, however commands are sent via a 9-bit 3-wire SPI
>>    interface. The MISO pin of SPI3 of the SOC is wired to the input of
>>    the panel, so it must be bitbanged.
>>
>> This devicetree enables the following hardware:
>>  - HDMI (plus audio).
>>  - Analog audio, including speakers.
>>  - All buttons.
>>  - All SDMMC/eMMC/SDIO controllers.
>>  - The ADC joysticks (note a pending patch is required to use them).
>>  - WiFi/Bluetooth (note out of tree drivers are required).
>>  - The PWM based vibrator motor.
>>
>> The following hardware is not enabled:
>>  - The display panels (drivers are being written and there are issues
>>    with the upstream DSI and VOP2 subsystems).
>>  - Battery (driver pending).
>>  - Touchscreen on the RG353P (note the i2c2 bus is enabled for it).
>>
>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>>  .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 103 +++
>>  .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
>>  .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 821 ++++++++++++++++++
>>  4 files changed, 1019 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index ef79a672804a..1402274a78a0 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -57,6 +57,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
>> new file mode 100644
>> index 000000000000..f9333ed1ecc7
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
>> @@ -0,0 +1,103 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/linux-event-codes.h>
>> +#include <dt-bindings/pinctrl/rockchip.h>
>> +#include "rk3566-anbernic-rgxx3.dtsi"
>> +
>> +/ {
>> +       model = "RG353P";
>> +       compatible = "anbernic,rg353p", "rockchip,rk3566";
>> +
>> +       aliases {
>> +               mmc0 = &sdhci;
>> +               mmc1 = &sdmmc0;
>> +               mmc2 = &sdmmc1;
>> +               mmc3 = &sdmmc2;
>> +       };
>> +
>> +       backlight: backlight {
>> +               compatible = "pwm-backlight";
>> +               power-supply = <&vcc_sys>;
>> +               pwms = <&pwm4 0 25000 0>;
>> +       };
>> +};
>> +
>> +&gpio_keys_control {
>> +       button-5 {
>> +               gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
>> +               label = "DPAD-LEFT";
>> +               linux,code = <BTN_DPAD_RIGHT>;
>> +       };
>> +
>> +       button-6 {
>> +               gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
>> +               label = "DPAD-RIGHT";
>> +               linux,code = <BTN_DPAD_LEFT>;
>> +       };
>> +
>> +       button-9 {
>> +               gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
>> +               label = "TR";
>> +               linux,code = <BTN_TR2>;
>> +       };
>> +
>> +       button-10 {
>> +               gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
>> +               label = "TR2";
>> +               linux,code = <BTN_TR>;
>> +       };
>> +
>> +       button-14 {
>> +               gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
>> +               label = "WEST";
>> +               linux,code = <BTN_WEST>;
>> +       };
>> +
>> +       button-15 {
> I don't think just having the buttons numbered sequentially
> is the best course of action, but this preserves the GPIO
> ordering while other options don't...
> I'm thinking about either having them named after
> their function, or named after what they're labeled
> on the PCB of the device.
> Can any of DT maintainers give their input on this?

Names should be generic and button-1 is a nice generic name. Adding
specific prefix/suffix makes something less generic, more specific, thus
I prefer without prefixes/suffixes. I don't mind them, though for the
cases it brings value. Here the role is clearly described by label, so
why adding suffix?


Best regards,
Krzysztof
