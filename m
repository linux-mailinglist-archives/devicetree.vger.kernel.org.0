Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1190662BE88
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 13:47:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236345AbiKPMr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 07:47:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233624AbiKPMr0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 07:47:26 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0A19186EC
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 04:47:24 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id j4so29364942lfk.0
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 04:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yWytaf7KjaX3rV8674YFhntP2xNI3bcqedV5LC1PodQ=;
        b=TBnK6tfq6XxwdNaksANghIOWS2IFs661yugM3/n1H0H+uWxC9A0W9WKG4Dee3qQPyZ
         71KrDvN9cc+ps2i8j2mbQOeR3bb0+bJA7PELFauhALkslTs9WSXro32ZQnQw91/oN+UH
         wN/dajL7LrfX+BuIzYSNcw/n9vVzPQp1cDSO256PHZJCt9XqkF+8qrF6KqiY4M1ANFgS
         k/JLYTFo0XsNGbkKWuyvC7HpWDCdjoAPgSPoRffoSIgH5cBsW4F3c5pwAtoxENOkmhta
         LibP451oLEGqhBVx1ypmBlZxEWEQwAC4HzzylD2S4pldjOcOIhRZbTatDBf95BhyVf4q
         3f6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yWytaf7KjaX3rV8674YFhntP2xNI3bcqedV5LC1PodQ=;
        b=2KYzf8ySH/xztlYLOsIJ6nVpsDzXD8LZJ1jV0AoK9QtUtybd8zAVfW3edbSJIMIJar
         /Y4CRMGTFp32oAAp43YPMCYbrf10L0oYBttM8LYyL7n9UFU30zQ0NZPH9Z945wCPvaE3
         hlorZp22CpNlz4fepEqvFFr1f9Por0csSjZBVKFj6jpXyJj8Bft6CWyyt/6vNDavBCDQ
         OOwnsw8+TEYMuhGFV4Zk5fepWwqXXAtXb2XrgbfVIwal8sX/AEa1A/w8wqVeN2hJoSVJ
         qiCyqTXBszz+gwfYMHpPkMgsWRpn3Ej0zbMInNlLOXDaT6W76oqtIfgYhVPUfKH5ChYa
         jsaw==
X-Gm-Message-State: ANoB5pnWSc3oh3rsBFQsaFII1DKUclHird3L+NOXBOL8bZsC0XPox7KA
        i+TkLZVLT0+lBMDp2EJc84IKxA==
X-Google-Smtp-Source: AA0mqf5A1/wkJ9vvf5y3bwd/45qiDtE9B4jMa2SaETcrW+LCC1R+b0Wyi/oirSLj6Yt/tkhttDxaGQ==
X-Received: by 2002:ac2:4c92:0:b0:4b3:b3e6:167 with SMTP id d18-20020ac24c92000000b004b3b3e60167mr7775768lfl.312.1668602843268;
        Wed, 16 Nov 2022 04:47:23 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t16-20020a05651c205000b0026fc8855c20sm2993541ljo.19.2022.11.16.04.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 04:47:22 -0800 (PST)
Message-ID: <e34d73e8-9adb-beea-ec88-5d440012db5b@linaro.org>
Date:   Wed, 16 Nov 2022 13:47:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/4] dt-bindings: arm: rockchip: Add SOQuartz Blade
Content-Language: en-US
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221116115337.541601-1-frattaroli.nicolas@gmail.com>
 <20221116115337.541601-2-frattaroli.nicolas@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116115337.541601-2-frattaroli.nicolas@gmail.com>
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

On 16/11/2022 12:53, Nicolas Frattaroli wrote:
> This adds an enum for the SOQuartz Blade base board to the rockchip

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> platforms binding.

You do not add enum. You add compatible for the or document the SOQuartz
Blade.




Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

