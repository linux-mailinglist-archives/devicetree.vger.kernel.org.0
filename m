Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E67D24C5A85
	for <lists+devicetree@lfdr.de>; Sun, 27 Feb 2022 11:53:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbiB0KyM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Feb 2022 05:54:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbiB0KyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Feb 2022 05:54:12 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2724545074
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 02:53:36 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id F07C93F4B4
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 10:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645959213;
        bh=DhT1dvPlzOUzKZgFedQirHd2ksfJlMM23UbjgmdtwlI=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=jEwKsMocY4YUbYGANnNeGtexrKoVg4T43ZwmODgXkGpqJLigUp+lGTiOD3AjeZLMY
         R79ixcXXHiArsmjzojluvKcHgM9Um05Cf5LGbBd0tyBmod+zPonsIr2TS8oDPxFbFs
         8ZpEDWijmIw0AVyYcMVFAACRqNJyVvGoMokJnE3jY3atuXv20V/WjySNDneK14qNQ+
         PFFIiE1w5N+SZEyEg7nWtpQ3jhj8GrqbC2I8Y/04C5vder+VtYiWKNQdbZxBcsvTu4
         6txqC4e5jbq4W1c0v+Vzo40zTyqHJrJP0dtZrD8grpLYKfgYIa4VZHqSPFuFsiX3OF
         3Qv5FNJD2Ug6A==
Received: by mail-ed1-f70.google.com with SMTP id y10-20020a056402358a00b00410deddea4cso4071487edc.16
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 02:53:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DhT1dvPlzOUzKZgFedQirHd2ksfJlMM23UbjgmdtwlI=;
        b=AUP5/NGhtw6brfLS1COLSSFHAulN27pGMFfgOtC+y5Eu54xP0cbU5b1zX63Wea5DPZ
         u2933NB8kCargztfg90fT005JylxHAJ2GihxeIup1ZxOo1aXY157xU0D8s5y3IAuo5n+
         z2Xk0kojrGx+Iq3nZBgk5d6FDBsngNZhTTTRZeI4LzvgfAp3VcmN3eXKATO7c4+oO3M/
         1H4rsKfLfbV2E03Gz0KLP/Ozh1SGQbpaUj6ooorCMFL+wZRiYv6x687iPLOqBFG5F4ZY
         zNkZxq7vaeTlKc9Zuafuk7hZ390imFtdaSzU3ICAVie6tYB/obCqIxedCk5GrhExQYxj
         Q46g==
X-Gm-Message-State: AOAM533UnjaFwYcNjmlHnoSZwrfFoh1xXJd9Oykrx2nea3FCxHwCwUva
        Vv25jj9Ft9Oan+Q8FMCVn9kMUDuh4cDzS1Rv1NkO8PmdruA0E2e7CH9YtkbolziZqy/aVpVfZY0
        IF9G0OlnLw4rQW2gC+zA7i4vgnYYxUa5MEDNnUPc=
X-Received: by 2002:a05:6402:27cc:b0:412:eb0a:b687 with SMTP id c12-20020a05640227cc00b00412eb0ab687mr14957372ede.208.1645959213308;
        Sun, 27 Feb 2022 02:53:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxyXd5YsGvKFpgDZHLeuTtX2dXv0kT6Q4No1zgTEWLt2DisZJNZw1Dd4prwoi128gF7+r0IXQ==
X-Received: by 2002:a05:6402:27cc:b0:412:eb0a:b687 with SMTP id c12-20020a05640227cc00b00412eb0ab687mr14957353ede.208.1645959213096;
        Sun, 27 Feb 2022 02:53:33 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id w14-20020a509d8e000000b00412cf368b4csm4364026ede.53.2022.02.27.02.53.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Feb 2022 02:53:32 -0800 (PST)
Message-ID: <aeb85444-e280-8c53-a0ba-f8d21f28975b@canonical.com>
Date:   Sun, 27 Feb 2022 11:53:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 2/2] dt-bindings: usb: Add bindings doc for Sunplus
 EHCI driver
Content-Language: en-US
To:     Vincent Shih <vincent.sunplus@gmail.com>,
        gregkh@linuxfoundation.org, stern@rowland.harvard.edu,
        p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, wells.lu@sunplus.com
References: <1645955441-6496-1-git-send-email-vincent.sunplus@gmail.com>
 <1645955441-6496-3-git-send-email-vincent.sunplus@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1645955441-6496-3-git-send-email-vincent.sunplus@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/02/2022 10:50, Vincent Shih wrote:
> Add bindings doc for Sunplus EHCI driver
> 
> Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
> ---
>  .../bindings/usb/sunplus,sp7021-usb-ehci.yaml      | 97 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml b/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml
> new file mode 100644
> index 0000000..e492f7a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml
> @@ -0,0 +1,97 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd. 2021
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/sunplus,sp7021-usb-ehci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sunplus SP7021 EHCI Device Tree bindings for ehci0/ehci1
> +
> +maintainers:
> +  - Vincent Shih <vincent.sunplus@gmail.com>
> +
> +allOf:
> +  - $ref: usb-hcd.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - sunplus,sp7021-usb-ehci0
> +      - sunplus,sp7021-usb-ehci1

How did you address Rob's comments about using one one compatible? You
still have two.

> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: usbc_clk
> +      - const: uphy_clk
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: usbc_rst
> +      - const: uphy_rst
> +
> +  reg:
> +    items:
> +      - description: USBC register region
> +      - description: UPHY register region
> +      - description: MOON4 register region
> +
> +  reg-names:
> +    items:
> +      - const: usbc
> +      - const: uphy
> +      - const: moon4
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  nvmem-cell-names:
> +    description: names corresponding to the nvmem cells of disconnect voltage
> +    const: disc_vol
> +
> +  nvmem-cells:
> +    description: nvmem cell address of disconnect voltage
> +    maxItems: 1
> +
> +  port-num:
> +    description:  identify ehci0 (port0) and ehci1 (port1)

This still should be a dedicated PHY driver referenced here.


Best regards,
Krzysztof
