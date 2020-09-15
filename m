Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B4ED269AD1
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 03:03:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726043AbgIOBDB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 21:03:01 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:38058 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725999AbgIOBDB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 21:03:01 -0400
Received: by mail-il1-f196.google.com with SMTP id t18so1426918ilp.5
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 18:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xcbN9iKTXDr7Aos7+pozhifKeLZIE17W1Yh8urQPGxY=;
        b=CyvlrZADC9bC6kxMedJBpUVxk/s7iSai2z9ShTV82z/Me6owo4OLeUsKEiA0zSR3Ai
         vmQLwSjt995SlzpTYbrTrfDoiQXGSNZdoSNsdgXMRHtsXLDw36NXcu2TEerUeHd8F69l
         uPhDcXoyrbuqmyz5DhsMCON8fN3CGnkhNZ9jBybOWLT1C7oYEs8E+hry05G8E5kyI5zf
         txRA543P7buYdgoparLyvBqskHZVvj6FYNvdy4kkfuL7/QQlvZG1DkOyU7T9T470zeJE
         Qxsk7Q7qyF2Qtp8A1I4QnW48koTtm6Gk8m9G6YHL+mSwey+AYPxldQ/yFQBMIh4nB0pJ
         DTbw==
X-Gm-Message-State: AOAM53338+BqwvotBgda4ymsGCT2dqNJrRkiyER7pXbgUPJh0GGB/ArI
        rFP+6RAmwvelmumy2ddRbQ==
X-Google-Smtp-Source: ABdhPJwADcHTTX8ykmWhIg1RbZQXXVUi9q14Cx8OKh2wwKij6EZxvnlf1fyQFPnwV22wrzrdT8Qy9w==
X-Received: by 2002:a05:6e02:f06:: with SMTP id x6mr12734734ilj.222.1600131779984;
        Mon, 14 Sep 2020 18:02:59 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id m7sm8082416ili.26.2020.09.14.18.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 18:02:59 -0700 (PDT)
Received: (nullmailer pid 623833 invoked by uid 1000);
        Tue, 15 Sep 2020 01:02:58 -0000
Date:   Mon, 14 Sep 2020 19:02:58 -0600
From:   Rob Herring <robh@kernel.org>
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH v3 1/5] dt-bindings: powerpc: define apm,apm82181 binding
Message-ID: <20200915010258.GA612463@bogus>
References: <cover.1599343429.git.chunkeey@gmail.com>
 <aa51a2aaffcbf98c90d378f6f6c7b926989b6c27.1599343429.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa51a2aaffcbf98c90d378f6f6c7b926989b6c27.1599343429.git.chunkeey@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 06, 2020 at 12:06:11AM +0200, Christian Lamparter wrote:
> make a binding for the various boards based on the
> AppliedMicro/APM APM82181 SoC.
> 
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
>  .../bindings/powerpc/4xx/apm,apm82181.yaml    | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml
> 
> diff --git a/Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml b/Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml
> new file mode 100644
> index 000000000000..03a3c02fe920
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml
> @@ -0,0 +1,29 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/powerpc/4xx/apm,apm82181.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: APM APM82181 device tree bindings
> +
> +description:
> +  AppliedMicro APM82181 Wi-Fi/network SoCs based
> +  on the PPC464-CPU architecture.
> +
> +maintainers:
> +  - Christian Lamparter <chunkeey@gmail.com>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: APM82181 based boards
> +        items:
> +          - enum:
> +              - apm,bluestone
> +              - meraki,mr24
> +              - wd,mybooklive
> +          - const: amcc,apm82181

This doesn't match neither the existing dts nor your modifications.
