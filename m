Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B717C6B6B94
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 21:57:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231590AbjCLU5l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 16:57:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231576AbjCLU5k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 16:57:40 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7928D28E93
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 13:57:38 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id g10so12166901eda.1
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 13:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678654657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+PoQt8tnkXKFkle2nsFjlv+Leq1xO12xTC7tQfURtys=;
        b=AmTW0ByObVvtm5bZWY8jIKiocqRWWVwhjzjEpZ/ZrwMrj8Ee6O0/RrYRDSpHu/IrOz
         UVv8mCknuVLmmqubBs6xcWTJMYCULiopzlOUSRa+vDz56p01QgkpQdepr3asfrIyZs8X
         vG6Bw5PTA6pymZtmwPa74+clo0/hgGwQjvUgaGUj7f4g786n+nxkWxgOuNo+s2Vy6XUP
         xOe0XlLCDUeqjeb1Yzwz7rpzCgs8L7B5onCoB7jo+PdMNcGeQAjUFuIIjLMO2UzrsDeZ
         agno+TquSgpED8zDFQZUCJ2lB1M6eGhbShEeJwoOKafNrwxNR6lE0IC10d3zvdTaJTNv
         JFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678654657;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+PoQt8tnkXKFkle2nsFjlv+Leq1xO12xTC7tQfURtys=;
        b=sOHm9FgAmKGQyH8Fc4S52GeYzk90gsBwURVCdVKqiaeBErEw74WPT2cQBRcYLLk8+Y
         9mPL3bdsmGD6258xKPHBsYs8wmeCTQd7d+SZldoQCGectUSmWh5ISbZJrMgFrvzjr0yq
         aKkZdqM8S6HKvnX61zdWuzd2Kom1m7bPdPcWGohMUq/HvYFy4jxUFUQ/+RXg6rLUOhum
         IS4AOzx1x+nAF1hyVj1PLL2thCmyc/CEo+fkswu0sjI2HgfEvAH9ByjG0wvhwKGunrdR
         C+copxDQadZC2fykDTWK3m6YZez0VYCO+8R6B94JcZX+2RIVCgBI+/yfGKfDC9t5SIej
         9MqQ==
X-Gm-Message-State: AO0yUKX1Dldwu2ItqZa46haW6sOuYldXviEWeEj+LLp8kAkTK6yL/79/
        Ee6dOswWwsHp0F/Z5GKbFJMwLw==
X-Google-Smtp-Source: AK7set8Mh3dR0JfMQ5uQ0962ETnZOJomBpmSYK2P/lCcIeZjkKxhLtxE20WjEmRovBwoA3j93hnYjg==
X-Received: by 2002:a17:906:2b99:b0:8b1:fc59:a22b with SMTP id m25-20020a1709062b9900b008b1fc59a22bmr30784083ejg.34.1678654657019;
        Sun, 12 Mar 2023 13:57:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id jg16-20020a170907971000b0092a59ee224csm181341ejc.185.2023.03.12.13.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 13:57:36 -0700 (PDT)
Message-ID: <0e612225-c821-4c7b-dd88-0ab7c88639ad@linaro.org>
Date:   Sun, 12 Mar 2023 21:57:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 03/15] dt-bindings: spi: cdns: Add compatible for AMD
 Pensando Elba SoC
Content-Language: en-US
To:     Brad Larson <blarson@amd.com>, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-spi@vger.kernel.org, adrian.hunter@intel.com,
        alcooperx@gmail.com, andy.shevchenko@gmail.com, arnd@arndb.de,
        brendan.higgins@linux.dev, briannorris@chromium.org,
        brijeshkumar.singh@amd.com, catalin.marinas@arm.com,
        davidgow@google.com, gsomlo@gmail.com, gerg@linux-m68k.org,
        krzk@kernel.org, krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        skhan@linuxfoundation.org, suravee.suthikulpanit@amd.com,
        thomas.lendacky@amd.com, tonyhuang.sunplus@gmail.com,
        ulf.hansson@linaro.org, vaishnav.a@ti.com, will@kernel.org,
        devicetree@vger.kernel.org
References: <20230312004445.15913-1-blarson@amd.com>
 <20230312004445.15913-4-blarson@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312004445.15913-4-blarson@amd.com>
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

On 12/03/2023 01:44, Brad Larson wrote:
> Document the cadence qspi controller compatible for AMD Pensando
> Elba SoC boards.  The Elba qspi fifo size is 1024.
> 
> Signed-off-by: Brad Larson <blarson@amd.com>
> ---
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

