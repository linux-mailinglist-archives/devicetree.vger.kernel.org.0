Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3D7D48E9B8
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 13:11:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234891AbiANMLD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 07:11:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234815AbiANMK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 07:10:56 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F75BC06175C
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 04:10:38 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id x11so3856654lfa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 04:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=1ASk1ZaGWbl1L7bJNHe86eeFcaH9CpdLru4n5MCQlcU=;
        b=MlRoMxof9Ml4PwJ8Hk8FE71HorpzBpmc+XCju9M1ALUTNlAA104/xnlPYnWhqcFHIT
         9Nhq2OHAjf6Zy9BEt3xEM5jJtvk8oIWgVw721BKfkutsRKss6XaVBy1h6Ot1ppZbwAVd
         0T7ynlWTGE9xHHMB3XE0loVsfFWlExGmay9CnRVpUR0oSI/8wEjzgL4hYWnc0ESlbX/T
         rcO6MDjoFb3Y3VI+kaQdXx4jh8v9xrcn6WXUbhSOWWAmiYvZIXzHcxCUVuJpxsLkZSNd
         oSZuAMon8uuJ02wkbcVlCSmglnyOqPCUxk500KcypMdxeOJxAo8DaWURBJpdtsMdRUYG
         WVXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=1ASk1ZaGWbl1L7bJNHe86eeFcaH9CpdLru4n5MCQlcU=;
        b=0Su0DmyIX/87I+v4WEWMTT/pL+coCOzegeQBmsMTr/sbpxfzUSrQ1rMUK55a/qP822
         EFeyHdC+hDSHPa9HCd6V/wte1kqo0nRo4k9ExfoaTKK5FoBRoQL9asVpJGbqfldZ0bFS
         SaVpElkpMQAUUpTKhI1eUqmLwGnowye09IjKkuoiBhF0OzMHaycA5KiS/D9lkZ7liAtP
         oAbHOWpxNNov33KErZY+QWZNWiPNYrFU5NuBYv7SOKc+R3QtO5R53TpsX7Ew4W3cCtlw
         Du8+7/Hk+UxlT5LPEAimkN0dke/bj10skZuoVYKIEO52LTZdJNNTcq+jL7tg1ZsMLiHj
         TRaQ==
X-Gm-Message-State: AOAM5318y4mCp6RIwL6VBZPU3VLfu8yd97F3vqc1xI+6UQ0PG+EoVbSF
        Gs/ggmymMWGaiEHviBMc7gvHfpR3Z9D3IA==
X-Google-Smtp-Source: ABdhPJywfrC+coKBN7OPdaFzCiyrFlmxyAarB5oxDbujdSUVaek3Dx1liriNsNq0WjEr+4u2VHHG1A==
X-Received: by 2002:a05:6512:703:: with SMTP id b3mr6662402lfs.331.1642162236506;
        Fri, 14 Jan 2022 04:10:36 -0800 (PST)
Received: from [192.168.1.213] (81.5.110.253.dhcp.mipt-telecom.ru. [81.5.110.253])
        by smtp.googlemail.com with ESMTPSA id bq6sm566911lfb.191.2022.01.14.04.10.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 04:10:35 -0800 (PST)
Subject: Re: [PATCH v5 3/3] ARM: dts: sun8i: r40: add second ethernet support
To:     Andre Przywara <andre.przywara@foss.arm.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-sunxi@lists.linux.dev
References: <20220113053734.105813-1-boger@wirenboard.com>
 <20220113053734.105813-4-boger@wirenboard.com>
 <20220114094255.br6qqqgoajvhpt2x@houat>
 <20220114103750.01f95d70@donnerap.cambridge.arm.com>
From:   Evgeny Boger <boger@wirenboard.com>
Message-ID: <0d62080d-e373-8b6f-699a-b7e4e84a26ce@wirenboard.com>
Date:   Fri, 14 Jan 2022 15:10:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220114103750.01f95d70@donnerap.cambridge.arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



14.01.2022 13:37, Andre Przywara пишет:
> On Fri, 14 Jan 2022 10:42:55 +0100
> Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
>> On Thu, Jan 13, 2022 at 08:37:34AM +0300, Evgeny Boger wrote:
>>> R40 (aka V40, A40i, T3) has two different Ethernet IPs
>>> called EMAC and GMAC. EMAC only support 10/100 Mbit in MII mode,
>>> while GMAC support both 10/100 (MII) and 10/100/1000 (RGMII).
>>>
>>> In contrast to A10/A20 where GMAC and EMAC share the same pins
>>> making EMAC somewhat pointless, on R40 EMAC can be routed to port H.
>>> Both EMAC (on port H) and GMAC (on port A) can be then enabled at
>>> the same time, allowing for two ethernet ports.
>>>
>>> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
>>> ---
>>>   arch/arm/boot/dts/sun8i-r40.dtsi | 49 ++++++++++++++++++++++++++++++++
>>>   1 file changed, 49 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
>>> index 03d3e5f45a09..8770b105f86e 100644
>>> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
>>> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
>>> @@ -217,6 +217,19 @@ syscon: system-control@1c00000 {
>>>   			#size-cells = <1>;
>>>   			ranges;
>>>   
>>> +			sram_a: sram@0 {
>>> +				compatible = "mmio-sram";
>>> +				reg = <0x00000000 0xc000>;
>>> +				#address-cells = <1>;
>>> +				#size-cells = <1>;
>>> +				ranges = <0 0x00000000 0xc000>;
>>> +
>>> +				emac_sram: sram-section@8000 {
>>> +					compatible = "allwinner,sun4i-a10-sram-a3-a4";
>>> +					reg = <0x8000 0x4000>;
>>> +				};
>>> +			};
>>> +
>>>   			sram_c: sram@1d00000 {
>>>   				compatible = "mmio-sram";
>>>   				reg = <0x01d00000 0xd0000>;
>>> @@ -553,6 +566,24 @@ gmac_rgmii_pins: gmac-rgmii-pins {
>>>   				drive-strength = <40>;
>>>   			};
>>>   
>>> +			emac_pa_pins: emac-pa-pins {
>>> +				pins = "PA0", "PA1", "PA2",
>>> +				       "PA3", "PA4", "PA5", "PA6",
>>> +				       "PA7", "PA8", "PA9", "PA10",
>>> +				       "PA11", "PA12", "PA13", "PA14",
>>> +				       "PA15", "PA16";
>>> +				function = "emac";
>>> +			};
>>> +
>>> +			emac_ph_pins: emac-ph-pins {
>>> +				pins = "PH8", "PH9", "PH10", "PH11",
>>> +				       "PH14", "PH15", "PH16", "PH17",
>>> +				       "PH18","PH19", "PH20", "PH21",
>>> +				       "PH22", "PH23", "PH24", "PH25",
>>> +				       "PH26", "PH27";
>>> +				function = "emac";
>>> +			};
>> There's 17 pins on the first group, but 18 on the second, is it intentional?
> Yeah, looks like PA17 is missing above. This pin is used for MII only, so
> it is omitted from the existing gmac_rgmii_pins group.
>
> Evgeny: Did you try a 100MBit PHY on PortA? That should work with both the
> GMAC and EMAC, right? I wonder if we should add a group that connects all
> pins needed for MII to the GMAC as well, so basically the above (with PA17
> added), but using 'function = "gmac";'? Put an "/omit-if-no-ref/" before
> that (also to those above?) to avoid blowing up the DTB needlessly.
Hi Andre,

No, it's not intentional, thank you for noticing that!
I haven't tried EMAC on port A with the latest patch, but it should be 
trivial to do.
The problem with TXERR signal is that it's kind of optional, so it's 
hard to notice if it doesn't work properly.

As for adding gmac_*mii*_pins node, I think it could be useful. Do you 
suggest to add it to the same series? Strictly speaking, it has nothing 
to do with R40 and second ethernet support. GMAC is ubiquitous among 
Allwinner SoCs, so I think it would make sense to add to all SoCs at once.

As for /omit-if-no-ref/ on pinctrl nodes, is there a policy on it? I 
mean there are people (ourselves included) who use device tree overlays 
a lot, both in bootloader and kernel, so it's not that harmless.


> Cheers,
> Andre.


-- 
С уважением,
     Евгений Богер / Evgeny Boger
     CTO, Wiren Board Team
     https://wirenboard.com/ru
     +7 495 150 66 19 (# 33)

