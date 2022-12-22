Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F821653CE1
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 09:20:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231892AbiLVIUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 03:20:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235029AbiLVIUd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 03:20:33 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90E4E25C7A
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 00:20:32 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id s22so1153355ljp.5
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 00:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GB9nooY/0032I7QDBEim1H1M5FPjYvPHgEiEZnFAGNg=;
        b=YH07lTfDGxT6wtN4QaJAAd9N/6D/HPQa3m1hJOxREFURbaCV+t7j/rqOs4fjVX2ykg
         3bCko3vyjZcz5T3gPAQAcNe5ilQz5YD3hKyvlJCVlcp+ZysgXbxAnB4crLyoHp6eU1Mw
         Jwtg3g41w65NPQaorOcwOkyf6WffOdNoIru7f7q9fO1dUvOjoGZXtHMwrCk0ri7pzOAw
         I8utGFGHKUH5+cywjEZp38ZJuuYIYQ4A1dk9U2vgk/zm/Ldv6jw5xIrqqR4C1LPW7Tjz
         Hdve7Rzhke0FA8wg//hejy8Kq+zr8FTPZsHY1hd3z+7X1U2bLbMV6oeASHPxFAD3dNCC
         q4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GB9nooY/0032I7QDBEim1H1M5FPjYvPHgEiEZnFAGNg=;
        b=YrWVD0cNR6/iKcdDSxDo9SDiIlptDnyskCJEaWn2Y6NRWojlfUjyU1g+Q/7blxLtLW
         vb5bIVIZuosVMclQlJTT3rM+dlLL72MlGfobnPltBL4sxS5JUwX88eHKUbjZ1ZaWqJgm
         9XSDo/hB6VGBm4WwkLo9kxlaepXPZ/zgqg9BoPU/T4/En+wgWhxh/eC6KG7y2dN+mFoj
         rK3Kmxj3s/BENABWZFuFvEdDHo+XmhOS6BqCdhTxOVYHG/JS9IFGp2HtaC2KtLRxjUS5
         3GwaUU6y1sGm84vDkz4Giop2c5LUR0sm2bQ2QuZF7FztktQ+bXnVWfDT5SDjqWa/FSoz
         ZheA==
X-Gm-Message-State: AFqh2koPllKRFV2PnDR3ViL3/Qu/uq6EsvaL4OuBRjl+6CKaJVrR9tAT
        A06LViDcro4NYnjdNlBqCZUEww==
X-Google-Smtp-Source: AMrXdXvYiqUilarfeeG5Coha/8Bw53Qje4MaEoZX7uWcPV3+8BALSVPlJ3LcoT+8Z9TPXUlNIL2nHQ==
X-Received: by 2002:a05:651c:c8e:b0:27f:500b:47d3 with SMTP id bz14-20020a05651c0c8e00b0027f500b47d3mr1330473ljb.46.1671697230892;
        Thu, 22 Dec 2022 00:20:30 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bj27-20020a2eaa9b000000b002797892025csm1537922ljb.137.2022.12.22.00.20.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 00:20:30 -0800 (PST)
Message-ID: <e9dc3019-af82-3848-b282-99ff0287775f@linaro.org>
Date:   Thu, 22 Dec 2022 09:20:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v7 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
To:     Yuteng Zhong <zonyitoo@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Wenhao Cui <lasstp5011@gmail.com>
References: <Y6MmDmbCDGtl3xQd@VM-66-53-centos>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6MmDmbCDGtl3xQd@VM-66-53-centos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 16:28, Yuteng Zhong wrote:
> From: Wenhao Cui <lasstp5011@gmail.com>
> 
> Add devicetree binding documentation for the EmbedFire LubanCat 1.
> 
> Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

