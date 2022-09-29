Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76C725EF7B1
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 16:35:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235705AbiI2OfE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 10:35:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235715AbiI2Oe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 10:34:57 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB00414029
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 07:34:47 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id a2so2542515lfb.6
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 07:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=0MABkvW0UvhcORQ93omAYK0+fxoBXvY9a8hGCKpUlEo=;
        b=zshqbbMWZ3QVILcbb8nImmxA2XPKA7YT/fEiPaK8Eq9LkdrD7f1uyhRaegmNyPY1sQ
         wdHJzKgV1SM4YfNnh7x52KOUpiFJ4LvqL6zkkVuM7pRJWK2M3YEDRQhIkWi33FJPpRus
         IJOjjYy3saWEKG2K29TUZEVTqi44LhjmSSRIlCOs1Ux8rF01JS5SLbAKy1bYzB8ODkva
         Bk7tIiRWqJzAt4aEWL3gwQ9Li7aCo2Qc3TU2ExTIZHhasyWqmP+xg0HylGUjhAtfL2+f
         WS9HZr+lYsgQT07j1gAbn514FPPkiE01Ux3Wpc0TSbh3+MXxNj+6emhbftQQpTOV+eSz
         E2XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=0MABkvW0UvhcORQ93omAYK0+fxoBXvY9a8hGCKpUlEo=;
        b=eKVn2MJVvsSjhyQ6T50xIAWVxF+TeRrj4d7ahYaFFYfD0s5Der6NQYLVjnGIfCX6dh
         s5VjCzEvBZNlz8x0jREaLhF0yD3qJo1tbcgerkPxXdT645LYODW+qE3QIH9MR1NG0nt3
         zzPuSOM2ME20XYPUCQa0+g9oFFHa8esYKg+eu5S+QlqIYK7YEB8vb7vDaZbYNelVfubB
         FS5GeXtqjA60WEdNDSOd60gXZA3VGpc5EQbj6VwJG05f7etTlTggnZk+GrVXNBDjTkao
         8MSoI4d1HI28mt1MWpLrumJ8+1JAGJQfaeI6b3DcHl7wo5Ddficabn3RhOwfCzukX7Lj
         Ebog==
X-Gm-Message-State: ACrzQf3+W99m9+ljKNrKXtqK3Du3552T1CoWAmlEr/zwD8Os0nJFfaPX
        rzC1n8aIMQv5uIl6srujcHXwtQ==
X-Google-Smtp-Source: AMsMyM6a70m0A1QLj8BbLZRkfngwlZR5h+N0EssuQspjRfClUBHrytz4dm9bS4t5hvV1UrojgL0oeQ==
X-Received: by 2002:ac2:4bc1:0:b0:4a1:c4ad:fed5 with SMTP id o1-20020ac24bc1000000b004a1c4adfed5mr1444496lfq.253.1664462084860;
        Thu, 29 Sep 2022 07:34:44 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l10-20020ac24a8a000000b00492e5d31201sm798855lfp.7.2022.09.29.07.34.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 07:34:44 -0700 (PDT)
Message-ID: <c8ecdbdb-b711-c00f-5e6b-f47a367e9964@linaro.org>
Date:   Thu, 29 Sep 2022 16:34:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 02/30] dt-bindings: timer: Add StarFive JH7110 clint
Content-Language: en-US
To:     Hal Feng <hal.feng@linux.starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        linux-kernel@vger.kernel.org
References: <20220929143225.17907-1-hal.feng@linux.starfivetech.com>
 <20220929143225.17907-3-hal.feng@linux.starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220929143225.17907-3-hal.feng@linux.starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 16:31, Hal Feng wrote:
> From: Emil Renner Berthing <kernel@esmil.dk>
> 
> Add compatible string for the StarFive JH7110 clint.
> 
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> Signed-off-by: Hal Feng <hal.feng@linux.starfivetech.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

