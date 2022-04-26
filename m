Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5DA50F1F4
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 09:13:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343737AbiDZHQk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 03:16:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241770AbiDZHQj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 03:16:39 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8A0540934
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:13:30 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id y3so13778434ejo.12
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=796okj7fUhfEo6Z+Bxk5e2KE1IFo6Dc7db5MBQ6gCi4=;
        b=Xg8xaGl3qOynNGE6l19Z5REqd7o4IHyJY6pnHNqA2NQsZ4xuKKdM1MOZnQkyw5w+VL
         uY9s5qBh0MgEdIl6r8Yf0gT9CeJpbE4TX73rynqCDd7GkJBn5mhNSyDDHlH4B0qoXJCw
         SHZFY47RNajDkrMT+nMKMGyjSNdEg1lJ7Iun3uHI0FfbdgbQpXn7tZrCTC5VDWguNnGY
         Cv4Kms5dcMhE0XTNVOEN1OYATjIVXwBS0Zc8qsFuuIgal5KQHmx9yrWxDSQbXwbXPGBF
         /gI3vMXFNJrnUlR3CxzLcvIOswGFemjF+HqCsOBWXAomC1nyc00/T4tB4Oedxl77m/w4
         IDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=796okj7fUhfEo6Z+Bxk5e2KE1IFo6Dc7db5MBQ6gCi4=;
        b=1Iz/rpo2pu2cNg4q90xZCgHRBGaPjcLMvvviW8XajI+io5WbGbfyFriYZEKfSRhYVF
         Gjws6ot9xGKgJ3G0Ytd5CAurBGgwUfSBqjuUVOBKUcZ/2vAm37/MMcfzssSMQjGzVwEg
         f7bsAIwdGvGmzX7jqmNKr5WbQpJN0UO8hVawD9orkq/5+4nZpZlYN1NuZjkZ/9NOR2Xv
         zQfPWK20B4QV68bNab21ge4++beAkWIpdVl7/AN2b+8KB2XJmRpb9dvT7iDZZfaq+peR
         2SDDfRhQxdR8N4qfF6Dg863EUWgWGUfnH3+ApTIZ+1eag7NH00RI8o97emUK8vR94pw5
         hE6g==
X-Gm-Message-State: AOAM5314e8yV43qbtJWwmJKvqTg1N/3aP1WK4Y+OS9Ep8WTvVwVhwaZv
        Yk7Z55AbmhBiiYkIhNMLZJ7vew==
X-Google-Smtp-Source: ABdhPJzX1cqLrcHhd4KQ3AKjehHP29V8LYMhJeuJd1XE420U3ovR0yd62G4tmz9dpqk/GrepN+5mwg==
X-Received: by 2002:a17:907:c243:b0:6f3:953d:6e2 with SMTP id tj3-20020a170907c24300b006f3953d06e2mr8363720ejc.506.1650957209401;
        Tue, 26 Apr 2022 00:13:29 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id kx5-20020a170907774500b006e1382b8192sm4499892ejc.147.2022.04.26.00.13.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 00:13:28 -0700 (PDT)
Message-ID: <ebdc9fe8-f54c-9b11-a167-54219b124cde@linaro.org>
Date:   Tue, 26 Apr 2022 09:13:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
        herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org
Cc:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
References: <20220425202119.3566743-1-clabbe@baylibre.com>
 <20220425202119.3566743-25-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220425202119.3566743-25-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 22:21, Corentin Labbe wrote:
> Convert rockchip-crypto to YAML.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
