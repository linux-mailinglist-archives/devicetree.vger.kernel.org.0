Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 389E82B86FD
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 22:46:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726397AbgKRVpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 16:45:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726304AbgKRVpN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 16:45:13 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18026C0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 13:45:13 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id 18so1728882pli.13
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 13:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3Hv9kt4SOHsoBCsom42+V+kztVGbYsxQrnaw6CICV/Q=;
        b=aynKEMLm39AIR1DOwAPwfc71cU0/jk8MntcwAxdoaJ2e1DO3ifrNEbvq3mO8sXJ4xR
         yBVNKnyhzqfAcRWZM9xV/TeA0fxAzOTZGaPiW1vd2T3vNb73tQDm971F5/aN/mJFJq62
         ud3QSmptGTYz8Rw+Vsh2R8/cQQkQ7Dr6f8Cot/3Wg21ltSFo/p45TpDrleuC6xY5sko+
         r/MhaYqI2X0QrkY9eZRcS1AGj4DgSpwDx+z1uIL2IS0Iy1F38Vjtz3aJSQmqnbluf21D
         fOfdfnHB+SzpEjo8apOUWQNs0VAGapr5QxekMn6DNBcbiAwXU2tRvMiBZYHGp7h8EWA0
         w7Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=3Hv9kt4SOHsoBCsom42+V+kztVGbYsxQrnaw6CICV/Q=;
        b=FuIxn1sGFXwedcRIEmYq7+hr+fQdJC9GRGztG9qgPPcS/eTfKkEGuxO4FZvYmyJiZ2
         Z9eKv2pEcQJrVhcb5MMYAIpqMEwxLgr4q7+dLN7JtUS+CQNuTbLvj+rSY8rN6SM+3+Cm
         +mwZpu52jNvJ5a19Kw5qKclTJhwY8WfBEF7/eAttLYkyE4OvFdd4Iuy/q7DlWdbsKUKw
         1sqpJUTWCTp2/JhJq3DIrvPxZ/OOFEZVixnKV1HE9RgFhpuQXpCsZ2mTRK/+R17ww3Q4
         8In7g9GyCymvAoMCggxZSfwIHl/UfQBxmf/0tZJdbjM+qLiMwpQq2FRfCUcbWu/3qkuQ
         LPaQ==
X-Gm-Message-State: AOAM532CgxqeuaJK8ZJfrhX0sRAxBrJp36pAwSF3QJ4dpMhcge7VC7W+
        pSgEh7ZN7OKRMVZSK/TIAl0=
X-Google-Smtp-Source: ABdhPJyuiC/ZiJzSNHwSDn+hEB57puvljAaaTmv1MAtpy6yj++3QS5R43EMrz+UAKfcSv1LB8Evz2Q==
X-Received: by 2002:a17:902:6b4a:b029:d8:d13d:14f with SMTP id g10-20020a1709026b4ab02900d8d13d014fmr5728222plt.24.1605735912524;
        Wed, 18 Nov 2020 13:45:12 -0800 (PST)
Received: from [10.67.48.230] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id k26sm26665874pfg.8.2020.11.18.13.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 13:45:11 -0800 (PST)
Subject: Re: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMB binding
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201118132440.15862-1-zajec5@gmail.com>
 <20201118132440.15862-2-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <d09b2767-66df-fee6-cfc8-3eba116e10af@gmail.com>
Date:   Wed, 18 Nov 2020 13:45:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201118132440.15862-2-zajec5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/18/20 5:24 AM, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's PMB is reset controller used for disabling and enabling SoC
> devices.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/reset/brcm,pmb.yaml   | 51 +++++++++++++++++++
>  include/dt-bindings/reset/brcm,pmb.h          |  9 ++++
>  2 files changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.yaml
>  create mode 100644 include/dt-bindings/reset/brcm,pmb.h
> 
> diff --git a/Documentation/devicetree/bindings/reset/brcm,pmb.yaml b/Documentation/devicetree/bindings/reset/brcm,pmb.yaml
> new file mode 100644
> index 000000000000..ea78ab629c45
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/brcm,pmb.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/brcm,pmb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom PMB Master reset controller
> +
> +description: This document describes Broadcom's PMB controller. It supports
> +  resetting various types of connected devices (e.g. PCIe, USB, SATA). It
> +  requires specifying device address.
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,bcm4908-pmb # PMB on BCM4908 and compatible SoCs
> +
> +  reg:
> +    maxItems: 1
> +
> +  big-endian:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Flag to use for block working in big endian mode.
> +
> +  "#reset-cells":
> +    const: 2

I believe we would need a description of the #reset-cells property that
indicates what they do.

Other than that and the build failure below:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/reset/brcm,pmb.h>
> +
> +    pmb: reset-controller@802800e0 {
> +        compatible = "brcm,bcm4908-pmb";
> +        reg = <0x802800e0 0x20>;
> +        #reset-cells = <2>;
> +    };
> +
> +    foo {
> +        resets = <&pmb BRCM_PMB_USB 17>;
> +    }

You are missing a ';' here which is why the binding example did not build.

> diff --git a/include/dt-bindings/reset/brcm,pmb.h b/include/dt-bindings/reset/brcm,pmb.h
> new file mode 100644
> index 000000000000..1b724e451de1
> --- /dev/null
> +++ b/include/dt-bindings/reset/brcm,pmb.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later OR MIT */
> +
> +#ifndef _DT_BINDINGS_RESET_BRCM_PMB
> +#define _DT_BINDINGS_RESET_BRCM_PMB
> +
> +#define BRCM_PMB_USB		0x01
> +#define BRCM_PMB_PCIE		0x02
> +
> +#endif
> 


-- 
Florian
