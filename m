Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECF5B5607DE
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 19:54:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231625AbiF2Ry6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 13:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231694AbiF2Ryw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 13:54:52 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB4D223BD9
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 10:54:50 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id z41so4708563ede.1
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 10:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=lL8EpxBr19NArvK4AEsRyIynXTspHW/eotdbJscrOhI=;
        b=NY+vW52EuYiK7NXq+baMr5irPJc+p0bsNlTBNCiquzBZVewrkoC1hPbUVm8V92Wvxd
         sfFdQv0QDqvGE47jx10nW06sCbCIqaonUvhd4twYf/AuXa86IlefyQcn2R0ENkxBTcch
         K7eFIyX49uaEsR2YZJZlwOKzu4hpc6QyhjgJC1I2f2zTVxBIoiQihWRRvaMjSQXeI0zu
         5WucY63Lf3nOVHTfQmVs4IUKhoHZYNxHB6hLr9orMBWtvsLx6tzFlBAWW0OCzsvn1LI8
         rKMFX95Xbx5knuDtC38PhXG9AD9cdGZAsKUHObkjQyMSfJJ3E3GbqYgmSDpOdTMPpC5x
         DrEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lL8EpxBr19NArvK4AEsRyIynXTspHW/eotdbJscrOhI=;
        b=F3xHzapTudJ3Ul5z4CT0KrJZhnaIV4YqM3BCqrT+AjbbezFrWKii1XDbHItILuK46r
         2+bDJWtNogtL9vdcpQjIoxz0IWVcdJ7aIBNbVzMiJiSuHrdcvZiFukKpng5ZmAgoeXSM
         ruKrcFilm9TjnWiFJkSAVZW6NPxSDcyyvlwHbY+yjLq16fu5aectMLgGaRuS2iTqwHhP
         xzyHjy5cGGXzpKyBzJ7f7NrZqGE0tur/M3iEPFWIAtJfT2kOj+gh9iOh8ICWa3VMb5Mi
         hfd6snB4+sv6w1ZznocLGc61NV7WrhBoUNN1YKK74xqvr1qLGhSVYj9+W/p69W82gIHS
         h1Lg==
X-Gm-Message-State: AJIora8umlxgXoOfACBmSHYxuzdSVZefsZW9dnJ+tzd3kPr+Fe2yL0Fl
        re/51cfoHRLHNhnmoGUVUQf0vw==
X-Google-Smtp-Source: AGRyM1tznzR5SLJwpDbAfB4r8bj4JU4rX7RmAZdnMd//ppTFcsHXaZB3z2MJgtXtPwjGqfy8yIMmsA==
X-Received: by 2002:a05:6402:158e:b0:435:7d0f:ac85 with SMTP id c14-20020a056402158e00b004357d0fac85mr5788373edv.93.1656525289448;
        Wed, 29 Jun 2022 10:54:49 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z4-20020a1709060f0400b00722f069fd40sm7930242eji.159.2022.06.29.10.54.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 10:54:48 -0700 (PDT)
Message-ID: <745091fe-dcf7-cdde-3b81-f3ea516bd9fb@linaro.org>
Date:   Wed, 29 Jun 2022 19:54:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v6 03/14] dt-bindings: input: Add fsl,scu-key yaml file
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
 <20220629164414.301813-4-viorel.suman@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629164414.301813-4-viorel.suman@oss.nxp.com>
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
> In order to replace the fsl,scu txt file from bindings/arm/freescale,
> we need to split it between the right subsystems. This patch documents
> separately the 'keys' child node of the SCU main node.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Viorel Suman <viorel.suman@nxp.com>
> ---
>  .../bindings/input/fsl,scu-key.yaml           | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/fsl,scu-key.yaml
> 

Assuming all patches are taken independently:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
