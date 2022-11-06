Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2F4061E14C
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 10:34:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbiKFJeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 04:34:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbiKFJeH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 04:34:07 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C9F4A47B
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 01:34:02 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id d20so12081470ljc.12
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 01:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BNDEakoGHFj6Pg7LARxrzAtLVJKPLYsbrd9x8xsjbAA=;
        b=hp7+b3HnHzE2PsflMfrdCU3CHLZL8+5zJzKVYaxCMHKQjnKCPQxM0nogJWRCPIWCPP
         WXzNNNwqDYMwF2Xgw6jxUHenPlMd2LYMJb+qeBpUIe5VFnQO5sGR4J+NQgweoYWkizko
         hbBjVv6uE8e3HJB/mgqAtosAPdKdWpJv/k4txiC7unve1D+vjl5jNLWasORmZNdXNIIP
         xqJgGyDXkwmxsI97f1Fg06vz5H5nCyqUouVjzfK6Gvkb/bJ4/I/ohA8dCzZnLAcMN6Nl
         zFAJ26EISpZSyAD0+Rng1yyIIj7/GREIpjGtNfhd1KLb1M8wgpI7GJz2iUmRCB0zkz6v
         fu5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BNDEakoGHFj6Pg7LARxrzAtLVJKPLYsbrd9x8xsjbAA=;
        b=PUxN4GdTqvheoUvlfWzi04jKmD7Qm+t1Ma4B8hyWSweYackAILvepInj03BsjhUztt
         HQ11UF1etmlg2XV3abKPMJr5wswky/WKlEeHN2gZ4hVM4JUJJi/t+AVohoFOd26NgXrf
         gPYmQGjR0IZe8KrkAsUNb4xolVITOirOS8iJ9/Ivut9o4DdINKCCBlET2DZ3sH86WINu
         rrJUjTLJn65cqJxbe7DCPrXnVl/BVv8oE/2JLajb6Zgf+o6NWVdPUfvui2igtMiEmcjp
         orDiufVNNrdEd1flMyqsrMLmyTqmmRgVCWKXrg42Irf4ocwfPJ/Xi12e4K07pLK8OzNY
         r96g==
X-Gm-Message-State: ACrzQf0gFhuC4bHTlCTuc8SObbItfJh417BrNM0a30pVHb2HW9NLphvN
        gNhh3+6QPrmyF4jh6hhrLWWKPA==
X-Google-Smtp-Source: AMsMyM7r9PfjSZb9vj2+uxOuEMDTNC74AdkTZbJ0CS5LtWjSrl+GlcGC+NcfdlbAo2yD1/Yb7pLBDA==
X-Received: by 2002:a2e:bf16:0:b0:26d:8eb4:609b with SMTP id c22-20020a2ebf16000000b0026d8eb4609bmr15933515ljr.124.1667727240217;
        Sun, 06 Nov 2022 01:34:00 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id d14-20020a056512368e00b004b0a1e77cb2sm623256lfs.137.2022.11.06.01.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 01:33:59 -0800 (PST)
Message-ID: <2e42faf9-a2c5-8a20-38cc-6aea00c4b993@linaro.org>
Date:   Sun, 6 Nov 2022 10:33:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [RESEND v2 2/2] dt-bindings: mmc: mtk-sd: add Inline Crypto
 Engine clock
To:     Mengqi Zhang <mengqi.zhang@mediatek.com>,
        chaotian.jing@mediatek.com, ulf.hansson@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, wenbin.mei@mediatek.com,
        angelogioacchino.delregno@collabora.com
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221106033924.9854-1-mengqi.zhang@mediatek.com>
 <20221106033924.9854-3-mengqi.zhang@mediatek.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221106033924.9854-3-mengqi.zhang@mediatek.com>
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

On 06/11/2022 04:39, Mengqi Zhang wrote:
> Add optional crypto clock of the Inline Crypto Engine of Mediatek SoCs.
> 
> Signed-off-by: Mengqi Zhang <mengqi.zhang@mediatek.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

