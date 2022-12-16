Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8725964EA63
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:28:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230191AbiLPL2d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:28:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiLPL2c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:28:32 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 299D12A409
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:28:31 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id j4so3111336lfk.0
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:28:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nRsw+F+84mdXMMQ1nPWq3wdG4pH18AGOF1t1VcsFTWA=;
        b=klcnod9xW1kdCqKGfmr70n3TSZaW5SzDuUf+s/8iVcv80hxWInlJoS7VK+JaTX+48O
         uu6khT9K3mmtU0C+dzx1as7HVSQKCdBwSKOIyh4DgMGKHbw0orYfZYjMopWxY8IhzeCB
         Pa2yE3tw/8MR5Eax/AmP3BAp9Weu/TYkBFcjXggMQTfJEElaj15wl+uyft4K28qciBFU
         jOat1nWYUCVfPee9QCTESjKenI9Kgc31r/r/udWUmG/W0kxZ6ZImgJS5cJl9rhZZctt1
         NicjP+yjHkTOC9wvwdsSNQ+r39ZlR3JaMQaRx4AwEJsvv/iP+DeznsPY9tonL9cLmYCw
         tfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nRsw+F+84mdXMMQ1nPWq3wdG4pH18AGOF1t1VcsFTWA=;
        b=h8LqnTYGF9V5aK/jICLul8WkZEfkMO7lzJlXZvZLVkqqODy1wxzrFIOZVssrm+b3m9
         9GNOpTlByUdlcGkRTCpx/Y8+oQOF84dMwGGdij5WaJqvYcxnPE6c0ZwXeCljBXKcfl+9
         4EI7lXFwx8GlvDh6S6kgbhE2DwHYypitKYcQJwRKQRuKK4bLDu5Mx+bkmmA5XOaemuPz
         VQLki+sr1C5YlyqU8/wyxjrZ3+Ax9D96+dY5W9Y5rPhZ9QfawDJmyXYm4xnNBwqXlKJ0
         s6441UXWbJch/UlGq1w5NJsYBjFmGrPgEYov8I+NhLlpoMyFnqQxkZNzBzAJjt7Ccp47
         o7yg==
X-Gm-Message-State: ANoB5pmNRuo58cjVqbv7gapKjDo8HOtKfNSB9xxihbO4sj0cYsVi77/n
        XoTHKX4Jc1kxC+pAxU56wifnUw==
X-Google-Smtp-Source: AA0mqf4gW5xekF2fPFy38qiUVUT6jzq1LEy2f+oKJkAIefUMBivTOLQUoGPfZ+4RBsQ1wgfmgqiGDw==
X-Received: by 2002:a05:6512:1690:b0:4b6:eca8:f6ca with SMTP id bu16-20020a056512169000b004b6eca8f6camr7753358lfb.67.1671190109558;
        Fri, 16 Dec 2022 03:28:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m4-20020a056512114400b004ac088fdfd2sm196153lfg.85.2022.12.16.03.28.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:28:29 -0800 (PST)
Message-ID: <633f7a48-27ab-6500-acc8-53be6f8321c5@linaro.org>
Date:   Fri, 16 Dec 2022 12:28:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 3/4] dt-bindings: arm: Split i.MX8M Plus DHCOM based
 boards
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        kernel@dh-electronics.com, devicetree@vger.kernel.org
References: <20221215232137.144256-1-marex@denx.de>
 <20221215232137.144256-3-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221215232137.144256-3-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2022 00:21, Marek Vasut wrote:
> The i.MX8M Plus DHCOM based boards have compatible string in the form:
> "vendor,custom-board", "dh,som", "fsl,soc"
> or
> "dh,carrier-board", "dh,som", "fsl,soc"
> Split the binding entry so this triplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

