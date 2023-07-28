Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C23B3766D77
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 14:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236166AbjG1Mmh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 08:42:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235271AbjG1Mmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 08:42:36 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 506472D75
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:42:28 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-98dfb3f9af6so299992366b.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 05:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690548146; x=1691152946;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+KbO4xdPKJxm7Y0Oug/f+rZlfVccGAPsaII8ga9t1IE=;
        b=vjrwpTRqUy2wlGKrIoJwZG5PcfakgQE7OkxTehJXyQnMzMuH/KomDE7HxoYSO+LJ7S
         /bCYtJd93SaBwor/cOS/JoPjJZSyG3HKi4j50VpTaxRJgdZc5GZnsvmjDhLccOBqRDpy
         hjrImt0C0jpF4a7eC84I2gOvU/sDq7bF+RNekBFCzdC6ONkHJc2LqyEsL00XFdazJMWT
         1Qb/1Y6yRiJm2AYyCEX7TAbDuJ29g3/U5vS0wS+CzWXvLGYdUWOaCjozY6sRoMSPMawo
         SwRlnNQPcwf8zXxoSijQOjV0eWlfJpRkeineEfa0zvfq5yHwOGxa9TeBj430cw53vP+P
         Ifzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690548146; x=1691152946;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+KbO4xdPKJxm7Y0Oug/f+rZlfVccGAPsaII8ga9t1IE=;
        b=IE0XFHsr6R/ZArTvp6jYUgGS1USMT/eA583273PDNBOIb6/mzAlvk6QCKniElGaWoo
         OBtS6Z1gDkYXmEnzS/hmfOaE0a4kDqqaov1t98aYMETL7kVGXbuiIyxoYscPEVwMAinF
         O4ME3digsudSKU5nrONapNlZU4PrMpni+QirhxJJAGT+eqYHx8dDv5yiqNEcFx2FuAxY
         RGUF8tFH+3gneRrzdJmB+pCLOCw2bwf4ksdFOWIweclpichJO8/AYvOSUMGQb7PP54kJ
         eFAaVGZMgQLnVioSug/qhmoC0XjPt/Xj7k1DQXUCL94KY7oE1whRhbuFg+MQfl0DPVTP
         UlsA==
X-Gm-Message-State: ABy/qLZiBzcPVJbuEDCr1Oq8u1Um3MiiGon5yDEXjR5EYVatUGCU44EK
        26F6lz8yZqMjJQ3gWOkJvCAv6Q==
X-Google-Smtp-Source: APBJJlEbH3li+eeUrEvnIvtZqxvXF5f76Uz3szFx86grPDRc1mLQ/Zl9p+vNHsqSRyk1MjkK6rxqLw==
X-Received: by 2002:a17:906:95:b0:99b:c7dc:b02 with SMTP id 21-20020a170906009500b0099bc7dc0b02mr2295644ejc.57.1690548146740;
        Fri, 28 Jul 2023 05:42:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id cw25-20020a170906c79900b0098d2d219649sm2041956ejb.174.2023.07.28.05.42.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 05:42:26 -0700 (PDT)
Message-ID: <c28e3f10-0df5-ddd6-490e-7c644c71b861@linaro.org>
Date:   Fri, 28 Jul 2023 14:42:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 19/50] dt-bindings: sdhci-of-at91: add
 microchip,sam9x7-sdhci
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        ulf.hansson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230728102616.266235-1-varshini.rajendran@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230728102616.266235-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 12:26, Varshini Rajendran wrote:
> Add microchip,sam9x7-sdhci to DT bindings documentation.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-atmel.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

