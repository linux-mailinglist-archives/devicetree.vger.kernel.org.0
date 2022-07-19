Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A41257934C
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 08:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237048AbiGSGeE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 02:34:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234732AbiGSGeC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 02:34:02 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED2A524BDF
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 23:33:57 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id u19so14301364lfs.0
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 23:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HmsIlguYp/pvH/UoZprne7uJ73bg0GT+wlXX/nIaJ9s=;
        b=HQdhxQ2x2nyQW5B9/z+fhMMQDO5hZ/be1XKiCsA3t+om2tnRdplAz/2C5ThPUX9J3u
         E7kMtLJmx1K8lvMjh66CJnOJ3FMEkv7pWO4jZJ4p7r4lDpQ0OoJPlArOQjrwgiuGaC2q
         PqVzlc+knlklCSYP/3D9XgTOfz/o8h62l/PlcEeDeVntcHV8UxCyGeJjD6qpF+rYG6Gu
         lahxKuCNN6WXR80oH1G5B0iRlqxbpgxYLKAbySLhHESbXCKOWXYzvqYLVa1vGFLiGDwO
         6iIzTjg+CjLQGUbDEuikA0fnChtOJSMYoL8gsWpBLs3X+3NYoKrU/DdnPpbyvxA/9vUV
         vvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HmsIlguYp/pvH/UoZprne7uJ73bg0GT+wlXX/nIaJ9s=;
        b=ovKn8ywa+IBvBs5itLUEY9tqgzF5cvcTt3iM7//qM3tgnQZyyXDHGznSRd0RxDwd0c
         n0BhJRZ73gz6o2IrcvGp7062/qbwCLZE6DsF3ZazuPcaGxgqimBkcooKlJ6bon/X1qlM
         2ZlfG0xUPyuLqddlXhBg1rjYhogwaHcz7+DWK02vJXFbmAXUbA9x6e40pkn5D/+HK+Qz
         9nJiQCsKOVw0zjVPQUr2D2Uigi6fhvdbZqhKf2bzFADgm5svVB6J+eQ0sTPchp10DSOG
         c1VlioWqWNHpVcnTkD5aCzxmkMgsfVUX6/wBdR6M+ac5XfyyOQDCX1tEe+sSG5012IEY
         xAUg==
X-Gm-Message-State: AJIora9dqRkt9rF96HixC2cilev2rFMWnEwT0B16pzSYbfkQVcsmHWXG
        VnD3L5PIaAkuXsBOjxS4wjgXyg==
X-Google-Smtp-Source: AGRyM1s2W9cyDOlgTBjHVm4CmD4/qzMIkac0UI7uuXE4XvN3QnZvqufoBO3ze0Z/A8KeuPsgsRvRzg==
X-Received: by 2002:a05:6512:2285:b0:487:2538:f0e0 with SMTP id f5-20020a056512228500b004872538f0e0mr17949407lfu.614.1658212436339;
        Mon, 18 Jul 2022 23:33:56 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f47000000b004786332a849sm3065726lfz.41.2022.07.18.23.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 23:33:55 -0700 (PDT)
Message-ID: <3e4e1d8b-5081-3049-598f-56c146a5af95@linaro.org>
Date:   Tue, 19 Jul 2022 08:33:54 +0200
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM9PR04MB827453674A7D832E06CAA63F898C9@AM9PR04MB8274.eurprd04.prod.outlook.com>
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

On 18/07/2022 21:08, Shenwei Wang wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Monday, July 18, 2022 7:48 AM
>> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
>> <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
>> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
>> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
>> Cc: dl-linux-imx <linux-imx@nxp.com>
>> Subject: Re: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
>>
>> Caution: EXT Email
>>
>> On 15/07/2022 20:04, Shenwei Wang wrote:
>>> Hi Krzysztorf
>>>
>>>> -----Original Message-----
>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Sent: Thursday, July 14, 2022 6:44 AM
>>>> To: Shenwei Wang <shenwei.wang@nxp.com>; Rob Herring
>>>> <robh+dt@kernel.org>; Krzysztof Kozlowski
>>>> <krzysztof.kozlowski+dt@linaro.org>; Shawn Guo <shawnguo@kernel.org>;
>>>> Sascha Hauer <s.hauer@pengutronix.de>; Pengutronix Kernel Team
>>>> <kernel@pengutronix.de>; Peng Fan <peng.fan@nxp.com>
>>>> Cc: dl-linux-imx <linux-imx@nxp.com>
>>>> Subject: [EXT] Re: [PATCH 1/3] arm64: dts: imx: add imx8dxl support
>>>>
>>>> Caution: EXT Email
>>>>
>>>>> +<dt-bindings/firmware/imx/rsrc.h>
>>>>> +#include <dt-bindings/gpio/gpio.h>
>>>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>>>> +#include <dt-bindings/input/input.h> #include
>>>>> +<dt-bindings/pinctrl/pads-imx8dxl.h>
>>>>> +#include <dt-bindings/thermal/thermal.h>
>>>>> +
>>>>> +/ {
>>>>> +     interrupt-parent = <&gic>;
>>>>> +     #address-cells = <2>;
>>>>> +     #size-cells = <2>;
>>>>> +
>>>>> +     aliases {
>>>>> +             ethernet0 = &fec1;
>>>>> +             ethernet1 = &eqos;
>>>>> +             gpio0 = &lsio_gpio0;
>>>>> +             gpio1 = &lsio_gpio1;
>>>>> +             gpio2 = &lsio_gpio2;
>>>>> +             gpio3 = &lsio_gpio3;
>>>>> +             gpio4 = &lsio_gpio4;
>>>>> +             gpio5 = &lsio_gpio5;
>>>>> +             gpio6 = &lsio_gpio6;
>>>>> +             gpio7 = &lsio_gpio7;> +         i2c2 = &i2c2;
>>>>> +             i2c3 = &i2c3;
>>>>
>>>> Board aliases, not SoC.
>>>
>>> We take these as  the SoC aliases because we want to have the same alias for
>> the specific IP instance independent of the board design. All the i.mx SoCs use
>> the same rule.
>>
>> UART, most likely also I2C and SPI are board design dependent. Just because
>> error was made in several other files, it is not a reason to make it again, so the
>> last argument is irrelevant.
>>
> 
> The SoC alias here can give a specific IP module a uniform device file name independent of board design.

It can, yet the specific alias depends on the usage of interfaces on the
board, thus is board dependent.


>  Can you please let me know what problems are discovered with the SoC alias taking the UART as an example?

Arnd explained it nicely:
https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/


Best regards,
Krzysztof
