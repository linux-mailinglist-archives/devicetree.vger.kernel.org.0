Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1110639636
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 14:38:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbiKZNis (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 08:38:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229615AbiKZNir (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 08:38:47 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93E681C13B
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 05:38:45 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id f13so10753378lfa.6
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 05:38:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JODCHnpvnBiR3n3fpZD67kgmrBczvvXLFyLOXUIrzLw=;
        b=R3kgfVWpjBBFfaYMxVPvDJJvCc8bXrmR/5iyKRzySX5/rt2UGFXYJQ1CbZ7V/QTNtj
         QVRr/i02Iy+GkqfMTBjzC05z09gJXZA4ibdqDPZ5fQBrOvhcMk6UIJ+YctxesjOSpoIB
         kQCG4DKHPIOrN/KdA00jHuACtf8jgXrLX6XKPD1bVQuk9GvGStFHlTntU7YcjaeoUqKw
         vFSAYNI9x+PPd4aNr68aaPW6AqVDvEPkaa0C5N1eKr9tc3ir4teP7RuOEpJoYjyRazN/
         oM8NxRY1aVpC7Ncrd9xs2MrwgP4B0hjE6kqmVRAiikfIR4vdOFyrDNYHINYe4NOvoT5+
         wd0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JODCHnpvnBiR3n3fpZD67kgmrBczvvXLFyLOXUIrzLw=;
        b=bosxE7czwa8IMCnDXH2XJfsg8XfYyI9Oa2e+NHOetNmjhVX9Xp0+zmsuqTZT5cUip7
         hdsSDuNE+psuMjZ9xZRSBAKJ2vlFZctKmGjMrCd3i2tKYGpTQT2Whd0+2ElbO/VdtIWm
         Xt6gQU+moEEoh9gn8P0yp9HMWhrnSQbVtspLSVCwYOXmj3BbsZ8NhaQzIdYVZKM5vV5l
         7/WFDYXSPZdGI5/S2eMp4ETn3f/aJORhROcDvxia3coJVM5POTKtMiOF03mrdLJty9vz
         luFgUa7yuR7c0V57fSQfPc4IjNkL5j8ULgXqmXfF9MLEUufBrcK1iBMyAuCa+myHBq0t
         DcKg==
X-Gm-Message-State: ANoB5plN/+a60/b1rayYHmJNqP6v2FdzXjx2MfGW+BAAwCWVn9x7DKqx
        gMhIfQTrSJvRM1Qg0nLJsXbNXQ==
X-Google-Smtp-Source: AA0mqf6MtjdoVhvR7zpbOEi+YVSwYyAWyZtyojehbq8a4FMrZd2GJ1stmBS+SNY6qcKKgpKEhAISJw==
X-Received: by 2002:a19:5f11:0:b0:4a2:240a:443a with SMTP id t17-20020a195f11000000b004a2240a443amr13705255lfb.529.1669469923936;
        Sat, 26 Nov 2022 05:38:43 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k20-20020a0565123d9400b0049487818dd9sm931511lfv.60.2022.11.26.05.38.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 05:38:43 -0800 (PST)
Message-ID: <ffa1e063-7e29-0bcb-035c-ff96f8eb037d@linaro.org>
Date:   Sat, 26 Nov 2022 14:37:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 3/3] dt-bindings: net: sun8i-emac: Add phy-supply property
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     LABBE Corentin <clabbe.montjoie@gmail.com>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev, netdev@vger.kernel.org
References: <20221125202008.64595-1-samuel@sholland.org>
 <20221125202008.64595-4-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221125202008.64595-4-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2022 21:20, Samuel Holland wrote:
> This property has always been supported by the Linux driver; see
> commit 9f93ac8d4085 ("net-next: stmmac: Add dwmac-sun8i"). In fact, the
> original driver submission includes the phy-supply code but no mention
> of it in the binding, so the omission appears to be accidental. In
> addition, the property is documented in the binding for the previous
> hardware generation, allwinner,sun7i-a20-gmac.
> 
> Document phy-supply in the binding to fix devicetree validation for the
> 25+ boards that already use this property.
> 
> Fixes: 0441bde003be ("dt-bindings: net-next: Add DT bindings documentation for Allwinner dwmac-sun8i")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

This looks ok.

Best regards,
Krzysztof

