Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0980653DEA0
	for <lists+devicetree@lfdr.de>; Mon,  6 Jun 2022 00:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348226AbiFEWbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 18:31:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346273AbiFEWbD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 18:31:03 -0400
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68BF437A85
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 15:31:02 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id bi27so3234566qkb.10
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 15:31:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=AWrdD7D32vvZA6+xv1qKlT4ONdh+IPESjkebGlGNqnk=;
        b=x8cLVYWiiTAZGcdbX/68TgxfiUmBTrcOJfo9TZMWNRtes7Lpr9ztCRZuimt4nWTDbY
         Nyq9/k9c/PXO8x2VCjrqefndqf5OiED3NDbbbDUSxK9QmQ/3ALXht9QCDMtcItz/LdCI
         3QFmVpbG5q6L4Q/xDIgTTrfOYQLFIACpX/VF5e14ClrjLum0pa28z3vV1vG+Yo89WDWj
         NXTidyHd8LPgh5GEzMUc1pKy8v1Vkoo1LUGfERNyDC7Db2f82KBYbLclAXYaLe/cnGqy
         9UJyYW2j/3K3TXMSTLYP3twouf62sjtuLzqci2G6roUAu2KkeQ5TFkowga4lSC2bxhs7
         +Hnw==
X-Gm-Message-State: AOAM531hE8Z/fagb0HWnbSbbr/o8qjb2tix0qKYSf6Dgn6qBTEDZO+D7
        /YMcl92cugjbLApBl491rg==
X-Google-Smtp-Source: ABdhPJx9BjVpvIX8XYRRYtcnfq4fUbIq1hJywqpvdP4pp9hHesGUNBzia9G4D5NlR1s/cI7Zep1zEg==
X-Received: by 2002:a05:620a:288d:b0:6a2:ee69:5ce8 with SMTP id j13-20020a05620a288d00b006a2ee695ce8mr13502332qkp.233.1654468261518;
        Sun, 05 Jun 2022 15:31:01 -0700 (PDT)
Received: from robh.at.kernel.org ([2607:fb90:1bdb:2e61:f12:452:5315:9c7e])
        by smtp.gmail.com with ESMTPSA id e18-20020ac845d2000000b00304d8cdddfesm6579912qto.86.2022.06.05.15.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 15:31:01 -0700 (PDT)
Received: (nullmailer pid 3646034 invoked by uid 1000);
        Sun, 05 Jun 2022 22:30:58 -0000
Date:   Sun, 5 Jun 2022 17:30:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V2 03/11] dt-bindings: soc: bcm: bcm2835-pm: Add support
 for bcm2711
Message-ID: <20220605223058.GA3644760-robh@kernel.org>
References: <20220601125344.60602-1-stefan.wahren@i2se.com>
 <20220601125344.60602-4-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220601125344.60602-4-stefan.wahren@i2se.com>
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

On Wed, Jun 01, 2022 at 02:53:36PM +0200, Stefan Wahren wrote:
> Add a new compatible string for BCM2711 and the option to provide a
> third reg property for the board's new RPiVid ASB.
> 
> In BCM2711 the new RPiVid ASB took over V3D, which is our only consumer
> of this driver so far. The old ASB is still be present with ISP and H264
> bits but no V3D.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  .../devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml   | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> index 883ab7cb96e9..f448f034a33a 100644
> --- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
> @@ -19,17 +19,21 @@ allOf:
>  properties:
>    compatible:
>      items:
> -      - const: brcm,bcm2835-pm
> +      - enum:
> +          - brcm,bcm2835-pm
> +          - brcm,bcm2711-pm
>        - const: brcm,bcm2835-pm-wdt
>  
>    reg:
> -    minItems: 2
> -    maxItems: 2
> +    minItems: 1

2?

> +    maxItems: 3
>  
>    reg-names:
> +    minItems: 2
>      items:
>        - const: pm
>        - const: asb
> +      - const: rpivid_asb
>  
>    "#power-domain-cells":
>      const: 1
> -- 
> 2.25.1
> 
> 
