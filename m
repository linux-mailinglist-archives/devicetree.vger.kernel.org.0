Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B48755EF7B5
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 16:35:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235685AbiI2OfX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 10:35:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235720AbiI2OfQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 10:35:16 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7357D5E656
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 07:35:14 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id a2so2544542lfb.6
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 07:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=t34inL3mEURDjRNQxEKzvsxMIvG4RSh3GAtajTmRDPU=;
        b=YcWoA+b4WVs6MgkrxS21s1E18uylPZ6PSZ5jBiXNFCJXsMtKFeSe7TAehG+BiEvDAt
         tNm7tQYIU0iXAlWwSHvBwVa0zpTr7WfWQmHzodN4CF+7EWZ2hftPhJmJfjBxBFznZI9Y
         ZJf187D5qbb9H1deblpblToW6mdmEs4cuHgCCNXe6up/f2A4NCle9391cPiGRjdgRl4Y
         199RCAOgDoyAfY0IlHQ+4Bmzn+AydJ+Pa8FbMZbrsGTdsrZjaHZ4PtRFpXsA1sQ31kk0
         Ed2KbzdKjMHfitMT31tqIrj023lUxkHNrbq3BpCulX6GGQrwC8Al+ST45b3TIi3c6Sv1
         ae4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=t34inL3mEURDjRNQxEKzvsxMIvG4RSh3GAtajTmRDPU=;
        b=UcnYresO5H7HGmNLTf1cDHjSqBtWXAPVfJE1pzEE4IaXC/kbY0ADOREhwpdpCRaASz
         lhCxyPSCHHz+SAnreDTyC+zfDyqFQn6Ce31e4oKA50ngUXE9iIVRk1dr27DYOPcItA+p
         EwWGWLHA54hXX9Oyo7xW3y7q4VvQM3Pi6yQcBDbzoh1bqq20WQ36ZbVw2SYGGSV3nxy7
         4dwW2Oy7QaLUHCM5lmSMVzEe/l2nZvK+Ij73msOYdJrOtIyArJMdHGoxXqJ/LTNidNHt
         pjE1I9VK86rFHddwVT7scbiLbZvjFZGgcRusDKwKbi57/HCyYlx+Q8Xk96mRUN6xBLKd
         MgAA==
X-Gm-Message-State: ACrzQf2Uxqdy7RSYqQLMfDloa/Uim4YuKCHZvbe1FyE0KBGOqbOeqc9P
        VqxRcEw5vQCfx6hNLxwoe9nmow==
X-Google-Smtp-Source: AMsMyM6sdgTc5l/UsvqieH0nuKd6/kKfyFul3V7NmZ/KWsVg97bSXv9GJgkmAyeB/HeNIKQbq9MEVg==
X-Received: by 2002:a05:6512:3c9f:b0:49d:d486:96d7 with SMTP id h31-20020a0565123c9f00b0049dd48696d7mr1578346lfv.596.1664462113700;
        Thu, 29 Sep 2022 07:35:13 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o14-20020a2e944e000000b00268cfcf841asm725961ljh.56.2022.09.29.07.35.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 07:35:13 -0700 (PDT)
Message-ID: <4f39cfed-9ca2-93e0-6410-fc395376fe6b@linaro.org>
Date:   Thu, 29 Sep 2022 16:35:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 03/30] dt-bindings: interrupt-controller: Add StarFive
 JH7110 plic
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
 <20220929143225.17907-4-hal.feng@linux.starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220929143225.17907-4-hal.feng@linux.starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 16:31, Hal Feng wrote:
> From: Emil Renner Berthing <kernel@esmil.dk>
> 
> Add compatible string for StarFive JH7110 plic.
> 
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> Signed-off-by: Hal Feng <hal.feng@linux.starfivetech.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

