Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACCCC571638
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 11:55:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231571AbiGLJzX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 05:55:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229782AbiGLJzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 05:55:22 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44C78AA810
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 02:55:20 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id d12so13029085lfq.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 02:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=axICpN3J/kMmaCf6S84TqGPCux368wms9PQ9I5oaU1Y=;
        b=sgRn9iuPJDgWVdjaKv2jASetCuvgyB1fPCM+Uk+k1rQUY3idehVWK1F4ch8IyPAEL5
         FLVBeM9+sq3kyoUucHx7vTTLeD+achPZeHZy3NRQrkkyVfNWc9F7WQWm+Oj2EuYQPdpz
         YXxhCFWIt7xsMqneckUIjOBUTiPboVK1aOSBEj/wO+dTDnBnKSvtzuwMQk08jASq7gNo
         9JD7RhZ8ken9hZb2xjtdeNiAvgrDcyErGBZ1dvLfdvb2636w+OTb7KBnEmJVvfILLFpA
         +V+7xgf0gQlYirp33ZUZFPzMd/R7CdXvfPH9MK2WANEwqze1NZIyyqKWFx86eZNeXxcg
         Q5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=axICpN3J/kMmaCf6S84TqGPCux368wms9PQ9I5oaU1Y=;
        b=DxwotfIBtaiT6KNaZllirydIMr4KCmNq29qsgZ8saBXGBxir2RKyxImtNrjBIe0Qzw
         5SuWw7cg5SnzbXaXzXfBSTaZONK67M5xbZa1zArvXq4yfdpX0/y6r5fbPx1ESd43NHxd
         QD/AXZTBR+RJaM8Pf6Wyb9JVpK8xYLtkHsBQYdIJipuiJ2n4lYdqTQ3n7T57XXStU8pZ
         8yKzcXEEr2BNfutvLOMbfxlFax21PK4MxjGBenYHTXzNFAj2leAKRYj2NgMJBAWCVZeG
         QDtKRW7VegYTIE8nL1p/YEgbwTtBHYyIhIgJMxd8y1RnQ8gqPc6nb55HW5/knftkiB1g
         XcAg==
X-Gm-Message-State: AJIora9Fx6z1kKNAVh/PhWjpaih8pcgjctmOe/Hw3oCon4Hf9xOuEMUF
        Z2LoYPdlDG5xAzBi+96l3vBcBA==
X-Google-Smtp-Source: AGRyM1ssaxls1fUxMc6/WdaimSgtDYowXLkqFMFTIULBRqh8A9jBeagdf7UHpFRz2wr0G30u76TsUw==
X-Received: by 2002:a05:6512:108d:b0:489:e640:df8c with SMTP id j13-20020a056512108d00b00489e640df8cmr4334829lfg.332.1657619718613;
        Tue, 12 Jul 2022 02:55:18 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f28-20020a05651c03dc00b0025d40241c1dsm2354259ljp.6.2022.07.12.02.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 02:55:17 -0700 (PDT)
Message-ID: <6f9d2ea8-1ffd-41d1-9441-00c2b35187ec@linaro.org>
Date:   Tue, 12 Jul 2022 11:55:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v8 09/15] dt-bindings: firmware: Add fsl,scu yaml file
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
        Peng Fan <peng.fan@nxp.com>, Liu Ying <victor.liu@nxp.com>,
        Shijie Qin <shijie.qin@nxp.com>, Ming Qian <ming.qian@nxp.com>,
        Mirela Rabulea <mirela.rabulea@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-input@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220707125022.1156498-1-viorel.suman@oss.nxp.com>
 <20220707125022.1156498-10-viorel.suman@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707125022.1156498-10-viorel.suman@oss.nxp.com>
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

On 07/07/2022 14:50, Viorel Suman (OSS) wrote:
> From: Abel Vesa <abel.vesa@nxp.com>
> 
> In order to replace the fsl,scu txt file from bindings/arm/freescale,
> we need to split it between the right subsystems. This patch adds the
> fsl,scu.yaml in the firmware bindings folder. This one is only for
> the main SCU node. The old txt file will be removed only after all
> the child nodes have been properly switch to yaml.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Signed-off-by: Viorel Suman <viorel.suman@nxp.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
