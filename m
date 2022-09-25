Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D92165E9198
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 09:58:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbiIYH6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 03:58:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbiIYH6B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 03:58:01 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A688821E1A
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 00:58:00 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id p5so4307205ljc.13
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 00:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=aOQ18uD71Cw8c6NYAIsA0fwMWSjBMgkiFJNuIRqvHns=;
        b=w5PKuCKsWy0fzkRzBxaHO6EX1SP1e9B7jSRg2VsIlcAU1a7cImbYte+pvJv86zsnOZ
         pWdY0fZjOoBE8/roNFKZOrK0uaAY6SOQRh3TT4+PKlMbC35iFYF+Z8WP2nA2PGQqebPD
         Zpo0h/PQMlxMTZXlPWuRRo7ldNbyVzW74jieuPURJBnSTAjWiOLS77oWegoEzc59/w0a
         kdske1obWXTyVrmEcOVSybu2l+cbMoopIHOTB0II3SmYXv/ji+jXcwab4pxe/msw06CX
         vGGzOcEfnQBSSEjfTax+sFQ8kbL+c+4WSafMkPzguymGRozrV0jIZVcZZrezW7xjQigY
         roFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=aOQ18uD71Cw8c6NYAIsA0fwMWSjBMgkiFJNuIRqvHns=;
        b=zwQiWmzRURIN0DgP7oWLs82OuLJ7M95TTQEiNelaNCKvHDnzvSMWkvD0rU3iALktx2
         GUJXP+mgGw+ifxOEl/Di5GrWrfnjYXD+OEcGOduiw3bbhDKjFkuAwJ5dZRJK+/zlEo8s
         r9GGVW2x3biVov+WHJQ3UXtZkcekH4B83w0iv9uudV8qBOjPEgQHcFsUHwkj4eWd44Bx
         G+r+6Er5sX4x6EVrDx/sPgfVqOtBEtAweIH6AG0sQUmJjjEowt59SKQ/AW3oxFoq+Cvn
         +BI0Wf4XyezJ2jL5Se1qdNZU1hNUtqr5xuSgDdj8DU+MfX/mmiA2TCGJOcQRPuzSgu/F
         vmsA==
X-Gm-Message-State: ACrzQf3odZ9/aB2tdAxfzqY9ZAiw3hn/UtBViCZdeT1udeh/Dvo35z9f
        tWLNDkElpx+jrb7A0QV3Ky10XQ==
X-Google-Smtp-Source: AMsMyM4gl3KT7W/oNLZQByjKULcu2XZTzg5qzaQvvdGiUCf20TWpaFmsoVQElRlxY0uU8oxzgPOTtw==
X-Received: by 2002:a05:651c:383:b0:26c:4e23:a4bb with SMTP id e3-20020a05651c038300b0026c4e23a4bbmr5624788ljp.530.1664092679066;
        Sun, 25 Sep 2022 00:57:59 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d25-20020ac25459000000b0048af4dc964asm2144459lfn.73.2022.09.25.00.57.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 00:57:58 -0700 (PDT)
Message-ID: <a5838d66-21dc-4905-03c5-ea049e3bd055@linaro.org>
Date:   Sun, 25 Sep 2022 09:57:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 1/1] arm64: dts: mediatek: mt8183: disable thermal
 zones without trips.
Content-Language: en-US
To:     Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        daniel.lezcano@linaro.org
References: <20220921-mt8183-disables-thermal-zones-up-v2-0-4a31a0b19e1e@baylibre.com>
 <20220921-mt8183-disables-thermal-zones-up-v2-1-4a31a0b19e1e@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921-mt8183-disables-thermal-zones-up-v2-1-4a31a0b19e1e@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 11:05, Amjad Ouled-Ameur wrote:
> Thermal zones without trip point are not registered by thermal core.
> 
> tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose
> only.
> 
> Disable the zones above and keep only cpu_thermal enabled.

Please test your patches before sending upstream. :(

Best regards,
Krzysztof

