Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1032698F8E
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 10:18:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbjBPJST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 04:18:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbjBPJSP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 04:18:15 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE39D26862
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:18:10 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id lf10so3599214ejc.5
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I0OaMl2j24ssPCY78+tQ9h2rBFC0lvbgjl9TBRcDzuE=;
        b=WSk8SkTl9EoyJJ6lWRhrOy4GIRLG55z7HOikjpJK9gD3ZnNWyV8WiBs28KD7Vxtvmf
         5JJfNhqL/frGPEeRE73OuIH2lc2P1S1yxBYBfZ+f2HZt846a+pViAAcQAb27QdlR94F0
         ppdwMJIYaskjEZbuXw3ZsZrvlmJCFC+k1+80ekw6jc+gHQrFQjIUOMSaW6CzG1VMgE6Y
         sTQ9bNByHWroLquA6MkenemTD0BrPDskjgOrWfxu1uaZeZm8eOEmkBFLAeN/AXJV7r9/
         lI6MQXztcBQjjuLsU/2KOLCMOxRxbIEc1JvqQMEoFSAy8n7PiYePWIsgzBrfG0mH2Rcj
         dwCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I0OaMl2j24ssPCY78+tQ9h2rBFC0lvbgjl9TBRcDzuE=;
        b=4XdMBo3P7yYmIR+B1p+L5yABuN1+km0dV0/SkdmCJPOc3wAVWrbLw/KhujBScYhzbc
         guLTXczT6Kju8cQr4yzq6bi8Om0sFu3HVAlFGSy1Nl0tqPm8GTLnb+deufydT1YYNfRZ
         3gi4qSHKQ16LfASxQsEqpblMHvqJgk1Vay5bVDtEPmV4dyy6zKUYh5+nwz0meP0i52su
         FR/+e3V8mOuTYxgNf0VR7OeQ3W/uffUPq+Ob5BNH83CymBwJJ/oc8sALGTSSq5fkbvF+
         /7oJSgL6Glrdww+jsXJBJEBtHohIMqDowWZxfMT8Ky8kk7/Zqs99YaT2LJ2EZVmBXSQM
         4yaw==
X-Gm-Message-State: AO0yUKWtdH7zXB33mhGnDhshq06N11ixBUti+8Ok/Um2a4KdPN6TvS44
        Yr/CAXpWu+qxUDXaI5H9KGO5Bg==
X-Google-Smtp-Source: AK7set/0yZSEl0O3Eolg3vrUoRP0zKyWipe/qhUAkIfNDz34VhzrmmAd1oAq71N9MXp54mBNbA5Kqw==
X-Received: by 2002:a17:906:379a:b0:88f:9f5e:f40 with SMTP id n26-20020a170906379a00b0088f9f5e0f40mr5071128ejc.68.1676539088937;
        Thu, 16 Feb 2023 01:18:08 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id md1-20020a170906ae8100b008b174ef3cdesm111131ejb.27.2023.02.16.01.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 01:18:08 -0800 (PST)
Message-ID: <b87003f6-02a8-64fc-80fb-b90ca6bec37c@linaro.org>
Date:   Thu, 16 Feb 2023 10:18:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/3] dt-bindings: mmc: meson-gx: support specifying cd
 interrupt
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <15df9ef0-9b73-ca5a-d3cf-0585cd135bc5@gmail.com>
 <1c5996a5-491f-39d6-b120-bbef86473729@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1c5996a5-491f-39d6-b120-bbef86473729@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 22:42, Heiner Kallweit wrote:
> Support passing a second interrupt as card detect interrupt.
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> index 46e235bf2..c8c30300d 100644
> --- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> @@ -28,7 +28,7 @@ properties:
>      maxItems: 1
>  
>    interrupts:
> -    maxItems: 1
> +    maxItems: 2

Wait, you now *require* (not support) cd interrupt, so this looks like
ABI break.

Second, you must describe the items.

Best regards,
Krzysztof

