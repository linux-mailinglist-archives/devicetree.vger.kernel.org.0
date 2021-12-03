Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4171467A78
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 16:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234802AbhLCPpy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 10:45:54 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:57794
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233978AbhLCPpx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 10:45:53 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3FF6740038
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 15:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638546148;
        bh=lTk3MNuVLu96YWzY4ffX8Fgx2rZx49FpUrhHnTr7cDA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=up0Go4dubyJwfQovGf/i5kIuoj1I0dswk8A1A8NKClibaeyUVnXxHZ5aRFgMxAKPM
         0wKT/weKqVHIAa++Y30bmT9b92azDplKuJkN3avauYd2GybxmScJByTp9rYvjk0oZH
         Sq9MEnsdELuH/GRdHSQ3YAEORTlTsVDIHVJXSFVq7jaKpeGRNmZA/Ch7b8f9mH/rKN
         ERBq1UaS83+QST2eiaMp3auTw7Hmxaqo82skdrJGnQpF1xON9zmVqeIhj/TVAH8MFm
         eG28HeKmJT6vsGytHx+Ss0HWIy5lEWZR/tMcdSUFEVO9Lv7HDTSlXrGsnMKs6/4A6t
         Cko2JQLCeIhGQ==
Received: by mail-lj1-f197.google.com with SMTP id s16-20020a2ea710000000b0021b674e9347so1288618lje.8
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 07:42:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lTk3MNuVLu96YWzY4ffX8Fgx2rZx49FpUrhHnTr7cDA=;
        b=HT13rNO6B0fuy9BofR66HLhbMhdPQLj2uPEG8Owo/MxSI7u2NElI+J6UkqCm/LhIlK
         JsWF/vckvUv9U8Bb/sa909pqwGNrVw9LOKyu/P9LuWcAsmFpKKRfebPb5ND0w+UldCZs
         ktPhacBeIUnmrurXcjBRYGseUqLofUuMSfkUO/yiNEFcgBf/VaMl7aJRw1CjZLZsX/BJ
         1MebTkBJ79bh5ezZzoUVQB7fIwOGM0HFoR5Gr5j62cnKdAGwsfsd2JOAPpzjoP9fju6K
         khqpjZObixx6j2GXU1YI0F4DkbVqnFkqgBW2Nc2gAGU1E45u2lvgTspsjPqqc5McPkdP
         VdNQ==
X-Gm-Message-State: AOAM533ddL/AOCP1T3MjPKAJp7c3Al7s+k4QGEFoAbRWhM06JaVlpzx0
        JRyHtNQz/1+4dUu/Jd8KI98Zxx7R7lmlbWtYokrb5A92448QwjKxSfXjfpvcgLa+P1dQ04fKvoS
        4vnxiKalXTxWIBDOn0E0RKDa3OMVrtReU9mak4Js=
X-Received: by 2002:a2e:86cb:: with SMTP id n11mr19311944ljj.425.1638546147650;
        Fri, 03 Dec 2021 07:42:27 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxVhurzOWfS+CPRAFQbogE43XnffisN+K6tfpAmvKw/rqZB/xoa3BGf6i3Le0K3rhbqmZw+MQ==
X-Received: by 2002:a2e:86cb:: with SMTP id n11mr19311918ljj.425.1638546147449;
        Fri, 03 Dec 2021 07:42:27 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id e17sm406965lfr.296.2021.12.03.07.42.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 07:42:27 -0800 (PST)
Message-ID: <c3364060-fbf8-1151-2816-3784b1731891@canonical.com>
Date:   Fri, 3 Dec 2021 16:42:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 6/9] riscv: dts: microchip: mpfs: Fix reference clock node
Content-Language: en-US
To:     Conor.Dooley@microchip.com, geert@linux-m68k.org
Cc:     devicetree@vger.kernel.org, palmer@dabbelt.com,
        linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com, robh+dt@kernel.org,
        damien.lemoal@wdc.com, Lewis.Hanly@microchip.com
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-7-geert@linux-m68k.org>
 <3b8442c7-fafb-421b-cd5b-4b57d1b545c3@canonical.com>
 <fc4a0c49-1a3f-68d6-de54-820d3e9c0938@microchip.com>
 <738f161a-038a-b6f1-1ff7-65674ae75d06@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <738f161a-038a-b6f1-1ff7-65674ae75d06@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/12/2021 16:29, Conor.Dooley@microchip.com wrote:
> On 26/11/2021 10:16, conor wrote:
>> On 26/11/2021 09:48, Krzysztof Kozlowski wrote:
>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know 
>>> the content is safe
>>>
>>> On 25/11/2021 16:31, Geert Uytterhoeven wrote:
>>>> "make dtbs_check" reports:
>>>>
>>>>      arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: 
>>>> soc: refclk: {'compatible': ['fixed-clock'], '#clock-cells': [[0]], 
>>>> 'clock-frequency': [[600000000]], 'clock-output-names': 
>>>> ['msspllclk'], 'phandle': [[7]]} should not be valid under {'type': 
>>>> 'object'}
>>>>        From schema: dtschema/schemas/simple-bus.yaml
>>>>
>>>> Fix this by moving the node out of the "soc" subnode.
>>>> While at it, rename it to "msspllclk", and drop the now superfluous
>>>> "clock-output-names" property.
>>>>
>>>> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
>>>> ---
>>>>   arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 13 ++++++-------
>>>>   1 file changed, 6 insertions(+), 7 deletions(-)
>>>>
>>>
>>> It is also logical because refclk usually is not a property of the SoC.
>>> It actually might be a property of board...
>> This is one of the fun FPGAisms like the GPIO interrupt configuration. 
>> This clock setting is determined by what design has been loaded onto the 
>> FPGA - the msspll outputs are configurable, I could redo my FPGA design 
>> and change this to 500 MHz etc. In turn the msspll clock is set by 
>> another clock source that is actually on the board of either 100 or 125 
>> MHz.
>>
>> Since it's not set until bitstream programming time, I would agree that 
>> that property should be moved to out of mpfs.dtsi. (typo fixed)
> Geert/Krzysztof,
> Would the following make sense:
> - Since the refclk hardware is a part of the chip, move the refclk out 
> of the soc node but leave it in mfps.dtsi
> - The clk freq itself is set by the fpga bitstream, so move the 
> clock-frequency property to mpfs-icicle-kit.dts?

Yes, makes sense to me.


Best regards,
Krzysztof
