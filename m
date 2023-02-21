Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC99269DF03
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 12:38:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234153AbjBULi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 06:38:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234205AbjBULiv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 06:38:51 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83EA812057
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:38:48 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id x10so15104287edd.13
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 03:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7tq51gAJIQj2Xs1ZKNGqnu4NrUprTsJTQmSC0ttvYNI=;
        b=K2xiRBkU6h0mnBM8imm/VCEbhvLY/ceuXzgd14FpbsVy0S3mv6rsKv3gJBSV8yB1xw
         snQXZsLf/yLPCLdeWUkY8GKMzivAvGnCroU1GodSQ18ZKIGfMfwzU7tnoJRxj93qykbY
         WQAFgcT/x3hJIPTx88Bjc+BbZDK7stwk7udrkieVBM7wukU4ki+ksjHqT8ua0u0whs6N
         mYnuTGmVBEQT2GKu8Vud0p4X5B/7gvnBOu7FvCj3GOytHEYr8kESWejcP2tvYuO9IyvI
         PgMH9egv5fQJ90Jy43/FFzeZKGMluW16mAucPJp++5Cs/bVQP2jzdLmXkHKa5Kp7I2qO
         BwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7tq51gAJIQj2Xs1ZKNGqnu4NrUprTsJTQmSC0ttvYNI=;
        b=xuK3pQJhIHBb1LJUo/cTr535Ygxh/jiCOxa2M1BBJepJhZVKK6NsOCjLrz4GvwdPP0
         DbB/LKx2rvs/NA8eiiMhQ+sybHde6u3jVu2RYQzrILSOkB7JKPhVkjyzMcTmolLs0h1+
         L+Bp9DfqwZBmKEils3kpkL9rfCq1PlZ14BHk8NMsWVqcsgfXVK3/P7YnzUfOqLgSglcN
         lzYs7QNR7vyT4cXI2z8jqyUaDE5fgAddsxyW5u8oU7FdqUwmzcB6tp1sjT5XHvrHSLVr
         +FgTbpfo09YTyvL7Q2b11oOyw8EIcC7XH3EqcoaaNztTTWQNbPaQn5StWqTEQCYFscam
         D9yg==
X-Gm-Message-State: AO0yUKXXxVU4XZZvvboF0ja/PN9Z6FuCGjmOWMcW21QarmwKeCItoKdn
        a4x3OtdiFfePCoRKuBX1PaGGzw==
X-Google-Smtp-Source: AK7set/3gIbpZCbGX8KRPqHk4leYzTL0UBaiSORTZuYQavAfonAT7E7VUPDVMnim+cH7HYssAsE26Q==
X-Received: by 2002:a05:6402:1203:b0:4ac:c1bf:2a26 with SMTP id c3-20020a056402120300b004acc1bf2a26mr5378277edw.12.1676979527040;
        Tue, 21 Feb 2023 03:38:47 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q18-20020a50c352000000b004ad601533a3sm1483381edb.55.2023.02.21.03.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Feb 2023 03:38:46 -0800 (PST)
Message-ID: <f21e19d9-206e-31b5-0287-0dff6ccd6c6d@linaro.org>
Date:   Tue, 21 Feb 2023 12:38:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 16/19] dt-bindings: riscv: Add SiFive S7 compatible
Content-Language: en-US
To:     Hal Feng <hal.feng@starfivetech.com>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        linux-kernel@vger.kernel.org
References: <20230221024645.127922-1-hal.feng@starfivetech.com>
 <20230221024645.127922-17-hal.feng@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230221024645.127922-17-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2023 03:46, Hal Feng wrote:
> Add a new compatible string in cpu.yaml for SiFive S7 CPU
> core which is used on SiFive U74-MC core complex etc.
> 
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

