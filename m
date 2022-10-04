Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFE145F4612
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 16:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbiJDO7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 10:59:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiJDO7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 10:59:07 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0767D543D3
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 07:59:06 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z4so21535333lft.2
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 07:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lVtlIVL7v00lpuub/CfBNDZ0hMYF+JuUwf/X+UhXUO4=;
        b=NP4ROSveCZTJ9Cd0ZTdpDL0smFIIHBIiySg8/8G33GBt5X/DCc9yefGlFE2BTA+8Rh
         MiyTb2K/UctgULmfOF1YnFHubsVNbzk2lK1VDMXf7CP0D1fWdLxUtMQs8+1Ncek97I9+
         3IpNw4PXKZ0c2SZoU/dMxHU4A5P0NbgDmmJO+86yMkOEGoRqtVf+YB4lKtwAq3acTSqC
         dEyk+gTyDjD8gUpd7u70SK2WCyBtbdbe7Pzg3ARK8TMTN7i/mvspnRPRQLudCeTkMORB
         GG2FJjYPI1z5I0hB2JtHuVX8sqnQD6O5Ja3gM4LEjFS/CHqteB18NN92iKK5dvHcDmT1
         vytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lVtlIVL7v00lpuub/CfBNDZ0hMYF+JuUwf/X+UhXUO4=;
        b=biVxMbxQWBjHZNzS2W9DyxmDsLEyLuleinpXytsOeOcNun8MQcvQy0bTx/R1uZcbTu
         DzzLA3qr60cPYzs0nPE2QMENd+xKe/ne4IDzGYN7NDZs0d9tN3hBUZJbcskEk3HrWsbc
         +F9V6tIa3Z/bFeSJ3EduYTtHealwNPqQ3yBYUy7lh5oti+k8zcIpXdBvnHs0pPnS07PD
         WfNJuiL+gVJMH6b2IqPMnU4pj2bQUuJPzDsrXS7npLMGBpsXHIdtpS/49dX5+zk9BUxc
         Gm3O7Sm/LJwzrr+Nvf9uTChc+nPIHMObUcXyZL/D/exsx51gpvx7fz250xQiopDsWj0N
         x86g==
X-Gm-Message-State: ACrzQf2YcND2bistcJWRReBs1x4dQ1jM46Q3bG571+6ZqQl7wV+5OTKx
        es5F0eWBbFSSkMZL/Nehi7eyeQ==
X-Google-Smtp-Source: AMsMyM7tieTxdgCsebyEy7HTDKvB7J+NxVU5ZG+XitQv9Icjg5/1JC/wuVSA/QE2kEYAageux+iPnA==
X-Received: by 2002:ac2:57c9:0:b0:49c:3e64:de95 with SMTP id k9-20020ac257c9000000b0049c3e64de95mr9520407lfo.452.1664895544372;
        Tue, 04 Oct 2022 07:59:04 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p13-20020a2eb98d000000b0026c297a9e11sm497925ljp.133.2022.10.04.07.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 07:59:03 -0700 (PDT)
Message-ID: <6444e5d1-0fc9-03e2-9b2a-ec19fa1e7757@linaro.org>
Date:   Tue, 4 Oct 2022 16:59:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v3 net-next 12/14] dt-bindings: net: dsa: ocelot: add
 ocelot-ext documentation
Content-Language: en-US
To:     Vladimir Oltean <olteanv@gmail.com>
Cc:     Colin Foster <colin.foster@in-advantage.com>,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        Russell King <linux@armlinux.org.uk>,
        Linus Walleij <linus.walleij@linaro.org>,
        UNGLinuxDriver@microchip.com,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Manoil <claudiu.manoil@nxp.com>,
        Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>
References: <20220926002928.2744638-1-colin.foster@in-advantage.com>
 <20220926002928.2744638-13-colin.foster@in-advantage.com>
 <ec63b5aa-3dec-3c27-e987-25e36b1632ba@linaro.org>
 <20221004121517.4j5637hnioepsxgd@skbuf>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221004121517.4j5637hnioepsxgd@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/10/2022 14:15, Vladimir Oltean wrote:
> On Tue, Oct 04, 2022 at 01:19:33PM +0200, Krzysztof Kozlowski wrote:
>>> +  # Ocelot-ext VSC7512
>>> +  - |
>>> +    spi {
>>> +        soc@0 {
>>
>> soc in spi is a bit confusing.
> 
> Do you have a better suggestion for a node name? This is effectively a
> container for peripherals which would otherwise live under a /soc node,

/soc node implies it does not live under /spi node. Otherwise it would
be /spi/soc, right?

> if they were accessed over MMIO by the internal microprocessor of the
> SoC, rather than by an external processor over SPI.
> 
>> How is this example different than previous one (existing soc example)?
>> If by compatible and number of ports, then there is no much value here.
> 
> The positioning relative to the other nodes is what's different.

Positioning of nodes is not worth another example, if everything else is
the same. What is here exactly tested or shown by example? Using a
device in SPI controller?

Best regards,
Krzysztof

