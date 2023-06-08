Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E685728323
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 16:57:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236114AbjFHO5r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 10:57:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235799AbjFHO5q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 10:57:46 -0400
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A81181FFE
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 07:57:45 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-33d37cc9d12so2257355ab.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 07:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686236265; x=1688828265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hf6SJl34siTdawLC0RjC1CBtOAo6GZOHG51dtQP3QW0=;
        b=brHF3Wavsli8hW46kwybIFgn3/Xi/YQ/68MVUQkEwxiJ868r+7ybJpAc03CnYqiPBA
         SvVB62ivSEYfsiuDy7o6xmneo+SdTaYt4yjN6Ow9wLQDDehX4l6R9XSqL6fX+q9jFDNw
         E7gXjC74IE1N49nKutwlp/rLdVZabokL53OSawcde/6WAc0HvoVFNAdwFRHKgw7HB1SS
         w0pbPgv1qKPxtYh1SeA8bAX9DwKXnlRqGLIdT5lSXjz5Ygw0dVxZ0w0U3MjHdhr0W2hS
         cpSUqmafBEQKbRKjPW8SrizVDmSpGM/FmX1KxM95yb2BkwlWQsFvzUMUWsmxuXgn7LSt
         alQw==
X-Gm-Message-State: AC+VfDzoN7HlUdZekW9BaIAVsD2Z9ZrnL5BbzZ3vKjA9X6zP+RDLUIKp
        zOdCVHjwVT6C37+lpANZTMHCHwiRzA==
X-Google-Smtp-Source: ACHHUZ4JJA2/Br3g1G3dJQSc6yKVFh/khk7lkclFOtTk+QCdeXByAbp2Z90Sd/G25X9eyUdBHznxIQ==
X-Received: by 2002:a92:d292:0:b0:335:9028:d6d1 with SMTP id p18-20020a92d292000000b003359028d6d1mr7925695ilp.32.1686236264814;
        Thu, 08 Jun 2023 07:57:44 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id f5-20020a056638118500b0041eb1fb695csm318647jas.105.2023.06.08.07.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 07:57:44 -0700 (PDT)
Received: (nullmailer pid 2620990 invoked by uid 1000);
        Thu, 08 Jun 2023 14:57:42 -0000
Date:   Thu, 8 Jun 2023 08:57:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     William Zhang <william.zhang@broadcom.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        f.fainelli@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: dt_binding_check report false alarm?
Message-ID: <20230608145742.GA2609597-robh@kernel.org>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230525050241.3700-1-william.zhang@broadcom.com>
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

On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
> Hi,
> 
> It seems dt_binding_check reports a false error when run on this
> modified yaml. I picked this simple file just to demostrate this issue.
> Basically I made the interrupts and interrupt-names as optional
> properties. But when there are two interrupts present, then
> interrupt-names are required.  However in the example, I don't define
> interrupts and interrupt-name at all, the dt binding check reports error
> that interrupt-names are required:
> 
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>   LINT    Documentation/devicetree/bindings
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   DTEX    Documentation/devicetree/bindings/crypto/fsl-imx-scc.example.dts
>   DTC_CHK Documentation/devicetree/bindings/crypto/fsl-imx-scc.example.dtb
> Documentation/devicetree/bindings/crypto/fsl-imx-scc.example.dtb: crypto@53fac000: 'interrupt-names' is a required property
> 	From schema: /home/william/projects/linux/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> 
> This does not make sense to me as name is required only when there are
> two interrupts. Can someone familar with this please help to check if I
> miss anything in the yaml file or it is indeed a bug in binding check?
> 
> Thanks,
> William
> 
> ---
>  .../devicetree/bindings/crypto/fsl-imx-scc.yaml     | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> index 563a31605d2b..c37a3a64a78c 100644
> --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
> @@ -32,11 +32,18 @@ properties:
>    clock-names:
>      const: ipg
>  
> +allOf:
> +  - if:
> +      properties:
> +        interrupts:
> +          minItems: 2

This is a quirk of json-schema in that the 'if' will be true if the 
property is not present. Adding this to the 'if' should fix the problem:

required:
  - interrupts

> +    then:
> +      required:
> +        - interrupt-names
> +
>  required:
>    - compatible
>    - reg
> -  - interrupts
> -  - interrupt-names
>    - clocks
>    - clock-names
>  
> @@ -49,6 +56,4 @@ examples:
>          reg = <0x53fac000 0x4000>;
>          clocks = <&clks 111>;
>          clock-names = "ipg";
> -        interrupts = <49>, <50>;
> -        interrupt-names = "scm", "smn";
>      };
> -- 
> 2.34.1
> 


