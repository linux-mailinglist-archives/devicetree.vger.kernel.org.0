Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 118556339BC
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 11:21:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232753AbiKVKVF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 05:21:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233492AbiKVKUr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 05:20:47 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CFD2B63E
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 02:19:14 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id bp15so22849591lfb.13
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 02:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JfLIpkOTN7mnH1pqkEcUyKs3y8dy0IMYzeie/rgKHMQ=;
        b=jnlqjhLudUc6ZW0+QJnNeONAY3SPc6ywVgAxCssWrw5bFnoqo1RSzRqExLKKA++v7H
         DM/ChKhWdAi7fi6K4kD5f8LwR5RjqHsDgT4CtjQlUDllG9PAe6hAUabjNYS9VZfI+/xB
         RJe2IN0kHOkRVJ61wHvm3GeiA0sVTFRwFwj4pFALtrq3X7RXEgeBzbLGUP54dlNfdUyK
         ggnXS7n3hgWZKWrMPQJpJ5ENbI7KAS00J3nVTYLi0YreQfQ/nj8iEwdHsH6jZdJ44ADV
         60QUHwfQObNe6zYOvDAmKfJJz6LSdPEAwZz3x7YyzTK5Lz/03cxAdWA53ZP1fxtKAfVu
         VObw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JfLIpkOTN7mnH1pqkEcUyKs3y8dy0IMYzeie/rgKHMQ=;
        b=Vp3Xf5mwVd+DZdAslo8LZIO166sHFlS+u8E0Ch2qxON6Pp/cWAbyz/2lwk3WKD3AQc
         sf80CbxXP48iKF3XdPC3sFhX3M4uyAoDaJGiaMhSlReeMA/2cv00CZcWMXOEqH/CkQLw
         DxBZJgjtnCs7g+DhAbjP7lfF/UcQrlhB78RB+LWdRsmIbo10of8GAb/RoMQFpST1CG6a
         Z21IZWciPEtgXcrCZTCg9J3SgzXmvok6cNioXrYkTGsnWwekgu3AxecCefSoex/k7BFa
         0P6gt1JYPK7ZJfbRpxAmEcl6yLVexrye/giKzGXYBhUlOM4c6/XcxnWe8meYycYbM0yM
         zGuA==
X-Gm-Message-State: ANoB5plKP87E3velUxJG+xsY1Q4ePGNPkctdR9/M6Bhe2Ft1Hfxa6CCz
        zuBzuEtmhcKhzevhgEpxVewIPw==
X-Google-Smtp-Source: AA0mqf7uvNwaFNT5aVok49cOQrvlBp+Mf8/NctCjOga1BXBHs3KEoUjBhmzaRyCxc2l02l0HmCOk7A==
X-Received: by 2002:a05:6512:3282:b0:4a2:4b1b:6ad9 with SMTP id p2-20020a056512328200b004a24b1b6ad9mr8549363lfe.296.1669112352299;
        Tue, 22 Nov 2022 02:19:12 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2415a000000b0048a8c907fe9sm2432513lfi.167.2022.11.22.02.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 02:19:11 -0800 (PST)
Message-ID: <3160a4dd-f8c0-5cce-8c15-c9a4c173ef1e@linaro.org>
Date:   Tue, 22 Nov 2022 11:19:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible
 string
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, r-gunasekaran@ti.com,
        rogerq@kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20221122092203.762308-1-mranostay@ti.com>
 <20221122092203.762308-2-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122092203.762308-2-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 10:22, Matt Ranostay wrote:
> Add ti,j721s2-wiz-10g compatible string to binding documentation.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> index a9e38739c010..b837748f33d1 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> @@ -18,6 +18,7 @@ properties:
>        - ti,am64-wiz-10g
>        - ti,j7200-wiz-10g
>        - ti,j784s4-wiz-10g
> +      - ti,j721s2-wiz-10g
>  
Keep items sorted.

Best regards,
Krzysztof

