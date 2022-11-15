Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29B496292C3
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 08:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231993AbiKOHzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 02:55:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229664AbiKOHzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 02:55:39 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E04D18359
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 23:55:37 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id g7so23211361lfv.5
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 23:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P7kkKFOWrQTLKoBV+P616xRwUnjPXKHV1RSaoFXjrwk=;
        b=nU4Xft6mucL3YYPTT2rOdwfMaPDmlzKB+SXc2b8TMzAjoD8Oa2vVuhSAzPHtgSdtFf
         pQe1VLYW1k2hhJMjMEuIGIMLPA4bSG1+K17pFKI7paDvqzuxRCKKEu9dfI+1db6VKGDp
         2MLLf2atNHYN83JQHWUFg2oO5dQ+WE6XFzsbzA6e5t3GxVqgrGIQuPP7fHV3HVWRFvDo
         sslcJVAILxa0cG0Px+b1LYckjf477PsEn+V3dS59r5vVFk2ofY091SCVpMbtXXQPufRx
         VJhnJR5/eKaUNNQsZvWOIU2z6OM9xbom9jVvi0pEpL7nLHQ6lH8N2gQ4176t40PrfV7d
         3K3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P7kkKFOWrQTLKoBV+P616xRwUnjPXKHV1RSaoFXjrwk=;
        b=zvOb981cgfGz1B5sQ99r3vvc0Ks5uz96pFk4OM+rbox0CBuPoG3yKE0M4vA0TQCH3y
         0dBmuD8aOks9KPHuBPfXwAH1oZrh4acSl6NiP8DpQc2ej4hTqe3PAGa1b6s5bkM/qAMo
         FAsTbxTlmHJUJ5iF73mQ9ltKmWF/EsyKcXIGBuGuqyR+2mexz74JpwMTSgPZpW7Iy9Pp
         PlK2ZKeAZQkDRcxV4nl9nB7JT6uWlDGCLZpVg6nOaAgsJnJPIigViIOBicGukwVLtViF
         PgixFVVJveWfvi6XE/srXzSMElunHowBrs369z1gNwGOb5b38b6Q2+YB9SLrEnKDK+ub
         yN3w==
X-Gm-Message-State: ANoB5pmE3Hf+dmB9ms8ScURF2MrrmUnQgfFKSn6FLxn7azQ+8IPcXdwu
        1zL+BR2mQ8nbmYn64FDmcKG1x6rLH4XdEO10
X-Google-Smtp-Source: AA0mqf4FyXkIRGKiAqc/xbfNN0Lu9l5xTvPrUw9htGPNKpPwHE7EwirGDRYqoe756ovqlKw+rsxQlQ==
X-Received: by 2002:a05:6512:acf:b0:4a2:2a60:ecda with SMTP id n15-20020a0565120acf00b004a22a60ecdamr5182538lfu.81.1668498935795;
        Mon, 14 Nov 2022 23:55:35 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h4-20020ac25964000000b004979da67114sm2102833lfp.255.2022.11.14.23.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 23:55:35 -0800 (PST)
Message-ID: <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
Date:   Tue, 15 Nov 2022 08:55:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
 <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
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

On 15/11/2022 07:38, Jagan Teki wrote:
> On Tue, 8 Nov 2022 at 23:43, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 08/11/2022 05:13, Jagan Teki wrote:
>>> RV1126 is a high-performance vision processor SoC for IPC/CVR,
>>> especially for AI related application.
>>>
>>> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
>>> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
>>> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
>>> hybrid operation and computing power is up to 2.0TOPs.
>>>
>>> This patch add basic core dtsi support.
>>>
>>> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
>>> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>> ---
>>> Changes for v7:
>>> - fix dtbs_check
>>> - rearrange nodes
>>> - remove Edegble in license text
>>> Changes for v6:
>>> - add psci node
>>> Changes for v5:
>>> - none
>>> Changes for v4:
>>> - update i2c0
>>> - rebase on -next
>>> Changes for v3:
>>> - update cru and power file names
>>> Changes for v2:
>>> - split pinctrl in separate patch
>>>
>>>  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
>>>  1 file changed, 438 insertions(+)
>>>  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
>>>
>>> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
>>> new file mode 100644
>>> index 000000000000..a485420551f5
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/rv1126.dtsi
>>> @@ -0,0 +1,438 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
>>> + */
>>> +
>>> +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/pinctrl/rockchip.h>
>>> +#include <dt-bindings/power/rockchip,rv1126-power.h>
>>> +#include <dt-bindings/soc/rockchip,boot-mode.h>
>>> +
>>> +/ {
>>> +     #address-cells = <1>;
>>> +     #size-cells = <1>;
>>> +
>>> +     compatible = "rockchip,rv1126";
>>> +
>>> +     interrupt-parent = <&gic>;
>>> +
>>> +     aliases {
>>> +             i2c0 = &i2c0;
>>> +             serial0 = &uart0;
>>> +             serial1 = &uart1;
>>> +             serial2 = &uart2;
>>> +             serial3 = &uart3;
>>> +             serial4 = &uart4;
>>> +             serial5 = &uart5;
>>
>> These are not properties of a SoC but board. They depend on the
>> particular routing on the board... unless this SoC is an exception from
>> all others?
> 
> Was this a new feature to follow, didn't see this before at least
> rockchip SoC's.
> 

It's not exactly new comment, but rather not always enforced/given.

Best regards,
Krzysztof

