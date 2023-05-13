Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67A4C701593
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 11:22:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233212AbjEMJWV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 05:22:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232997AbjEMJWU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 05:22:20 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF56640FB
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 02:22:18 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-50bc3088b7aso20205830a12.3
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 02:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683969737; x=1686561737;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X/AyN+pSX6V+W2W3DFmYrRbubSg9FzRGpPpoe+UxihQ=;
        b=pHCu4vLr1CqNxmg5sdDSTwYmGk2BlttdYTi0UKE8iFDEyy0ccWrZ2bwGJVHLJ9f4+0
         gDBYAxx/MJlhzFkojrIpcYdHa1+z5iBM5+zwlxRaUZ7bYLIf88mG3LVslI709qc62clr
         8mDvFgwL8lUBRkt+u8c3w19F7tg1qm4SE9dMw3F7U1VOAPCMQiR9q6sLBCtYsA4AoKeg
         OiuALSCcwqe1V20SXGYn7lLv+lVg1GeeF7rMjmVHlhtULOoO0MoX/WsU1zkYBSfFkOvV
         M7HlIlWmSxBFdXMQlRSifBoH8LPytqD0qpu9eePOZ7j8rc798vnCsvOay/KHXPn09Xwa
         p3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683969737; x=1686561737;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X/AyN+pSX6V+W2W3DFmYrRbubSg9FzRGpPpoe+UxihQ=;
        b=AkIPQxG7g/AOBYIZv0Idl+SzRfXf0Np+CyuEGpmOnCZiLpR/FNch28qUuvUHd4FRv8
         L24HqczYi4oS7DbKgJCJL38ZvWsh3tIur3vFhHO5xDXWVavATODg+++iM2o6ZKv/ysrT
         0yK1mctrXn6a/NA7Gwd25pcZ6KdOQ1IcIC0cSgxbJAi9ms2YDtPut/PvRnlv3jv8Vlul
         t5wzGjpCkd+YEiZHLp9BlQTYtoT+zbmOglkq4kvmQirIO2abewfLOLxxByoe3LApKG5/
         K/MDj7YS0Cau6p4TV0jDaX6viPuwsUI6e+4QNF6RcnkF/NivZ+XnsgnAGg9FxFIXlITf
         GHdA==
X-Gm-Message-State: AC+VfDzKF8fHN+VblX1yROixwhuRwlTzGstVNbidT3SsI/hYgSwkmQww
        Jd7hcNAXvm+ntdeTudb2hWB2DA==
X-Google-Smtp-Source: ACHHUZ5aG0BoNuZuL5bKtYiF+NSrux0Sek8SQj9YSzB/DxrgPCqs5mpDLxny2uhcnVV8MZwJRjJu6g==
X-Received: by 2002:aa7:dd0f:0:b0:50c:4b1:8912 with SMTP id i15-20020aa7dd0f000000b0050c04b18912mr23189219edv.15.1683969737479;
        Sat, 13 May 2023 02:22:17 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:1d0:810a:586c:c5ba? ([2a02:810d:15c0:828:1d0:810a:586c:c5ba])
        by smtp.gmail.com with ESMTPSA id h10-20020a50ed8a000000b004c2158e87e6sm4733883edr.97.2023.05.13.02.22.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 02:22:17 -0700 (PDT)
Message-ID: <6a1bdc48-a65f-43c3-0a41-bd45c0c3b0aa@linaro.org>
Date:   Sat, 13 May 2023 11:22:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: imx8mq-mnt-reform2: drop simple-panel
 compatible
Content-Language: en-US
To:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        linux-kernel@vger.kernel.org
Cc:     Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230512204627.3304342-1-dario.binacchi@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230512204627.3304342-1-dario.binacchi@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 22:46, Dario Binacchi wrote:
> The "simple-panel" compatible is not documented and nothing in Linux
> kernel binds to it.
> 
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> ---
> 
>  arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts | 2 +-

I already sent it:

https://lore.kernel.org/all/20230326204502.80794-1-krzysztof.kozlowski@linaro.org/


Best regards,
Krzysztof

