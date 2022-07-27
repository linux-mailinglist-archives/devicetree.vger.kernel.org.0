Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC372582429
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 12:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231499AbiG0KYu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 06:24:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232069AbiG0KYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 06:24:37 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E2A043317
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:24:36 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id p10so18936514lfd.9
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pwRSwcrjoF7t2bTpsHDxTeVcAQajNb7y0PUjCxzEDfI=;
        b=LS+Iq/WMoD7g4rTSAOFGbQRQsJrbsmMhE3QRamPOWaFluRlH83NztRwKKklCzLTC8V
         6k07KZyafk3PY9EMqAGNQmuPpzd/s33fd8UYM/WMho6YDmroalSHyZiDigk+AQH4iJNh
         wovh7QgkQCfvPkibvISyxjfZD5NR7FqPEDTJAwUsTCN1OasSb8WfLVT0ZET59CW1ZZjZ
         Fzc/6hs2f/d0/6PbS7ewKiwEvzDzLriAjfS81OlT32ybDtt5C5z0y4K88Avoxbg0qxZj
         kNWgJjzJEjKxJDjfKA+pDEznOoKegQRPULWet0Gs183MQAPGq8/FbztxLC5jjACU2/ID
         eeXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pwRSwcrjoF7t2bTpsHDxTeVcAQajNb7y0PUjCxzEDfI=;
        b=XjjcORVf+IdwFHjAjSdVyCHcDUxZYh+WMOMf3C4evnyjnHwueAfB7tEa+PJxfDgRWE
         TjA0/N8ajDaN5k00GoYvjAqTLzT/42GPUJBz+eIU1wjAfIDxs4yZrtQ096izrBzipSHX
         nAM3M5rCIkygPg0Tj0LsLCvBeQIPAvyerhYI0u+Ui/JNFbuOJqvdvviMpImprQfG1ivk
         EhMgqtROVE3QCOwK9J9U3riJe86SRE7RuADs0BnDsYuLlzpcE2laxgENsTxErKF55Njf
         IOLHVRp6Nnu+rG31bZM39DBsiyjK2Ra2gv7HsX6Bdko1UgAaX16UJ3ttDjcrMdnBMXOQ
         5kIA==
X-Gm-Message-State: AJIora85e7Fvcz8TORqS4iWb/83PLmfRAzNjGtl+s8UgnbTglJ1Lknzx
        SdWn0KQHl3c6IH6s0Ll9QHPKPQ==
X-Google-Smtp-Source: AGRyM1tyXHCoDrQOD8dUuUL8NnbQqSpli/fmf0tsGDrueYdv2MU7LL5eZyMmjTbTitUO3XThHNJMOQ==
X-Received: by 2002:a05:6512:114a:b0:48a:39e6:ff7d with SMTP id m10-20020a056512114a00b0048a39e6ff7dmr7678289lfg.338.1658917474613;
        Wed, 27 Jul 2022 03:24:34 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id u7-20020ac258c7000000b0048a83ab2d32sm2251051lfo.0.2022.07.27.03.24.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 03:24:34 -0700 (PDT)
Message-ID: <809e9c7d-7634-f690-675d-9eccac8c8de8@linaro.org>
Date:   Wed, 27 Jul 2022 12:24:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add Novatek NT35596S
 panel bindings
Content-Language: en-US
To:     Molly Sophia <mollysophia379@gmail.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20220726101513.66988-1-mollysophia379@gmail.com>
 <20220726101513.66988-2-mollysophia379@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726101513.66988-2-mollysophia379@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 12:15, Molly Sophia wrote:
> Add documentation for "novatek,nt35596s" panel.
> 
> Changes in v3:
> - Embed the documentation into existing one (novatek,nt36672a).
> 
> Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> ---
>  .../display/panel/novatek,nt36672a.yaml       | 20 ++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
> index 563766d283f6..560fb66d0e5a 100644
> --- a/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36672a.yaml
> @@ -20,14 +20,20 @@ allOf:
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - tianma,fhd-video
> -      - const: novatek,nt36672a
> +    oneOf:
> +      - items:
> +          - enum:
> +              - tianma,fhd-video
> +          - const: novatek,nt36672a
> +
> +      - items:
> +          - enum:
> +              - jdi,fhd-nt35596s
> +          - const: novatek,nt35596s

This entire entry should be rather before nt36672a judging by numbers:

+    oneOf:
+      - items:
+          - enum:
+              - jdi,fhd-nt35596s
+          - const: novatek,nt35596s
+
+      - items:
+          - enum:
+              - tianma,fhd-video
+          - const: novatek,nt36672a


Best regards,
Krzysztof
