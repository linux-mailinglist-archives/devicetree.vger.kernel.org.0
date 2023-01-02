Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5448965AE31
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:37:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231706AbjABIhx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:37:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231636AbjABIhu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:37:50 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 931FDF43
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:37:48 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id b3so40739749lfv.2
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qkWLS+nKL8RdyNnz6Q/y1dSLyU94WCGtODv0M9ukE9I=;
        b=uwptMqgvAi9mfkdBXuvkEb7gOwnM/TDEkELc8YNIAT09xYIGeGJK0jHTDt6wEqheRe
         hlx6/lXJjEwX026Zed80gtF8pZ1l36//gt2MwmFwyWDN+YY5l4lZfjbMI6ChvQg7qyds
         yeYeoMOcRIzIzNbxt82kebWBDB37LzGWygvh/E1KXqTUVmWLxGqJP7goaKkHPG99V8oY
         LzJnKObX5T6l+uaQZBPSaMf1mkD1K9pHCEXkq01tiKCcVDYboABsfBGpd1YGA8QvVCfZ
         CW3S7Rh71wPv1VoIwGD6TJ6qgFaoWzW6mvJNp9/b35g3EMnyYbqe1N771hzny7sSnBkY
         71Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qkWLS+nKL8RdyNnz6Q/y1dSLyU94WCGtODv0M9ukE9I=;
        b=NhrzmVDYnc8B4mYgdqfwTEOIAot3lJf66X5l2uqvWjA8gxmqck3O//x0Jt83W4uFm3
         FOLxU8GoA6uy1MlN5esAvIbw6mor2T/rlswj23aL7HHL8m6TVW8106SfkhlD+YgVb8OR
         o65cSQi2832pSuYW+w5eK9aRHm9PiRcHQYS13rsnglE6F+k9O2i+1ccbN+dUwqWn2m0M
         /wI+OdK3Z4sy/akxoE/PUs23kL4DFzliMhmmnHGbLLoJaEvi/luyk9EICBz+v2z8iskX
         ISC0sJghxSrjlqFDUbbHlhVjmiWfYZz4vqAhDyLoPo/eDawYkPq/daedaXk/JRR9zl45
         xLBA==
X-Gm-Message-State: AFqh2kpLi0DNvQGMYKp/wFbhLrrCwDTlJu8j2d4OM1J++C4rDbFdeUgI
        PkC80Fm4Alo2xyPFTSX2yWKvfQ==
X-Google-Smtp-Source: AMrXdXvKFcdGaGsl8jvtrDfj9/YDrFx2LJsROsWNBqdzw9jF2juiL99zX3JByHqwOOZIb6jXHoTMdQ==
X-Received: by 2002:ac2:4f0c:0:b0:4b5:2f1e:7d3b with SMTP id k12-20020ac24f0c000000b004b52f1e7d3bmr10591917lfr.33.1672648666987;
        Mon, 02 Jan 2023 00:37:46 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f2-20020a056512228200b004ca0ea7af24sm4406893lfu.174.2023.01.02.00.37.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 00:37:46 -0800 (PST)
Message-ID: <8b9bfabe-e6c7-e7c0-ee4b-95305eaed4d1@linaro.org>
Date:   Mon, 2 Jan 2023 09:37:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add Startkit
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
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

On 01/01/2023 19:46, Dmitry Baryshkov wrote:
> Starterkit is small vendor of development boards and SoM based on Atmel,
> i.MX and Allwinner SoCs.
> 
> http://starterkit.ru/html/index.php
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

