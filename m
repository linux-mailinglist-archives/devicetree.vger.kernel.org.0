Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D893B403131
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 00:52:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347157AbhIGWxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 18:53:31 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:36853 "EHLO
        mail-oi1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344396AbhIGWxb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 18:53:31 -0400
Received: by mail-oi1-f172.google.com with SMTP id s20so547417oiw.3
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 15:52:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nI0CSeMUiUA5n/kuVfkp86LIEs3/EPR6sbFoOwit9lQ=;
        b=Wo2277fxU9QfGYzeAF/OUmVOHW+eE2jBpZV/4S0Pv0N5RmrpZ0CB1rGkonWDleYhSf
         ek4wHgbnzw4gzT7UH3s9D5U8PZYCTtRLkfPCPU4Xx4yvNMU4rpujK5b3sFdjsrblh4Hh
         39lXQHsfwA2TKJbc/uoKLnTsIRky0/AHxj3/rZADoPu47OpKLY0cft3eRmquOiLafHkN
         gaAdjTYGciqFvPK+QhU57h5DJXWeLsitdrWz4WxfMcGZQMevID6qQo7AuutqbX7L6diR
         r57wC3goTbl9+/dYIcABhcnxEqgZH1TDJkD2/7FqqFSHw7b0tYvuD3PR1qGjAGfTBfLF
         BD6w==
X-Gm-Message-State: AOAM530Az7nmhpT97875Y+KwMKB63jGEjal135+Ifs5V/gwV/mtUPvHy
        PxNVw4+E584dVe+B7U54N7oAlwU6BA==
X-Google-Smtp-Source: ABdhPJzYkbPCHmbSsjQnFKoGRlu3i4g9k50l2JVUfXgsMkO5Qcv8ng+UDJz++RL6ITiJAO8jUQAaxA==
X-Received: by 2002:aca:3954:: with SMTP id g81mr355983oia.101.1631055143882;
        Tue, 07 Sep 2021 15:52:23 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id f17sm72654otl.24.2021.09.07.15.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 15:52:23 -0700 (PDT)
Received: (nullmailer pid 509130 invoked by uid 1000);
        Tue, 07 Sep 2021 22:52:22 -0000
Date:   Tue, 7 Sep 2021 17:52:22 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, broonie@kernel.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v5 04/21] soc: dt-bindings: qcom: add gpr bindings
Message-ID: <YTftJjzmdicnTBmI@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-5-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-5-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 03, 2021 at 12:20:15PM +0100, Srinivas Kandagatla wrote:
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
>  .../bindings/soc/qcom/qcom,apr.yaml           | 41 +++++++++++++++----
>  include/dt-bindings/soc/qcom,gpr.h            | 18 ++++++++
>  2 files changed, 52 insertions(+), 7 deletions(-)
>  create mode 100644 include/dt-bindings/soc/qcom,gpr.h
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> index 922c8567c134..14d75f6a556e 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> @@ -4,20 +4,21 @@
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
>    compatible:
>      enum:
>        - qcom,apr-v2
> +      - qcom,gpr
>  
>    qcom,apr-domain:
>      $ref: /schemas/types.yaml#/definitions/uint32
> @@ -45,6 +46,10 @@ properties:
>          5 = Application processor Domain
>          6 = Modem2 Domain
>          7 = Application Processor2 Domain
> +      Selects the processor domain for gpr
> +        1 = Modem Domain
> +        2 = Audio DSP Domain
> +        3 = Application Processor Domain
>  
>    '#address-cells':
>      const: 1
> @@ -52,12 +57,12 @@ properties:
>    '#size-cells':
>      const: 0
>  
> -#APR Services
> +#APR/GPR Services
>  patternProperties:
> -  "^service@[3-9a-d]$":
> +  "^service@[1-9a-d]$":
>      type: object
>      description:
> -      APR node's client devices use subnodes for desired static port services.
> +      APR/GPR node's client devices use subnodes for desired static port services.
>  
>      properties:
>        compatible:
> @@ -66,9 +71,11 @@ patternProperties:
>            - qcom,q6asm
>            - qcom,q6afe
>            - qcom,q6adm
> +          - qcom,q6apm
> +          - qcom,q6prm
>  
>        reg:
> -        enum: [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
> +        enum: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

Might as well switch to minimum/maximum.

>          description:
>            APR Service ID
>              3 = DSP Core Service
> @@ -82,6 +89,11 @@ patternProperties:
>              11 = Core voice processor.
>              12 = Ultrasound stream manager.
>              13 = Listen stream manager.
> +          GPR Service ID
> +            1 = Audio Process Manager Service
> +            2 = Proxy Resource Manager Service.
> +            3 = AMDB Service.
> +            4 = Voice processing manager.
>  
>        qcom,protection-domain:
>          $ref: /schemas/types.yaml#/definitions/string-array
> @@ -140,3 +152,18 @@ examples:
>            qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>          };
>      };
> +
> +  - |
> +    #include <dt-bindings/soc/qcom,gpr.h>
> +    gpr {
> +        compatible = "qcom,gpr";
> +        qcom,domain = <GPR_DOMAIN_ID_ADSP>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        service@1 {
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

Dual license.

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
