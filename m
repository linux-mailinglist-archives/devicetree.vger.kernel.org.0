Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB52711CEE
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 03:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235953AbjEZBnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 21:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234360AbjEZBns (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 21:43:48 -0400
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DD1C189
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 18:43:47 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id ca18e2360f4ac-77489b6f68cso31209339f.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 18:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685065427; x=1687657427;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9kkqmVgPfMqIpngCVwFGsQ4SKC/aGOoR2j/ffV6nKd4=;
        b=fsNH4oxt8DnrgVz2q9cE0bh9mZDVScilU5gj7uItmB7JjsfJqSi0TK2ntZBlSgPQjs
         ax9TDMRiwqiu7vZZUpl4QYzG1c6BC2UUO46NEZOiykgqDnhkJ8ygmvL0j1VRKESBX4IL
         2LurqBvkmFynmxMbZ9ablUcLAbbrlcAE/n2VtYgSEGML3qR6e9D1xMLxq7TdBSmL+7pm
         s1kR9eAzo8AohU7K8jJvPnkWPJNUqsn5cFO1A1XT7xYBNkpc/A3lQkolP1yXk9Wndud+
         Bj0Vd7qA6mdyoHoA9iNiCSlOMGbxh6fs6uJiW4KyuSqhe/GNaHFgf19PGhVBtl73xd0v
         isYw==
X-Gm-Message-State: AC+VfDz1y1AXOmdh9GgEeIBA4WErx9i4G8T+5eZ9DNlREjuXlsGIp5gQ
        Hy8bmFcC53vopb3pIjLpQK2JkWxb1w==
X-Google-Smtp-Source: ACHHUZ606ICxYqI7w5Joho9qmcY1XHqxNYROkxzrFYpKsk8gS+nkwRlIKTaoQaLt73CTzi4wI9hg0Q==
X-Received: by 2002:a92:d9c7:0:b0:329:bba2:781a with SMTP id n7-20020a92d9c7000000b00329bba2781amr346194ilq.0.1685065426628;
        Thu, 25 May 2023 18:43:46 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.254])
        by smtp.gmail.com with ESMTPSA id o14-20020a056e02068e00b003318ec8f9e9sm658058ils.80.2023.05.25.18.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 18:43:45 -0700 (PDT)
Received: (nullmailer pid 3166 invoked by uid 1000);
        Fri, 26 May 2023 01:43:44 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     William Zhang <william.zhang@broadcom.com>
Cc:     f.fainelli@gmail.com, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20230525050241.3700-1-william.zhang@broadcom.com>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
Message-Id: <168506542054.3041.3667248390783185219.robh@kernel.org>
Subject: Re: dt_binding_check report false alarm?
Date:   Thu, 25 May 2023 20:43:44 -0500
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 24 May 2023 22:02:41 -0700, William Zhang wrote:
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

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/crypto/fsl-imx-scc.example.dtb: crypto@53fac000: 'interrupt-names' is a required property
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230525050241.3700-1-william.zhang@broadcom.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

