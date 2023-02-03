Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C31D689155
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:56:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232530AbjBCH4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:56:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232238AbjBCH4P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:56:15 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51C60945D4
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:56:06 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so5416711wma.1
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ivm6r3tpNQowG//92mCAHfte+CaKrUHgYJvXLe7B7mU=;
        b=lnnsXuYH5rARYqnO+up2OKbp0nSa8onZ8YllWznUSatVPuvHud4tRVRkzJSK52dQDV
         sOV0y9bF4YJzdIE0bYRbzrGC5HaXgiD+DHhvjvJBGpA0oc4ziBS2u93k2aLTg/T1pA67
         QvzbIzWDzOEiHI877bi93vobVQLSPl2uH0w2nMsnPWPzQDieWG4b0pzw67/vHbRPJgkd
         1YY+Uh7M3AhvM8rOaM8GMykVaI/78XTpj61xmthqsBMnCkw9MuCBBOjCYn42rix5kcV/
         z2v/Ctv0i/0gjuI4jCjM6CVeyfzDxS9VVWQiXmGcr2+4jMxnNCqWIrtMHvRFtYO5LpFb
         okkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ivm6r3tpNQowG//92mCAHfte+CaKrUHgYJvXLe7B7mU=;
        b=fKNLl6wjUc6TJJg1gFJL/JuErWwO47dkV1dTXZFK2qjkfCE8AeplQ5axXjt/l2p5l6
         vXZyZlMf9Z24IW4FmRFJStK1qpHcvmn1hQGRLoBOSkHXAH907FUT1IHnJlXWKeeL3las
         bC1FRM94ACiSqfXPcv461eqzTqYxK8Pl/0JRo5yNKcQYdr0J0ZJbgD4XTQ+J5Hslz4MF
         6vf08ews9LDEeZCRrlCWEGwQWnmZbNcci6LBUVLCzMZxwRmT15V0/hdlvUm+odSmbloC
         3eEOUro60oDojLp+OPwIHlwrEfCCUw1Zfu+tibj+k3H1CFVBoZ+7Ymq6ON1a3QxSSeR3
         RYkQ==
X-Gm-Message-State: AO0yUKUjKrWGAccBidgjEKO6CJ3tMhE3Tc47CJOh22/s0Ta0jYCq0lpP
        oisUCMBG6+7lLA5OYUgzYXOvcA==
X-Google-Smtp-Source: AK7set9G3IWsiBZkWUgmPHC8yBWmJSGtb/Ke6q1FfPYVUm9SmHD/t3099ZkK1goE0VZd+x1QrOslrw==
X-Received: by 2002:a05:600c:1d04:b0:3cf:85f7:bbc4 with SMTP id l4-20020a05600c1d0400b003cf85f7bbc4mr8448870wms.2.1675410964694;
        Thu, 02 Feb 2023 23:56:04 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k32-20020a05600c1ca000b003ddf2865aeasm7638369wms.41.2023.02.02.23.56.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 23:56:04 -0800 (PST)
Message-ID: <f937ed98-a65e-e75e-24b4-0219e0403ac0@linaro.org>
Date:   Fri, 3 Feb 2023 08:56:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v4 6/7] riscv: dts: starfive: jh7110: Add ethernet device
 node
Content-Language: en-US
To:     yanhong wang <yanhong.wang@starfivetech.com>,
        linux-riscv@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>
References: <20230118061701.30047-1-yanhong.wang@starfivetech.com>
 <20230118061701.30047-7-yanhong.wang@starfivetech.com>
 <55f020de-6058-67d2-ea68-6006186daee3@linaro.org>
 <f22614b4-80ae-8b16-b53e-e43c44722668@starfivetech.com>
 <870f6ec5-5378-760b-7a30-324ee2d178cf@linaro.org>
 <048b3ab0-7c13-b7f7-403c-f4e1d5574a10@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <048b3ab0-7c13-b7f7-403c-f4e1d5574a10@starfivetech.com>
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

On 03/02/2023 08:40, yanhong wang wrote:
>>
> 
> Sorry, I didn't check all the bindings, only the modified ones, the command 
> used is as follows: 
> "make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/net/snps,dwmac.yaml"
> "make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml"

That's good actually, except that you change binding used by others, so
you affect other files.

However in this DTS you will have now warnings (dtbs_check with
simple-bus or dtbs W=1) because of using non-MMIO node in your soc-bus.
The stmmac-axi-config probably should be moved outside of soc node. Or
you keep two of them - one in each ethernet node.

Best regards,
Krzysztof

