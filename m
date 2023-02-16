Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A265698E9D
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 09:24:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjBPIYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 03:24:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbjBPIYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 03:24:13 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD73659C7
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 00:24:12 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id cq19so1693021edb.5
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 00:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3luqpqMCqAArv+ATLddgvJho7XZ+hO7X+w3N9TqYySA=;
        b=ZTxnV/pt75FixULSRW+glSd/hEjCXD8kSVS1r8oK9IOroR7sEG8JT29KIQj6OuayTg
         82J9W6gT48Lvgr6AcrWkoyiTpKMuj4o4/UdxGuUiJYGdaxYeWV9T/BOUek5StlA8gCnx
         +506CByaxqr2qgUUmIYMd6JqI1TtLJwWmCo6E4QOJvlnhPCuaRtZ88PHpIA9+MP3dxt+
         haxe9mhuH5Il+VJnO3nDaXdbplYlFej6e5+KcqoBoFzATDSlqUG2I4bPwkJsvzkGq3hy
         Mjwnz0aw/Nn71zBBBxYBF0qUOA7vVy1oOoUcDGgG73EPIZEhJ8XiDK5pfrgZaITZmAoh
         o2MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3luqpqMCqAArv+ATLddgvJho7XZ+hO7X+w3N9TqYySA=;
        b=fiJuGjiT7nK1L0gnG1DAEssl/2K0JA47rg5FJO7DpDbU7skxxNOmNEQZfTnxtB4f4J
         i/aH1qCtaWmOKzYY6tJy12YFIjrD3rsdaeUAa8TB79YkzdetSkcNU8pqvIWkI132GoGx
         egeSc7zNQM1PUSwjo4Hv2Hqv2dU/tTovNYRD5appWWxkqKE4VpdLcALmaQZWFFaMC6wj
         awUwhY77IPwHEH218poKQcNAYAPjji6Fkik80+AWfS0ofyjx/vjXjelwOJV4uKphWQHM
         ebIQ66m49KixOUmByslYfIIZB85dSH28b5R+EgFb3l5Zm6lLvWHks2/YlvcL9ODRb780
         RpLQ==
X-Gm-Message-State: AO0yUKU55EYsGMffJf5C7aQ1NS55WVJ6pPXpLCQOZZjvhFU3cXca8ozy
        uNpwclrxfdC2x8Dmes0ZKojTbA==
X-Google-Smtp-Source: AK7set8ht+d14A7kUkpoXY1VjY6KH78thAEOM9Wve8zpWCCCgGBjK9Fie6hCWP6IGMCq8uOAAoLarw==
X-Received: by 2002:a05:6402:885:b0:4ac:b97f:214c with SMTP id e5-20020a056402088500b004acb97f214cmr4664837edy.2.1676535851432;
        Thu, 16 Feb 2023 00:24:11 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q2-20020a50aa82000000b004ab4c28a967sm476133edc.44.2023.02.16.00.24.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 00:24:11 -0800 (PST)
Message-ID: <03fe68be-ca9f-967c-b5ef-0599177caf90@linaro.org>
Date:   Thu, 16 Feb 2023 09:24:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/4] dt-bindings: i3c: Add AST2600 i3c controller
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>,
        linux-i3c@lists.infradead.org
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Vitor Soares <ivitro@gmail.com>, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <cover.1676532146.git.jk@codeconstruct.com.au>
 <82d750f53df622d8986e9a07053c7ee27dee61a2.1676532146.git.jk@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <82d750f53df622d8986e9a07053c7ee27dee61a2.1676532146.git.jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 08:41, Jeremy Kerr wrote:
> Add a devicetree binding for the ast2600 i3c controller hardware. This
> is heavily based on the designware i3c core, plus a reset facility
> and two platform-specific properties:
> 
>  - sda-pullup-ohms: to specify the value of the configurable pullup
>    resistors on the SDA line
> 
>  - aspeed,global-regs: to reference the (ast2600-specific) i3c global
>    register block, and the device index to use within it.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

