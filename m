Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19FC86DF8DC
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 16:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231630AbjDLOnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 10:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231724AbjDLOnF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 10:43:05 -0400
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F59A729D
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 07:43:02 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id w15-20020a056830410f00b006a386a0568dso12927828ott.4
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 07:43:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681310581; x=1683902581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+FI6J1Aq3xprTpYhYsMGs52RQmrOIvrXof6A+8YxDL0=;
        b=ZqP6dYizq2rd5d20SC3IzuVizSPLJ4IsuEcENq7ORZ06jk89v7T27LNC0lyjCFomsA
         YqhHBvHwlD/6WDMRohZVr82JZCcbPfDxv7Mxq1t/P3Cu31FbSbS815eweqRC1hwoQTDw
         tlaat8nBHdKq2HLXRetiOpl94FjD2fcl0S0Sb7Cy3YIsD3pQccFOuOK+r8mfK8aG0Mom
         pnNY4fLBkkRgox2U7qgEe94We/ASNWPTb5gzO9c8oo3clgyhQYBtathPQQ/e6Y6H5+tW
         fUdszEZLhyg269uSM3D3g8xgUp3K0IRW6KulAUPpEVde8vzDeNADGGJwh+ubPYLRTE8a
         t7CQ==
X-Gm-Message-State: AAQBX9dnl/yzJ+PqzmxxTnPp/SKYfEVuR97uANLUSSo9cEVnVVUxz+fC
        bUrzwl6LFn6v2bD2DoWKTZFn0IfU3w==
X-Google-Smtp-Source: AKy350Yp6Elm43BeF/wg/B27ZoM+VDpsZRo7DkdSXDConjZkBM+2hM68wlR0kA18HoviM6WOWgKmtA==
X-Received: by 2002:a9d:4d81:0:b0:69f:97e1:3bbb with SMTP id u1-20020a9d4d81000000b0069f97e13bbbmr1186557otk.17.1681310581606;
        Wed, 12 Apr 2023 07:43:01 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k22-20020a056830151600b0068bd922a244sm6574055otp.20.2023.04.12.07.43.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Apr 2023 07:43:01 -0700 (PDT)
Received: (nullmailer pid 2336874 invoked by uid 1000);
        Wed, 12 Apr 2023 14:43:00 -0000
Date:   Wed, 12 Apr 2023 09:43:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     neil.armstrong@linaro.org, marex@denx.de,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, jagan@amarulasolutions.com,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: samsung,mipi-dsim: Add
 'lane-polarities'
Message-ID: <20230412144300.GA2328336-robh@kernel.org>
References: <20230406190354.1641352-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230406190354.1641352-1-festevam@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 06, 2023 at 04:03:53PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The Samsung DSIM IP block allows the inversion of the clock and
> data lanes.
> 
> Add an optional property called 'lane-polarities' that describes the
> polarities of the MIPI DSI clock and data lanes.
> 
> This property is useful for properly describing the hardware when the
> board designer decided to switch the polarities of the MIPI DSI
> clock and/or data lanes.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Rebased against drm-misc-next that has samsung,mipi-dsim.yaml.
> 
>  .../display/bridge/samsung,mipi-dsim.yaml     | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> index e841659e20cd..04eb440ade72 100644
> --- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> @@ -105,6 +105,35 @@ properties:
>            DSI output port node to the panel or the next bridge
>            in the chain.
>  
> +        properties:
> +          endpoint:
> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base

No, this should be video-interfaces.yaml since you use properties from 
it.

> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-lanes:
> +                oneOf:
> +                  - minItems: 1
> +                    maxItems: 4
> +                    uniqueItems: true
> +                    items:
> +                      enum: [ 1, 2, 3, 4 ]

The h/w really supports any combination of lanes to be used?

> +                    description:
> +                      See ../../media/video-interfaces.yaml for details.
> +
> +              lane-polarities:
> +                minItems: 1
> +                maxItems: 5
> +                items:
> +                  enum: [ 0, 1 ]
> +                description:
> +                  See ../../media/video-interfaces.yaml for details.
> +                  The Samsung MIPI DSI IP requires that all the data lanes have
> +                  the same polarity.

Sounds like a constraint:

oneOf:
  - items:
      const: 0
  - items:
      const: 1

> +
> +            dependencies:
> +              lane-polarities: [data-lanes]
> +
>  required:
>    - clock-names
>    - clocks
> -- 
> 2.34.1
> 
