Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14BC5492EE3
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 21:01:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239626AbiARUBF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 15:01:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343552AbiARUAx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 15:00:53 -0500
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C758CC06161C
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 12:00:53 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id n8so12238841plc.3
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 12:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VgJXjfR+E4EG4i8ovYTlfXVYfj8jd0OTr9nYGe8BoIE=;
        b=fhIG/GQ9d5gQGP+Q9zCjGw/B42hP80HmFKzMVMf31N6PGyMqV/nSXPd6Hi6+pae9Iq
         Y7hD6UREVLbEQGsLp/OeFfsT5vfyzVn6uQYWTB6qqcsRp25r9Mv86l71YRQtuyBI4Z5V
         NbVuSBsZwRQ9igIFaoZDVWP4smzX6Tto1V6SA/wrfe/tmS5NZEY+U3AFsu+tCET+oXCp
         AuJxDaLhkEbOHMZGMold5kEvkZX1sIglpIdp0CtjxJAC/ZA8/1J25KrrEyFZ6ksDuqo8
         eFN5MjHwAITAoxZr8dOCeMXJHczDLynYF65qxHIts3hf2v5z7O1kARVhwsK6Bh8wUtTK
         49Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VgJXjfR+E4EG4i8ovYTlfXVYfj8jd0OTr9nYGe8BoIE=;
        b=1u5xWvULvKzTGE8a6j5BPBgUDzfbV++GAzZmi1VVYCLxb/XZnPc1rxV/rp7ACigyhO
         IS9uE7kqU9muJ0jYQn9+pvUg4PBzHMZqoEXgSbzOGbZhASTBUWM3HYFrIXbGc41vVoE7
         NXNnb029jIajEx9wtd/ydxtjjpUW3gipyvvvKoZqDobnSlpd2xdqCbxsX122d9q6kMdK
         oiI4/wAzV617MbDTKWvN9w008w8OZzxZ5Zydk1JoSTeg4uofosPB3xDZAxmN3ps8MBAm
         dVkyMiq5EI/2d5+yYDriqGBHgRJI8aGbZXmO0EEyRy9LzEBb4QPiW8lsaIwuWodbNFXa
         wWvw==
X-Gm-Message-State: AOAM530WyI9QFGwWkVscXpiYnn2sr/Dzr0edZtRCHkZg1xo3W8YYRQKJ
        WRDeBiBIHg1srVH6IK44wdOvKaWYNbc=
X-Google-Smtp-Source: ABdhPJzp9fh5dCmzm9Gwqf6MoztuBl1qKvjaNOm2gs3B4o1eVfNGcLU7JfrLBG/KO7ClARdvoSpbMg==
X-Received: by 2002:a17:902:ce88:b0:14a:8fda:e339 with SMTP id f8-20020a170902ce8800b0014a8fdae339mr21720159plg.95.1642536053241;
        Tue, 18 Jan 2022 12:00:53 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id f8sm15258747pga.69.2022.01.18.12.00.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 12:00:52 -0800 (PST)
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
To:     Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Cyril Brulebois <kibi@debian.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20211231115109.94626-1-uwe@kleine-koenig.org>
 <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com>
Date:   Tue, 18 Jan 2022 12:00:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/18/22 11:45 AM, Jean-Michel Hautbois wrote:
> Hi Uwe,
> 
> Thanks for the patch !
> 
> On 31/12/2021 12:51, Uwe Kleine-König wrote:
>> The cm4-io board comes with an PCF85063. Add it to the device tree to
>> make
>> it usable. The i2c0 bus can use two different pinmux settings to use
>> different pins. To keep the bus appearing on the usual pin pair (gpio0 +
>> gpio1) use a pinctrl-muxed setting as the vendor dts does.
>>
>> Note that if you modified the dts before to add devices to the i2c bus
>> appearing on pins gpio0 + gpio1 (either directly in the dts or using an
>> overlay), you have to put these into the i2c@0 node introduced here now.
>>
>> Reviewed-by: Maxime Ripard <maxime@cerno.tech>
>> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
>> ---
>> Hello,
>>
>> changes since v2 (20211216212948.nrfmm4jpbhoknfr5@pengutronix.de):
>>
>>   - add Maxime's R-b tag
>>   - change the commit log wording to say vendor dts instead of upstream
>>     dts
>>   - Add a paragraph to the commit log about breakage this commits
>>     introduces.
>>
>> Best regards
>> Uwe
>>
>>   arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 35 ++++++++++++++++++++++++
>>   1 file changed, 35 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>> b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>> index 19600b629be5..5ddad146b541 100644
>> --- a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>> +++ b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
>> @@ -18,6 +18,41 @@ led-pwr {
>>               linux,default-trigger = "default-on";
>>           };
>>       };
>> +
>> +    i2c0mux {
>> +        compatible = "i2c-mux-pinctrl";
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        i2c-parent = <&i2c0>;
>> +
>> +        pinctrl-names = "i2c0", "i2c0-vc";
>> +        pinctrl-0 = <&i2c0_gpio0>;
>> +        pinctrl-1 = <&i2c0_gpio44>;
>> +
>> +        i2c@0 {
>> +            reg = <0>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +        };
>> +
>> +        i2c@1 {
>> +            reg = <1>;
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            rtc@51 {
>> +                /* Attention: An alarm resets the machine */
>> +                compatible = "nxp,pcf85063";
>> +                reg = <0x51>;
>> +            };
>> +        };
>> +    };
>> +};
> 
> This is also needed for camera and display support.
> I tested it successfully with imx219 + unicam on mainline.

Thanks for testing, can you reply with a Tested-by tag so it could be
applied to the commit message when this gets picked up?
-- 
Florian
