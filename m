Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA5E24B9C72
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 10:50:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238836AbiBQJtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 04:49:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233044AbiBQJti (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 04:49:38 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B222717AAF
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 01:49:23 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9401340333
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 09:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645091362;
        bh=0007Apij4GTvZKW9DpvkDPnqD/lKERk9VeBYhgBTloo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=gEvoi+q9S6bpfGIYZuz7OgTKtpwQ/zOH+Fcn9rf4XdkGIeJyYDXUbvS+dm5kYGFkx
         +UDIHt5lVAFht2Ag2vcIWSOfRl40t4GC7bPZbl7HqONIqDLN4a14zKDL3fii4BBWoQ
         4AKZSkcCKpG8yK4cQpGhdFPt3MFBeyHPnGuP2kI52JnwYtkn9+eUKIIDRcld2Imbd1
         CxOS09cBgwIdZlu9oniLhEz4QXNTCI7FiwUnhyFBWqZgA2B/w8KS+UxjX/bXUJM4bH
         4RY/TzxWgtbeG1NFZLzFOpJjPVdrP10zt+zEgnwgWVmTL9L4V4bFJRpf8u6RxpP2YE
         /hvTlL8CDGJng==
Received: by mail-ej1-f69.google.com with SMTP id d7-20020a1709061f4700b006bbf73a7becso1247131ejk.17
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 01:49:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0007Apij4GTvZKW9DpvkDPnqD/lKERk9VeBYhgBTloo=;
        b=15whoTxgXoGij5GtOXyS5IhaNRZRNwUITPZ3qN5rS2KPdme3XXnH2+7/NPvEhaukWJ
         hWOgXU+IAdAsZdpkepLcfW50i3PUc+Wq6r6f2lN85qW6+uYEUR3OW2ka3AB8ZQGpXW3k
         yfoLfRjhnQOPYA1IUadwYiClOir+BkJ4x940wfZGDv2UwZeKukr2iQ8O2j8IGs2h3Vrv
         2pueRfyG7OGqe5ZW3TZb4Y2suChFFBTICOdJmRhNtjsT7Cg0iDZyJ7kYRXe4V0MPiOkt
         uIQUKnxeTl/lw7Hbwg+12yGGy+4djpFPttxJo6t7R8O/1acwGpcXprLJFu93pkBvu/nP
         CdzQ==
X-Gm-Message-State: AOAM532Ey4nnOisc7uFParvkukULTdEDymyqRHGACuZykB4v/XgrSMit
        0YqPpeYmSHPblK/CU08TlMB1sr31S6dX3ttVW71nCtZ4I8Ow/9eWnWHu4UwJ237rU5/6KHGeklb
        ZoNwF7UryxVzhet2iCL8KWhW9k2Eu2sF1tANcGVk=
X-Received: by 2002:a17:906:9489:b0:6ce:f3a9:2c17 with SMTP id t9-20020a170906948900b006cef3a92c17mr1738786ejx.333.1645091362254;
        Thu, 17 Feb 2022 01:49:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyU4GL/xCZfq3R/yQUHRTYFTi2oBY1a8OUofVqY7Z2aF3QmZxKjn4JOmkoChKC3hfRIIHrggQ==
X-Received: by 2002:a17:906:9489:b0:6ce:f3a9:2c17 with SMTP id t9-20020a170906948900b006cef3a92c17mr1738761ejx.333.1645091362031;
        Thu, 17 Feb 2022 01:49:22 -0800 (PST)
Received: from [192.168.0.110] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id ha3sm985555ejb.157.2022.02.17.01.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 01:49:21 -0800 (PST)
Message-ID: <f50f6502-2132-7665-a61b-64c15760a420@canonical.com>
Date:   Thu, 17 Feb 2022 10:49:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] [v1] dt-bindings: timer: Add HPE GXP Timer binding
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <nick.hawkins@hpe.com>
 <20220215181936.41551-1-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220215181936.41551-1-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2022 19:19, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Description: Creating binding for the GXP timer to be used in device tree.
>  GXP is the name of the HPE SoC.
>  This SoC is used to implement BMC features of HPE servers
>   (all ProLiant, Synergy, and many Apollo, and Superdome machines)
>    It does support many features including:
>         ARMv7 architecture, and it is based on a Cortex A9 core
>         Use an AXI bus to which
>                 a memory controller is attached, as well as
>                  multiple SPI interfaces to connect boot flash,
>                  and ROM flash, a 10/100/1000 Mac engine which
>                  supports SGMII (2 ports) and RMII
>                 Multiple I2C engines to drive connectivity with a
> 				 host infrastructure
>                 A video engine which support VGA and DP, as well as
>                  an hardware video encoder
>                 Multiple PCIe ports
>                 A PECI interface, and LPC eSPI
>                 Multiple UART for debug purpose, and Virtual UART for
>                  host connectivity
>                 A GPIO engine.

Same comment as for other patches.

> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../bindings/timer/hpe,gxp-timer.yaml         | 45 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++
>  2 files changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/hpe,gxp-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/hpe,gxp-timer.yaml b/Documentation/devicetree/bindings/timer/hpe,gxp-timer.yaml
> new file mode 100644
> index 000000000000..1f4e345c5fb8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/hpe,gxp-timer.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/hpe,gxp-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HPE GXP TIMER
> +
> +maintainers:
> +  - Nick Hawkins <nick.hawkins@hpe.com>
> +  - Jean-Marie Verdun <verdun@hpe.com>
> +
> +properties:
> +  compatible:
> +    const: hpe,gxp-timer
> +
> +  reg:
> +    items:
> +      - description: T0CNT register
> +      - description: T0CS register
> +      - description: TIMELO register

That's a bit odd - you pass each register as device address space. Why
not entire address space of the timer block? Probably you have there
more registers, don't you? In such  case what if you need to access that
additional register - change bindings?

Or maybe all these registers can be put in entirely different address
ranges?

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    description: The frequency of the clock that drives the counter, in Hz.

I would expect here also "clocks" and "clock-names" properties, since
you clearly have a clock that driver the counter.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clock-frequency
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    timer@10003000 {
> +        compatible = "hpe,gxp-timer";
> +        reg = <0xc0000080 0x1>, <0xc0000094 0x01>, <0xc0000088 0x08>;
> +        interrupts = <0>;
> +        interrupt-parent = <&vic0>;
> +        clock-frequency = <400000000>;
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f41088418aae..8c2c1e8e0934 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8385,6 +8385,12 @@ L:	linux-efi@vger.kernel.org
>  S:	Maintained
>  F:	block/partitions/efi.*
>  
> +GXP TIMER
> +M:	Nick Hawkins <nick.hawkins@hpe.com>
> +M:	Jean-Marie Verdun <verdun@hpe.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/timer/hpe,gxp-timer.yaml
> +
>  H8/300 ARCHITECTURE
>  M:	Yoshinori Sato <ysato@users.sourceforge.jp>
>  L:	uclinux-h8-devel@lists.sourceforge.jp (moderated for non-subscribers)


Best regards,
Krzysztof
