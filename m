Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCBAE4B7388
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 17:44:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239667AbiBOPXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 10:23:04 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239643AbiBOPXD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 10:23:03 -0500
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC7989CF9
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 07:22:52 -0800 (PST)
Received: by mail-il1-f173.google.com with SMTP id e11so14126396ils.3
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 07:22:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=9Yi5XbmNpmoo9o3CuOwWyFOm0KRNU05ES3XBs2VkmCM=;
        b=JCxXxEOI/RwwywRo4LrBR5d8r91tximHU/gboYJ/Jy+eORfnxvzj3fwLOotqGE3HgN
         N4qb5EcSvQ0iG6VCK2+RoUiYN+VVLJJUOqkhIfO/IhClYnBbH3TCHG+fTK1eDT8W+seQ
         MaMEwqUfRhUGv17PUmsLJxxQUf2NuLiJDRvVn3BWw/mWTXS2ndFp9vJVHpc5UMjeu4Ff
         KahbKToSCmI9OW5oObmUgCtmBJmOFngU4Sr8PE0EN/duxwX0VcBO2cLBOjBIG9gNiRmQ
         /7ZO3ay6VVu4xtkv9Nrza8GPo2ZXMKASFWvsWIraaOMxxC8B/z4141wAAKjF+xp6kzMT
         x3Pw==
X-Gm-Message-State: AOAM531uoOOuDGX5AHeYSJYcEYi3FEh0EK/di1FnR9HHj5I5hN71jv5m
        360PKcz8KQTOHUc3XYTsRrdaOOfxLw==
X-Google-Smtp-Source: ABdhPJxJI4sI45YrUD53XFelIt45P/Ir6iJOFDOv5esylmnkWyKhYVlwjj4ywwcZ77eTyP0kEpTDEQ==
X-Received: by 2002:a05:6e02:2162:: with SMTP id s2mr2936463ilv.171.1644938571494;
        Tue, 15 Feb 2022 07:22:51 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id y3sm8878108iov.29.2022.02.15.07.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 07:22:50 -0800 (PST)
Received: (nullmailer pid 3450864 invoked by uid 1000);
        Tue, 15 Feb 2022 15:22:45 -0000
From:   Rob Herring <robh@kernel.org>
To:     Peter Robinson <pbrobinson@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Emma Anholt <emma@anholt.net>,
        bcm-kernel-feedback-list@broadcom.com,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Lee Jones <lee.jones@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        Scott Branden <sbranden@broadcom.com>,
        Will Deacon <will@kernel.org>, David Airlie <airlied@linux.ie>,
        linux-rpi-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Ray Jui <rjui@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20220213225646.67761-2-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com> <20220213225646.67761-2-pbrobinson@gmail.com>
Subject: Re: [PATCH v4 01/15] dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
Date:   Tue, 15 Feb 2022 09:22:45 -0600
Message-Id: <1644938565.082103.3450863.nullmailer@robh.at.kernel.org>
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

On Sun, 13 Feb 2022 22:56:33 +0000, Peter Robinson wrote:
> From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> This converts the brcm,bcm2835-pm bindings from text to proper schema.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../bindings/soc/bcm/brcm,bcm2835-pm.txt      | 46 -----------
>  .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 79 +++++++++++++++++++
>  2 files changed, 79 insertions(+), 46 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml: properties:reg: {'minItems': 1, 'maxItems': 2, 'items': [{'description': 'PM registers'}, {'description': 'ASB registers'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml: ignoring, error in schema: properties: reg
Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.example.dt.yaml:0:0: /example-0/watchdog@7e100000: failed to match any schema with compatible: ['brcm,bcm2835-pm', 'brcm,bcm2835-pm-wdt']
Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.example.dt.yaml:0:0: /example-0/watchdog@7e100000: failed to match any schema with compatible: ['brcm,bcm2835-pm', 'brcm,bcm2835-pm-wdt']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1592167

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

