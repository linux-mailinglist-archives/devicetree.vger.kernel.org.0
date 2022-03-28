Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC554E9C1C
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 18:20:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240751AbiC1QVG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 12:21:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238330AbiC1QVE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 12:21:04 -0400
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB666286CA
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 09:19:21 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id w127so16096260oig.10
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 09:19:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=vW4v9OBWVf9F8JZF4dpJV9gM99E7La/GPmHi75psITE=;
        b=Z1nmxWWl7J31o9S4vHZnVJPX4yfNI6cNffY0J8nVLnC1uPK6aBwTaZVuAk+C3j8aju
         h/lksM4PYFJyGskrGdyyh43Y/sVCrnC6EE+C19XmnHhd7uj1Z43QFP+wfQNVMXin46DP
         RXuf7pTKWgcEbJjv+tKFd/cwznRj91w94nVcSkx01HVlYiE124z8mmnjxs/kApVLiGaj
         FQc/j5F6679AwrDmQjbU/rqrmbFHj7Kgb9/q4mPX+aoH1/1oCOS/dwzVoxEMUFaTCFhd
         kTiS4egcfnfXealjx9nbVNqeNKGR3ttxJjIWq2BjBCHFv6TNotyt1QSt8n5TcEMBTPcW
         RMaA==
X-Gm-Message-State: AOAM5302XwajclI0UX7gcbpzet4zLWcq428ngRcHq9O5Mx/T9gyhLSfx
        syIP86jMOlFtvwgA93+iyA==
X-Google-Smtp-Source: ABdhPJyHGyfEdk9HjsAEd48GMX2ItCKLaBiPerKnwYpQTh5Wz9QGheUFg9WsB+Nf55KgXnmD6YlVgg==
X-Received: by 2002:a54:450e:0:b0:2ef:3c3f:f61d with SMTP id l14-20020a54450e000000b002ef3c3ff61dmr12220862oil.99.1648484361154;
        Mon, 28 Mar 2022 09:19:21 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e12-20020a4aa60c000000b00324bb45d7ecsm6653479oom.48.2022.03.28.09.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Mar 2022 09:19:20 -0700 (PDT)
Received: (nullmailer pid 2492249 invoked by uid 1000);
        Mon, 28 Mar 2022 16:19:18 -0000
Date:   Mon, 28 Mar 2022 11:19:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rui Miguel Silva <rui.silva@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: add corstone1000 platform
Message-ID: <YkHgBshQv0w1YS0t@robh.at.kernel.org>
References: <20220325133655.4177977-1-rui.silva@linaro.org>
 <20220325133655.4177977-2-rui.silva@linaro.org>
 <5c00707d-4e15-ef6b-2916-8d5bde5498d8@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5c00707d-4e15-ef6b-2916-8d5bde5498d8@kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 25, 2022 at 06:29:05PM +0100, Krzysztof Kozlowski wrote:
> On 25/03/2022 14:36, Rui Miguel Silva wrote:
> > Add bindings to describe the FPGA in a prototyping board
> > (MPS3) implementation and the Fixed Virtual Platform
> > implementation of the ARM Corstone1000 platform.
> > 
> > Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> > ---
> >  .../bindings/arm/arm,corstone1000.yaml        | 45 +++++++++++++++++++
> >  1 file changed, 45 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
> > new file mode 100644
> > index 000000000000..a77f88223801
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
> > @@ -0,0 +1,45 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/arm,corstone1000.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ARM Corstone1000 Device Tree Bindings
> > +
> > +maintainers:
> > +  - Vishnu Banavath <vishnu.banavath@arm.com>
> > +  - Rui Miguel Silva <rui.silva@linaro.org>
> > +
> > +description: |+
> > +  ARM's Corstone1000 includes pre-verified Corstone SSE-710 subsystem that
> > +  provides a flexible compute architecture that combines Cortex‑A and Cortex‑M
> > +  processors.
> > +
> > +  Support for Cortex‑A32, Cortex‑A35 and Cortex‑A53 processors. Two expansion
> > +  systems for M-Class (or other) processors for adding sensors, connectivity,
> > +  video, audio and machine learning at the edge System and security IPs to build
> > +  a secure SoC for a range of rich IoT applications, for example gateways, smart
> > +  cameras and embedded systems.
> > +
> > +  Integrated Secure Enclave providing hardware Root of Trust and supporting
> > +  seamless integration of the optional CryptoCell™-312 cryptographic
> > +  accelerator.
> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +      - description: Corstone1000 MPS3 it has 1 Cortex-A35 CPU core in a FPGA
> > +          implementation of the Corstone1000 in the MPS3 prototyping board. See
> > +          ARM document DAI0550.
> > +        items:
> > +          - const: arm,corstone1000-mps3
> 
> If I understood correctly your description and DAI0550, the MPS3 board
> is a board with Corstone 100, so you miss here compatible for the chip
> (e.g. arm,corstone1000).
> 
> I guess similar pattern for the FVP, so both should be combined within
> an enum (skipping all this description).

Corstone1000 is a collection of IP that would be the basis for an SoC. 
These 2 are FVP and FPGA implementations of corstone1000 with additional 
IP to make them usable (e.g. USB and ethernet). Each one as a whole is 
a one off AIUI. So I don't think they really fit into our board plus SoC 
compatible patten and are fine as-is.

Rob
