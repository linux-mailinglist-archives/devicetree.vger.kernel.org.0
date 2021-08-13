Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 583323EBE4A
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 00:32:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235073AbhHMWcq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 18:32:46 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:38647 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235029AbhHMWcq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 18:32:46 -0400
Received: by mail-oi1-f178.google.com with SMTP id u25so18116141oiv.5
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 15:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aSQ91xVPzAXJR7Ir9zVwBjsmn9exYGic1VvkPyPRbjQ=;
        b=WiwExqbZA7YXHZmg8kPsVncGZvi/sNKX66Lf376PLNqfTnpitlLmKwV9GrphN775LT
         tgW69Qvh3+hBORNO6NAG69Th+ICC8opNvOYB8RbbJ4ThGT+sLgQREoBMzoRqlAyjGBP2
         Az63DtGZ52zzga2Ycj7V9PiUwLDLje4nmNeRP0M88XsZzlcd25CNO30Q64py1Ru/GhdD
         Z0qqEQ+FiOn31BAcnZD/XkVrFp9ZJ+6Kk5LU7XvqQB6vRTvpC139+eY+AXPxjofW7muG
         YkW5nLfYc9EYO/Gw9CH67Hu5HcoiI5YyN9Hyh1hh+TdMEgDh9p7T9mWOIhuDywA27Ngp
         iV7Q==
X-Gm-Message-State: AOAM533H7bxRQzNsNPOVurqSDcbEZEB/6IioOTxKVQ/e6j5DfdKNphQ7
        ahPvCB+G/sEM+QCuF6LGLA==
X-Google-Smtp-Source: ABdhPJw12anws6OaHVH9mfi6kuY5PCH1uTMHo+F+9G+j5EgMJsVmwy/74TeWdi3mFRZZBg5+xcXqQw==
X-Received: by 2002:aca:c642:: with SMTP id w63mr3688027oif.177.1628893938406;
        Fri, 13 Aug 2021 15:32:18 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c11sm522239oot.25.2021.08.13.15.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 15:32:17 -0700 (PDT)
Received: (nullmailer pid 4058431 invoked by uid 1000);
        Fri, 13 Aug 2021 22:32:16 -0000
Date:   Fri, 13 Aug 2021 17:32:16 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, broonie@kernel.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v4 03/20] soc: dt-bindings: qcom: add gpr bindings
Message-ID: <YRby8EtUeXnqEd8m@robh.at.kernel.org>
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
 <20210809112339.8368-4-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809112339.8368-4-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 09, 2021 at 12:23:22PM +0100, Srinivas Kandagatla wrote:
> Qualcomm Generic Packet router aka GPR is the IPC mechanism found
> in AudioReach next generation signal processing framework to perform
> command and response messages between various processors.
> 
> GPR has concepts of static and dynamic port, all static services like
> APM (Audio Processing Manager), PRM (Proxy resource manager) have
> fixed port numbers where as dynamic services like graphs have dynamic
> port numbers which are allocated at runtime. All GPR packet messages
> will have source and destination domain and port along with opcode
> and payload.
> 
> This support is added using existing APR driver to reuse most of
> the code.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../bindings/soc/qcom/qcom,apr.yaml           | 92 ++++++++++++++++++-
>  include/dt-bindings/soc/qcom,gpr.h            | 18 ++++
>  2 files changed, 105 insertions(+), 5 deletions(-)
>  create mode 100644 include/dt-bindings/soc/qcom,gpr.h
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> index 12650f7084f4..59d8b4dce8b5 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> @@ -4,14 +4,14 @@
>  $id: "http://devicetree.org/schemas/soc/qcom/qcom,apr.yaml#"
>  $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>  
> -title: Qualcomm APR (Asynchronous Packet Router) binding
> +title: Qualcomm APR/GPR (Asynchronous/Generic Packet Router) binding
>  
>  maintainers:
>    - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>  
>  description: |
> -  This binding describes the Qualcomm APR, APR is a IPC protocol for
> -  communication between Application processor and QDSP. APR is mainly
> +  This binding describes the Qualcomm APR/GPR, APR/GPR is a IPC protocol for
> +  communication between Application processor and QDSP. APR/GPR is mainly
>    used for audio/voice services on the QDSP.
>  
>  properties:
> @@ -19,6 +19,7 @@ properties:
>      enum:
>        - qcom,apr
>        - qcom,apr-v2
> +      - qcom,gpr
>  
>    qcom,apr-domain:
>      $ref: /schemas/types.yaml#/definitions/uint32
> @@ -33,13 +34,22 @@ properties:
>          6 = Modem2 Domain
>          7 = Application Processor2 Domain
>  
> +  qcom,gpr-domain:

When the next flavor comes out, we'll have qcom,foo-domain?

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3]
> +    description:
> +      Selects the processor domain for gpr
> +        1 = Modem Domain
> +        2 = Audio DSP Domain
> +        3 = Application Processor Domain
> +
>    '#address-cells':
>      const: 1
>  
>    '#size-cells':
>      const: 0
>  
> -#APR Services
> +#APR/GPR Services
>  patternProperties:
>    "^apr-service@[0-9a-e]$":
>      type: object
> @@ -86,9 +96,66 @@ patternProperties:
>  
>      additionalProperties: false
>  
> +  "^gpr-service@[0-9a-e]$":

And foo-service@...

Do you (the driver) care what the node name is?

> +    type: object
> +    description:
> +      GPR node's client devices use subnodes for desired static port services.
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - qcom,q6apm
> +          - qcom,q6prm
> +
> +      reg:
> +        enum: [1, 2, 3, 4]
> +        description:
> +          GPR Service ID
> +            1 = Audio Process Manager Service
> +            2 = Proxy Resource Manager Service.

Looks like both reg and compatible encode what the service is.

> +            3 = AMDB Service.
> +            4 = Voice processing manager.
> +
> +      qcom,protection-domain:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description: protection domain service name and path for apr service
> +          has dependency on.
> +        items:
> +          - const: avs/audio
> +          - const: msm/adsp/audio_pd

Why are we redefining the same property? You've combined the binding but 
are still sharing almost nothing...

> +
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +    additionalProperties: false
> +
>  required:
>    - compatible
> -  - qcom,apr-domain
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,apr-v2
> +              - qcom,apr
> +    then:
> +      required:
> +        - qcom,apr-domain
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,gpr
> +    then:
> +      required:
> +        - qcom,gpr-domain
>  
>  additionalProperties: false
>  
> @@ -125,3 +192,18 @@ examples:
>            qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>          };
>      };
> +
> +  - |
> +    #include <dt-bindings/soc/qcom,gpr.h>
> +    gpr {
> +        compatible = "qcom,gpr";
> +        qcom,gpr-domain = <GPR_DOMAIN_ID_ADSP>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        gpr-service@1 {
> +          compatible = "qcom,q6apm";
> +          reg = <GPR_APM_MODULE_IID>;
> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> +        };
> +    };
> diff --git a/include/dt-bindings/soc/qcom,gpr.h b/include/dt-bindings/soc/qcom,gpr.h
> new file mode 100644
> index 000000000000..1c68906e079c
> --- /dev/null
> +++ b/include/dt-bindings/soc/qcom,gpr.h
> @@ -0,0 +1,18 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __DT_BINDINGS_QCOM_GPR_H
> +#define __DT_BINDINGS_QCOM_GPR_H
> +
> +/* DOMAINS */
> +
> +#define GPR_DOMAIN_ID_MODEM	1
> +#define GPR_DOMAIN_ID_ADSP	2
> +#define GPR_DOMAIN_ID_APPS	3
> +
> +/* Static Services */
> +
> +#define GPR_APM_MODULE_IID		1
> +#define GPR_PRM_MODULE_IID		2
> +#define GPR_AMDB_MODULE_IID		3
> +#define GPR_VCPM_MODULE_IID		4
> +
> +#endif /* __DT_BINDINGS_QCOM_GPR_H */
> -- 
> 2.21.0
> 
> 
