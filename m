Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66AB16FC730
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 14:55:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235101AbjEIMzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 08:55:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235138AbjEIMzN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 08:55:13 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8677130C1
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 05:55:11 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-956ff2399b1so1094653666b.3
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 05:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683636910; x=1686228910;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lMF3uHWZ56CTA+u36UaUJchvvZQx5S89DuE1ouxpmwc=;
        b=ZHGXYYDgLFPm9gvNMZJjy9sLqD7BaTo5ZMcWQuNhyDHVa1mJCKuW/gChrihAg37BP/
         vqDRjEVqk3pFGXouu2ckBXbvscUkQByJ7SmKXnVhtcKgAPzscYU/idBUMhkbpfW2BKaZ
         +C/jeVi8+cIXUVQ8zzj/b6i4VuHCebPyvVofeUqvA53Wwmsn/ZyD1gj4MUHBj2b8ybvn
         E4JElBTXxMm8xF9+EOAKMbLea4b4dHbJIFpmUIqejF3geVhjH+a/qGKt641H2YfEwWU1
         uzybFzeY4FryTpamowrPF0+urEMDGM252NglsAJGNlvZyGbRBmD/L23zYl30BEmc4g8g
         YaxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683636910; x=1686228910;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lMF3uHWZ56CTA+u36UaUJchvvZQx5S89DuE1ouxpmwc=;
        b=TFvTL6gAm3DJRkO9TRtuz/hvedCa1CzrzFW6G8IgLXr/Tvs3l+YW6G2DI1XTw0aqL9
         9MgOkdCY+KFh2c8hBbk1HCZNGm0/gCkAy0MeOT5VWGb8T+neju7Uie7xdHXGZTE9dluL
         7Fpu+y/6u69WMfVEdKYTvwTlAI72fIcjmuDJjyR1ytAPffy397MJzimwkG9to5F/Tg0b
         WfgGOWeXz5EqDBmOZrPWjTu+2v+b9tOOPOgYZP1gLxpd6uRpFYrSnsSDXXnwJKbVIUFF
         4kBqYDd9dsD/lqFlFBNQC/A2Vy03A+MZMCAqvAhnHPkTIw/EBhOhq6JcK1A3UqiNqOl8
         tDqw==
X-Gm-Message-State: AC+VfDzq9EvpmzSRMqPWNIMabYC++JjQlTzG/3cKtY1Of1yEcCT/Nop9
        +M4KuS+wgpWZrrjUbAyBEm+zAw==
X-Google-Smtp-Source: ACHHUZ57KO7sTlNpwArE/nYHw+LtQ7G50tKhAGn9v7NYx85GDX7Tdw7AlQuspvsST92+OppoZKZPxQ==
X-Received: by 2002:a17:907:9304:b0:94a:7716:e649 with SMTP id bu4-20020a170907930400b0094a7716e649mr12304873ejc.13.1683636909991;
        Tue, 09 May 2023 05:55:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id j16-20020a1709062a1000b0094ed3abc937sm1285914eje.82.2023.05.09.05.55.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 05:55:08 -0700 (PDT)
Message-ID: <9fd256d6-5377-2de8-0007-6d1ecc15b862@linaro.org>
Date:   Tue, 9 May 2023 14:55:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: iio: adc: renesas,rcar-gyroadc: Fix
 adi,ad7476 compatible value
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Marek Vasut <marek.vasut+renesas@mailbox.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <6b328a3f52657c20759f3a5bb2fe033d47644ba8.1683635404.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6b328a3f52657c20759f3a5bb2fe033d47644ba8.1683635404.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 14:34, Geert Uytterhoeven wrote:
> The conversion to json-schema accidentally dropped the "ad" part prefix
> from the compatible value.
> 
> Fixes: 8c41245872e206ec ("dt-bindings:iio:adc:renesas,rcar-gyroadc: txt to yaml conversion.")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

