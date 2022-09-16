Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 518A15BB2D9
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 21:34:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbiIPTeu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 15:34:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229492AbiIPTet (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 15:34:49 -0400
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E56427169
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 12:34:49 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id j188so4993742oih.0
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 12:34:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=aicP2K83VM92jTlqsgEQywQTfMOm3eA1TKiIG1BN/gQ=;
        b=3cGij0EqeL57CWhvfvEsvAlB4ioXrttaGL4yRDUhP93UqrytBrg7Wr5dHa57+ARVzs
         fnUgwnOJtFhL+frLpUPpJXbXqQuCFiZkVvZ4ZlT+SpEEczq8yikrNJHhsBakY2v8fGou
         J2UpajqAwziKabz/PmigcozlkCtjRV9+afMEFsaU3s6krN/Jyyzl15+NvtZ6KBOSBQks
         BcxJxpW5nlEG5Q2kA3+iJMnHmgApPTgboEgEpfrlmzL3mtLydkVCEzNNpSubDpTi9IXo
         F+JAPXE0raVm6p+qojyeX701jdw2EUp1lSoXcgb1Wy3clT7IiL8vFCao/AiYWQBd01wh
         c4JQ==
X-Gm-Message-State: ACgBeo2FQAWhGywEkU/AUC4pvwbk1Y0Ksb/ceLCBdNPFWgqHuJcGdQPg
        87c1O4in1/Q3G4klzeEuUA==
X-Google-Smtp-Source: AA6agR4J7zvdwv/V4oQGPr98WBG9bFOkurxyeyJYrG6ryhwaYjdBsKelsE9z1sQlQ3F2oKN7a/aw/A==
X-Received: by 2002:aca:b802:0:b0:350:3d:3300 with SMTP id i2-20020acab802000000b00350003d3300mr7109294oif.56.1663356888185;
        Fri, 16 Sep 2022 12:34:48 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z26-20020a9d7a5a000000b006370abdc976sm10353895otm.58.2022.09.16.12.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 12:34:47 -0700 (PDT)
Received: (nullmailer pid 1139065 invoked by uid 1000);
        Fri, 16 Sep 2022 19:34:47 -0000
Date:   Fri, 16 Sep 2022 14:34:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
        krzk+dt@kernel.org, arinc.unal@arinc9.com
Subject: Re: [PATCH] dt-bindings: mips: add CPU bindings for MIPS architecture
Message-ID: <20220916193447.GA1134515-robh@kernel.org>
References: <20220915055514.463241-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220915055514.463241-1-sergio.paracuellos@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 15, 2022 at 07:55:14AM +0200, Sergio Paracuellos wrote:
> Add the yaml binding for available CPUs in MIPS architecture.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../devicetree/bindings/mips/cpus.yaml        | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mips/cpus.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mips/cpus.yaml b/Documentation/devicetree/bindings/mips/cpus.yaml
> new file mode 100644
> index 000000000000..4277adc65ed6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mips/cpus.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mips/cpus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPS CPUs bindings
> +
> +maintainers:
> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> +
> +description: |+
> +  The device tree allows to describe the layout of CPUs in a system through
> +  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
> +  defining properties for every cpu.
> +
> +properties:
> +  reg:
> +    maxItems: 1
> +
> +  compatible:
> +    enum:
> +      - brcm,bmips3300
> +      - brcm,bmips4350
> +      - brcm,bmips4380
> +      - brcm,bmips5000
> +      - brcm,bmips5200

You need to remove bindings/mips/brcm/brcm,bmips.txt. But it also 
defines a property which needs to be added.

I didn't check the rest for existing documentation...

> +      - ingenic,xburst-mxu1.0
> +      - ingenic,xburst-fpu1.0-mxu1.1
> +      - ingenic,xburst-fpu2.0-mxu2.0
> +      - loongson,gs264
> +      - mips,mips1004Kc
> +      - mips,m14Kc
> +      - mips,mips24KEc
> +      - mips,mips4KEc
> +      - mips,mips74Kc
> +      - mips,mips24Kc
> +      - mti,mips24KEc
> +      - mti,mips14KEc
> +      - mti,mips14Kc
> +      - mti,interaptiv
> +
> +required:
> +  - compatible
> +
> +additionalProperties: true
> +
> +examples:
> +  - |
> +    cpus {
> +      #size-cells = <0>;
> +      #address-cells = <1>;
> +
> +      cpu@0 {
> +        device_type = "cpu";
> +        compatible = "mips,mips1004Kc";
> +        reg = <0>;
> +      };
> +
> +      cpu@1 {
> +        device_type = "cpu";
> +        compatible = "mips,mips1004Kc";
> +        reg = <1>;
> +      };
> +    };
> +
> -- 
> 2.25.1
> 
> 
