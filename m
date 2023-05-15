Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E3517031D0
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 17:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242192AbjEOPtP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 11:49:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242173AbjEOPtO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 11:49:14 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5725C1FDF
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:49:13 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50b8d2eed3dso19588403a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684165752; x=1686757752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kuOCDCQ4uINGloh17xpbxDK2AcWsbYuvkyT42cPN6a8=;
        b=O+78KgpflUclh0zjxfHNPcCNpqtzSLCtAlBE9xkG80phUPVBKslpp5A0Jv2xvfxMcd
         pgk+IW/1taJ6EIlCacLVRbvRCv5mX3JybYhNqFiJvhmcNOQ2AeYm/rS08w3I+EfhBO7a
         /kvknpWp5ey7BqrPSNVOEpWvdw1oBNK1896l1vVosQDEHEZdwCegVJiUjm0mgVSyBFzL
         DaJ/wmXurOBk3keeopemVbRYn4Hyetm2XxDBQFKn43QBE5g6fHE5Upfg1ImOG6VhIvfA
         T5ThgP9Bo2GsCtsxZ/dY/RFH3YO9YfcY1xxNDyY9cxVNkF7qlMprqVxbUMJtBMr/Ysc4
         dvww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684165752; x=1686757752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kuOCDCQ4uINGloh17xpbxDK2AcWsbYuvkyT42cPN6a8=;
        b=ltcWfKrI6gjZCsSFVhhglEJ4cZcjlEqJ5+E/+yVQkYz71QM6JFaTzu5+6+hizNa6iI
         wrNQ94QZjHzc3vER6AXtkd2c0T4xkizeY+uTysS5KNhCJcHn4dyZDKLrSM/yQdSrNi5k
         AUxQKLVQm/GYg/xQkw8UCqg12iDkK+KevzXLxgZAn2+dsdwblD1UfTNWh9XWWOQ51UlA
         aHZX7rWC177R/nQoPTixYPKQKVT68Kc9AVZk2INL5JCEqTcMVYwpBPDuf8NqXwGt1YZc
         ewGdpcA9KrRTX00OjJ2OGbAok1Q7ChfGJ7ClJh1j2gnUMYoRm0/GZ0QbQSAVtsBdHb4Y
         aipA==
X-Gm-Message-State: AC+VfDztI7/eXt93Fj6bfmD5fxEsaQKcI2o2/i5pv5R3S+4OoR5BopP2
        XsmJT5eqIdD+xwzzJCavuM5Uew==
X-Google-Smtp-Source: ACHHUZ4Nr88M1lwj1aXZZ/iZMf/swEizt4nguAp5wUyPAk7yNMOTEYXJ4r0IoPj396w6FVjy3qisIQ==
X-Received: by 2002:a17:906:c14f:b0:94d:a2c2:9aeb with SMTP id dp15-20020a170906c14f00b0094da2c29aebmr36793720ejc.49.1684165751836;
        Mon, 15 May 2023 08:49:11 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id ta26-20020a1709078c1a00b009663b1addb0sm9679862ejc.224.2023.05.15.08.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 08:49:11 -0700 (PDT)
Message-ID: <15dfe603-7d77-9dbe-30b6-b79fb7334682@linaro.org>
Date:   Mon, 15 May 2023 17:49:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: ssm2518: Convert to dtschema
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org
References: <20230514225243.777504-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230514225243.777504-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 00:52, Marek Vasut wrote:
> Convert the ADI SSM2518 audio CODEC bindings to DT schema.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: alsa-devel@alsa-project.org
> Cc: devicetree@vger.kernel.org

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

