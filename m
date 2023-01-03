Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81CE265BC99
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 09:59:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230211AbjACI7p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 03:59:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237021AbjACI72 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 03:59:28 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67AE5DFAB
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 00:59:27 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id y25so44767220lfa.9
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 00:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7j9AXGm8KcQMkHKGAeB3T4mg7jffdKzNUIAHdwbY7fo=;
        b=s2iEumJhXjYNH1Gh9dH9AGQbcoOhUdiQ/qx/sCsOpX6Tn5WFUMTkIjN6QZ8HsOXzEG
         RnZRJrh/UrOupc8Dh6aKfXzKAhOWHawBhASVSbrz0kltSIqEqOke9pTKrTivDw53atHo
         cbdcG4oD0MFmSjyOQe/6QZWAq6Xs5vvtY2qomeEx//6HvoinUtvQOaZkbOy1foycWXDz
         RPz6gVmkzvTNSYDfBmkyyMAav4C/V+pkFvdtZyBufeEDG/Tgnl23DuWKy8Zk0mx3t7yL
         WqS5bSAOl843Pdun0YS/r7mh8ntlpvGwxvcE8Im51XjxNmoYzD2C/4BOOcripqVX9b/c
         qVvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7j9AXGm8KcQMkHKGAeB3T4mg7jffdKzNUIAHdwbY7fo=;
        b=KF6/NdEUtcW5pn+qaFkBFGpddMyRS5gIJrxNm35kE4clbODh+zL1FzBVfeJmQRRyLp
         FDbqz1SQEJR39ZUe6GPkg8yQfy0wGdig1H7EalQBd1pSUTJgaqsD2NLP+WhSVSS8TOSM
         qIbRkGDs87Aia/Xvpsids9TY4ITKmJu6X7i9TdSz2Z3wUpCOtaNHmarHQuOFsaVlxVVp
         /G+t9ZmUyApT6k89j+10pjSGSkJ5sc5koQlK96S/yf+Rj1o/ViniSLc6YKXDkB9kLMp4
         l5hOjAPWGEgaYH303kyfGDSHQ28BBlsl71gvOYHgcIFSuaQgYw6cgmQUWnpnjWAzmEk4
         ctig==
X-Gm-Message-State: AFqh2krKLUTeehpsAnaP8XrK8YsMxqso8679O4LH/PINS+NXd9/u6v8k
        gfJNaOeKo/OEYcl2gbZ/3X5KCg==
X-Google-Smtp-Source: AMrXdXsRGRWgnjFRawZddG8ibZK66iCvLETp/rUO27resO8ipbY1RSAjwATG7uT2bWefdkTAzhXgAg==
X-Received: by 2002:ac2:5191:0:b0:4cb:20b3:e7f6 with SMTP id u17-20020ac25191000000b004cb20b3e7f6mr4742173lfi.19.1672736365838;
        Tue, 03 Jan 2023 00:59:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z8-20020a056512376800b004b52aea5ff8sm4737562lft.30.2023.01.03.00.59.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 00:59:25 -0800 (PST)
Message-ID: <44e678db-14d9-6724-3d80-09c23e26d3ed@linaro.org>
Date:   Tue, 3 Jan 2023 09:59:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: irqchip: ti,sci-inta: Add optional
 power-domains property
Content-Language: en-US
To:     Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230103042724.1100618-1-vigneshr@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230103042724.1100618-1-vigneshr@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/01/2023 05:27, Vignesh Raghavendra wrote:
> On certain SoCs, Interrupt Aggregator may have a power-domain dependency
> to be on before accessing. Add DT binding for the same
> 
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

