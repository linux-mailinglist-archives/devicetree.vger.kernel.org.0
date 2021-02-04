Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 371DC3100F9
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 00:46:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231131AbhBDXqx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 18:46:53 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:43762 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231147AbhBDXqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 18:46:44 -0500
Received: by mail-oi1-f169.google.com with SMTP id d20so5604731oiw.10
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 15:46:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=g7jFG92ASthp+evhIahL/xKZsqMPsPWAyoVCv0dj7og=;
        b=tWKalQoNzJOsxPFCBJh6+KjR8jxE0iCjwQGSfWlCGebnnDWxpwwAso9R75BvNEZI5b
         4cqk3CSI7+Sz2oZNQDBXUbge8GUN5i0UgFkeOTErspPmD6Sxj6JEA35wZeKo0scTbV0N
         oWYQpoA7Tv0IoJ3LEnL8EyGO99i/pv7y47U5BjcwGBZiC83vQ5iuqdaQJAP/zqsso3bD
         2lBNzUOLy7Ng4aHrhFiSq9Wv65fuCNbzGIdsv4wXQ8cRlxkevgZXk2zem+FYjWmeM8TF
         q58XfgAp0a6u8cu8ev5antw2YBmaExTnVNuYmgG9LDb7VWnrAFX0OYADWi+us/NRdtfT
         TCgQ==
X-Gm-Message-State: AOAM531Zmpj24t1ciPjkbCziKXrBVmVwPCmH6kiC9LEDxWS0rZWLw9Yh
        TY80iRiLICfvXZQZkKyiEA==
X-Google-Smtp-Source: ABdhPJwhEt9yOyZ3hMkN+ACMqSZTNrLPw7G//0mtXqokJ5WcDyPQmisi3rnvnthBty/J3sk8NAXGrg==
X-Received: by 2002:aca:3746:: with SMTP id e67mr1281028oia.81.1612482363134;
        Thu, 04 Feb 2021 15:46:03 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w7sm1439057oor.27.2021.02.04.15.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 15:46:02 -0800 (PST)
Received: (nullmailer pid 1347243 invoked by uid 1000);
        Thu, 04 Feb 2021 23:46:01 -0000
Date:   Thu, 4 Feb 2021 17:46:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v15 02/16] dt-bindings: add Canaan boards compatible
 strings
Message-ID: <20210204234601.GA1340444@robh.at.kernel.org>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
 <20210203125913.390949-3-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210203125913.390949-3-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 03, 2021 at 09:58:59PM +0900, Damien Le Moal wrote:
> Introduce the file riscv/canaan.yaml to document compatible strings
> related to the Canaan Kendryte K210 SoC. The compatible string
> "canaan,kendryte-k210" used to indicate the use of this SoC to the
> early SoC init code is added. This new file also defines the compatible
> strings of all supported boards based on this SoC.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  .../devicetree/bindings/riscv/canaan.yaml     | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/canaan.yaml
> 
> diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
> new file mode 100644
> index 000000000000..f8f3f286bd55
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/canaan.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Canaan SoC-based boards
> +
> +maintainers:
> +  - Damien Le Moal <damien.lemoal@wdc.com>
> +
> +description:
> +  Canaan Kendryte K210 SoC-based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: sipeed,maix-bit
> +          - const: sipeed,maix-bitm
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: sipeed,maix-go
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: sipeed,maix-dock-m1
> +          - const: sipeed,maix-dock-m1w
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: sipeed,maixduino
> +          - const: canaan,kendryte-k210
> +
> +      - items:
> +          - const: canaan,kendryte-kd233
> +          - const: canaan,kendryte-k210

You could combine all the 2 entry cases. Some boards do this form though 
to add a description on each one. Either way,

Reviewed-by: Rob Herring <robh@kernel.org>

> +
> +      - items:
> +          - const: canaan,kendryte-k210
> +
> +additionalProperties: true
> +
> +...
> -- 
> 2.29.2
> 
