Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A15FC71776B
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 09:00:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234493AbjEaHAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 03:00:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234497AbjEaHAq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 03:00:46 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BACFA13E
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:00:37 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-96f50e26b8bso975125566b.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 00:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685516436; x=1688108436;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hg0EUtzmiBB3xghUWgjyE0VeSwIKbDYvDD8loEwycbU=;
        b=xmNDQX5s+SO9QvIEjz7wvotCwDjE1/DWqSM0urOY8Jp6F4rit0SSDrGeXssANQQNd1
         ZXqw8ZNeIcCT3Lxe3+XYTWyVpG9YSRUZFmF8/vjve6PFXaMA/uuouoI2rf92gRZoRpYB
         Rxs29PpDYdoLvtkFXBCUgqxwXVr1bbjXCBr4OfER8lETDdRTGzg6or82BYs0hmgsndj1
         mEoPbYvIg34WTRa6lzkoFJzTPjVWiTjJM9240eBfe89UiHt7i1JaE1jnQeotgBtTNCTS
         ZmebRn88ZkYWj0vWAOssDvhbH8yJ+Slpn32t5ZG0ZaLtzOGGchuTq9NJZt/3DkKyj15C
         Wb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685516436; x=1688108436;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hg0EUtzmiBB3xghUWgjyE0VeSwIKbDYvDD8loEwycbU=;
        b=GL7EbISStk94orzETfcEFkVlPpYq2E/vPHS8Lu4jOaK3pwnGXXvvYXmaTgdhNBzW6d
         I+I/B1ZZf29ys74ba6kaJv8ax3pUnrEnPN1gxRZmBbxcEvZ6dB4qhNR2WKL2vGmvnKkZ
         oyps71NE+ck3aAX8SaZPwCTdIktjdUJELLQWkl85I/JJzdPYFTSRDtl0ZjDJTrAA9VTM
         a8d2CjCiuhyjc8rqFG7rYu05qpi9anOk5CftcUl7Qy7TrAxTRKcnRd2zBoz9vs7ukBcJ
         ooIUG+5B3YrgaAav+Vipeb1xcPx3pKhYsewRE+4RRavMci5dtyHocDJiXOh5B6NoNttk
         98tQ==
X-Gm-Message-State: AC+VfDw4MvBdNFbNkh9nkDdd9ooXegHk6BDporCQ4bRCmzMZwmGN3whW
        /A4NtpQ8YkoLxEffUSr/w6/ijQ==
X-Google-Smtp-Source: ACHHUZ6pOdpCN4WUvtvY0dlMQfZ7EoNYd7R0TNUotYT8Qi0DGSq9fNojwn2+H9QyjEJ2gKlV6YxheQ==
X-Received: by 2002:a17:907:72d4:b0:973:fe33:3622 with SMTP id du20-20020a17090772d400b00973fe333622mr5027241ejc.29.1685516436227;
        Wed, 31 May 2023 00:00:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id k3-20020a17090627c300b0096a1ba4e0d1sm8434832ejc.32.2023.05.31.00.00.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 00:00:35 -0700 (PDT)
Message-ID: <579dc9ff-e0a7-e3de-bb2c-a268bfa7fdeb@linaro.org>
Date:   Wed, 31 May 2023 09:00:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 1/2] dt-bindings: mtd: marvell-nand: Convert to YAML DT
 scheme
Content-Language: en-US
To:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
        "richard@nod.at" <richard@nod.at>,
        "vigneshr@ti.com" <vigneshr@ti.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "andrew@lunn.ch" <andrew@lunn.ch>,
        "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
        "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
        "vadym.kochan@plvision.eu" <vadym.kochan@plvision.eu>
Cc:     "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "enachman@marvell.com" <enachman@marvell.com>
References: <20230530005337.3687938-1-chris.packham@alliedtelesis.co.nz>
 <20230530005337.3687938-2-chris.packham@alliedtelesis.co.nz>
 <a1b2caed-b314-59db-ee00-92fc983150f6@linaro.org>
 <bc538264-20f5-03e1-a4a6-6f9f076f15eb@alliedtelesis.co.nz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <bc538264-20f5-03e1-a4a6-6f9f076f15eb@alliedtelesis.co.nz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 01:20, Chris Packham wrote:
> On 31/05/23 00:24, Krzysztof Kozlowski wrote:
>>> +
>>> +properties:
>>> +  compatible:
>>> +    oneOf:
>>> +      - items:
>>> +          - const: marvell,armada-8k-nand-controller
>>> +          - const: marvell,armada370-nand-controller
>>> +      - enum:
>>> +          - marvell,armada370-nand-controller
>>> +          - marvell,pxa3xx-nand-controller
>> You miss here deprecated compatibles, which are BTW still used. Don't
>> drop properties and compatibles during conversion.
> Is there any way to indicate that a compatible value is deprecated? I 
> know how to mark a property as deprecated but how do I indicate this for 
> specific compatible values?

The same way. git grep -C 5 compatible. First result in the DT bindings...

Best regards,
Krzysztof

