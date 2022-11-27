Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D62B2639D37
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 22:19:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbiK0VT2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 16:19:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229633AbiK0VT1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 16:19:27 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D32FCC761
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 13:19:24 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id r8so11103518ljn.8
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 13:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BVBgzY9fU1meRitwXiLvwOD49gdhxqJl429JsRhYymU=;
        b=a/jjz4wItuIdT6k5VAZduTzFm0xbhGSzhMsNNqdSUcmH6Outl5im8p9ewKhbpsrZg0
         55k9Y9LPpZpDjDaNehWchb8gMJjJrW1whi8fteyqoSbtdA2TerLxbLGbxTv0HsTPurja
         7A76C26Mjp2vKWaCbd5gZesK0tlOau67PiW5mmz7aoRL/WCPbjqvubDobmp7yMqzK6ly
         pRDe2erXgXRo6eliEaiWB2lxvwQ6FBIyWZUfaBKobUVd3xPmiA7CifqCkS2IjMsGVSQA
         1SRKLI1Ab7vphBn4oqnoCFc14T8QM3el4XPBESI7Je9JBtrK9rh5BkVjEWVTexwqLJ0n
         yTlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BVBgzY9fU1meRitwXiLvwOD49gdhxqJl429JsRhYymU=;
        b=kk5jbGMI9wb3JSS3e5WHoSbIR+XVOgM7FEbS8JOJSp/XWKq0kE6jJMJ1SbuD7ynFSY
         guptwU4niQyRp2ZB1kFrB8P6SQzJxNdIYfpWnXP9dV/5wjlcScY+sO41MSYC9vOHw6pl
         DPx/OS6Fc6a/Ir3e++hQLTlHNLq2oyUHY/jFbGPVD5VSBzTUWj8Fgmm3aHqF7UDiMaI3
         7BWpFN+SjTQdEHvkjuRnZzh1BjoP9uLoDOkPcv0Do3h4408TOavQ3O12n/NdpZv3JRcI
         iQL4+MeqTN9eT6kTRQtRSyboV+skrCu7W53U6cyz6TfmDfBOh2dIqDXtcxX4RWpOuJyC
         bcbw==
X-Gm-Message-State: ANoB5pk7PnGep8osmH7qxaHkexeYO4XDseqPnEExUcfWLU2XvP1r0ti2
        F0vzUXuXC9K0+dnzI7zETZ8TZg==
X-Google-Smtp-Source: AA0mqf6TvYFJg6yLdGfKu+TkPqfL+Gy8GK+gmAHr8JecKy952l+k7/NH80FfVgn7smfjHPEQbCZc5g==
X-Received: by 2002:a05:651c:ba5:b0:279:9a7c:ed14 with SMTP id bg37-20020a05651c0ba500b002799a7ced14mr2181755ljb.351.1669583963258;
        Sun, 27 Nov 2022 13:19:23 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p21-20020a2eba15000000b002777a07f48esm1070720lja.12.2022.11.27.13.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Nov 2022 13:19:22 -0800 (PST)
Message-ID: <64620c65-15b7-314c-4990-5f2f42295acd@linaro.org>
Date:   Sun, 27 Nov 2022 22:19:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH net-next v2 2/7] dt-bindings: net: marvell,dfx-server:
 Convert to yaml
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Michael Walle <michael@walle.cc>,
        Marcin Wojtas <mw@semihalf.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Vadym Kochan <vadym.kochan@plvision.eu>
References: <20221124111556.264647-1-miquel.raynal@bootlin.com>
 <20221124111556.264647-3-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221124111556.264647-3-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/11/2022 12:15, Miquel Raynal wrote:
> Even though this description is not used anywhere upstream (no matching
> driver), while on this file I decided I would try a conversion to yaml
> in order to clarify the prestera family description.
> 

(...)

> +
> +required:
> +  - compatible
> +  - reg
> +  - ranges
> +
> +# The DFX server may expose clocks described as subnodes
> +additionalProperties:
> +  type: object
> +
> +examples:
> +  - |
> +

If there is going to be resent, drop blank line.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

