Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01B4B55DA46
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:23:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344043AbiF1IzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jun 2022 04:55:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344041AbiF1IzI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jun 2022 04:55:08 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEED12DA90
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 01:55:07 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d17so10989531wrc.10
        for <devicetree@vger.kernel.org>; Tue, 28 Jun 2022 01:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6EjAImlC2cUbHKG7rZ8oJgTpb4YvQnBoZ2SzseB9Ffo=;
        b=mLNgRP60qaAq1yYogxQnVbULA1JCNwkqsJZad4alEfqNlsYIYX5ohtcL48q634cqVX
         +MMHMf6gQnX3W/zD0Dp0IQS/aCdEkDjcXXh/g8w25prT+Q4q4Tzv5ukX5FMr85YTVN3l
         Exi/oKTwYvZqi/mCUiR+7QZd9DhzyctaHQivRRGJ3ifp1zBtpKI3M6haCcEWbkn2hBf1
         c3CL5V/FGmK0cMHUsNFNmvuA67pZm90NEhU30vfSLlZnVQghssvsNWB/emmg7gulPyG3
         ULt2ef3tz8Xnc4WtgPNxZHQAwthcXO6qkoFcZ2vlwZoK1YJVHLR1nNqbvFQNw/+ox8kq
         BiYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6EjAImlC2cUbHKG7rZ8oJgTpb4YvQnBoZ2SzseB9Ffo=;
        b=r/YfXjTVfJJrtJWPPRUo8aGtWkxXHC5qnYwaizwpmd3TJJ6OlgRUB/80KTnSadkBb2
         MCU3LbilCdwEC518a8kaVQNWeCMi4LiO3ItA1Rr152qdCDBG7+BXOg+IlczJX0tnRRzQ
         UXfMsz+2bsSPlDPVeOuV2aNxNiOmaFzhdmt+9pkWWZFGqvfRXnMNyNvl6K+vXVaJJU1w
         ftkDxMpcmqakLHw14977JMqs2AU3OV9UemfJ9cUTjw1JU7s+60ZEvauxRXbNoAXNEgWf
         1Xhdk0MBWva33GQOee8KQW0IouGFMHWbCRDVilHct/40ulneNl5x6GZIpHgGDTfyhv7O
         Psow==
X-Gm-Message-State: AJIora+PbItaZfTziMYsevOteRBr003X+y32dzgZDJEVm3sPI+Y2Qx/Y
        vbc9zTYMptsgp7EosdR4zCfSZw==
X-Google-Smtp-Source: AGRyM1v1XPqITrd0WKrnysbuA/X+GwRUZZO5PyygaPS4hjzjSAp1WGjBl0yzbAsL1dJMHXmfwlINjw==
X-Received: by 2002:adf:df8a:0:b0:21b:9219:634c with SMTP id z10-20020adfdf8a000000b0021b9219634cmr15875834wrl.669.1656406506235;
        Tue, 28 Jun 2022 01:55:06 -0700 (PDT)
Received: from [192.168.0.252] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j14-20020adfa54e000000b0021b93b29cacsm15850669wrb.99.2022.06.28.01.55.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 01:55:05 -0700 (PDT)
Message-ID: <7314b028-3cda-d70c-80a1-25750235a907@linaro.org>
Date:   Tue, 28 Jun 2022 10:55:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCHv2 1/2] net: ethernet: stmmac: dwmac-rk: Add gmac support
 for rk3588
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        David Wu <david.wu@rock-chips.com>, kernel@collabora.com
References: <20220627170747.137386-1-sebastian.reichel@collabora.com>
 <20220627170747.137386-2-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220627170747.137386-2-sebastian.reichel@collabora.com>
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

On 27/06/2022 19:07, Sebastian Reichel wrote:
> From: David Wu <david.wu@rock-chips.com>
> 
> Add constants and callback functions for the dwmac on RK3588 soc.
> As can be seen, the base structure is the same, only registers
> and the bits in them moved slightly.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> [rebase, squash fixes]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Krzysztof asked what "php" means. The answer is: The datasheet
> calls the referenced syscon area "PHP_GRF" with GRF meaning
> "general register file". PHP is never written out in the datasheet,
> but is the name of a subsystem in the SoC which contains the ethernet
> controllers, USB and SATA with it's own MMU and power domain.

Maybe there was a typo and name is PPH? Like some kind of short cut of
"peripheral"?

Best regards,
Krzysztof
