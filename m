Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D67EC599581
	for <lists+devicetree@lfdr.de>; Fri, 19 Aug 2022 08:57:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242758AbiHSGtx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 02:49:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243232AbiHSGtw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 02:49:52 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C67D7D32
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 23:49:51 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id z6so4945745lfu.9
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 23:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=0aFm45vhUsFQmWN32/3tsrKJoEI1kItFWdWI05G8olA=;
        b=JKLCnf25hJNe1J6a02C4Pk4mvROY4c82wFAf5xqqiTpfUlfLiTx2gngBVnHqyPteMu
         AHVfGnguk+Rc2xLHbILGCldHmI5mB+1uGJU7KWcbQLOaKFnYLcfkD7MI7Ab7vr/2VFuG
         t7egUJN5KT6zz1mHLATDz4r8pFA8xCOfxOu7F7AVI0mIBMiDMiiAxyQx0ilmTVYVcuAr
         sF6zbKEf/TLKn+lvdJ1K8DyuTFu81uMnyVW27Vg1yy89aTySS8V/uf28lLbf6sTqeDGy
         WdrGg2DYzJ6DT98J33Cf5kfpCMb1cD8433xUYratIjOXLVgOFvAgd6/1MsN8sbVXmY4A
         Ktog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=0aFm45vhUsFQmWN32/3tsrKJoEI1kItFWdWI05G8olA=;
        b=oEZmlB+GNFyoIe6F5YubtWzLlPzT1Ik2BRQoiVhdwkWOPQBK2EISFwfOb2j4tX55oJ
         kqjMfK22KHy7Xbl1tmFQwhhTR3b+oEC9QlnMGG/I45Kjcx23BOfptUNA3iQRiq9vnyCS
         sChPKc8McYYUIXxsOFppSkQF0pI9ucXg/SyIPN5TVk/7OIFX1N08bRBKRTNQGsHQdA62
         NaHsVKKtNqGtuwt4RfM2/9EcM2PEonJBXHaCuV8mxgALzTej8xM7iS8LpAB8Xya3ptOm
         /oqOO9xAWFEDExIgO1xZTiszVEbTVbSELjuPB74st/pS7XfmDF1KVZZuWk9kkpnnRGBj
         O0zw==
X-Gm-Message-State: ACgBeo0yO39mPqs4R5EGllomp+xpDrra6IawbOq3i9tFojdCEje79lGL
        AXgDlkl1H7owPJVy8/Uk/H9Cg0AGmOs8oNyy
X-Google-Smtp-Source: AA6agR4aClINEBXF7YiW+1smN3G7p5mGau9H55/Jo364twd381c+5CaP/1qsaRwRfGfq8JPletm5YQ==
X-Received: by 2002:a05:6512:2348:b0:492:ba80:5144 with SMTP id p8-20020a056512234800b00492ba805144mr1858781lfu.467.1660891789439;
        Thu, 18 Aug 2022 23:49:49 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id a1-20020ac25201000000b0048b26d4bb64sm524730lfl.40.2022.08.18.23.49.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 23:49:48 -0700 (PDT)
Message-ID: <65789dad-32c4-5437-9edf-d23475f5de46@linaro.org>
Date:   Fri, 19 Aug 2022 09:49:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Anbernic RG353 and RG503
Content-Language: en-US
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-4-macroalpha82@gmail.com>
 <e30e41c6-04b4-bf48-b034-b722f950ac90@linaro.org>
 <SN6PR06MB53424AA16DDA579063D11A46A56D9@SN6PR06MB5342.namprd06.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN6PR06MB53424AA16DDA579063D11A46A56D9@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2022 19:33, Chris Morgan wrote:
> On Thu, Aug 18, 2022 at 11:14:17AM +0300, Krzysztof Kozlowski wrote:
>> On 17/08/2022 23:49, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> Anbernic RG353 and RG503 are both RK3566 based handheld gaming devices
>>> from Anbernic.
>>>
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
>>> +		red_led: led-2 {
>>> +			color = <LED_COLOR_ID_RED>;
>>> +			default-state = "off";
>>> +			function = LED_FUNCTION_STATUS;
>>> +			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
>>> +		};
>>> +	};
>>> +
>>> +	rk817-sound {
>>
>> just sound
>>
>> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
>>
> 
> Acknowledged. I just cut and pasted from a different tree, but I'll make this change.
> 
>>> +		compatible = "simple-audio-card";
>>> +		simple-audio-card,name = "anbernic_rk817";
>>> +		simple-audio-card,aux-devs = <&spk_amp>;
>>> +		simple-audio-card,format = "i2s";
>>> +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
>>> +		simple-audio-card,mclk-fs = <256>;
>>> +		simple-audio-card,widgets =
>>> +			"Microphone", "Mic Jack",
>>> +			"Headphone", "Headphones",
>>> +			"Speaker", "Internal Speakers";
>>> +		simple-audio-card,routing =
>>> +			"MICL", "Mic Jack",
>>> +			"Headphones", "HPOL",
>>> +			"Headphones", "HPOR",
>>> +			"Internal Speakers", "Speaker Amp OUTL",
>>> +			"Internal Speakers", "Speaker Amp OUTR",
>>> +			"Speaker Amp INL", "HPOL",
>>> +			"Speaker Amp INR", "HPOR";
>>> +		simple-audio-card,pin-switches = "Internal Speakers";
>>> +
>>> +		simple-audio-card,codec {
>>> +			sound-dai = <&rk817>;
>>> +		};
>>> +
>>> +		simple-audio-card,cpu {
>>> +			sound-dai = <&i2s1_8ch>;
>>> +		};
>>> +	};
>>> +
>>> +	sdio_pwrseq: sdio-pwrseq {
>>> +		compatible = "mmc-pwrseq-simple";
>>> +		clocks = <&rk817 1>;
>>> +		clock-names = "ext_clock";
>>> +		pinctrl-0 = <&wifi_enable_h>;
>>> +		pinctrl-names = "default";
>>> +		post-power-on-delay-ms = <200>;
>>> +		reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
>>> +	};
>>> +
>>> +	spk_amp: audio-amplifier {
>>> +		compatible = "simple-audio-amplifier";
>>> +		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
>>> +		pinctrl-0 = <&spk_amp_enable_h>;
>>> +		pinctrl-names = "default";
>>> +		sound-name-prefix = "Speaker Amp";
>>> +	};
>>> +
>>> +	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
>>
>> Node name:
>> regulator-vcc3v3-lcd0-n
>> vcc3v3-lcd0-n-regulator
>> or just regulator-0
> 
> Does this restriction only apply to node names for regulators, or all
> node names? The docs I looked at suggested that it was okay to use an
> underscore, but I'll defer to you.

Device node names should be generic and such rule applies everywhere.
For regulators and clocks, pretty often people want some specific
prefix/suffix, so I don't mind, but what I mind is the generic part.

underscores will get you warnings with W=1, so they are not accepted
even though the spec mentions them.

Best regards,
Krzysztof
