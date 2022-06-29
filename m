Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C14C156088E
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 20:06:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232106AbiF2SGZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 14:06:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232577AbiF2SGG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 14:06:06 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA4E838DAD
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:04:47 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id fd6so23294808edb.5
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 11:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=QRZYmSHd0fW/0rpKcJtjnCBCEHtOGHUlfGPqix1nutc=;
        b=ThZpLHHCYeErIFg5jTXT9AIBzy+wXkgTCdbI2QBz4l+DLSPb1qzWv24LA3DXPXhFnW
         RJQdy5+uJ6M5W5K66xyKoerW9EFAP/d4HJbLB2VwkWhTIEMAs+m5ulY6iWC9F3hxAWmo
         uugnOlR6F+Wy+Zp98wbz8/PEgSUUn3b620eXRt24aPlItB/fFZYjam67/wgShtsncLmW
         drX+QbIPmSWiMIIeEwhRnJcSjd+vNv0a9NTAwP8ZQPLvIuWIYnJo87suP9/Mj6+e3BNb
         8cb6F4pX4S6F23/3hWy456xx+z66DoruzIHSz89+5lnPTklNIQ7sNwNV+q1Vse9u88k/
         JEAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QRZYmSHd0fW/0rpKcJtjnCBCEHtOGHUlfGPqix1nutc=;
        b=LnhNz3cq4KH9APFiJJ2iQrPgIlm08uMJ62otkoWCqkte6cvZElr8/BjDIZ4HCTTm7G
         RuCr4uq5/siPf9+IzC54kMys/u/M6XxPI2FTOfBa1B6D0I1Z41iyU1W2xqUCyyobAKC1
         6AHF0WJkWxPcxSv3/8omzZqDLmWenbPxNjcq+WiXfIKmiLe84q/UPGtfR2FrdCy5XYXf
         Myu5jav8aDH3RkwkM4emhjZuTIuwfaTKQPFX4olsW3QIL3HbiXXswHFDFemniiIz7VPa
         DrvwvnMEM997L4sUP1ECncfRqpQjqMMsGqhlNSH2MdmSGxL6+ZhRGp5GgtocOJYHh5kO
         HoGA==
X-Gm-Message-State: AJIora+AR0a4pdALv3wbv0PNt/PU1bGAjZEra5oFndDC2ygWU0IPmrK+
        7f77syj4XPChzTaP2MUTvGfKXw==
X-Google-Smtp-Source: AGRyM1uLlaIJ84yFjxXGzoRXlEP7Pzi5XHwdwaqh+uTAtWmoP+HFK1BiziFP1dsleEiquWrv6JaGMg==
X-Received: by 2002:a05:6402:5256:b0:435:9017:e5d3 with SMTP id t22-20020a056402525600b004359017e5d3mr5974705edd.258.1656525886229;
        Wed, 29 Jun 2022 11:04:46 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s2-20020a170906454200b006fe9ec4ba9esm8130608ejq.52.2022.06.29.11.04.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:04:45 -0700 (PDT)
Message-ID: <483d5115-4027-e811-8bce-15da6c7c660f@linaro.org>
Date:   Wed, 29 Jun 2022 20:04:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v6 10/14] arm64: dts: freescale: imx8qxp: Remove
 unnecessary clock related entries
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
 <20220629164414.301813-11-viorel.suman@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629164414.301813-11-viorel.suman@oss.nxp.com>
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
> From: Viorel Suman <viorel.suman@nxp.com>
> 
> "clocks" and "clock-names" are not used the driver, so
> remove them in order to match the yaml definition.

So this explains the unexpected change in the bindings... but actually
it does not explain whether it is correct or not. Just because driver
does not use it, is not a proof that clocks are not there. In different
OS/implementation this DTS might break stuff, so basically it is ABI
break. DTS should describe the hardware fully, so if the clocks are
there, should be in DTS regardless of the driver.


Best regards,
Krzysztof
