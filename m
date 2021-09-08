Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D96F9403941
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 13:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349142AbhIHL7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 07:59:40 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:43707 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348691AbhIHL7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 07:59:39 -0400
Received: by mail-ot1-f45.google.com with SMTP id x10-20020a056830408a00b004f26cead745so2552373ott.10
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 04:58:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ekrKhUAapVQLGpaPmyUUbCRHL9+ABWjyycmWN96rdJs=;
        b=3Pqobv8R60T1zGM/RW49df7AKNkVzIi7WTyMW+IzBaLKQwgk0Mkw/w8UUDcj4MSAnU
         FrIUMK3/xtKneW3KGtdN1TLj47/VU9kP17JHndaKo6JB+6wAIWv48KzcgPTUAQxykte1
         KV27pH+G/MAP/DlanEntdLi8CaxAXA+hqtl4kSv5SftUDL0bXlmehgVqHDJhtw8hGRUr
         QEtKrNcvWF+/namt57FHhVvB8lUH+SXJjkcsGhY2LVwTtv8g/pNueKQJ/tkfDvLLO5I/
         bzXEQ0gcyoRJ+Gj7NJi73mOU3K45vVRMYT4iUsXSAgBOec5JJnZeYUEIHca1Ck0hgmlo
         RBmg==
X-Gm-Message-State: AOAM533RGl5Pl1kVtDRc+MRnHQQ3snDTcl1+QNw0kvggtBN2BMSVP0Nb
        Cr5ByIj9vl5cwpjLOhUJyA==
X-Google-Smtp-Source: ABdhPJycXJ0u9QA4j0lrlZKBHFJrB1V1ZSxBH0NWyBQdl7YyQIjicbTn5la2rQPRTllWck6Ojg3Rtg==
X-Received: by 2002:a05:6830:82c:: with SMTP id t12mr2696272ots.33.1631102311602;
        Wed, 08 Sep 2021 04:58:31 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e2sm378876ooh.40.2021.09.08.04.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Sep 2021 04:58:30 -0700 (PDT)
Received: (nullmailer pid 1849807 invoked by uid 1000);
        Wed, 08 Sep 2021 11:58:29 -0000
Date:   Wed, 8 Sep 2021 06:58:29 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, broonie@kernel.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v5 13/21] ASoC: dt-bindings: add q6apm digital audio
 stream bindings
Message-ID: <YTilZXhtzVojg5bM@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-14-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-14-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 03, 2021 at 12:20:24PM +0100, Srinivas Kandagatla wrote:
> On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
> Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
> exposed by the DSP.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../bindings/sound/qcom,q6apm-dai.yaml        | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> new file mode 100644
> index 000000000000..75431d1c0b2a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/sound/qcom,q6apm-dai.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm Audio Process Manager Digital Audio Interfaces binding
> +
> +maintainers:
> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> +
> +description: |
> +  This binding describes the Qualcomm APM DAIs in DSP
> +
> +properties:
> +  compatible:
> +    const: qcom,q6apm-dais
> +
> +  reg:
> +    maxItems: 1
> +
> +  iommus:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - iommus
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    gpr {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        gprservice@1 {

service@1

Might want to put a compatible in the gpr node so this is checked.

> +          compatible = "qcom,q6apm";
> +          reg = <1>;
> +
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          apm@1 {
> +            compatible = "qcom,q6apm-dais";
> +            iommus = <&apps_smmu 0x1801 0x0>;
> +            reg = <1>;
> +          };
> +        };
> +    };
> -- 
> 2.21.0
> 
> 
