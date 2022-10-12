Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0230C5FC65E
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 15:25:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbiJLNZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 09:25:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbiJLNZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 09:25:08 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FE35222B5
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 06:25:04 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id i9so10874455qvu.1
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 06:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1qzXiCku8zb8Ae0eQNcYFjLoMgqZQvEYwUb7HkYQzic=;
        b=KhuH8AjUFEIjD5MHbT8PW7Jap6hZTlcC4NC9wKNSLthBZU3ojyTpu3/GYv0f9GK0jC
         oboue92JE1IYV98IFp1bzjl3MWsJUUJO+IUVA8nwVIDEFGB0ZMs5ncXVpD2ify5bkZIy
         MZZ3G8N78k72rBDHEc3NnlaSPxQGgifi8ugnBXebsl28xQg9fPtgZ+zXzMcNOuDTC50J
         nUuLX/RUyTFzPaDPT+cl9335B8SG6tnyLIZECYWqvimP7u0SU0uL+zZRXJ58TfYHAzOb
         qqjxjozBmM9MeIwXDCv19Npp+X84rpxrW4ZQdRltQvcDmbhL3Dqrbd6ZdOD5kWptP9QZ
         hLng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1qzXiCku8zb8Ae0eQNcYFjLoMgqZQvEYwUb7HkYQzic=;
        b=UbLddmlhezFvfcZ00WC1odcl0r61RgotaKQGeOpGYXz4RGSexJ2u/ynCO+A8HKhdJ8
         Ailk0WqIvrr5AJgw4/xQ/CiYNePovaBymwcWrIbXtfmOdPucD34v2GKl/f+U2yAZtXX9
         +ndDGBfEvwnvVHjXrC+7ssncLoaK8ot37x+GTNbIRrmbFHKViAqne8u/xFo5NmApr9rh
         wNEjQuOS7RQ0aJ272KQMuTBACAv8ftIAi37JiusabTC051KxxOIPuRhoP1q/HCp4jdqa
         T8pBb8U6ZgfDS6D6484KuEP4epvL3/i9OvghUrknSrLzDH58TJJ1C4PJ6IktuXos70UK
         VonA==
X-Gm-Message-State: ACrzQf1dT1mf+4cZEV3YqVfIAyb5OTYOJo5yrsd9CPA34HPyq17nrh86
        SLVpbHNo1yojI1ZAHJsD1j/BQg==
X-Google-Smtp-Source: AMsMyM6tOpEdzutnSl3YgJpiD4RaB0LVmGTjq+pe7xdWHP3fzktHlKw3QVtkYhzr5Nt9d7Jg1G0zpg==
X-Received: by 2002:a05:6214:765:b0:4b1:d285:3411 with SMTP id f5-20020a056214076500b004b1d2853411mr22538824qvz.18.1665581103484;
        Wed, 12 Oct 2022 06:25:03 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id de14-20020a05620a370e00b006e07228ed53sm12147605qkb.18.2022.10.12.06.25.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 06:25:02 -0700 (PDT)
Message-ID: <fc867cc5-9df7-3e18-ef0c-19f1c569c571@linaro.org>
Date:   Wed, 12 Oct 2022 09:25:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 2/6] dt-bindings: usb: ci-hdrc-usb2: add i.MX53/6SLL/UL
 compatible
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        jun.li@nxp.com, Peng Fan <peng.fan@nxp.com>
References: <20221010101816.298334-1-peng.fan@oss.nxp.com>
 <20221010101816.298334-3-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221010101816.298334-3-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/10/2022 06:18, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX53, i.MX6SLL, i.MX6UL compatible
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> index 1c10691c45f2..575084ccd6b8 100644
> --- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> +++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> @@ -25,15 +25,23 @@ properties:
>                - fsl,imx23-usb
>                - fsl,imx25-usb
>                - fsl,imx28-usb
> +              - fsl,imx50-usb
> +              - fsl,imx51-usb
> +              - fsl,imx53-usb
>                - fsl,imx6q-usb
>                - fsl,imx6sl-usb
>                - fsl,imx6sx-usb
>                - fsl,imx6ul-usb
>                - fsl,imx7d-usb
> +              - fsl,vf610-usb
>            - const: fsl,imx27-usb
>        - items:
>            - const: fsl,imx7ulp-usb
>            - const: fsl,imx6ul-usb
> +      - items:
> +          - const: fsl,imx6sll-usb
> +          - const: fsl,imx6ul-usb
> +          - const: fsl,imx27-usb

Order entries by last compatible, so this goes before the section
"fsl,imx6ul-usb"

>        - items:
>            - const: lsi,zevio-usb
>        - items:

Best regards,
Krzysztof

