Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD53878ED54
	for <lists+devicetree@lfdr.de>; Thu, 31 Aug 2023 14:38:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240874AbjHaMiJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Aug 2023 08:38:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235789AbjHaMiI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Aug 2023 08:38:08 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B15841A4
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 05:38:05 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bed101b70so83680666b.3
        for <devicetree@vger.kernel.org>; Thu, 31 Aug 2023 05:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693485484; x=1694090284; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oi/kPn02IZFct2zYJEPtTAuOz/cjkMO9segcjaWjsPU=;
        b=qLr7k9vcAqD3LkPYNIKH3puBmyALxykYSKwZ8HcsymVyD4EilFCKpOMo1HtmIgK5ux
         /r7Lw5PAsMmvuzPzVkDiuI3CN/nENPR8n4PZpsM2IRUprfA4lcFRmd/Wpd6PJGp/JO3u
         5ima2spF01FMHHqQLYYhVoHUue1UqrA+SDhKW62V5rP4PLWARWx4EUHV54na5YEns//M
         6rGutiqeQkng6b1w7ZHfrXCQmffvo8DH0X4TI4PZLQ9SoCIr3Ik3t4131CoESCf5wgv0
         K8W5FL2hApLn1wMjJM+eneZCdYZRJwWD+Kjcr2QOVEBOiLYvHOHP549YhM0rNObyl7aX
         rOqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693485484; x=1694090284;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oi/kPn02IZFct2zYJEPtTAuOz/cjkMO9segcjaWjsPU=;
        b=Q0CJFPI+/zp3k3bNDPBjRDxMKw/br0eJ281DDzHMOsCKvXUJgKA2dkApGxmkGZ/BQv
         iUH5yMgDhEyR5dzNvr5qeFqfun4VUmZ+6LCqMyHDTW7RnTYkXazo+57Kumuj6mC8CU+r
         yk9Roe+Erx0NufZOSXQqTEeXsMCE1y8rN0r2H7fPBtelvq54EZv5K0jmgwJtXHH9FeTC
         xrHcAx8oaX0NxZqd/z1wVp0c3b/JoQICf+D2KByE3vYs1N6ZBb6oQ1TFiEO98UcsPSW/
         M801Z3dKxwTpMOQMVXmZeJOsaGXpCa9lQD2eXhV4hhyUjlQYtnHUg9raZJLCcQpjKsCY
         Ahmw==
X-Gm-Message-State: AOJu0YxEEkMh1QBS99RiNOG0q4oR7hlDbXZqkMRMCt0IoNm4PMY2kAcN
        BkN8ifjqMaNzXI0a1Ps93HYjXw==
X-Google-Smtp-Source: AGHT+IG66AMgUP5PIYRzzikgOWnqFE+4vnEiMaeZV40mxCPYbDRmK8oHkefsRLF75BkzCPNNJnRbmw==
X-Received: by 2002:a17:906:2d9:b0:9a1:d79a:4193 with SMTP id 25-20020a17090602d900b009a1d79a4193mr4105717ejk.23.1693485484212;
        Thu, 31 Aug 2023 05:38:04 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id p27-20020a17090635db00b009a168ab6ee2sm701844ejb.164.2023.08.31.05.38.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Aug 2023 05:38:03 -0700 (PDT)
Message-ID: <7b241edd-4775-afbc-e5a1-63f5ecfce331@linaro.org>
Date:   Thu, 31 Aug 2023 14:38:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v7 2/2] dt-bindings: arm: aspeed: add Meta Minerva board
Content-Language: en-US
To:     Peter Yin <peteryin.openbmc@gmail.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230831082819.4000425-1-peteryin.openbmc@gmail.com>
 <20230831082819.4000425-3-peteryin.openbmc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230831082819.4000425-3-peteryin.openbmc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2023 10:28, Peter Yin wrote:
> Document the new compatibles used on Meta Minerva.
> 
> Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof

