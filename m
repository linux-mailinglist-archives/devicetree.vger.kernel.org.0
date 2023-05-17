Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28631706329
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 10:41:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbjEQIlm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 04:41:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230198AbjEQIlk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 04:41:40 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 107EF26A3
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 01:41:38 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bc570b4a3so857655a12.1
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 01:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684312896; x=1686904896;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZUZxK878WWwa8+El0+lNFY+QXkRVXfNrvEurY+MA+qM=;
        b=bBy8nLsLvo2UC1Vbh6qJ2TLwFfrYyM2z2E/otQSOfBQZOShZUCwUDXkzfOaOuoZEhU
         OBeYWerJNOHy9gkVcZtFGovcOrUGU4SD7ikdxOziLtNPU3B3A6yIakHr8cB4i8MkmbYR
         W0BxyaL8t2CDLf38KeseB7VMQ00HAQhZdUM1bjJEERFqCgdfI7MaTQ9057i6RFZKSvh8
         bp50hbkiflDdpKEDuYQyr88kKZP1LqlHpvcchKHAByarGFCm88phMKisjVtxPlZiw16L
         sZOKzc5AsPOXyd2TIVaykbDLdKMCH4k44zQ/7+1HKiGqpD9vyJNeKF3OeU5wKw9hnRLo
         9Fqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684312896; x=1686904896;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZUZxK878WWwa8+El0+lNFY+QXkRVXfNrvEurY+MA+qM=;
        b=jnpBotAn9eUhNhw/BnH8M4av5l3G2C2Ba/IjDWa5lGPJ5NqgSa5EXkTtMV5MMiH/DI
         yaPUN2DiNhlnBFDwKaUUWqAY83Ykom4KR6LB/TKnLxG5VfXNS3x1BIxzF8PiayxFdNWD
         ao4kIcLhQk+Ww5k6BR51hCXKpJytL6x8Hl696+yNZPSMgDfHPqNPhbzcTKFQjJuhR6UC
         HSrVIVv74zZdIWKlcoLl6cwLvs0PfhYyqwx142TNkLI5az3LBW8PvOmo7z2XeWLsespz
         0P0TqlytumMhBjipQ6e3Amp3l4gseU693vkBYfd94Gqx+GPEIyMdYj+cng9bTbm4tiK4
         iDQQ==
X-Gm-Message-State: AC+VfDyB0ZnUdTUd0w+B2+bhCRhHDyBHd48in6HEF/1xiep7gCI0vXS2
        aDDCWETOu7iM1LaGQBobu4Zy3w==
X-Google-Smtp-Source: ACHHUZ4X3mrKVkrJMCaJ9WdmHLTHtWPOpptSnrOnoRmnWSlWiXUhp7yx0KJz1Er++grYX6XxpUrjug==
X-Received: by 2002:aa7:df0d:0:b0:510:b4c7:d17 with SMTP id c13-20020aa7df0d000000b00510b4c70d17mr1466284edy.12.1684312896455;
        Wed, 17 May 2023 01:41:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c9ff:4c84:dd21:568d? ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id o9-20020aa7dd49000000b005106975c7a1sm2739689edw.23.2023.05.17.01.41.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 01:41:35 -0700 (PDT)
Message-ID: <42ca8c57-5211-72ff-4f55-ed2c2886dac9@linaro.org>
Date:   Wed, 17 May 2023 10:41:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] clk: mediatek: mt8365: remove the max clock number
 defines
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chen-Yu Tsai <wenst@chromium.org>
Cc:     Markus Schneider-Pargmann <msp@baylibre.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230517-fix-clk-index-v1-0-142077a1732b@baylibre.com>
 <20230517-fix-clk-index-v1-2-142077a1732b@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517-fix-clk-index-v1-2-142077a1732b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 10:28, Alexandre Mergnat wrote:
> Since we swap to the generic MTK probe function [1], the *_NR_CLK
> defines used to know the number of defined clocks are no longer
> necessary. This patch remove all *_NR_CLK.

Please do not use "This commit/patch", but imperative mood. See longer
explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> 
> [1]: Commit ffe91cb28f6a ("clk: mediatek: mt8365: Convert to
>      mtk_clk_simple_{probe,remove}()")
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>


Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

And what about other users of bindings?

Best regards,
Krzysztof

