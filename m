Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6427425A645
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 09:18:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726173AbgIBHSY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 03:18:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726167AbgIBHSW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 03:18:22 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C436C061244
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 00:18:22 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z1so4057865wrt.3
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 00:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:organization:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jCxVTvr46zhxurEP0PTNQgTL7TeLe1a+cQHiWBteVUA=;
        b=mPr6yxy9o2KyZ+N8uhQttbFmiRbR7Y8+dRI1R4lkplEMABCcPy7JbiGPvS1sgowPjx
         RXNdGnBVTlNDw6xAX6qI1NMRRgPm/qVRW+vJfAWKezGhTxOCjalPBmw1hdvLpM+1B+2I
         dvA2ZxIQZr7jLzmDy7yydhRt1r6f6HznxsDPgWbPD6oJ0MfUzyEw5ZtkZUxsLtp8PAi9
         MnIMf6+zadAPSFboPp8ds94F95PsAfFtPh0w1YD0WPeT+wmlTd36IMRh2CcXiXKnvLUH
         uTb8mYCT75IS+DgjVeLSMKZy7LCVYLUnJtsuokCVD1tnouUT5r9dt5QM20oFHGsshwVN
         1ZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=jCxVTvr46zhxurEP0PTNQgTL7TeLe1a+cQHiWBteVUA=;
        b=MmbxH+30jPNHB9sXQWyOEDNdpfPBh9Y9vCB3ofDRTPMOe7IT31oAM/AGySrMFisvji
         s9nC0lQuomN2yWj8iw77npfR7rsWNrFSsNxAUhxcfuZzdtUaNwhTYQnC0Fxvvc1omLRQ
         F7X6pUKu8K5xbffDa92+cYV3pyB6zJUZLoBxq+Sl8bkAhxVV98e12g5SOKQ08H6+EpXe
         xU/bc5fNBA0V1++UNGCg9U3Db5pErlBKIsSUNca7con4K+5+NbENxVV+neOXaLhNKuNh
         K+ibxRoviM/YZrwMQcW/abB0rGaQ3CA8tvM7r8F/eDpag5mij+WOrX5b+1UUiQtDgSmK
         t1ow==
X-Gm-Message-State: AOAM532Vyy+6ohl4GDT3sUf+PN6BGO/BVQol477AEjhs4QEbVHRawTk0
        aTb8A9+jnA0WIq1COEqWW4AIBA==
X-Google-Smtp-Source: ABdhPJzYtxWQMybOuyGgfTrOa3sPWsql7R7LCI1W5DQvhZwS8/nvGFQTvElOvwL/Mccro+7EPfW1pw==
X-Received: by 2002:adf:df05:: with SMTP id y5mr6141268wrl.39.1599031100571;
        Wed, 02 Sep 2020 00:18:20 -0700 (PDT)
Received: from [10.1.2.12] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id t16sm5783049wrm.57.2020.09.02.00.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 00:18:19 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] arm64: dts: meson-g12b-odroid-n2: Enable RTC
 controller node
To:     Anand Moon <linux.amoon@gmail.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Christian Hewitt <christianshewitt@gmail.com>
References: <20200831075911.434-1-linux.amoon@gmail.com>
 <20200831075911.434-2-linux.amoon@gmail.com> <7hpn767f6x.fsf@baylibre.com>
 <CANAwSgSjSU3wrgSkg+vE1u7JZKr3-8KHXHbMarvhSGKHXR0Khw@mail.gmail.com>
 <d944e388-8112-4490-bc6d-d7bfc5ee0762@baylibre.com>
 <CANAwSgRyV_Sz3GbLZ__-Ed8nhw5WCbChULVX8hhFLmgSs1tb-A@mail.gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <0845cbc4-cf95-5c00-4294-1b98b159727d@baylibre.com>
Date:   Wed, 2 Sep 2020 09:18:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgRyV_Sz3GbLZ__-Ed8nhw5WCbChULVX8hhFLmgSs1tb-A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2020 17:29, Anand Moon wrote:
> Hi Neil,
> 
> On Tue, 1 Sep 2020 at 18:42, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> On 01/09/2020 12:14, Anand Moon wrote:
>>> Hi Kevin,
>>>
>>> Thanks for your review comments and testing.
>>>
>>> On Tue, 1 Sep 2020 at 01:36, Kevin Hilman <khilman@baylibre.com> wrote:
>>>>
>>>> Anand Moon <linux.amoon@gmail.com> writes:
>>>>
>>>>> Enable RTC PCF8563 node on Odroid-N2 SBC, In order to
>>>>> support the RTC wakealarm feature for suspend and resume.
>>>>> Also assign an alias to the pcf8563 to rtc0 and meson-vrtc to rtc1
>>>>> timer device to prevent it being assigned to /dev/rtc0
>>>>> which disto userspace tools assume is a clock device.
>>>>>
>>>>> Cc: Neil Armstrong <narmstrong@baylibre.com>
>>>>> Cc: Kevin Hilman <khilman@baylibre.com>
>>>>> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
>>>>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>>>>> ---
>>>>> Changes v4
>>>>> --Add gpio interrupt for GPIOAO.BIT7 as suggested by Neil.
>>>>> Changes v3
>>>>> --Drop the INI GPIOAO.BIT7 pinctrl.
>>>>> --Added missing RTC alias so that rtc get assigned correcly,
>>>>>   as suggested by Chris Hewitt.
>>>>> changes v2
>>>>> --Fix the missing INT (GPIOAO.BIT7) pinctrl.
>>>>> --Fix the missing rtcwakeup.
>>>>> --Drop the clock not required clock property by the PCF8563 driver.
>>>>> ---
>>>>>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts   | 17 +++++++++++++++++
>>>>>  1 file changed, 17 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>>>> index 34fffa6d859d..3e2aaa6f48e5 100644
>>>>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>>>> @@ -19,6 +19,8 @@ / {
>>>>>       aliases {
>>>>>               serial0 = &uart_AO;
>>>>>               ethernet0 = &ethmac;
>>>>> +             rtc0 = &rtc0;
>>>>> +             rtc1 = &vrtc;
>>>>>       };
>>>>>
>>>>>       dioo2133: audio-amplifier-0 {
>>>>> @@ -477,6 +479,21 @@ hdmi_tx_tmds_out: endpoint {
>>>>>       };
>>>>>  };
>>>>>
>>>>> +&i2c3 {
>>>>> +     pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
>>>>> +     pinctrl-names = "default";
>>>>> +     status = "okay";
>>>>> +
>>>>> +     rtc0: rtc@51 {
>>>>> +             reg = <0x51>;
>>>>> +             compatible = "nxp,pcf8563";
>>>>> +             /* RTC INT */
>>>>> +             interrupts = <GPIOAO_7 IRQ_TYPE_LEVEL_LOW>;
>>>>> +             interrupt-parent = <&gpio_intc>;
>>>>> +             wakeup-source;
>>>>> +     };
>>>>> +};
>>>>
>>>> There's still no pinctrl definition for the GPIO pin being used as the
>>>> IRQ.  It looks like you discussed this with Martin and he pointed you in
>>>> the right direction in your v3 series, but I don't see it in this
>>>> patch.
>>>>
>>> Yes I had followed the approach suggested by Martin on previous email and IRC.
>>> but it really did not work out for me in the testing.
>>>
>>> rtc-pcf8563 driver does not handle such gpio configuration.
>>> so the rtc probe will fail if we add gpio pinctl to *pinctrl-0*.
>>
>> No need for multiple pinctrl-*, simple add a new pinctrl to the rtc node like:
>>
>>
>> @@ -18,6 +18,8 @@
>>         aliases {
>>                 serial0 = &uart_AO;
>>                 ethernet0 = &ethmac;
>> +               rtc0 = &rtc0;
>> +               rtc1 = &vrtc;
>>         };
>>
>>         chosen {
>> @@ -266,6 +268,17 @@
>>         status = "okay";
>>  };
>>
>> +&ao_pinctrl {
>> +       rtc_int_pins: rtc-int {
>> +               mux {
>> +                       groups = "GPIOAO_7";
>> +                       function = "gpio_aobus";
>> +                       bias-disable;
>> +                       output-disable;
>> +               };
>> +       };
>> +};
>> +
>>  &cec_AO {
>>         pinctrl-0 = <&cec_ao_a_h_pins>;
>>         pinctrl-names = "default";
>> @@ -391,6 +404,23 @@
>>         };
>>  };
>>
>> +&i2c3 {
>> +       pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
>> +       pinctrl-names = "default";
>> +       status = "okay";
>> +
>> +       rtc0: rtc@51 {
>> +             pinctrl-0 = <&rtc_int_pins>;
>> +             pinctrl-names = "default";
>> +             reg = <0x51>;
>> +             compatible = "nxp,pcf8563";
>> +             /* RTC INT */
>> +             interrupts = <GPIOAO_7 IRQ_TYPE_LEVEL_LOW>;
>> +             interrupt-parent = <&gpio_intc>;
>> +             wakeup-source;
>> +       };
>> +};
>> +
>>  &ir {
>>         status = "okay";
>>         pinctrl-0 = <&remote_input_ao_pins>;
>>
>> DISCALIMER: not built or run tested
>>
>> Neil
>>
> 
> I have built this and tested, but still this gpio pin

Can you remove the "bias-disable" in rtc_int_pins and retry ?

The default bias is pull-up, removing it may cause this.

If it works, can you try "bias-pull-up" ? if it works, keep it and resend with my ack.

Neil

> 
> # cat /sys/kernel/debug/gpio
> gpiochip1: GPIOs 412-426, parent:
> platform/ff800000.sys-ctrl:pinctrl@14, aobus-banks:
>  gpio-414 (                    |enable              ) out lo
>  gpio-420 (                    |regulator-tflash_vdd) out hi
>  gpio-421 (                    |TF_IO               ) out lo
>  gpio-423 (                    |n2:blue             ) out lo
> 
> gpiochip0: GPIOs 427-511, parent: platform/ff634400.bus:pinctrl@40,
> periphs-banks:
>  gpio-442 (                    |PHY reset           ) out hi ACTIVE LOW
>  gpio-447 (                    |usb-hub-reset       ) out hi
>  gpio-448 (                    |regulator-hub_5v    ) out hi
>  gpio-449 (                    |regulator-usb_pwr_en) out lo
>  gpio-464 (                    |reset               ) out hi ACTIVE LOW
>  gpio-474 (                    |cd                  ) in  lo ACTIVE LOW
> 
> This change fails on *u-boot Hardkernel*
> There is some timing issue, some time it wakes up and
> some time it gets stuck.
> 
> # rtcwake -d /dev/rtc0 -s 10
> rtcwake: wakeup from "mem" using /dev/rtc0 at Tue Sep  1 14:05:47 2020
> [   35.565415] PM: suspend entry (deep)
> [   35.565589] Filesystems sync: 0.000 seconds
> [   72.670162] cfg80211: failed to load regulatory.db
> [   72.670164] Freezing user space processes ... (elapsed 0.001 seconds) done.
> [   72.676235] OOM killer disabled.
> [   72.679418] Freezing remaining freezable tasks ... (elapsed 0.001
> seconds) done.
> [   72.688636] meson8b-dwmac ff3f0000.ethernet eth0: Link is Down
> [   72.709953] sd 0:0:0:0: [sda] Synchronizing SCSI cache
> [   72.830228] Disabling non-boot CPUs ...
> [   72.831157] CPU1: shutdown
> [   72.832204] psci: CPU1 killed (polled 0 ms)
> [   72.837376] CPU2: shutdown
> [   72.837974] psci: CPU2 killed (polled 0 ms)
> [   72.843880] CPU3: shutdown
> [   72.844742] psci: CPU3 killed (polled 0 ms)
> [   72.850925] CPU4: shutdown
> [   72.851557] psci: CPU4 killed (polled 0 ms)
> [   72.858185] CPU5: shutdown
> [   72.858372] psci: CPU5 killed (polled 0 ms)
> bl30 get wakeup sources!
> process command 00000006
> bl30 enter suspend!
> Little core clk suspend rate 66700000
> Big core clk suspend rate 24000000
> store restore gp0 pll
> suspend_counter: 1
> Enter ddr suspend
> ddr suspend time: 17us
> alarm=0S
> process command 00000001
> cec ver:2018/04/19
> CEC cfg:0x0000
> WAKEUP GPIO cfg:0x00000000
> use vddee new table!
> kern log_addr:0x00
> cec T: 00
> err: tx not finish flag
> cec reset
> Set cec pinmux:0x11
> Set cec log_addr:0x10,ADDR0:10
> customer pwrkeys for IR is NULL, use defaults!
> 
> Best Regards
> -Anand
> 

