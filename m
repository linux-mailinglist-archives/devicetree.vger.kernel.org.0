Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D9156CB757
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 08:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232132AbjC1Gl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 02:41:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232506AbjC1Gl5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 02:41:57 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C7A710EA
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:41:55 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id x3so45264665edb.10
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679985713;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oKkE36WFYPSPm3FCg5T2yYDvFfsaMMdbRS5mdDIv9go=;
        b=WnbLadYmuH62umMj2ptK3HIOC5qoSxzq1lo7roAYDKmz7qwZAjKLmfUlOCTwtcO7D8
         K0f+tvZ0+bVjnQRxmnWYUo7xJiuuqFXe7kGX/C17Cu/17xmp/PnCMck1Wk8syZ+fxSgP
         J+AHACJD/vx4fOYZKWi8uYldZ+6KMIxnaKI4tKn48snB/GrGoO9lGjgfhPJpD8W8rFgF
         3x1Ft1cgd4Fp/YxQtCP9J8vHIbhhnPdx/eF/jK1AggiWd8NExIdGn7NUKYNhGaOb79Lv
         z1G2/yrlht/pkFVKJrnqL+yJpHtKOTkQysEX31M9eCRqA40MfKGuarWECknlJnqeyX91
         rUJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679985713;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oKkE36WFYPSPm3FCg5T2yYDvFfsaMMdbRS5mdDIv9go=;
        b=yp7dYKRyMNF2ms2in9Lg/XzNhIL5gby8hnpNyiCJF7FkDs/1um+vzLIee/4YjrLQ6E
         5SDSwkS6M+ITFreLJm04l6l8udLI49Xy8TIXese6ahY3FhqbA/oGJ12GGBUJ8BKHVrLN
         IFTNbrkMXCtK0YI0ZBAvo/LwgJ7M1+zQWrFsKAl3lKiyIlE/cASUVACpkODgCVzCZokv
         bEO5EXNGdQf5SNTpA+BhORjaj94G4sH2o7tky/mgtOOkCLfk6AanNdS27ydREraXoO4U
         T2PmSKJ+KPOhSnuTJWrzDQtlI25aMCkkJp9tZXUFIc37lkJQg2IiYppVUirVkX1b8c4e
         6fmQ==
X-Gm-Message-State: AAQBX9eL8GKQbrcoODyEKVOy+MBwcET3/H+YB7I6WSjkwa/mqZ8L3R8/
        YTBSdvDX26HwMM13W1Ck7Y7V8w==
X-Google-Smtp-Source: AKy350aa10pPqA0GyGc46UUtrQT284F+PB4SUoPzI2yhHQFo5m2ppfv75kPq+o4bFrXWr9n1U6XAlg==
X-Received: by 2002:a17:906:2a54:b0:925:5eb8:92fd with SMTP id k20-20020a1709062a5400b009255eb892fdmr15232942eje.14.1679985713549;
        Mon, 27 Mar 2023 23:41:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id xf13-20020a17090731cd00b0093e5baadfe6sm5374005ejb.204.2023.03.27.23.41.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 23:41:53 -0700 (PDT)
Message-ID: <2d97c880-06a8-f021-db6e-45a11d674ace@linaro.org>
Date:   Tue, 28 Mar 2023 08:41:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: timer: fsl,imxgpt: Add i.MX8MP variant
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
 <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 19:35, Uwe Kleine-König wrote:
> The i.MX8MP has the same register layout as the i.MX6DL, so add it as a
> variant allowing to add the GPT IP blocks to the i.MX8MP's dtsi file.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

