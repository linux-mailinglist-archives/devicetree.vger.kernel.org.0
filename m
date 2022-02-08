Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A3A64ADBB7
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 15:56:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378862AbiBHOzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 09:55:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378745AbiBHOzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 09:55:16 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 695C3C03FEEC
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 06:55:12 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8FF7F3F1E0
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 14:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644332110;
        bh=s1IMl3bQpWn4BmhYXFrJkGqIg7SbAYtbaNCslVtkn9A=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=HMAz8B7Dwmmca22gRczJKVzfb1knOeIvmBsbxZreOTVJVcaaT3db50py4DW/FlxuD
         PFFg1TLTIazeQ31Vyj0G1PiCPf597wcdHPLiwr3Ri1ulaZAJ0KpkGRLbhDg9URsP64
         aOUODZm98XB+vg39V84E3jvyumQvdLY7DgKouH4upi/GKkWA2OOpvqqej3AHGEfxwj
         9uoLnLGjumotGTq4sTXu8i81kieYfwAjJjT9z7hlhJpPusfRLIMzrJZ6VkK2OvzKq5
         +GvEPINRZMjxl8QUeurHsMR9ToW4vTThNwh1dxGKZJ+TaIA4cFGyZNo3hEupnBO7oI
         11fttRKcpHGrQ==
Received: by mail-ed1-f72.google.com with SMTP id 30-20020a508e5e000000b0040f6642e814so3827940edx.19
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 06:55:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=s1IMl3bQpWn4BmhYXFrJkGqIg7SbAYtbaNCslVtkn9A=;
        b=uYWsQYUFQR6Cgu/sMMzYWCDSp2UcCpH3oB98KMR6Xos3+OHDsxsIg3LpBjegwvNnHX
         Sf3S2QqNYrUjElBb98VxhshW69SUe5W0fbOn3hRPhtRfI9+5TY1YvE3Pb5patO81OMgR
         0D/IMa8c4AKEMEZwmSYxemum+LiVlutbD3xZt2IR3Znt8q5OsRTPOp0+PiTCUCbFnHik
         VAUL+TPy8fhVjHKPaR7suWYHRGph8Pifgu9LfXH40RdU3l13g5KvTcsGk5oTiTj8RgFT
         FHutc23HO5WwC4mv3tlVwxUZYMMKOJMXzR5IL+v1J25+0xOpDHNvmAI1+52vYYhul2Jl
         zxbA==
X-Gm-Message-State: AOAM533OyOC9TwHbH88H5tE0n4GyX3ZdN9jTkI96COewIh9nA1AMNBU9
        00zKw/pbDgByrQlkYErmOpu6QACuaC8SD3HMb6hNcrQ457GBdet3yNv6tBVhDpuRdyVf3FVUE51
        tuzAMUZYaNNmhDtC9vo6DEphO5r1DF3YT5CV0gPQ=
X-Received: by 2002:a17:907:1c01:: with SMTP id nc1mr4166732ejc.659.1644332110285;
        Tue, 08 Feb 2022 06:55:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzBDSawfyjI97i8H3epieO8DgpiikxUatxwAPQp6uSpUnl0g6llplmwOmXOOamh8buC1ms3Yg==
X-Received: by 2002:a17:907:1c01:: with SMTP id nc1mr4166711ejc.659.1644332110105;
        Tue, 08 Feb 2022 06:55:10 -0800 (PST)
Received: from [192.168.0.93] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id o11sm7026147edh.75.2022.02.08.06.55.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Feb 2022 06:55:09 -0800 (PST)
Message-ID: <bca78043-d552-a7e4-149b-087c6226d8bf@canonical.com>
Date:   Tue, 8 Feb 2022 15:55:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: crypto: Convert Atmel AES to yaml
Content-Language: en-US
To:     Tudor.Ambarus@microchip.com, herbert@gondor.apana.org.au
Cc:     Nicolas.Ferre@microchip.com, Claudiu.Beznea@microchip.com,
        alexandre.belloni@bootlin.com, linux-crypto@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Kavyasree.Kotagiri@microchip.com, devicetree@vger.kernel.org
References: <20220208104918.226156-1-tudor.ambarus@microchip.com>
 <20220208104918.226156-2-tudor.ambarus@microchip.com>
 <f5563605-7b61-c23e-68ec-6e315efb268d@canonical.com>
 <d72a96a9-f99c-5204-00d0-00f78ea96772@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <d72a96a9-f99c-5204-00d0-00f78ea96772@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2022 15:40, Tudor.Ambarus@microchip.com wrote:
> On 2/8/22 13:58, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 08/02/2022 11:49, Tudor Ambarus wrote:
>>> Convert Atmel AES documentation to yaml format. With the conversion the
>>> clock and clock-names properties are made mandatory. The driver returns
>>> -EINVAL if "aes_clk" is not found, reflect that in the bindings and make
>>> the clock and clock-names properties mandatory. Update the example to
>>> better describe how one should define the dt node.
>>>
>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>> ---
>>>  .../crypto/atmel,at91sam9g46-aes.yaml         | 65 +++++++++++++++++++
>>>  .../bindings/crypto/atmel-crypto.txt          | 20 ------
>>>  2 files changed, 65 insertions(+), 20 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
>>>
>>
>> I understand that you keep the license GPL-2.0 (not recommended mix)
>> because of example coming from previous bindings or from DTS (both GPL-2.0)?
>>
> 
> The previous bindings did not have a license specified. We have DTS files with
> these nodes that are either (GPL-2.0+ OR MIT) or GPL-2.0-or-later. The drivers
> are GPL-2.0. I thought to follow the drivers. I see the example in [1] uses
> (GPL-2.0-only OR BSD-2-Clause). I see the crypto bindings that are converted
> to yaml are either (GPL-2.0-only OR BSD-2-Clause) or GPL-2.0-only. Is there
> another guideline that I miss?
> 

Yes, there is. Run checkpatch (your question kinds of point to the fact
that you did not run it...):
WARNING: DT binding documents should be licensed (GPL-2.0-only OR
BSD-2-Clause)


If your new bindings use copied/derivative description or DTS code which
is licensed as only GPL-2.0, the bindings itself as derivative work
might need to stay as GPL-2.0 as well. Unless copyright holders agree to
re-license this as GPL2-OR-BSD. As representing company, your patch
might be enough to re-license, but maybe other people contributed. I
don't know.

I just wanted to be sure that you use GPL-2.0 in purpose, because
GPL2-OR-BSD cannot be used.

Best regards,
Krzysztof
