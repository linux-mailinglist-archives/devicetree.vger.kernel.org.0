Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBA18590F9F
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 12:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237323AbiHLKrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 06:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230201AbiHLKrI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 06:47:08 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCBC596FD6
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:47:07 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id z25so837200lfr.2
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=3RWzjnayb45LZhO8C7s61Ai4WeG2+NmGef4blnhOBcQ=;
        b=wCOjPj9bxPZvB9wfESasZbycUB77gLebV6lssGw1WBj/2f5E31bEDA+W7Zyrs6gZfs
         yePWwXvXtAD+ynYz0f80Jjkf0lr0tKAIkz5LnVwiJxmMOjL37Ttq9j2Aood9xJq9S4sW
         fQjBc4Z+4Sd4KIIRkFTlMtmNgLib+dJtvgwTGLWXnyC7cX7k2Kfm4trE6kOzZ9UyWCDN
         srZvWuExUh8okmPLP0TI41SuwReuK+ogDR8BYfRQ1AgMaHFrN+3E5Lvr0dWTvMsCiGiY
         /qttjzG7bHBRyjX1EdScHWUy5c0yXYWEw8n8F9Y5sBp2Sw2LDtkxA86yJayZ1Ws0X33h
         D5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=3RWzjnayb45LZhO8C7s61Ai4WeG2+NmGef4blnhOBcQ=;
        b=ga3Gd5H9In+2AFsFHgIGsKhCtnkBKHjBlJP1GGmO35iPh+Jin2efX/MJdGzqCKJJ3O
         qXageOeI5/i0Bx+FywjIKLh+v6ZoUOPt9zMZKJzKdomrdvqREGXuTfuITTmtAFh0oalT
         rNjTgKPy/tfQz39aSvxpy8MltMZgGNqIU/EgqCB7NhmzkjF5BkcYebRMnpbOVp1J1vSQ
         LWUSi8Mnqo+eIkN5n91JHnqSfv9Hko/6emgrvssnHekMH30iXDTKshtg0Cqdp02M1/4V
         h+vAw3Q59opSvOHzynG1D9OzLS0Ugmwq4HYCxUEZXXAUpmtGGn+42XtsqoV8t6j5LDd/
         KdQg==
X-Gm-Message-State: ACgBeo0ocXrETNGM2IzlMAEK66if5YOOSU9aZnxENP31yR45aFqdhYCr
        SDhT2K0DbOlTrnNgM4rcTbCSaA==
X-Google-Smtp-Source: AA6agR5KmI0Atysgdjd7jitkZSZpUzlVIIdi8IzXZ+8wPR5K74v0Pa6N40R+cJ+mO7BighT3EfeD1A==
X-Received: by 2002:ac2:4f08:0:b0:48b:9580:6c4f with SMTP id k8-20020ac24f08000000b0048b95806c4fmr1045004lfr.273.1660301226168;
        Fri, 12 Aug 2022 03:47:06 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id k14-20020ac257ce000000b0048ae4cf8a2csm168154lfo.258.2022.08.12.03.47.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 03:47:05 -0700 (PDT)
Message-ID: <e568968b-3cb3-3e80-b38c-b0fc19bd4afb@linaro.org>
Date:   Fri, 12 Aug 2022 13:47:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/8] dt-bindings: sun6i-a31-mipi-dphy: Add the A100 DPHY
 variant
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <mripard@kernel.org>
Cc:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20220812075603.59375-1-samuel@sholland.org>
 <20220812075603.59375-5-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812075603.59375-5-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/08/2022 10:55, Samuel Holland wrote:
> A100 features an updated DPHY, which moves PLL control inside the DPHY
> register space. (Previously PLL-MIPI was controlled from the CCU. This
> does not affect the "clocks" property because the link between PLL-MIPI
> and the DPHY was never represented in the devicetree.) It also requires

Misplaced '.'.

With above:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
