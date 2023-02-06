Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6999F68C697
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 20:16:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230234AbjBFTQ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 14:16:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbjBFTQ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 14:16:56 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17FF12CC7A
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 11:16:34 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id j32-20020a05600c1c2000b003dc4fd6e61dso11521104wms.5
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 11:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gJRDeiWMU5LminQ5X0rSwq5LRRKb8iCPzPGu9WgeBvk=;
        b=VPj2N3jHazrLOiA7IMwXdxCeFN/lEBhO1oe783NaPoPoRMAJ6L05bPfNIY1WSBVPvg
         YgR8ZcE1UpgfiKiMwyZjQz3KKkOHc/09+dTTizVt8UI471hYotXy+eaPYtI0LjD2B9X8
         TM+OupEI9O4EaWaz9EAcCuhBecxbDP0XRUE9zBxqMorKfh8kc7fSlqb8WEfyD4Fzvnb/
         oqdWiVzVZiER7qK/GwKoHDG+LSwok8oGcu7mxMwe1vb+7QABcdb2nTyS6R3QhsQ+ZRXT
         Qbw+HQvs0Uij5IaDi5jCdEmXQqTq5Lgy6J67JTREXAUoj/bQYMr60UqRZkPohBhoMUwV
         cvgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gJRDeiWMU5LminQ5X0rSwq5LRRKb8iCPzPGu9WgeBvk=;
        b=WaXiWYAa2+t0K3G2sgzbmqwYC4LdIVDhg/p4DRsIz2ABSKo9czt8uDPKppc+5amwYq
         0mWPfQ9UciNSS5mzZnD2kGW+If4ML3Ghor5D0TXEhqfbWEqgBJWB6/MHORpfl8q0gULv
         DUWioddhdaqnvuL7hLmBnk3wIoksI3PZGZsTyzBbwz2RI2V7M+UVA85zk0EBKDlCEMr3
         MUjdiDuO7IKkqvG6rKXr2HZYg2Qf9S+4YFVgoZIRA7N6f2cGm/otJS9DxFv2qaVEiowP
         bu9az93UMHzpYY0CCCJB77bF+m4HpW0Etkt3NRLF/L5v5V4ppFrNAKqeV3xHzFX3DpmM
         WAPQ==
X-Gm-Message-State: AO0yUKUmWalHTxzjMkmTsUmrsPe/qzwB1o02im8psE+PKb0KKITyC3Nw
        LUCcaYkmRxtl+liyKuX+cSlJY8EKFWBCW+iK
X-Google-Smtp-Source: AK7set9kdM2QNJOY0kxx1JjhOxRMvHbF5AvX3IsjMUfODox45NsBWNLdRL4wGOc0gLaOFODk/k+JVA==
X-Received: by 2002:a05:600c:331b:b0:3df:ead3:c6fc with SMTP id q27-20020a05600c331b00b003dfead3c6fcmr746809wmp.17.1675710988803;
        Mon, 06 Feb 2023 11:16:28 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c3b8900b003d9aa76dc6asm18047337wms.0.2023.02.06.11.16.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 11:16:28 -0800 (PST)
Message-ID: <ab80be6e-0dfe-a696-6d81-0969e5a21ddb@linaro.org>
Date:   Mon, 6 Feb 2023 20:16:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 6/7] ASoC: dt-bindings: meson: convert axg spdif output
 to schema
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230206153449.596326-1-jbrunet@baylibre.com>
 <20230206153449.596326-7-jbrunet@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230206153449.596326-7-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 16:34, Jerome Brunet wrote:
> Convert the DT binding documentation for the Amlogic axg spdif output to
> schema.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../bindings/sound/amlogic,axg-spdifout.txt   | 25 ------
>  .../bindings/sound/amlogic,axg-spdifout.yaml  | 79 +++++++++++++++++++
>  2 files changed, 79 insertions(+), 25 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

