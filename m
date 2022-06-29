Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76349560883
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 20:05:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232600AbiF2SEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 14:04:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232543AbiF2SDu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 14:03:50 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF5B939BA4
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:03:21 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id fi2so34113897ejb.9
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=EF+4vVSu0Ak1EZxpXNfRVufy8G3AP8/4t8MYyPUNltA=;
        b=qNMlZFjto8WW4D+zIbCEQRp1WueqNb3qJL71sznhlSuk5jpwSgWjmvDD0kGh7UzKvP
         KRPIYQ/bNOE2Pme8lPtKe5UdlMVFsoB6fADpqkY/Zq2yyQjN4HeZwaKleFSPP7LhdISh
         q9Q+pv+euqXm6pMMJowrdAxJUB9P8Iwolkl0dxF/4cn2+GXjJICaMrwgkw5ccriOAGZF
         p/QHmjJTvdWdcgyjNouAjp/+K8Ti6GImpz0LUZaVYh3OUkAixP6xYdoD4n4d8c7wpa1g
         zxvD9t73cHnYCcWgU1TnGLZBeBb+pp67VMyy9lrDf27p2IaIeSslWNaeh4Y8xZ3j8OiG
         7vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EF+4vVSu0Ak1EZxpXNfRVufy8G3AP8/4t8MYyPUNltA=;
        b=5aJIMhTj/8W6bIyRddslAysuKbc672t58WUZTugbmCcaB54Z1bcwKr+BHJk7HZAkvp
         yBvzdne/IcqwO9PM3P4OvVpC0c3RY418cA+HOnee1+MHI6FNVsen/fNbE5M4cx2/AzbG
         Q9ayHHRc9aPBV+nPZCgmAWY6XEwasYZTHvSLcbhMF9Hy3N/3ZoJZUxK7iXI9+W24V+mb
         i2M/2QdHRd3P6zeXZbIIO+A+aqlaO/S5+j71GSMb06/3OXmCbsdmehZE3MOW4/3rXCf4
         rppAF/Lsr3MwOOKZ7ihQDoTI1E8vl7ILR7IMR4jIRo+XDWdDbMWlb2PeYJJ9mOmhfW7j
         GynQ==
X-Gm-Message-State: AJIora81tVaf9zJDL0AYnGbTe7uqmBDFOX2wmQP34CDUUDlCHYnkSpgx
        0qMkZqhboil/j8Tty75cdRj2kA==
X-Google-Smtp-Source: AGRyM1voypfDnC3goXLyoV1lstNYX1G0AB6nAChz47TdKqz6nnI934lH4zhYtOaEu8xtpGlXs4MNzw==
X-Received: by 2002:a17:907:7f05:b0:726:9770:77d6 with SMTP id qf5-20020a1709077f0500b00726977077d6mr4580557ejc.464.1656525800225;
        Wed, 29 Jun 2022 11:03:20 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b12-20020a05640202cc00b004335e08d6c9sm11781609edx.33.2022.06.29.11.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:03:19 -0700 (PDT)
Message-ID: <85b3fcbf-abe4-56b7-323b-f303eb458592@linaro.org>
Date:   Wed, 29 Jun 2022 20:03:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v6 14/14] dt-bindings: arm: freescale: Remove fsl,scu txt
 file
Content-Language: en-US
To:     "Viorel Suman (OSS)" <viorel.suman@oss.nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Viorel Suman <viorel.suman@nxp.com>,
        Oliver Graute <oliver.graute@kococonnector.com>,
        Liu Ying <victor.liu@nxp.com>,
        Mirela Rabulea <mirela.rabulea@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Ming Qian <ming.qian@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-input@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220629164414.301813-1-viorel.suman@oss.nxp.com>
 <20220629164414.301813-15-viorel.suman@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629164414.301813-15-viorel.suman@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/06/2022 18:44, Viorel Suman (OSS) wrote:
> From: Abel Vesa <abel.vesa@nxp.com>
> 
> Now that all the child nodes have been properly documented in the
> yaml files, within their proper subystems, we can drop the fsl,scu.txt.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Viorel Suman <viorel.suman@nxp.com>
> ---
>  .../bindings/arm/freescale/fsl,scu.txt        | 271 ------------------
>  1 file changed, 271 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> 

This cannot be separate patch. Conversion is add+remove in one commit,
so even if you remove everything in one patch, it should be then
squashed into patch #9. Anyway, I think better approach is to remove
gradually, so each piece is removed in each converted part.

Best regards,
Krzysztof
