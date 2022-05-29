Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA84653713F
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 16:05:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230313AbiE2OFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 10:05:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229712AbiE2OFP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 10:05:15 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D87F32EA26
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 07:05:14 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id c2so1018922edf.5
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 07:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=DoS1+sV7MwmrnPDeS37TCoRY7iUJ5ISc1LnpRbTVv4k=;
        b=oGZV7JBLS/fL9I7A0lX+Y4vLD0r4+ixpXP2OxAH2C72FwUmPj+QV0nQc8n9TCyA/aF
         rtjS6W+B2nBfxwbcmdi/kJEcthpA2Gu2/aGzGfAAxp/JfCamRbVDKIetPi1Q0XXv67/2
         Cat9Aau51WWfYwA/EnmQTXpf42aHjKiLbm7rxzWZRNYqZDOTzeIge1gL2U0/BV/iAqHm
         FazgtA1uEodKvShvjO8NsgdwQ533JAZrR95/pVmzHkWrwt3zfeDstSFcRWQJdf4fEvhz
         b/OIEgy18kpccNoBN1Xz8cUECqD+EKVHiEc3jpAFFoq1M60HkLI+TjHVPt67/Qi7bpkh
         qxHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DoS1+sV7MwmrnPDeS37TCoRY7iUJ5ISc1LnpRbTVv4k=;
        b=sZSckG8kUK8OtvKeg8Ft5A+MR4T9aqXuE8ZGaCyyX1JoTeMx24gTRE3HNDY7c1VhIK
         WxhETkkbaDrG+6ssxK2yX7q0pPW/jUb0pNQ3UAYNqgOEJXce1pMCMK/O2WLnxvpDlgB9
         ya8KomAIomoivxH0uBiTK60e3k/0yGNySpCsrbu6eSUoO6dB0CO86uvopQgyJux0QHUB
         pv61FemAFm5nSj2Lwo1AaHPZQj7+mRpkeYQkXAmdhry63PALbAGuZNt76VhrZYvdnQDn
         aLq/HmHhL5VC6NPfzEXhjpterAwE5VNmQGNMU5iVYCIq0eb3VWUIEEX8tV8Ya9wXZ0tL
         AMgQ==
X-Gm-Message-State: AOAM5320jNQbFzCwmN2V9Fmc9lp8K9ZM6ehVCCuYUTBUBSmyHDx+tEqy
        7oyCit4Hxlp3IrWNnIjFXpj1A+bIBi6yWw7R
X-Google-Smtp-Source: ABdhPJzFwUd/ev0OnU+9l3T82d0QK1H+CgmB6WJiOHOOvJHmOzSmdnF8+tmQzIX+jQptJyONUfVxEA==
X-Received: by 2002:a05:6402:26cb:b0:42b:6bc4:ce48 with SMTP id x11-20020a05640226cb00b0042b6bc4ce48mr17081808edd.133.1653833113488;
        Sun, 29 May 2022 07:05:13 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i2-20020a50d742000000b0042617ba63casm5024510edj.84.2022.05.29.07.05.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 07:05:13 -0700 (PDT)
Message-ID: <4bb8e18a-11d8-c617-7952-8887aa815301@linaro.org>
Date:   Sun, 29 May 2022 16:05:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert
 rda,8810pl-intc to YAML
Content-Language: en-US
To:     Stanislav Jakubek <stano.jakubek@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-unisoc@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220527125633.GA5145@standask-GA-A55M-S2HP>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220527125633.GA5145@standask-GA-A55M-S2HP>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/05/2022 14:56, Stanislav Jakubek wrote:
> Convert RDA Micro interrupt controller bindings to DT schema format.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---
> 
> Didn't know what to do about the interrupt sources listed in the original txt file,
> so I've split them off into a separate file. Hope that's okay.

Interrupt sources are not kept in header files. Additionally are you
sure this is a property of the interrupt controller, not a property of
SoC itself? I would assume that one interrupt controller implementation
(e.g. GIC) can be used in different SoCs and the sources are every time
different because they depend on the actual wiring...


Best regards,
Krzysztof
