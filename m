Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8ED779E069
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 09:04:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237726AbjIMHEm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 03:04:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbjIMHEm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 03:04:42 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F4B6173F
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 00:04:38 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9a9f139cd94so740637666b.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 00:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694588676; x=1695193476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nImpRlO70d6lS1tP3DSvKb+JC4JD8eSWrGAjYbRNXmY=;
        b=Q7Cbu/XA+bBwKk0l0WKccIq+Og+BClhxGiAH2ejFqC1WuOPadLSzm/eBiYPcOO/eqq
         E2DxMgGyHduvDvZ9+f4zo0GanzFOR3f5N+t49M11n2LCe804ZgAus87yJnNxYkE8L5+u
         hu0BpKVc3aGAVAMJ/hC6SiBD/ovxOvnTN6Bw5dYDc4nbW1Gkn5OH9Y9H9vaHquKePNvT
         Z2iVUoyu7ohhZuljvfHwLRm4WkqGrwH0eHfrZ9DcvzJKGXn3hInDktLMWxpPLzFswcsd
         LBRfM4n9Szi1T/NxYtER7LB8kYxoo0djNHFyFfQ42R6hjfuD3NQ8iy4K1fuOgTni8//U
         Q1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694588676; x=1695193476;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nImpRlO70d6lS1tP3DSvKb+JC4JD8eSWrGAjYbRNXmY=;
        b=Km2WI9Q0S8URNmyppWw4td55CbQTRSnM8sQbAgv/44si2wNtoy8oXuouUZ6N/CW6qs
         Mye/t0vEyoJD+B3nMro9eKGlN404h17RvigtDQsano5RRtoacpACQudzW5b7c7Gkj2I6
         aYJqO5ZNh0e+dtKjcsmx+0i8/qI2gVGNVsMdejVGPSif4XIpdgX3u0omKmW9scm+nE43
         ayhcbtwATuwAUWqOlYoD0S22IqgWHR0L/aMNsJfuS9N0Ghb2o1g/h+kaaVbL2auhlmxJ
         JQARH58LK/LmNCP+x8SrUqUCfWkRfEIHPHCCA9InaVU98XDMO6j3A4JFohEsFq3xJWK9
         ZmNw==
X-Gm-Message-State: AOJu0Yzc7j482jJTmdLQ7He5rPuJnMidktOC6O5S1+qwRwlopIGh+54K
        apQ+O3LpX8OWXHAf4JtSMkNG/g==
X-Google-Smtp-Source: AGHT+IF565resJCpDt3or1Kh2ykpR8bU7JYjXvfGsLnqplIgDfGyvysZZ9DK9Slai776ekxwSjgG6Q==
X-Received: by 2002:a17:907:763c:b0:9a9:e5bb:eddc with SMTP id jy28-20020a170907763c00b009a9e5bbeddcmr1166380ejc.16.1694588676405;
        Wed, 13 Sep 2023 00:04:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id ga17-20020a170906b85100b009a1e0349c4csm7891716ejb.23.2023.09.13.00.04.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 00:04:35 -0700 (PDT)
Message-ID: <7887328f-5811-3bee-b57e-eb3e2975ae1c@linaro.org>
Date:   Wed, 13 Sep 2023 09:04:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v3 1/3] dt-bindings: imx8-jpeg: Add clocks entries
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alexander.stein@ew.tq-group.com, Fabio Estevam <festevam@denx.de>
References: <20230912163810.1750488-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230912163810.1750488-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/09/2023 18:38, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need
> the PER and IPG clocks to be functional, so add the clock entries.
> 
> This also fixes the following schema warning: 
> 
> imx8qm-apalis-eval.dtb: jpegdec@58400000: 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/media/nxp,imx8-jpeg.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v2:
> - Remove clock-names. (Mirela)
> 
>  .../devicetree/bindings/media/nxp,imx8-jpeg.yaml         | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> index 3d9d1db37040..3383a275c94a 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
> @@ -31,6 +31,9 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  clocks:
> +    maxItems: 2

You need to describe the clocks, so "items" with descriptions instead of
maxItems.

Best regards,
Krzysztof

