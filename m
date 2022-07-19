Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 247D757A87F
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 22:49:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240295AbiGSUtW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 16:49:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240314AbiGSUtV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 16:49:21 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00BDE5A164
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:49:20 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a10so18826021ljj.5
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 13:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lBZHyQYaguaHtWpG4h7QXqdd63w8FZxaLbUNGfHv6KY=;
        b=q7ZpGx5FuFId+mALoJ4ae4tIS84GJEbAs7oXKLVGmPISrM5jk0ovSiAKPogBOj0jYd
         zvt3aghKBI8vc8/P5OmrBTs1UN4YxZBq/jsJYGKPb8YV+qSK1tJap4HynnAbI+L2NA6E
         vdbZnUvxAt+N/uW/QUiotsc/boEhTAstwoP8zFMcISWZxE6ZTfMfFyh1dBs4hRyDkTp3
         bBzzLbFhYaYLJPlFyYXNxGis7PY0XS00G8NrF+fiITLK0CChVHMTihxkLopBlpJ7Tksx
         6RyBYrVfKTYjztHTg6kFbXfKqbTyEcojIN5l+6YNvCk1id0//gOhuZUL5OQDjW0SIIO3
         rJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lBZHyQYaguaHtWpG4h7QXqdd63w8FZxaLbUNGfHv6KY=;
        b=gCHPy64rxKqxc1paScs0DEMkEor5kKvr+JVucbEuzyNlo82RBxwAHTUW7TPsv6xmkT
         x/q1TMdSOMp1S03yZ7VXNmTpoTJlXRzk6tDzoBX7IoRh8NjqZ9c8hGZrVyP+vA/LUTWE
         8U5Qh/8MQUJQ7oULy/+bXoH9MCgtSVg5SGVeB57SOIzS0/Z0P+RyI8W6UZFfY9NOOFDO
         nw2d4KRmz4W5XlkhLZDKaOC1PxsnlL18Klqg849MQCXQm1vPpnbhZEGBDf7fvuX7Tn/U
         HnejByfQOq1RQGXoHeEmUV34orIqcM2VW6heubP4uUyAjKTvOc7sW60I/PBzhlQfzzd5
         x+eQ==
X-Gm-Message-State: AJIora9W2dxET/bhOVnd0RnSHxbQIoG4DnA91VcyHExu+UJv6PVmGwbk
        9w+Gu2JnmbJ1NlISUv+9pfidcQ==
X-Google-Smtp-Source: AGRyM1tCEq19UggsS8vvwrbAg3dRAYGxaRiOwFR4onEVcAhioNVDfUcQm5yPOUzECDApPHd/Br3f7A==
X-Received: by 2002:a05:651c:2c1:b0:25d:79be:766a with SMTP id f1-20020a05651c02c100b0025d79be766amr15244770ljo.225.1658263758322;
        Tue, 19 Jul 2022 13:49:18 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id r16-20020ac25c10000000b0047f7c897b61sm3387903lfp.129.2022.07.19.13.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 13:49:17 -0700 (PDT)
Message-ID: <f5e2876d-f004-8fbf-d9af-15ece34afcb9@linaro.org>
Date:   Tue, 19 Jul 2022 22:49:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20220713194331.95971-1-shenwei.wang@nxp.com>
 <20220713194331.95971-2-shenwei.wang@nxp.com>
 <2631b0be-76a4-98b1-04cb-c4b70f99ca93@linaro.org>
 <AM9PR04MB8274E1AE88FCD501F9DCA621898B9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <13bc292a-6043-b916-7d29-5c4784877c0b@linaro.org>
 <AM9PR04MB827453674A7D832E06CAA63F898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <3e4e1d8b-5081-3049-598f-56c146a5af95@linaro.org>
 <AM9PR04MB82740C5885999A549DC33F80898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM9PR04MB82740C5885999A549DC33F80898F9@AM9PR04MB8274.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2022 21:13, Shenwei Wang wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Tuesday, July 19, 2022 1:34 AM
>> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
>> <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
>> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
>> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
>> Cc: dl-linux-imx <linux-imx@nxp.com>; devicetree@vger.kernel.org
>> Subject: Re: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
>>
>> Caution: EXT Email
>>
>> On 18/07/2022 21:08, Shenwei Wang wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Sent: Monday, July 18, 2022 7:48 AM
>>>> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
>>>> <robh+dt@kernel.org>; Krzysztof Kozlowski
>>>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
>>>> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
>>>> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
>>>> Cc: dl-linux-imx <linux-imx@nxp.com>
>>>> Subject: Re: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl
>>>> support
>>>>
>>>> Caution: EXT Email
>>>>
>>>> On 15/07/2022 20:04, Shenwei Wang wrote:
>>>>> Hi Krzysztorf
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>> Sent: Thursday, July 14, 2022 6:44 AM
>>>>>> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
>>>>>> <robh+dt@kernel.org>; Krzysztof Kozlowski
>>>>>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo
>>>>>> <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
>>>>>> Pengutronix Kernel Team <kernel@pengutronix.de>; Peng Fan
>>>>>> <peng.fan@nxp.com>
>>>>>> Cc: dl-linux-imx <linux-imx@nxp.com>
>>>>>> Subject: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
>>>>>>
>>>>>> Caution: EXT Email
>>>>>>
>>>>>>> +<dt-bindings/firmware/imx/rsrc.h>
>>>>>>> +#include <dt-bindings/gpio/gpio.h> #include
>>>>>>> +<dt-bindings/interrupt-controller/arm-gic.h>
>>>>>>> +#include <dt-bindings/input/input.h> #include
>>>>>>> +<dt-bindings/pinctrl/pads-imx8dxl.h>
>>>>>>> +#include <dt-bindings/thermal/thermal.h>
>>>>>>> +
>>>>>>> +/ {
>>>>>>> +     interrupt-parent = <&gic>;
>>>>>>> +     #address-cells = <2>;
>>>>>>> +     #size-cells = <2>;
>>>>>>> +
>>>>>>> +     aliases {
>>>>>>> +             ethernet0 = &fec1;
>>>>>>> +             ethernet1 = &eqos;
>>>>>>> +             gpio0 = &lsio_gpio0;
>>>>>>> +             gpio1 = &lsio_gpio1;
>>>>>>> +             gpio2 = &lsio_gpio2;
>>>>>>> +             gpio3 = &lsio_gpio3;
>>>>>>> +             gpio4 = &lsio_gpio4;
>>>>>>> +             gpio5 = &lsio_gpio5;
>>>>>>> +             gpio6 = &lsio_gpio6;
>>>>>>> +             gpio7 = &lsio_gpio7;> +         i2c2 = &i2c2;
>>>>>>> +             i2c3 = &i2c3;
>>>>>>
>>>>>> Board aliases, not SoC.
>>>>>
>>>>> We take these as  the SoC aliases because we want to have the same
>>>>> alias for
>>>> the specific IP instance independent of the board design. All the
>>>> i.mx SoCs use the same rule.
>>>>
>>>> UART, most likely also I2C and SPI are board design dependent. Just
>>>> because error was made in several other files, it is not a reason to
>>>> make it again, so the last argument is irrelevant.
>>>>
>>>
>>> The SoC alias here can give a specific IP module a uniform device file name
>> independent of board design.
>>
>> It can, yet the specific alias depends on the usage of interfaces on the board,
>> thus is board dependent.
> 
> No matter how you use the interface on the board, you can still use the SoC alias by default. If a user doesn't like some of the default SoC alias, he can re-define those in his board alias. As I know, so far most of our customers just use the SoC alias with no changes.

This is the argument of - let's put all possible stuff and many not
existing devices like 10 different LCD panels to DTSI because customers
can always enable what they want. Nope.

> 
>>
>>
>>>  Can you please let me know what problems are discovered with the SoC alias
>> taking the UART as an example?
>>
>> Arnd explained it nicely:
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kern
>> el.org%2Flinux-rockchip%2FCAK8P3a25iYksubCnQb1-
>> e5yj%3DcrEsK37RB9Hn4ZGZMwcVVrG7g%40mail.gmail.com%2F&amp;data=05
>> %7C01%7Cshenwei.wang%40nxp.com%7C2b0eb5df69464b445b5d08da6950a8
>> 83%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C6379380923851874
>> 99%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiL
>> CJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=v45G22t
>> TdVszPMb3ok4EAyLgFnzz%2Fj0U4QZMTFjpZ%2FI%3D&amp;reserved=0
>>
> 
> There is nothing wrong to have a SoC alias by default if those default aliases are most commonly accepted in the real products.  And this choice doesn't prevent a user to have a customized board alias if he wants.  This is a more flexible solution so far if you couldn't point out a concrete disadvantage.

Same misleading argument - putting not existing stuff to DTSI is not
advantage and does not give flexibility. DTSI should reflect what SoC
provides and aliases should represent what is available to the user,
e.g. via board connectors. Adding 10 aliases out of which 9 are for
*disabled* elements contradicts it.

Again, the same as clock-frequency, NXP is not special to receive some
type of exceptions. It seems you want your DTS to be treated
differently, but this is not how upstream process looks like.

Best regards,
Krzysztof
