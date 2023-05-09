Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 047126FCCB5
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 19:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229741AbjEIR1D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 13:27:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235136AbjEIR1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 13:27:02 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5D983A98
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 10:26:58 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-50b37f3e664so11170540a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 10:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653217; x=1686245217;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yxlpq7K/bU7lZnjiRmgqr2Ygu+qXnLZf5es9J2JbZxo=;
        b=DeqyNvkjgehdMSRPOcRr052TILwaNCPPa0NkJl2KSusfiApqkG7OJWmjttvN1TYfx4
         b6lVcaqGh07PbTq0igGHcshdrqOAiPO4vIg0E1SA0kYp3j59PyWsADpOXkRZkWNAP729
         +xvguaWkFxqC4IZXbmsfKF+D0acyJ7ZLRqaMa/nCKuEfwltEdVEaKv7CqUUsGPypHHLQ
         hNmde/S3BcUvF74Je1vymaDbQVRP67rqcxzvzRB0miWfyaurKNViWIwvw23DRSX3902t
         Yi0dGKz4jE2D1Bh2NJwUks+67NRvBv1wVX9G0Fa6BxAkqJDR9W7CmDUxglAJ+Xbt8JiT
         w2Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653217; x=1686245217;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yxlpq7K/bU7lZnjiRmgqr2Ygu+qXnLZf5es9J2JbZxo=;
        b=KipGuZyVRB+rW03LVuXfO74+dTUXL1900VDDDdTXVVqF/CE2q56oPQJEUVGY6hj2G+
         BuNcPrgnvD9qgaHz/0ajy6aWDpzr48yRb9sX4P5sB3SQK1HpRrscjhU0qLQzKoEFFmSy
         OEXd+5xoV0N8ef4QDCj77kGElHE3L6vLkydux3Z6lMdSdR6lURCmrHw/JJeNcdf0ux3z
         5e9kImJW71Z9bfFih1fGL0WdT2QhScMVLsaLRl/B/v39KCyTn53Ikzkr/LNA/c5k6/bj
         f75GuElo7s4Wo5gB6yKmJSAAubBqE61JRbCi2ahdTaQK2LWFsV+uGLgQBFL74hheDeTj
         vjNQ==
X-Gm-Message-State: AC+VfDz8sXrlTyIO1OKFYclBh9LSnX4MZX5sr90ktcwOCrjyBD7TUjjE
        8oU9kL7DxQS095nd/CN7T2DK3A==
X-Google-Smtp-Source: ACHHUZ4mYQim4Bq7wbUnWuh6MJfUB1Uy02jFLvYJtR/gmoWE17SyweBq4mewrZ6dVxEhXcsoCFWXfw==
X-Received: by 2002:a17:907:d86:b0:953:42c0:86e7 with SMTP id go6-20020a1709070d8600b0095342c086e7mr12933092ejc.4.1683653217263;
        Tue, 09 May 2023 10:26:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id hg14-20020a1709072cce00b009662de1937dsm1553651ejc.131.2023.05.09.10.26.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:26:56 -0700 (PDT)
Message-ID: <21a23f39-5637-00db-f778-a2e8e333d6b2@linaro.org>
Date:   Tue, 9 May 2023 19:26:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: cdns,salvo: add property
 usb2-disconnect-threshold-microvolt
Content-Language: en-US
To:     Frank Li <Frank.Li@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, fushi.peng@nxp.com
References: <20230508131747.1933886-1-Frank.Li@nxp.com>
 <20230508131747.1933886-2-Frank.Li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230508131747.1933886-2-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2023 15:17, Frank Li wrote:
> Add usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Change from v1 to V2:
> - fixed subject
> - fixed dt-binding-check warning
> 
>  Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> index 3a07285b5470..be415b0a6d8b 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,salvo-phy.yaml
> @@ -31,6 +31,12 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +  usb2-disconnect-threshold-microvolt:
> +    description: The microvolt threshold value utilized for detecting
> +      USB disconnection event.
> +    enum: [575, 610, 645]
> +    default: 575

Vendor prefix still missing.

Best regards,
Krzysztof

