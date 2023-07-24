Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E57375F8E6
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 15:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbjGXNvh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 09:51:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231283AbjGXNvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 09:51:23 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7413F30E1
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 06:48:24 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-991c786369cso694608866b.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 06:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690206503; x=1690811303;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+lEDKhusGdw1782Vez2SrPDAzeSLm2L/BTPf8C05jH8=;
        b=VsS3uEedy8IJ+nzZiLKn+YXPGocfXhv0LzQMetVQqWk4xC2uHlcr/IP4tieBORitrw
         nUpu7RcCzHMtqpiWBd8Krd6zGcjpa2VyaPxxG6SUvrffRjD5iFdirgekjDx7vDNe4RCN
         J9Dn0kQuikzyMxHSjQk8BVBDSPKN0v67dGPOuo34GAtHXNPXW2ZIMidelaW8EWFUuB8u
         nQBMy1jonUHN48wI0kgXSgm4Kl5W4TgvGeFkdj9FRQeOFqubvv3h/w+KvkwlPgKjiCSf
         Cl+RLMgFkZFAZwUh/dspBYYyXqJzU2QHWEaCL9oB40FPP9hyfV228P4BtEDaFt1Uxu9d
         qlzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690206503; x=1690811303;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+lEDKhusGdw1782Vez2SrPDAzeSLm2L/BTPf8C05jH8=;
        b=cwxU7LN/PcHjxLbdOW8YdYGX08mNIN1l1SrLi4jv4We7HPzFY6Sz3ztirGKLw4twY9
         J8GvUExZ7i9MVZKoxshRDlHkYmf3N6CfbxNK3Duy9GiZt70BKnl9RTuo+Xb56mz3xmya
         zTgKv5SjXj73sfJAWQ0boJ0rrdmHwhaA3XX7r+KherCxWLDlQW9i9dvn/EQWQP5iKjvn
         VeKBijHk13HldG6wrDMKqn1kruCutW1jaclRnEsLH5bxUYYsFZpCQmn7DfZUs13TV/Xp
         ovlVEZ7/2FMH0vlrixenS3lLHBONYF/e71lrFKA+9UvUwU/HgzFRJNSVo3jKkERTe30q
         s4EQ==
X-Gm-Message-State: ABy/qLbKOlRXywd7uk36wsLM8OtfuGxD+VTgh/JszuWpELZ0qp9OTtQ2
        SptPohDw3nwxX1tlnEusINFFnw==
X-Google-Smtp-Source: APBJJlGHaYWtbVst3kdQOSAVE2F2B9ShZrP9PACMM5JjtwkyjQsa3Kn5Sj06PcSKFXgSG/BNeW6suw==
X-Received: by 2002:a17:906:9bf6:b0:988:6e75:6b3d with SMTP id de54-20020a1709069bf600b009886e756b3dmr9402624ejc.33.1690206502780;
        Mon, 24 Jul 2023 06:48:22 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id xo22-20020a170907bb9600b0098860721959sm6715356ejc.198.2023.07.24.06.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jul 2023 06:48:22 -0700 (PDT)
Message-ID: <c9dd3840-a1e3-79ad-23ea-12cdf683376d@linaro.org>
Date:   Mon, 24 Jul 2023 15:48:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 35/42] ARM: dts: ep93xx: add ts7250 board
Content-Language: en-US
To:     Nikita Shubin <nikita.shubin@maquefel.me>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hartley Sweeten <hsweeten@visionengravers.com>,
        Lennert Buytenhek <kernel@wantstofly.org>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Michael Peters <mpeters@embeddedTS.com>,
        Kris Bahnsen <kris@embeddedTS.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230605-ep93xx-v3-0-3d63a5f1103e@maquefel.me>
 <20230605-ep93xx-v3-35-3d63a5f1103e@maquefel.me>
 <4b0f8b39-bec5-6f5d-1b98-8145e334ed94@linaro.org>
 <2c7e838ae4e49b72185626935f886d07895e8192.camel@maquefel.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2c7e838ae4e49b72185626935f886d07895e8192.camel@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/07/2023 15:41, Nikita Shubin wrote:
>>> diff --git a/arch/arm/boot/dts/cirrus/ep93xx-ts7250.dts
>>> b/arch/arm/boot/dts/cirrus/ep93xx-ts7250.dts
>>> new file mode 100644
>>> index 000000000000..625202f8cd25
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/cirrus/ep93xx-ts7250.dts
>>> @@ -0,0 +1,145 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * Device Tree file for Technologic Systems ts7250 board based on
>>> Cirrus EP9302 SoC
>>> + */
>>> +/dts-v1/;
>>> +#include "ep93xx.dtsi"
>>> +#include <dt-bindings/dma/cirrus,ep93xx-dma.h>
>>> +
>>> +/ {
>>> +       compatible = "technologic,ts7250", "cirrus,ep9301";
>>> +       model = "TS-7250 SBC";
>>> +       #address-cells = <1>;
>>> +       #size-cells = <1>;
>>> +
>>> +       chosen {
>>> +       };
>>> +
>>> +       memory@0 {
>>> +               device_type = "memory";
>>> +               /* should be set from ATAGS */
>>> +               reg = <0x00000000 0x02000000>,
>>> +                     <0x000530c0 0x01fdd000>;
>>> +       };
>>> +
>>> +       nand-controller@60000000 {
>>
>> Where is this address? It does not work like that. If this is part of
>> SoC, then should be in DTSI and part of soc node. If not, then it is
>> some other bus which needs some description. Top-level is not a bus.
>>
> 
> It's some kind of EBI, but it doesn't need a driver it is transparent 

I did not mention any drivers. It's not really important here.


> on ts7250, the logic is controlled through installed CPLD.
> 
> The EBI it self is a part of the SoC through:

So should be in soc.

> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/arch/arm/mach-ep93xx/soc.h#L35
> 
> EP93XX_CS0_PHYS_BASE_ASYNC to EP93XX_CS0_PHYS_BASE_SYNC.
> 
> So for ts7250 this includes:
> 
> - NAND
> - m48t86
> - watchdog
> 
> I don't even know how to represent it correctly, would "simple-bus"
> with "ranges" defined suit here, so it will represent hierarchy but
> won't do anything ?

You said it is part of soc, so why shouldn't it be in the soc?

> 
>> You should see errors when testing dtbs with W=1.
> 
> Strangely - i don't see any, but anyway the above will change.



Best regards,
Krzysztof

