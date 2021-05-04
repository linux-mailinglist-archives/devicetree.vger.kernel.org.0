Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23EB2372B90
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 16:02:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231270AbhEDODj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 10:03:39 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:44898 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231308AbhEDODi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 10:03:38 -0400
Received: from mail-qv1-f69.google.com ([209.85.219.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1ldvdK-0002YB-H0
        for devicetree@vger.kernel.org; Tue, 04 May 2021 14:02:42 +0000
Received: by mail-qv1-f69.google.com with SMTP id a6-20020a0ce3460000b02901c4f39aa36aso7381998qvm.21
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 07:02:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dNDWyjCrI63gNu7CAOFoq1OwHM7ZaGvjz+swFF+XPc0=;
        b=judt4DJT1YmJIwLJ4GX4BsHSK84i0JBHDbIyOctycxjveYNl0lybdCCUIlaZpc4Wgd
         dteMy9mimeFiE4GVUrXFh1yBH8X5cuGLUGWE6EVRupWal9XWTAMtq6DRZJluJ2pmJmVr
         b/k6L+fhH1VHd0G+7kTvxZD1mA8nKygiRTLrqWOUr1z1uieEcViO6cnldh7gtwVfyJqH
         dUSX4233R1Z6sOesxHtbt/rPlLDHS1RhkY0GE7zQewzqr1tLKXD/d+CrrycBW/a5Hli8
         1dje0VgclyeOBpvErZes53AcEpQ5jMj5UCpRj5gk+4pyo2vUNS8V/p3W3GbFsc7Hdfn6
         WDeA==
X-Gm-Message-State: AOAM531vSjxEf/PynWk4pZVhlMhtIKqQWARRcpbAzEH+8QSdgvJ+HQWE
        kHmA4e8nMmiZ4jROBW4BF+LTnh+pgUeeP8oscUnKRd1i/HPzN8LvE6pZNnKGiMk/jT7oDzhYYtq
        3XAb5pxB9n5KYIb78VGFNGhTD7RyjrOX4myyNyhw=
X-Received: by 2002:a37:71c3:: with SMTP id m186mr24351388qkc.453.1620136961665;
        Tue, 04 May 2021 07:02:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy9BzIFfPiOwW7tb/ixZQudtejnztxJhuZARX74hAwV9Soc7Zdnc/GftsPh97w+WCF20UWFSw==
X-Received: by 2002:a37:71c3:: with SMTP id m186mr24351373qkc.453.1620136961454;
        Tue, 04 May 2021 07:02:41 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.49.3])
        by smtp.gmail.com with ESMTPSA id n16sm2471133qtl.48.2021.05.04.07.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 07:02:40 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] dt-bindings: memory: Add binding for MediaTek DRAM
 Controller
To:     Po-Kai Chi <pk.chi@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
        CC Hwang <cc.hwang@mediatek.com>
References: <1618565538-6972-1-git-send-email-pk.chi@mediatek.com>
 <1618565538-6972-2-git-send-email-pk.chi@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <8a4c97e4-0281-9aca-76e0-522c72cae7a4@canonical.com>
Date:   Tue, 4 May 2021 10:00:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1618565538-6972-2-git-send-email-pk.chi@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/04/2021 05:32, Po-Kai Chi wrote:
> This patch adds the documentation of the device-tree binding for
> MediaTek DRAM Controller.
> 
> Signed-off-by: Po-Kai Chi <pk.chi@mediatek.com>
> ---
>  .../memory-controllers/mediatek,dramc.yaml         |  162 ++++++++++++++++++++
>  1 file changed, 162 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,dramc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,dramc.yaml b/Documentation/devicetree/bindings/memory-controllers/mediatek,dramc.yaml
> new file mode 100644
> index 0000000..18f77c2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,dramc.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2021 MediaTek Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/mediatek,dramc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek DRAM Controller
> +
> +maintainers:
> +  - Po-Kai Chi <pk.chi@mediatek.com>
> +
> +description: |
> +  MediaTek DRAM controller (DRAMC) provides an interface to query information
> +  about DRAM which collected from bootloader and device tree.
> +  This is mainly used by MediaTek Extended Memory Interface (EMI) and DVFS Resource
> +  Control (DVFSRC).
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:

Not an enum.

> +          - mediatek,mt6779-dramc

NAK.

You missed to Cc people who should review this (e.g. Rob). Please start
using get_maintainers script.


Best regards,
Krzysztof
