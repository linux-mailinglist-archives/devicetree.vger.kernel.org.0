Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE5FE525159
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 17:36:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355998AbiELPgF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 11:36:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356011AbiELPgB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 11:36:01 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6760A4505C
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 08:35:59 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id dk23so10990597ejb.8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 08:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dY1vl3weSz3HUSkXvbO9oAN90X0HZR151m5rwAkxyvc=;
        b=h6gb1XURTrzoILQcvobjsYciUnutOsZHjaWMfUjMZKtanNQDuqSZtJqma1bTqKF4km
         Z+J4yPlE2SCEfwMHpQbejXF5kqd4foRaKIfVeasWXnGwWsJEGqbLBCjnQ7cGVgUPD+YT
         AjbWVqJOASkz6sksi1ztGgEi5B0EbsmJ8n7+a7iopsqD6M0B30MGLJPGduGXKmwHLAYH
         ibwrPYP7kDmokefeCIf7W+oStr//4sz3NAzWzP2NSX/6VSJ166nolMjHxXKO72Bq9Bka
         8rh4ibhsjYgZAF2SSKo1uhx8vHQrf3Ll5FnhrSpur4e3kTLNsU7yQ0+KdY2jA0m+/4fZ
         tbJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dY1vl3weSz3HUSkXvbO9oAN90X0HZR151m5rwAkxyvc=;
        b=VXJL5jCGiOErx7Y2VG8jL3Pnmog6+ejRbHpyQccPUxBRZ2xrEY50KLdDgFaig+QZkA
         Gx6TXfPTIQPFTCn8ysSS7sh5O14Lx3OaHTznzhAL996NDfPNlr0Dhz4toLXiUaOJLnBg
         O8MpKiY4aEqHiLJTcBv2UYjoJbATy9yGfHHuyQKKbtr1M+1dXwH97e0DZhBdtn02dxVD
         0OhP42Q/MOX48rK60GlQOVS02JPjnOlU44D6cEKyzYvqvnIopUzaLo5Wjnt367LM4cAr
         sjrevu5bl8KRyZjythxKtiKRg2FCPlZDyXQeWEYNq2OyC/YA2UuBzZA7epu5MCnKArrw
         2GLw==
X-Gm-Message-State: AOAM530D1KbQhZSrd1YwmTnBEGBP4cW3RMdE2RtVUbUDYBSu6sUdHVsS
        2kdYBcEX1aHzvyIvRvtNmIqwUg==
X-Google-Smtp-Source: ABdhPJypW6haEmycge0JF+bK+Lw6JxzlTIz9QIlMIt0MXSTRwanuOYTV+IG6WdwtrdjCY0RTVYcWmg==
X-Received: by 2002:a17:906:7313:b0:6f4:9079:2b2a with SMTP id di19-20020a170906731300b006f490792b2amr404816ejc.377.1652369758021;
        Thu, 12 May 2022 08:35:58 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l11-20020a170906414b00b006f3ef214ddcsm2209600ejk.66.2022.05.12.08.35.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 08:35:57 -0700 (PDT)
Message-ID: <6ce3c0b1-3f6a-24f6-bcf2-4d4125a97604@linaro.org>
Date:   Thu, 12 May 2022 17:35:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/2] dt-bindings: microchip-otpc: document Microchip OTPC
Content-Language: en-US
To:     Claudiu.Beznea@microchip.com, srinivas.kandagatla@linaro.org,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220510094457.4070764-1-claudiu.beznea@microchip.com>
 <20220510094457.4070764-2-claudiu.beznea@microchip.com>
 <75ce6291-77c7-c932-e8bb-a8bbae02431d@linaro.org>
 <c840c598-0413-5f40-0807-e3c314531f0a@microchip.com>
 <b5c586de-a3ae-0774-e0bf-e21852b65fa9@linaro.org>
 <59b47f0b-6201-3814-e17f-1435ce5c2dad@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <59b47f0b-6201-3814-e17f-1435ce5c2dad@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 17:31, Claudiu.Beznea@microchip.com wrote:

>>
>> Macro is a nice idea if it can be stable. I understood that length of
>> packets depends on hardware, so this part could be stable. But what
>> about number of packets, so the OTP_PKT_SAMA7G5_TEMP_CALIB_LEN below?
> 
> The OTP_PKT_SAMA7G5_TEMP_CALIB_LEN here is the length of thermal
> calibration packet. This length is fixed and will not be changed.
> 
> After these 2 packets (provided by Microchip) user may further flash any
> number of packets and use them as they wish.
> 
> Driver is in charge of scanning the NVMEM for the available packets and
> prepare a list with their IDs and their starting offsets in NVMEM memory
> such that when it receives a read request it will be able to decode the
> packet offset based on packet identifier.
> 
> In case different number of packets are available in NVMEM for different
> kind of setups (boards) these could also be referenced in board specific DT
> using OTP_PKT() macro and with proper length (which will depend on what
> user flashed).
> 
>> You wrote "Boot configuration packet may vary in length", so it could be
>> changed by Microchip?
> 
> Yes, between chip revisions its length could be changed.

Chip revisions like different board compatibles thus different
bindings/macro values? If not, then maybe better skip the length out of
bindings and just provide the first macro.



Best regards,
Krzysztof
