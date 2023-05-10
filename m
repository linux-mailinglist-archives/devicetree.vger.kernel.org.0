Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4A346FE011
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 16:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237001AbjEJOZE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 10:25:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237248AbjEJOZD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 10:25:03 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B15B7AAF
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:24:43 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-965ab8ed1c0so1191793166b.2
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 07:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683728681; x=1686320681;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tvB6tNxqC+RYJpA9ZkTv4yGns/HAirmepb3vyqxfld8=;
        b=cuvSVTLAzjvxPzP2eQEyxnBQ9b9sbdEsM+eTlDCijm+UJ+oDk+jbKJeKnQ9yC+fRmh
         4gMNHEY2sfILpe6MUKrxswaTJ3fY5HLnsiBd9fAu1Pg2WF4Y5+yZnN3mAMGRBYg6vuiF
         X5WBlo1OSnDspWv8dbJBFfzxsUFycZml+L71jBtWcCyfVl7FklG6X3rWwEKwlYy7ogWC
         aYBjJ+3T3ZvEm+9PX8BoCe+89KY5/E+ThQOEV8SP6pOCcSZhWEiMwBquk5JQDpyUEa4x
         WUMXFR+RFM+mgPGPK57teS2jSUHilzspbeveQ2v55huQN6IPs6s0U5EZ7UbWixyukGxl
         2DDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683728681; x=1686320681;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tvB6tNxqC+RYJpA9ZkTv4yGns/HAirmepb3vyqxfld8=;
        b=H+NhNQzpph+JBgOJrkX3u8X/vLRJreJORuz6P8S3HcvcY107XT63WI06d5Ij8J0A0L
         rlgJHSs+iYUO0tmxddAo9/Y1awCun2nC3BEdP1328qj6ZOXqdFWEAlx6AY79TEsQumdy
         euxZk1NVMmz+WA//UgBHPuViGHjTVZIYQWfTjmUC7BC5z2/adEsCMLyZN0Sm/UrcyXzk
         Kpwyho7dQ7nOhTbXEqoj0Vb+VrpLWr6IwIQaDmYnwOkKYey/SBnWlR+LSS7JDqpdNTBj
         4r/ZVF28HTlQqr/7sSXRXZhP0G68N/kIU0lm80VIgID1uzhe8LKG1fgy5QcljLWWtF8k
         P4KA==
X-Gm-Message-State: AC+VfDxmPWmhtnUA1kf+xoPlO8Hci776JLWH/LyDRwwABhqn2C0Asjur
        S3yPHprw0v1CI/p2/ZKyL97lSQ==
X-Google-Smtp-Source: ACHHUZ6Qv4Y02gb55kWr55DrSPWGUN7xUPG9NIW+geR7568HZ2/XgyLyLHnDcpnL7kBUuhbrxLlChw==
X-Received: by 2002:a17:907:9285:b0:958:489f:d050 with SMTP id bw5-20020a170907928500b00958489fd050mr16608835ejc.43.1683728681013;
        Wed, 10 May 2023 07:24:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id gv28-20020a1709072bdc00b00965cfc209d5sm2759068ejc.8.2023.05.10.07.24.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 07:24:40 -0700 (PDT)
Message-ID: <8e777515-4a5e-daa3-4881-51e003c9e865@linaro.org>
Date:   Wed, 10 May 2023 16:24:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: timer: sifive,clint: Clean up compatible
 value section
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup@brainfault.org>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <40ff1fc7f5220db7d527c57ac4bad16c3945ae08.1683725179.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <40ff1fc7f5220db7d527c57ac4bad16c3945ae08.1683725179.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 15:27, Geert Uytterhoeven wrote:
> Replace the sentences in the description listing some supported variants
> by comments on the individual compatible values, to ease future
> maintenance.  While at it, restore alphabetical sort order.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../bindings/timer/sifive,clint.yaml          | 21 +++++++------------
>  1 file changed, 8 insertions(+), 13 deletions(-)
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

