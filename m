Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9685949D696
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 01:12:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230024AbiA0AMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 19:12:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbiA0AMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 19:12:09 -0500
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C7C5C06161C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 16:12:09 -0800 (PST)
Received: by mail-qv1-xf2b.google.com with SMTP id hu2so1371477qvb.8
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 16:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2qyVl130RshpyW6cCsCHkr22IXlQl3PlBUaW6q4C5/o=;
        b=qm0tA72cvE6Av4C0XW69pHgl7zWq1/ypXN8owS7dYTk+fYkxxr42Q8SIRjZ9P6rk9/
         Ci94fOyhV3SBIDhnsmGscyk4qmwjb6sBXF/BzxW4mxaTLy/z5UcNFLWbhi8Z/AKxmwj+
         arRs7BFejcYrQ9sYI7ETISZzqKEW0U7hTR0s/TYvkqFhwEFX0vkLQbEf0ofqC9dS+DQ6
         2wzhl0IAw2MmRjWGOT4m6eiGHlVJBDRpUHEqjEj7Ajds+W3ZCLe2On1KhPt2EkNklqrR
         DxYG7/qNy1jsyROIXz8iIOaK4mxaMfafyn6RDbXc5IWTiv5Yjo6tXiksOueX0L5v4Muz
         c4MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2qyVl130RshpyW6cCsCHkr22IXlQl3PlBUaW6q4C5/o=;
        b=Fg92iA2gt3voN3y5yjDmmV2OrMw6YsVlryPpHcNaK7i8dGZ+bFQAJS7MWZyiBeu1ZO
         LjBV03rlf5/aAuowFCHbVScoocQfkIgjJST7+DbImmIlcjzclj2ASiEY+q84LuRNOttj
         mof437yAJIbA04Tk5A3xLY2P50yv+Bmve4JIQQC0vrzlpv4Hs5ZIiviRCRiq5AdsnEjp
         PK942r86hstx5oWkoMX0jdsWTHa8dUZ5sPRw1M+8j6bRyGBIIAAjdlaS+99EyiKzcI4Y
         Nx0tdui5jeF9zDWj8rFcm9pArdu+eQLLwL5pu+tOaGptpJ5X3hU0FJNJaIKmKyYicHu4
         O8Uw==
X-Gm-Message-State: AOAM533zZG+41CMhzC6AOWYZh/MG5NgnWzXJaJWuEnQ4WRfOCSb+VAWc
        AE03kvi4Tvmpm7gZ/sOGBmc=
X-Google-Smtp-Source: ABdhPJxdF4G4rZgO4KN8sNeusPJ5SwVhfzwsclRK6AoU381ldYvwjbEjhYE5JwVmJmRkqfr7D0xwgw==
X-Received: by 2002:a05:6214:230a:: with SMTP id gc10mr969263qvb.126.1643242328254;
        Wed, 26 Jan 2022 16:12:08 -0800 (PST)
Received: from [10.4.10.38] (146-115-144-188.s4282.c3-0.nwt-cbr1.sbo-nwt.ma.cable.rcncustomer.com. [146.115.144.188])
        by smtp.gmail.com with ESMTPSA id bi30sm477348qkb.132.2022.01.26.16.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 16:12:07 -0800 (PST)
Message-ID: <d69233d8-4e3d-56db-d4d3-1b39fe84ee30@gmail.com>
Date:   Wed, 26 Jan 2022 19:12:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH] ARM: dts: suniv: Add MMC and clock macros.
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        Mesih Kilinc <mesihkilinc@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        Chris Morgan <macroalpha82@gmail.com>
References: <20220125011352.2691365-1-Mr.Bossman075@gmail.com>
 <20220126235726.03abdab4@slackpad.fritz.box>
From:   Jesse Taube <mr.bossman075@gmail.com>
In-Reply-To: <20220126235726.03abdab4@slackpad.fritz.box>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/26/22 18:57, Andre Przywara wrote:
> On Mon, 24 Jan 2022 20:13:52 -0500
> Jesse Taube <mr.bossman075@gmail.com> wrote:
> 
> Hi Jesse,
> 
> I understand that get_maintainers.pl suggested this CC: list,  but you
> should add sunxi people and linux-arm kernel ML. Doing that now.
Uh yeah that makes sense in hind sight.
>> Include clock and reset macros and replace magic numbers.
>> Add MMC node.
> 
> This patch itself does not do much, does it? You would at least need to
> enable that in the board dts.
True it doesn't do much just so that its in both u-boot and linux.
> And this should be multiple patches:
> 1) replace numbers with macros (part of this patch)
> 2) Add the MMC compatible string combo to the the bindings doc
> 3) Add the *two* MMC nodes and at least the pinctrl node for MMC0 to the
> SoC .dtsi (partly in this patch)
> 4) Enable the MMC and the card detect pin in the Nano board .dts
> 
> I checked that the macros names match the numbers they replace, so
> you can add my R-b: on that patch 1 (if you follow my suggestion).
> The MMC node also seems to look sane.
That seems okay.
>>
>> Signed-off-by: Mesih Kilinc <mesihkilinc@gmail.com>
> 
> It is not evident why Mesih's S-o-b: is in here? The patch seems to be
> authored and sent by you? Either you make him the author if that is his
> patch originally, or you put him just as Cc: or in Suggested-by:, maybe.
I did write the patch after I wrote it I was looking at his github and 
he had almost the same patch.
> Cheers,
> Andre
> 
>> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
>> ---
>>   arch/arm/boot/dts/suniv-f1c100s.dtsi | 41 +++++++++++++++++++++++-----
>>   1 file changed, 34 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
>> index 6100d3b75f61..32872bb29917 100644
>> --- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
>> +++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
>> @@ -4,6 +4,9 @@
>>    * Copyright 2018 Mesih Kilinc <mesihkilinc@gmail.com>
>>    */
>>   
>> +#include <dt-bindings/clock/suniv-ccu-f1c100s.h>
>> +#include <dt-bindings/reset/suniv-ccu-f1c100s.h>
>> +
>>   / {
>>   	#address-cells = <1>;
>>   	#size-cells = <1>;
>> @@ -82,7 +85,7 @@ pio: pinctrl@1c20800 {
>>   			compatible = "allwinner,suniv-f1c100s-pinctrl";
>>   			reg = <0x01c20800 0x400>;
>>   			interrupts = <38>, <39>, <40>;
>> -			clocks = <&ccu 37>, <&osc24M>, <&osc32k>;
>> +			clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
>>   			clock-names = "apb", "hosc", "losc";
>>   			gpio-controller;
>>   			interrupt-controller;
>> @@ -93,6 +96,11 @@ uart0_pe_pins: uart0-pe-pins {
>>   				pins = "PE0", "PE1";
>>   				function = "uart0";
>>   			};
>> +
>> +			mmc0_pins: mmc0-pins {
>> +				pins = "PF0", "PF1", "PF2", "PF3", "PF4", "PF5";
>> +				function = "mmc0";
>> +			};
>>   		};
>>   
>>   		timer@1c20c00 {
>> @@ -108,14 +116,33 @@ wdt: watchdog@1c20ca0 {
>>   			reg = <0x01c20ca0 0x20>;
>>   		};
>>   
>> +		mmc0: mmc@1c0f000 {
>> +			compatible = "allwinner,suniv-f1c100s-mmc",
>> +				     "allwinner,sun7i-a20-mmc";
>> +			reg = <0x01c0f000 0x1000>;
>> +			clocks = <&ccu CLK_BUS_MMC0>,
>> +				 <&ccu CLK_MMC0>,
>> +				 <&ccu CLK_MMC0_OUTPUT>,
>> +				 <&ccu CLK_MMC0_SAMPLE>;
>> +			clock-names = "ahb", "mmc", "output", "sample";
>> +			resets = <&ccu RST_BUS_MMC0>;
>> +			reset-names = "ahb";
>> +			interrupts = <23>;
>> +			pinctrl-names = "default";
>> +			pinctrl-0 = <&mmc0_pins>;
>> +			status = "disabled";
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +		};
>> +
>>   		uart0: serial@1c25000 {
>>   			compatible = "snps,dw-apb-uart";
>>   			reg = <0x01c25000 0x400>;
>>   			interrupts = <1>;
>>   			reg-shift = <2>;
>>   			reg-io-width = <4>;
>> -			clocks = <&ccu 38>;
>> -			resets = <&ccu 24>;
>> +			clocks = <&ccu CLK_BUS_UART0>;
>> +			resets = <&ccu RST_BUS_UART0>;
>>   			status = "disabled";
>>   		};
>>   
>> @@ -125,8 +152,8 @@ uart1: serial@1c25400 {
>>   			interrupts = <2>;
>>   			reg-shift = <2>;
>>   			reg-io-width = <4>;
>> -			clocks = <&ccu 39>;
>> -			resets = <&ccu 25>;
>> +			clocks = <&ccu CLK_BUS_UART1>;
>> +			resets = <&ccu RST_BUS_UART1>;
>>   			status = "disabled";
>>   		};
>>   
>> @@ -136,8 +163,8 @@ uart2: serial@1c25800 {
>>   			interrupts = <3>;
>>   			reg-shift = <2>;
>>   			reg-io-width = <4>;
>> -			clocks = <&ccu 40>;
>> -			resets = <&ccu 26>;
>> +			clocks = <&ccu CLK_BUS_UART2>;
>> +			resets = <&ccu RST_BUS_UART2>;
>>   			status = "disabled";
>>   		};
>>   	};
> 
