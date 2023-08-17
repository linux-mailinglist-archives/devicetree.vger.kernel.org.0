Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CFD177FC2F
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 18:35:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348766AbjHQQfT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 12:35:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353084AbjHQQev (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 12:34:51 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B385AE2
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 09:34:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 495FC6417D
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 16:34:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22D1EC433C7;
        Thu, 17 Aug 2023 16:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692290089;
        bh=4G7bqY95FSSBkFnhpbCePZrOFV169SKiMTHQJcOmWac=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SWnLLRtPj7njK53JRw17uyGL3sWBlQIfdFem+2REe6QeyDAWkjqQPH18IeFnHIrNQ
         Z7tTnyfzxSgOWGwja4iOYBqkYdhdR4T8YeHbI98/CuQ2Oy/KndHP6Atenz21fYduXa
         MsbUpfjgGn7a8ctad33xYf5mAI7nXMwmbUL4ORtBaUCIQskbNPnJEV09MgsPEnrRCf
         hCqyRoraEAwMyW3PRInA5s6jPYTOOi/lDepyAw8sIQTWuenH+GPVo7THJspzd3TQYR
         NpxRIataHFzRXjC3YQ6+1prPvumuOnz1cb68Bw08TDMeoApKJ+zioy7zPsHUygs/AC
         9NkXsFhgYnlfA==
Received: (nullmailer pid 1458902 invoked by uid 1000);
        Thu, 17 Aug 2023 16:34:47 -0000
Date:   Thu, 17 Aug 2023 11:34:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sarah Walker <sarah.walker@imgtec.com>
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, Frank Binns <frank.binns@imgtec.com>
Subject: Re: [PATCH v5 02/17] dt-bindings: gpu: Add Imagination Technologies
 PowerVR GPU
Message-ID: <20230817163447.GA1452321-robh@kernel.org>
References: <20230816082725.164880-1-sarah.walker@imgtec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230816082725.164880-1-sarah.walker@imgtec.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 16, 2023 at 09:27:25AM +0100, Sarah Walker wrote:
> Add the device tree binding documentation for the Series AXE GPU used in
> TI AM62 SoCs.
> 
> Co-developed-by: Frank Binns <frank.binns@imgtec.com>
> Signed-off-by: Frank Binns <frank.binns@imgtec.com>
> Signed-off-by: Sarah Walker <sarah.walker@imgtec.com>
> ---
> Changes since v4:
> - Add clocks constraint for ti,am62-gpu
> - Remove excess address and size cells in example
> - Remove interrupt name and add maxItems
> - Make property order consistent between dts and bindings doc
> - Update example to match dts
> 
> Changes since v3:
> - Remove oneOf in compatible property
> - Remove power-supply (not used on AM62)
> 
> Changes since v2:
> - Add commit message description
> - Remove mt8173-gpu support (not currently supported)
> - Drop quotes from $id and $schema
> - Remove reg: minItems
> - Drop _clk suffixes from clock-names
> - Remove operating-points-v2 property and cooling-cells (not currently
>   used)
> - Add additionalProperties: false
> - Remove stray blank line at the end of file
> 
>  .../devicetree/bindings/gpu/img,powervr.yaml  | 75 +++++++++++++++++++
>  MAINTAINERS                                   |  7 ++
>  2 files changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpu/img,powervr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpu/img,powervr.yaml b/Documentation/devicetree/bindings/gpu/img,powervr.yaml
> new file mode 100644
> index 000000000000..40ade5ceef6e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/img,powervr.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2023 Imagination Technologies Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/img,powervr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Imagination Technologies PowerVR GPU
> +
> +maintainers:
> +  - Sarah Walker <sarah.walker@imgtec.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - ti,am62-gpu
> +      - const: img,powervr-seriesaxe
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: mem
> +      - const: sys
> +    minItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,am62-gpu
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +        clock-names:
> +          const: core

The main section already defined the name, so just 'maxItems: 1' here.

With that, 

Reviewed-by: Rob Herring <robh@kernel.org>
