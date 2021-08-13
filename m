Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C21C3EBE3D
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 00:23:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235032AbhHMWXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 18:23:36 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:39875 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234982AbhHMWXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 18:23:34 -0400
Received: by mail-oi1-f176.google.com with SMTP id bj40so18117835oib.6
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 15:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jC2PUYWO6/b2RNk6g7rayeCm9jNbK7Ru4h0UAMkLO4w=;
        b=sduJxEeXptp6q0JzXQI4iGNVMzondUWw5iVvdNbwsU/qSgZA5R5resfXu04yKWykBn
         7SZzG4jVg0mfSvkkm7/FzXSQEQqgaJScASFgELdM5/DApbbO/WKg3M1IBlAiSlBu/G6A
         YKbLTf5rJdKBg/JbcEQebxPysL2hGSd8jPS1ySJHENCA47tHxMhGDYiJ+Xw6MOptWgRP
         0qSZaRUy6uGHtkGcwl9eT2EJD2QvHJj2NfCq9YO2VwrRSLnBeQYCG8jwsIEs3gOnVr05
         CXBVHDn3mfNbZ8aTA6DxO1aYNxJth1cKeAHQ3fqWioLH/yi87dbaMO63D/t6SOXvxKPw
         QLQA==
X-Gm-Message-State: AOAM532Jiojm1VXl58dO2V6FSQS2Qudub7VB5UZ3/ORBmMepj9JJInfv
        To1dDefU6zvj4gj0hM7c8Q==
X-Google-Smtp-Source: ABdhPJyUUN4I1uIXZyw9oxHDZusxdXapylWJtreLq2VsbbxT8qfPv1qHmQvenD+ZV/RnDYQf+EAEkg==
X-Received: by 2002:aca:60d6:: with SMTP id u205mr3773176oib.99.1628893386667;
        Fri, 13 Aug 2021 15:23:06 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d2sm574798otl.32.2021.08.13.15.23.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 15:23:05 -0700 (PDT)
Received: (nullmailer pid 4044137 invoked by uid 1000);
        Fri, 13 Aug 2021 22:23:04 -0000
Date:   Fri, 13 Aug 2021 17:23:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, broonie@kernel.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v4 01/20] soc: dt-bindings: qcom: apr: convert to yaml
Message-ID: <YRbwyIYt4YdzAbqj@robh.at.kernel.org>
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
 <20210809112339.8368-2-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809112339.8368-2-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 09, 2021 at 12:23:20PM +0100, Srinivas Kandagatla wrote:
> Convert APR bindings to yaml format so that we could add new bindings support.
> 
> All the dsp services bindings are now part of apr bindings instead
> of adding them to audio bindings.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../devicetree/bindings/soc/qcom/qcom,apr.txt | 134 ------------------
>  .../bindings/soc/qcom/qcom,apr.yaml           | 127 +++++++++++++++++
>  2 files changed, 127 insertions(+), 134 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
> deleted file mode 100644
> index 2e2f6dc351c0..000000000000
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
> +++ /dev/null
> @@ -1,134 +0,0 @@
> -Qualcomm APR (Asynchronous Packet Router) binding
> -
> -This binding describes the Qualcomm APR. APR is a IPC protocol for
> -communication between Application processor and QDSP. APR is mainly
> -used for audio/voice services on the QDSP.
> -
> -- compatible:
> -	Usage: required
> -	Value type: <stringlist>
> -	Definition: must be "qcom,apr-v<VERSION-NUMBER>", example "qcom,apr-v2"
> -
> -- qcom,apr-domain
> -	Usage: required
> -	Value type: <u32>
> -	Definition: Destination processor ID.
> -	Possible values are :
> -			1 - APR simulator
> -			2 - PC
> -			3 - MODEM
> -			4 - ADSP
> -			5 - APPS
> -			6 - MODEM2
> -			7 - APPS2
> -
> -= APR SERVICES
> -Each subnode of the APR node represents service tied to this apr. The name
> -of the nodes are not important. The properties of these nodes are defined
> -by the individual bindings for the specific service
> -- All APR services MUST contain the following property:
> -
> -- reg
> -	Usage: required
> -	Value type: <u32>
> -	Definition: APR Service ID
> -	Possible values are :
> -			3 - DSP Core Service
> -			4 - Audio Front End Service.
> -			5 - Voice Stream Manager Service.
> -			6 - Voice processing manager.
> -			7 - Audio Stream Manager Service.
> -			8 - Audio Device Manager Service.
> -			9 - Multimode voice manager.
> -			10 - Core voice stream.
> -			11 - Core voice processor.
> -			12 - Ultrasound stream manager.
> -			13 - Listen stream manager.
> -
> -- qcom,protection-domain
> -	Usage: optional
> -	Value type: <stringlist>
> -	Definition: Must list the protection domain service name and path
> -		    that the particular apr service has a dependency on.
> -	Possible values are :
> -			"avs/audio", "msm/adsp/audio_pd".
> -			"kernel/elf_loader", "msm/modem/wlan_pd".
> -			"tms/servreg", "msm/adsp/audio_pd".
> -			"tms/servreg", "msm/modem/wlan_pd".
> -			"tms/servreg", "msm/slpi/sensor_pd".
> -
> -= EXAMPLE
> -The following example represents a QDSP based sound card on a MSM8996 device
> -which uses apr as communication between Apps and QDSP.
> -
> -	apr {
> -		compatible = "qcom,apr-v2";
> -		qcom,apr-domain = <APR_DOMAIN_ADSP>;
> -
> -		apr-service@3 {
> -			compatible = "qcom,q6core";
> -			reg = <APR_SVC_ADSP_CORE>;
> -		};
> -
> -		apr-service@4 {
> -			compatible = "qcom,q6afe";
> -			reg = <APR_SVC_AFE>;
> -
> -			dais {
> -				#sound-dai-cells = <1>;
> -				dai@1 {
> -					reg = <HDMI_RX>;
> -				};
> -			};
> -		};
> -
> -		apr-service@7 {
> -			compatible = "qcom,q6asm";
> -			reg = <APR_SVC_ASM>;
> -			...
> -		};
> -
> -		apr-service@8 {
> -			compatible = "qcom,q6adm";
> -			reg = <APR_SVC_ADM>;
> -			...
> -		};
> -	};
> -
> -= EXAMPLE 2
> -The following example represents a QDSP based sound card with protection domain
> -dependencies specified. Here some of the apr services are dependent on services
> -running on protection domain hosted on ADSP/SLPI remote processors while others
> -have no such dependency.
> -
> -	apr {
> -		compatible = "qcom,apr-v2";
> -		qcom,glink-channels = "apr_audio_svc";
> -		qcom,apr-domain = <APR_DOMAIN_ADSP>;
> -
> -		apr-service@3 {
> -			compatible = "qcom,q6core";
> -			reg = <APR_SVC_ADSP_CORE>;
> -		};
> -
> -		q6afe: apr-service@4 {
> -			compatible = "qcom,q6afe";
> -			reg = <APR_SVC_AFE>;
> -			qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> -			...
> -		};
> -
> -		q6asm: apr-service@7 {
> -			compatible = "qcom,q6asm";
> -			reg = <APR_SVC_ASM>;
> -			qcom,protection-domain = "tms/servreg", "msm/slpi/sensor_pd";
> -			...
> -		};
> -
> -		q6adm: apr-service@8 {
> -			compatible = "qcom,q6adm";
> -			reg = <APR_SVC_ADM>;
> -			qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> -			...
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> new file mode 100644
> index 000000000000..12650f7084f4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/qcom/qcom,apr.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm APR (Asynchronous Packet Router) binding
> +
> +maintainers:
> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> +
> +description: |
> +  This binding describes the Qualcomm APR, APR is a IPC protocol for
> +  communication between Application processor and QDSP. APR is mainly
> +  used for audio/voice services on the QDSP.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,apr

This wasn't a valid compatible before.

> +      - qcom,apr-v2
> +
> +  qcom,apr-domain:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3, 4, 5, 6, 7]
> +    description:
> +      Selects the processor domain for apr
> +        1 = APR simulator
> +        2 = PC Domain
> +        3 = Modem Domain
> +        4 = ADSP Domain
> +        5 = Application processor Domain
> +        6 = Modem2 Domain
> +        7 = Application Processor2 Domain
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +#APR Services
> +patternProperties:
> +  "^apr-service@[0-9a-e]$":

Based on reg, this should be: [3-9a-d]

> +    type: object
> +    description:
> +      APR node's client devices use subnodes for desired static port services.
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - qcom,q6core
> +          - qcom,q6asm
> +          - qcom,q6afe
> +          - qcom,q6adm
> +
> +      reg:
> +        enum: [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
> +        description:
> +          APR Service ID
> +            3 = DSP Core Service
> +            4 = Audio  Front End Service.
> +            5 = Voice Stream Manager Service.
> +            6 = Voice processing manager.
> +            7 = Audio Stream Manager Service.
> +            8 = Audio Device Manager Service.
> +            9 = Multimode voice manager.
> +            10 = Core voice stream.
> +            11 = Core voice processor.
> +            12 = Ultrasound stream manager.
> +            13 = Listen stream manager.
> +
> +      qcom,protection-domain:
> +        $ref: /schemas/types.yaml#/definitions/string-array
> +        description: protection domain service name and path for apr service
> +          has dependency on.
> +        items:
> +          - const: avs/audio
> +          - const: msm/adsp/audio_pd

You've dropped a bunch of possible values.

> +
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - qcom,apr-domain
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/qcom,apr.h>
> +    apr {
> +        compatible = "qcom,apr-v2";
> +        qcom,apr-domain = <APR_DOMAIN_ADSP>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        q6core: apr-service@3 {
> +          compatible = "qcom,q6core";
> +          reg = <APR_SVC_ADSP_CORE>;
> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> +        };
> +
> +        q6afe: apr-service@4 {
> +          compatible = "qcom,q6afe";
> +          reg = <APR_SVC_AFE>;
> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> +        };
> +
> +        q6asm: apr-service@7 {
> +          compatible = "qcom,q6asm";
> +          reg = <APR_SVC_ASM>;
> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> +        };
> +
> +        q6adm: apr-service@8 {
> +          compatible = "qcom,q6adm";
> +          reg = <APR_SVC_ADM>;
> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> +        };
> +    };
> -- 
> 2.21.0
> 
> 
