Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A988350B3CE
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 11:16:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233606AbiDVJQx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 05:16:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233698AbiDVJMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 05:12:06 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7090351E65
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 02:09:13 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id bv19so15106497ejb.6
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 02:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VlCaDBv0lI+bMbyzSUvp/QCQTyaZL5yq76P9L1bSzBQ=;
        b=yfbh/IVH9TL8f6D91rmaiLtVr9a+9hMrhh0G0Ce08L9K7Ir1dXIUPQ51SjLXHOpw1o
         ZKJSnXshJ1ypF5ZGGPvX816do88C79vYfxQMZg6DgJqELawooJjpeW2QK2uv+fdc5FCf
         yCL0oCldP18VaJcrPVGoZr1F8EDKJNgGYoqLbcKM5iMose5+wIrRercEBRQM39vRLMky
         aV2+I+HeSbmLhiTWdw/wQYu2BHqE0fA21yDnDw+fbfZJGebOxpOEKjYAFjOvy8ymgxma
         7aWVrWOcPKUq9z6enLAO6rLWVz3/WVV/am3m8SBNn4wF++RtpxXXap4UdF8SsXF12NPB
         JhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VlCaDBv0lI+bMbyzSUvp/QCQTyaZL5yq76P9L1bSzBQ=;
        b=QDIy8fn0fNLzg39QAFCZlE6fH3BipiRT+CRC4Gn+OXO1IBMX/jVmKOzd3qDRE7XBy8
         zHus2atV/xat16AHChB0qWvuUM4chOCwcixy0doucNQY5m9HglGCproIPZ/Gxdn+BTF0
         G4JEq/HSfiSUQ0O7ERSYXDMZvDM3Qeh8unqn8lI4inpyFEp8j4tQr51V/SoC4Fv89UIo
         LhXXQONcPiKvRuXlxSZVU0HzWbzTNA9kxjw4HkgiYP2YE+sipy8ilfosxHlai4xwSIjm
         E434TB+mQ3CWZOWGizIM+NcRGZ2Q+JG/bd5gsEVFGutQTprX2jdpBoePEiWR2dxFHqYS
         mgQg==
X-Gm-Message-State: AOAM532YKtK7jYD36I841P5C4qNwndCT4rfCSDs4LzRVNRVsDpkbiRW5
        W3DAx4pWaIGS+yyVynXlk1m+Dg==
X-Google-Smtp-Source: ABdhPJyJ1gxk2RK2g2BtIkquk3vuHYv5yKKdtM9KZTp5q96PgxAHQPNrOLJ2bGTM3i+6i+rH4s/W7A==
X-Received: by 2002:a17:906:9458:b0:6e8:86e5:5b8c with SMTP id z24-20020a170906945800b006e886e55b8cmr3230369ejx.325.1650618552021;
        Fri, 22 Apr 2022 02:09:12 -0700 (PDT)
Received: from [192.168.0.232] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v22-20020a50a456000000b00422a4841c61sm660278edb.58.2022.04.22.02.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 02:09:11 -0700 (PDT)
Message-ID: <601a1b5b-7189-cb9e-a945-6f2d49583633@linaro.org>
Date:   Fri, 22 Apr 2022 11:09:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 2/3] dt-bindings: Document ltrf216a light sensor
 bindings
Content-Language: en-US
To:     Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org, Zhigang.Shi@liteon.com,
        krisman@collabora.com
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com,
        alvaro.soliverez@collabora.com
References: <20220421140133.354498-1-shreeya.patel@collabora.com>
 <20220421140133.354498-3-shreeya.patel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220421140133.354498-3-shreeya.patel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2022 16:01, Shreeya Patel wrote:

Thank you for your patch. There is something to discuss/improve.

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        light-sensor@53 {
> +                compatible = "liteon,ltrf216a";

You have here unusual indentation - looks like 8 spaces, while the rest
of example is properly indented with 4 spaces. Please use 4 spaces for
entire DTS example.

All rest looks good, so with indentation fixes:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> +                reg = <0x53>;
> +                vdd-supply = <&vdd_regulator>;
> +                interrupt-parent = <&gpio0>;
> +                interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
> +        };
> +    };


Best regards,
Krzysztof
