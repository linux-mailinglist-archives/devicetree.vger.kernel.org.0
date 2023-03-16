Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA9176BC70B
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 08:28:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230173AbjCPH2W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 03:28:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjCPH2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 03:28:20 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D2C2CC44
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:28:09 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id x3so3772113edb.10
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678951688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bsi+JLbKWkbl2/O2F9F753mkheOOmEKDrBc+HCXXLxQ=;
        b=uVGMUCCtabrj/ysa78tkpl1QNPZ7Z+i8KUxLerEiMBDXf30AkAPuV6dGj7j1/q2A9c
         uH7ZyfnwhcMsUEKPEjWk0FdqKSWcjIh1r4YuhkLU3EPn+R0vJRQNyjRm/eEMLhC2WKg5
         xZfJRF48EeMwqyJM/baWInprx6p/kG9ct3fF8PlsPxWQAv9RQb/KNHwshjs9dB1oFsK3
         P+XD0mfuBnPV9PYO6I8rjOCnzHVAWSe3y7jV4blWpdP831e2SU7nPIYXTiemkEO6QSKU
         CDkXn8QrDEe6083wz0BJX9dfuwH24GVhPO48JJQQJMdxaSijT4wCCvy0u5PZ5LxvVxM5
         jUOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678951688;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bsi+JLbKWkbl2/O2F9F753mkheOOmEKDrBc+HCXXLxQ=;
        b=YR1TYethlo09fEyu6vaDuNjs3qEAKEEIr30HK6SzqgBoyNDtdNGZyQEEYV3r0w2gOs
         /84vAbT+b4JK16E5b9NygvgCDn9dGCx/BM+Y+pTFJ/04YFIE8sTEK7tx42e2msKMW9W0
         K4M5d6HnQRPnuidS0swz9GaA0lUCHUmrRNbIM9tpwWWU4rp8fxch0D0OGa4BkX3Zb+p8
         Ou4IhUP96ctjUTcpNz5qjMCJI8d/Q/+z1dx0TQAK+HswXBtg2wtHd6+mn1NzhndQJjIY
         llhFpOgUrorQlqWPKYJGlafFckvL3I4pcfFi1500PXfwijopMtqdEK3g2C0oYFd9eetf
         zahA==
X-Gm-Message-State: AO0yUKU298GdyPCBD+CMwM7vgn96TJdhQVxDGojoHvpkL672TMoQ8C8A
        wmPRn56zKhe+gaG5wvowSjfKvg==
X-Google-Smtp-Source: AK7set9UpAUpBs5fKHC+6wkTYq8jFs+DftAa9ByGu2cOZjWvf9e/znTZ/UlTzvCyaLx2OWCd1go65g==
X-Received: by 2002:a17:906:2b50:b0:8aa:c2e1:6a64 with SMTP id b16-20020a1709062b5000b008aac2e16a64mr8965947ejg.61.1678951687751;
        Thu, 16 Mar 2023 00:28:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id cd3-20020a170906b34300b00921357fb28csm3416958ejb.123.2023.03.16.00.28.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:28:07 -0700 (PDT)
Message-ID: <a25ac419-5b20-d762-93a5-28cb2ad09ea5@linaro.org>
Date:   Thu, 16 Mar 2023 08:28:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/5] dt-bindings: Add doc for FriendlyARM NanoPi R5C
Content-Language: en-US
To:     Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
        Brian Norris <briannorris@chromium.org>,
        Chris Morgan <macromorgan@hotmail.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        Andrew Powers-Holmes <aholmes@omnom.net>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230315160228.2362-1-cnsztl@gmail.com>
 <20230315160228.2362-3-cnsztl@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315160228.2362-3-cnsztl@gmail.com>
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

On 15/03/2023 17:02, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R5C.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

