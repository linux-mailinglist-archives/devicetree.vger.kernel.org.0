Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26CC15A392D
	for <lists+devicetree@lfdr.de>; Sat, 27 Aug 2022 19:23:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233974AbiH0RXs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Aug 2022 13:23:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231920AbiH0RXr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Aug 2022 13:23:47 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 951402A72D
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 10:23:45 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id p5so2701425lfc.6
        for <devicetree@vger.kernel.org>; Sat, 27 Aug 2022 10:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=0Mev3wBjKkNkiFX8lECGnY4J/j2vehNJSt2NBjpTkII=;
        b=zwgU9H9OFoS/MCha3D3T74FztIUntYk0w7GricFMydQ02R6PZaY8fSgXHfEIYrzsq4
         CwTKGebSWniXKRREJn0FUhXjQ8Wbw5DhcHw2mk3L+vNbM7ts8O08TKtMdlaV5XiWCR9Y
         dY3BvvTqZCyh1WNsfZGmx04UoSPWI9AmWd6LvU2K2kDpsJ9Rik3rsiJhkOS6ZjPjD8k1
         XaWrUpw3T0sq3IYZpC3uyN5kfekE9FjtXYqo64ob2x9SRHVDgcucxUzooaPFiqFIAPh9
         Yi1mbp1xuzWpFpwYXGUZOLQ+axT0p3hWsK71/j4+ub+MBZp1nCdro/4gajyMbobFlklY
         WR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=0Mev3wBjKkNkiFX8lECGnY4J/j2vehNJSt2NBjpTkII=;
        b=kvw8KxmvJg+WGMPcG9gJZglZL7vFjsyo+fyfFFVe3W8NBOlGcLYWDgU6omhIi1JVnx
         S2ezAaFZ0oM/rL4DUzBOcNXnuHaoBfy6TvrS1oEmFZB7kGLatiYILd4tLAKQ/2j/kiGn
         skXF7Pn1qYOoLk3yLyfV76QpY4DDVD5Fvs7xnEh729yIl5ma0SO1p47Lrc4gcqD5+W10
         Wmw0ha51iYUJA3y87K8/9vSC26bmeBfPB5sKh87SgJKBmL9rse9dH3cSAbdWzDLZcOMQ
         oC2IS49caILnsgrb8wr9M41YYbdZTtt4UzS5eM8KV0Ula3obl1ErtlSx0JnH6jIa9klK
         gs3g==
X-Gm-Message-State: ACgBeo2qE/p6YZZzOEsGFXbcmF7re+Qjim8tQpDmlOTNT3pEdHbBiqIV
        cbQeW3AW2TDjD6tQR0Vx1/KA7A==
X-Google-Smtp-Source: AA6agR4bp19iDkCA8mqVi96q7/mlsslLYUFbkHAqosVaZwo7xhtLr4GTcc2/bXIfPNJA5sfm6qM2jQ==
X-Received: by 2002:a05:6512:3b90:b0:494:256d:943f with SMTP id g16-20020a0565123b9000b00494256d943fmr2441662lfv.497.1661621023972;
        Sat, 27 Aug 2022 10:23:43 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id q16-20020a0565123a9000b00492a0f02758sm725059lfu.28.2022.08.27.10.23.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 10:23:43 -0700 (PDT)
Message-ID: <a73e509a-5260-41ff-2fb4-54b975ea59e9@linaro.org>
Date:   Sat, 27 Aug 2022 20:23:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 5/5] dt-bindings: imx8ulp: clock: no spaces before tabs
Content-Language: en-US
To:     Marcel Ziswiler <marcel@ziswiler.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220826192252.794651-1-marcel@ziswiler.com>
 <20220826192252.794651-6-marcel@ziswiler.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826192252.794651-6-marcel@ziswiler.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/08/2022 22:22, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> This fixes the following warnings:
> 
> include/dt-bindings/clock/imx8ulp-clock.h:204: warning: please, no space
>  before tabs
> include/dt-bindings/clock/imx8ulp-clock.h:215: warning: please, no space
>  before tabs
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
