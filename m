Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06A89403140
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 00:58:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231316AbhIGW7F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 18:59:05 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:44558 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbhIGW7E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 18:59:04 -0400
Received: by mail-oi1-f179.google.com with SMTP id c79so524037oib.11
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 15:57:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5/vfs21gG9mxPJ0jjyAgg1EpmoqQhpgC8XfjBg41YRI=;
        b=UFow569AIzX3WNXY9uPeSk/Mx3her+BGSHqD/ZaETJrQ891yEQP8WlgDhQqFFEtbnr
         JsPsFoZje3Vy8FDS4T5Aqfm+dCig8Bo+2B5wrLbXfA24D6g37Xuu3HCp7N+Lf/xLDctf
         yDxRAwbe5Pq1suGEvOuxjl8wjF3l8Douys5zbMj2nLEU3SJAY4z4D4O6xNkCmiZ276AT
         n6eAb7ClUB1L1tCq9e8vLGmR+cf79SeBPuDIN9lv8OX3Yn1isV09nYxv+N8gPiiNkALK
         qnOZ34qFP9VAZfjf8mcoesyPC+8ZoLHqhJSTO0DOYSZfOVipdOvZRnkEKItHpjz68N+y
         44Og==
X-Gm-Message-State: AOAM533ujSZzAjoUA0dJPuGtpxFcu5NAhZn0fzENNOw8PsO0o898YUCY
        f4a28JZzrRpbHDtXtteMBg==
X-Google-Smtp-Source: ABdhPJzov9SlSluO21QrxH6boZeS6hQvPs8+nHK8ZUG3Lxqkqj6DqhTYXVWJ3uPURu1Essj01zaFlQ==
X-Received: by 2002:aca:c48d:: with SMTP id u135mr399288oif.106.1631055477626;
        Tue, 07 Sep 2021 15:57:57 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q10sm74743otn.47.2021.09.07.15.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 15:57:57 -0700 (PDT)
Received: (nullmailer pid 516744 invoked by uid 1000);
        Tue, 07 Sep 2021 22:57:56 -0000
Date:   Tue, 7 Sep 2021 17:57:56 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, broonie@kernel.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v5 12/21] ASoC: dt-bindings: lpass-clocks: add q6prm
 clocks compatible
Message-ID: <YTfudKWILc6kTvz4@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-13-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-13-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 03, 2021 at 12:20:23PM +0100, Srinivas Kandagatla wrote:
> On AudioReach audio Framework access to LPASS ports is via Q6PRM
> (Proxy Resource Manager) service, so add a dedicated lpass-clock compatible
> string for this.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../sound/qcom,q6dsp-lpass-clocks.yaml         | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
> index 589c3f1e2008..9f3de2307d1c 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6dsp-lpass-clocks.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,q6afe-clocks
> +      - qcom,q6prm-lpass-clocks
>  
>    reg:
>      maxItems: 1
> @@ -54,3 +55,20 @@ examples:
>              };
>          };
>        };
> +
> +  - |
> +    #include <dt-bindings/soc/qcom,gpr.h>
> +    gpr {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        gpr-service@2 {
> +            reg = <GPR_PRM_MODULE_IID>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            q6prmcc@2 {

clock-controller@2

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +              compatible = "qcom,q6prm-lpass-clocks";
> +              reg = <2>;
> +              #clock-cells = <2>;
> +            };
> +        };
> +      };
> -- 
> 2.21.0
> 
> 
