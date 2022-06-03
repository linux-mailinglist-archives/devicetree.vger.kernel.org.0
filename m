Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 195DE53C621
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 09:28:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236938AbiFCH2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 03:28:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242366AbiFCH2d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 03:28:33 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A47B841
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 00:28:29 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id s6so2725706eja.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 00:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UiKl1D3+pwktIaSMQTL9mSrntfBBrXE+DPKJRbP2o/w=;
        b=eR2EYbPDHjP6hNmdz50L11x3q7f+g7MQAMXhMpE6Eey3RqH/unJQ3qn7+yHVpX85JK
         hd9MxhzOxr8seMtBL683FgVVOch7loQWA8DWp7TElq322zNZgpdkp4O4eF2ad/wBGQ3g
         Vs65DtimXziQkPpX9tANbwC0u8Oly+0+uqlnNvGxb0jUu/Q4TOzgAM50WqpaLPQ8FuQg
         iM/ck+Mqgh5Fm6RCDvRWwfvJABGdiNbzWop3hjqHmzaRXJG8F8oBk8hkMy5WHaD7VA17
         9jRLRBboHGxNw6f1M/3emOx8o0Spo8GOwZgEkXG83q4U1pb93HfVSJGSdsArmCZr7Nto
         NruA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UiKl1D3+pwktIaSMQTL9mSrntfBBrXE+DPKJRbP2o/w=;
        b=vtNSMzwba3ZTpxENDOEddjKdm4MIJDkl7Ihm1r8pnif/8PmsPEfI2oiOKTryh/qw/U
         L/078gnHrIqqwOAJkaxg8bCQNXI5MkXVBnBuwlhkAajwVdDgU8lKc7b0RrdKY5lZIeEV
         cdqyj9MN6/HSBLn8GveYhvk+VktVAm6yXyeUHgappnhJAZPIMTtRHglw7JDrn1UD1L01
         LYcaLpPSFI2gpzNoQJmLRKaI8XrzCu4Dmj8mXj8+8BRt7ggS7EPuQQLQxBcphfvaLS4V
         VWGjs2UD36g6dlaEs3E6K1idFKudWd08r403nW/lA/5A+xRXfI56+0rm7Ldym5G5PpQk
         HaNA==
X-Gm-Message-State: AOAM5326YAnn7zLQUbOujBSn9gcWpA4a2n9pU6el8XBmsrA8T7qc502K
        39YEDvGHduOzT8F+4WggN8pjjw==
X-Google-Smtp-Source: ABdhPJytXhjJYZraGHGdapMjrFiVu/AhMBQE0aDS7xbtPzsUJ3Zx+bqjJ3RvvCMQGMwViBu7evHOoA==
X-Received: by 2002:a17:906:85cb:b0:70b:ffb4:b0e with SMTP id i11-20020a17090685cb00b0070bffb40b0emr4538677ejy.533.1654241308308;
        Fri, 03 Jun 2022 00:28:28 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ck11-20020a0564021c0b00b0042de3d661d2sm3531068edb.1.2022.06.03.00.28.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 00:28:27 -0700 (PDT)
Message-ID: <7374666a-212f-76fb-4626-386e46f74cd8@linaro.org>
Date:   Fri, 3 Jun 2022 09:28:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 5/5] dt-bindings: altera: Add Chameleon v3 board
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dinguyen@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, amstan@chromium.org,
        upstream@semihalf.com
References: <20220603065816.87952-1-pan@semihalf.com>
 <20220603065816.87952-6-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603065816.87952-6-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 08:58, Paweł Anikiel wrote:
> Add Mercury+ AA1 boards category, together with the Chameleon v3 board.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>
> ---
>  Documentation/devicetree/bindings/arm/altera.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index 5e2017c0a051..4a08c082dbdb 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -29,6 +29,14 @@ properties:
>            - const: altr,socfpga-arria10
>            - const: altr,socfpga
>  
> +      - description: Mercury+ AA1 boards

This looks good but you also need to remove enclustra,mercury-aa1 from
previous entry because after your changes to DTSI, it should not be a
standalone (final) compatible.

> +        items:
> +          - enum:
> +              - google,chameleon-v3
> +          - const: enclustra,mercury-aa1
> +          - const: altr,socfpga-arria10
> +          - const: altr,socfpga
> +
>        - description: Cyclone 5 boards
>          items:
>            - enum:


Best regards,
Krzysztof
