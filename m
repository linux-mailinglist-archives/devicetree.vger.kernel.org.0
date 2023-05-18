Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7ABD7083ED
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 16:30:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbjEROaL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 10:30:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjEROaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 10:30:10 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70CB510D8
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:30:09 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-95fde138693so256109466b.0
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 07:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684420208; x=1687012208;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ls9dh09ENn+6fe7/vJfQ3VRRA3BvM+SzwILtRYqYDnY=;
        b=gmPlnPCVhoaDyNM6MVkkA+adWeyXH6HJGFhbf/nfIqTlGlqGsVnLn04An3U9rEPO0s
         i6YZlC75MQrfgjQ5q72+dXms7qtFHKQIfxNROdkZuIwALMy5As1QW/Z7pGHbvKHLG1Q0
         l12B9BDX/Cbq2nphP+4VNPefTIIDA/mLFKVDv837iarGLmlVwMtXd3uasm/gYzIcrwuC
         KFjxUUz2bsZuc6EQXrTH93cuLUY2+7fOwdRRXQfcqXS0wp0X3Eo8cETYuLsG8Wz9Z/zZ
         zqbzDeyQ5oLf0HontaNENmBf1BPTXNHqaaHP6o3lpyQArrn0/iT8zD72OrdAN4gdZZed
         UChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684420208; x=1687012208;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ls9dh09ENn+6fe7/vJfQ3VRRA3BvM+SzwILtRYqYDnY=;
        b=L/i1g7IEyi/Zti2jGxU5sOagVHYnXL2WdjDE6K4E9GoEDmLwr+n2Wpry7RxH2Psg2H
         GxT/BZOjvcskeNzYbPLhiPAfYVUo/OLWzoUzbABvWHaqyclrH3z0f7O7e6hl8Iqp/LDn
         qOS/1fUOqlmti4dLZ0xCczU81vN12eC9QFLlNcXJUYJmejIfOoeRNv4TulNTXr1NMZM9
         7UUkOGLxUL0uSGh+2gD+W71Kiqi6k42DlbaDhSAurX9HYCcfssjZvoTXz3yYvr0ekTka
         RqAWv4Zmf6wj/LQTDTkL/cpdEnocXiACc8cX+yo/XLVc9I7a2PwMLayDjDtyeCp1QCDh
         rgbw==
X-Gm-Message-State: AC+VfDzGcJ+iP8O6kwLjOWi+CaYqCwMYE9SxbhQUMLgCLCiV8FU4cAGa
        J3thkTzFq51WKPhEugCJsKRDMQ==
X-Google-Smtp-Source: ACHHUZ7RefkcnOCKj936lk8NtLACFEYhXjwqbckO2ALsSctKMH6+At3thKKYt2nncaO0HVsKNm4hbw==
X-Received: by 2002:a17:907:94ce:b0:965:77d2:7802 with SMTP id dn14-20020a17090794ce00b0096577d27802mr6149261ejc.0.1684420207747;
        Thu, 18 May 2023 07:30:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7e24:6d1b:6bf:4249? ([2a02:810d:15c0:828:7e24:6d1b:6bf:4249])
        by smtp.gmail.com with ESMTPSA id y13-20020a1709063a8d00b009596e7e0dbasm1036175ejd.162.2023.05.18.07.30.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 07:30:05 -0700 (PDT)
Message-ID: <1ad00eb9-7bcb-b93a-191e-7673c835c31e@linaro.org>
Date:   Thu, 18 May 2023 16:30:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org,
        Daniel Golle <daniel@makrotopia.org>
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230517152513.27922-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 17:25, Marek Vasut wrote:
> Add trivial bindings for driver which permits exposing syscon backed
> register to userspace. This is useful e.g. to expose U-Boot boot
> counter on various platforms where the boot counter is stored in
> random volatile register, like STM32MP15xx TAMP_BKPxR register.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---

Let me also leave a note here - cross linking for all parties:

Please propose a solution solving also mediatek,boottrap, probably
extendable to range of registers. Other solution is what Rob mentioned -
this might not be suitable for generic binding and device.

Best regards,
Krzysztof

