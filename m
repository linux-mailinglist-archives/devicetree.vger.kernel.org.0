Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99D0B784A8A
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 21:37:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230221AbjHVThR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 15:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbjHVThR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 15:37:17 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E572128
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 12:37:15 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-525bd0b2b48so6149191a12.0
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 12:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692733034; x=1693337834;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yaXLuaQsLsLn1fI/Z5qiRRQya9b8DYm/ma/PDKi8BUA=;
        b=waXr5YRjxLCJ4DuKTagGAPB8uYsMyWMtAkZ0dOWMgVTpoIL/D8gyCURlAwzCU0xtqR
         LkwKf7YZDPV1I/AvYLLWpSDWK+M0d0KSIRG9Wdy6Y4ZGnF2fRAiSz2NgQLw4T+9x0Po6
         lbOfvQhDm4EyMQqhZt8So5FEzl2r8kjN+Q8YmK2aa3lU60nfPSRBYf6KDr0TTjNrz7Dp
         WBGwpRK6mPl9kxJIziQDVq9S5Rzj6XGUIlYm8sWl9XCBJiI/147GMNrf7MvGj8Zs4nGS
         dz9C7n9XGWE7o/8hNJiWJg3FNswb7tvu5LoHAjUyYIRb4bfThtQIa5NljtMGvbeiK3NJ
         m1PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692733034; x=1693337834;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yaXLuaQsLsLn1fI/Z5qiRRQya9b8DYm/ma/PDKi8BUA=;
        b=BxujbhNC+iryCb7poftIXZ/Kn7ip90Il97PWKZhnLxQsFXeLtbYBGXPPFqEe++giHx
         dpQGooqv48TDVTYVAUmsJTG7Z+35odQYHHg3v3qmyoZSa8MDSxXYx8onUzVOo9GQu2hb
         fCTjVwr7edaXKEoEuqLijbGrRMIWV9e5OO5qM09lcqJTsNM0A3+3FURiLDw05p3wh7+s
         IxqS7ctCCJwMDJd7k/3ZbEzMwJdwf6OXlTrwrkHH60INeaN19Yh9ZEB+uBGV0LrZs8vp
         o1t8xTrXu7eaI7O2/c+kn8UI01t4RHG6YuusINhaFEjfEh0WOPNuji+l7I/J4sr4uaCs
         /UYg==
X-Gm-Message-State: AOJu0YzxAl1w//V8S14a2swJMgWvu58XNXVljjTNTcGPkwPuPvhi7Lel
        vgvqMA3oIw6Ibacg1sAoatNjfg==
X-Google-Smtp-Source: AGHT+IHVRDr/DoYKAhd5b7mN6cX8JmGPhZhnUhp3v75kVNz5lbWCQBjSJ5EaHTl3ael1rocmrA1+iQ==
X-Received: by 2002:aa7:da18:0:b0:523:1901:d19c with SMTP id r24-20020aa7da18000000b005231901d19cmr8652948eds.24.1692733033996;
        Tue, 22 Aug 2023 12:37:13 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id c15-20020a056402100f00b0052545dbfdbasm8043271edu.48.2023.08.22.12.37.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 12:37:13 -0700 (PDT)
Message-ID: <7fc1f405-a026-deff-18bd-308dae393542@linaro.org>
Date:   Tue, 22 Aug 2023 21:37:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 02/11] mfd: mt6358: Add registers for MT6366 specific
 regulators
Content-Language: en-US
To:     Chen-Yu Tsai <wenst@chromium.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230822084520.564937-1-wenst@chromium.org>
 <20230822084520.564937-3-wenst@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230822084520.564937-3-wenst@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2023 10:45, Chen-Yu Tsai wrote:
> The MT6366 PMIC, compared to the MT6358, does away with the VCAM*
> regulators. Two regulators VM18 and VMDDR reuse their register space.
> There's also a VSRAM type regulator VSRAM_CORE thats' split between
> the VCAM* register space and other parts.
> 
> Add register address macros for these MT6366 specific regulators.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  include/linux/mfd/mt6358/registers.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Adding few defines without any code using it barely fits one logical
change. It's just not a change, even if AMD tells you otherwise with
their autogenerated headers. I think this should be squashed with its user.

Best regards,
Krzysztof

