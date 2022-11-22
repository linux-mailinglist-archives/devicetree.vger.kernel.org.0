Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FE7463376B
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 09:49:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232707AbiKVItR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 03:49:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232445AbiKVItR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 03:49:17 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 290BB2E6BA
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 00:49:16 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id a29so22508229lfj.9
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 00:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jEnkh3zk4jO+MDyInigAIrpi1FWlUFSvLcU2rQzTmRQ=;
        b=KwrNqp1P7h9O4XSWXQdKrnp9jleHGWBxdWetGuugUOnrGaqRc7JWf2hvz1nHeE85zO
         tq/tkRftw/5q7lyH9RgHkbYo/Xx6ST+xmgL//90Im9eZyhzzSYhgwOOZcm49xSbfx5kU
         rMUBqLnU+v+Ve+O9r15k1JovIBOQ0vsRclfcXNH7r3HritjeRcIlIWcSL3BOZJ5sBMHG
         FXXJNWvpPxhKwmYhTNSSgDH9p92dYPe9LJ7b7Lnx94OspR7cqLq0LS96rkydHMVTMWGN
         HxVyoLAuHPF0AaUpfdSqLwsKnmRyM34boTp6kpvqQfqYi/4QDOfO5TDOsGm1Em5gnkdP
         xnVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jEnkh3zk4jO+MDyInigAIrpi1FWlUFSvLcU2rQzTmRQ=;
        b=xp5rD41Xm+rlXlpH6EDosgqJvFMhyuDHYEcC6LrS4XReZorsPr/iWRXVu1dJ3X5xEB
         RwKxiiheqbkAp4Zw+2lx2DcY5O/j84mHDsNgJH95DWp8If1+TVvPrPQJX63k6uHvWjIP
         TdHJDEN/0w2m8Z4ZoIdkygPsB/n8X3oaWMXritCSfnuBMMwauc7U+WO+kgur2Atjb50y
         1+c8Kp5ZmEoKaLL7F9kBaoGamZtj/7oLd9XOoBWbOT2z/KETAj4W9GsukrE2eGs27Svv
         Wy7XHI9X7PRnDhEnyDb1GtWlSMM1cNp5KLeZlQ1Cx5FxPOU8+2VG9cEqBKJs31du8kn2
         xFKg==
X-Gm-Message-State: ANoB5plI9sVHE9k4Lv1AV/g41uaeiHhh6OLYJGn0DEHlnoYudnLSLVSj
        tyaw18P/MnQPD0ReDn4HsOqYVw==
X-Google-Smtp-Source: AA0mqf4r+HSOOP4lvZPpqedwiqd5uq37QoTBeb8cGRzkem43lIfDYDA63nIfFrpb4g0hBbDIy3ZvfA==
X-Received: by 2002:a19:3818:0:b0:4a2:4e8f:746 with SMTP id f24-20020a193818000000b004a24e8f0746mr2325218lfa.528.1669106954522;
        Tue, 22 Nov 2022 00:49:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id dw7-20020a0565122c8700b004a91df49508sm2403562lfb.177.2022.11.22.00.49.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:49:13 -0800 (PST)
Message-ID: <53909e4f-ecab-b942-82cc-3b882c7d1938@linaro.org>
Date:   Tue, 22 Nov 2022 09:49:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: Move fixed string node names under
 'properties'
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jerome Neanne <jerome.neanne@baylibre.com>,
        Andrew Davis <afd@ti.com>
Cc:     devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
References: <20221118223708.1721134-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118223708.1721134-1-robh@kernel.org>
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

On 18/11/2022 23:37, Rob Herring wrote:
> Fixed string node names should be under 'properties' rather than
> 'patternProperties'. Additionally, without beginning and end of line
> anchors, any prefix or suffix is allowed on the specified node name.
> These cases don't appear to want a prefix or suffix, so move them under
> 'properties'.
> 
> In some cases, the diff turns out to look like we're moving some
> patterns rather than the fixed string properties.
> 

Yeah, quite confusing.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

