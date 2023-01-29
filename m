Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41CE4680010
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 16:48:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbjA2Psf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 10:48:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbjA2Pse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 10:48:34 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 678D41A4BF
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 07:48:33 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso1613153wms.5
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 07:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U/1SEXBl/drT6B50+MLoCmrJXk4pQjWe0OUv8/ULGY0=;
        b=bHbAg0NEPiDWyIAfDBCrE9YEnCjl9DimD46s0O9s+iGCLDRWKJDdoXkcdY8Ic/GYqk
         2VhvBr3441g2GYPzGBEuPhINkeJobRkV+fA9OyuJTnTwZZwhDbxZLKrM0WHOwAAj6lI2
         HFwwAC91xT02fgqj+3kiNoArc+FJiJusmsBxIiuKIY7nX5aykzq2ufFKxzYR0sx8dKW/
         czTO6hUOkmOg009ruXF33CHuFXw6olcv/mH7T70GQDJ4txGZSElVEECurqVSKEkvqa/O
         +kWyZBwG3obnXNN4d+fE51z2lLJTXOTyKFmyn2A6Fw8/+hytQ3G1P5MbyVqj8ryt8s1a
         ymUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U/1SEXBl/drT6B50+MLoCmrJXk4pQjWe0OUv8/ULGY0=;
        b=DCHtGbiPw680bfVocjyCLEFgTlz/vMJfXGw6LfI66A+L9YiT/Ytk3zt05V1Zn+DQw5
         O7NFgNLKfpFTQ29TY7CAAVLkhwrbxTd9r3WMVba/TH8CLAd+bUQSRLuqjEPpCTSMQqZ5
         +12QX7v/zAMXA+MABwArvTF1inwxt0NveUWGvW6sgZgpudqG6iJyWNOMkCN9sh1BB2Ch
         yC/b8J636OK6O4N23+Qci4HOJ+pYeM+lGrRG6hU8ATnJt0IjtkTDm4p9dmcuZKmAYXAf
         u/xnXP7GPnDER6E3qGk8GDcamNwgFz1IznvpL+Jwh6qKyiVJBbA+3/fmZ6P33mYFrKSi
         XJwA==
X-Gm-Message-State: AO0yUKUlwSa3k9IWjYIQu1vF43r/tTfjNWaFfyS34/XINcPUI0tm8L+1
        udp+QSXmQLSZP16qoI3S3jWrSw==
X-Google-Smtp-Source: AK7set+u31EI9YP+CMtlmZ0UQD0fuUfEjQ7CLKD/ky8YiQDj0Mgj7cggU1RQsvg6InTRJdV78D73sg==
X-Received: by 2002:a05:600c:1994:b0:3dc:43cf:7302 with SMTP id t20-20020a05600c199400b003dc43cf7302mr6523633wmq.3.1675007311772;
        Sun, 29 Jan 2023 07:48:31 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c42c600b003dc521f336esm2984835wme.14.2023.01.29.07.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 07:48:31 -0800 (PST)
Message-ID: <755d4a78-0b23-a381-c422-d12b0063f06f@linaro.org>
Date:   Sun, 29 Jan 2023 16:48:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 3/3] dt-bindings: serial: restrict possible child node
 names
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Marek Vasut <marex@denx.de>, Lubomir Rintel <lkundrak@v3.sk>,
        - <devicetree@vger.kernel.org>, Marc Zyngier <maz@kernel.org>,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org, linux-serial@vger.kernel.org,
        linux-watchdog@vger.kernel.org
References: <20230127093217.60818-1-krzysztof.kozlowski@linaro.org>
 <20230127093217.60818-4-krzysztof.kozlowski@linaro.org>
 <CACRpkdbOZLhQ1DTNJowNXF=O-Nvpqcb_A+PwkPWFiUSQUbkR9A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CACRpkdbOZLhQ1DTNJowNXF=O-Nvpqcb_A+PwkPWFiUSQUbkR9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 14:29, Linus Walleij wrote:
> On Fri, Jan 27, 2023 at 10:32 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> 
>> The re-usable serial.yaml schema matches every property with ".*"
>> pattern, thus any other schema referencing it will not report unknown
>> (unevaluated) properties.  This hides several wrong properties.  It is
>> a limitation of dtschema, thus provide a simple workaround: expect
>> children to be only of few names matching upstream usage (Bluetooth,
>> GNSS, GPS and MCU).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Fair enough,
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> 
> However I think V.35 WAN devices (high speed serial network links)
> should actually be using this? They are just some fancy serial port
> after all. Cf
> Documentation/devicetree/bindings/net/intel,ixp4xx-hss.yaml
> 
> No big deal I guess since they are mostly an anarchronism and not
> on the table right now.

intel,ixp4xx-hss is not part of the expansion bus node.


Best regards,
Krzysztof

