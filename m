Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8657148D802
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 13:33:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbiAMMdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 07:33:25 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:53772
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233430AbiAMMdZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jan 2022 07:33:25 -0500
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 061A63F1EC
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 12:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642077204;
        bh=nozrRCJhGpJqmbYvCljGg8HZE9Dh507qEQxDTQiFa2Q=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=bvyACTi3VRML/vNzNujIiRL/UNvvEId7jXblbignsf0Gy+mzIYbt1XIaO4cgqL0UA
         Iu53zNhWnGiF84o7iPCunSalA6u3phH24dhOl+3MbS37Uql2Fg4F7NZJ3Ax2bVEi0C
         Uj6lNbaWOsAXeM+UAEBadOr3opTZ5GGTHaSULmT+1fUcsleO6av2VtJ45xusKf0/up
         8N03sLZNfNZSstEWItKtRyujzp3hEvGtd/SljxKp0r0JBojC3tejgoK6pZOCa9+36r
         RH4A74dhojD7bW3HEt0rkwm81jP367bpgz2T1zWK0e0ZQHCoKdE7vWi/vha166SSPz
         Wo2WiK2MBcupQ==
Received: by mail-wm1-f69.google.com with SMTP id s190-20020a1ca9c7000000b00347c6c39d9aso3531539wme.5
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 04:33:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nozrRCJhGpJqmbYvCljGg8HZE9Dh507qEQxDTQiFa2Q=;
        b=dqPM3xQ4KoFkVChyingpTF616KZZAsEdgowJlSxNpj+uvLIf+REoKgp50NV19mBAwG
         ijqTMW5CppEvTxMcxZ72OvtRteH9BoceCXz1ycDBhmvglKG+iDYb5RWnwFY3d8iqK15z
         twZ6/+T2MJgbbCYNWATBsz26G6oAYtXmHd8kW3E9MuJt0JKexL6LlnLr/0xdPYDY4dYy
         AfacdtD4Drc9QXt5XKB26OFE6f7PKflcVBkruGAVH1xj6LzyW7ty0xtPFppe4lXauHEr
         npyMPilL5yFoy+V5xFyDcBDZo7imv4VPBkyl1IlpnqgiAXC6xI0wOuEGJlEW9hecIXoo
         Sjhw==
X-Gm-Message-State: AOAM531pi7vu9xNg/mKMx8aqa+oLE+1wBDQm0ulHHAQ6IL81k2ukTPYx
        21DLc1/ue0wqT2mbOmU3SQhLJpbDPBsSqkv8o1ZomgHnWDTkD5nIEgyOCcLb+APr08vX3tL2mTT
        vOOg9Ewfjkdc05N8Y2hq1bjD2pPucDDwiZI4slDM=
X-Received: by 2002:a1c:9acb:: with SMTP id c194mr8382282wme.89.1642077203733;
        Thu, 13 Jan 2022 04:33:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzeidcGH6+/SbUKslGVBMnrfh5gtJs/MXVIuoTJHveED+blfQR9Xg8ks+7ZxN0rNokZjqLksw==
X-Received: by 2002:a1c:9acb:: with SMTP id c194mr8382259wme.89.1642077203579;
        Thu, 13 Jan 2022 04:33:23 -0800 (PST)
Received: from [192.168.0.29] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id r205sm1395682wma.26.2022.01.13.04.33.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 04:33:23 -0800 (PST)
Message-ID: <53c17ddc-a049-72ed-7237-de23db7889da@canonical.com>
Date:   Thu, 13 Jan 2022 13:33:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 13/23] dt-bindings: arm: add Tesla FSD ARM SoC
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com
References: <20220113121143.22280-1-alim.akhtar@samsung.com>
 <CGME20220113122408epcas5p45053d1bf0acf2d8233a98b6c1abab6eb@epcas5p4.samsung.com>
 <20220113121143.22280-14-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220113121143.22280-14-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2022 13:11, Alim Akhtar wrote:
> Add device tree bindings for the Tesla FSD ARM SoC.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../devicetree/bindings/arm/tesla.yaml        | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/tesla.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/tesla.yaml b/Documentation/devicetree/bindings/arm/tesla.yaml
> new file mode 100644
> index 000000000000..9f89cde76c85
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/tesla.yaml
> @@ -0,0 +1,25 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/tesla.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Tesla Full Self Driving(FSD) platforms device tree bindings
> +
> +maintainers:
> +  - Alim Akhtar <alim.akhtar@samsung.com>
> +  - linux-fsd@tesla.com
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +
> +      - description: FSD SoC board
> +        items:
> +          - const: tesla,fsd

Either this is a SoC or a board compatible... Cannot be both.

> +
> +additionalProperties: true
> +
> +...
> 


Best regards,
Krzysztof
