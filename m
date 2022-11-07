Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95E4E61FF65
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 21:17:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232641AbiKGURD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 15:17:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231790AbiKGURC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 15:17:02 -0500
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA4942AE21
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 12:17:01 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id d26-20020a05683018fa00b0066ab705617aso7186967otf.13
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 12:17:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EBvKVOrTqtufY18A1PJxgGDVCctpKYN6ta+YBKMwfj0=;
        b=KJV4d/SCWdAmsOvrcsDGJ3MuwgeRhFJL88Vfys0b8V+RPg4Uat5otfXQFwSknC6EBW
         WgH9KhgoD17SIpCgvJO/c5YsR6NoiGD+XEVzHcXqM66J138Hz6Ju1nh5Cy0KGHBOWZKF
         b1MonVLGW281Kd9TTz5HYTNRNuamQC9jAQKJQLiYZPQF3NIido7SUmOTumI7ZvwD6mNS
         enme5viCADtuSkfNCkIf6DMGU/4jKU38LP6ycIwCgFGoBgrdkgccW5/eivUfCmGxuRiO
         4DJQRoObVZTMlhbohxyxyBRZIlOi+j6SM/uPIUjTdyl3dLPQRvtwTnXRZjhYzgQR2XeQ
         gTWA==
X-Gm-Message-State: ACrzQf04olFQm5SynOoXCPSoQW5rQrzbDA5RMPHTQHlXrvekYi5qd5Yz
        ZG9mcgxJnZUYPLzG2Xff5w==
X-Google-Smtp-Source: AMsMyM75/WK9/WdSwnGkkhLFdL5pLrFI+obq49f0flEL+TH+zw9Csxl9yG8JBbbIIy07mUvPclfnEg==
X-Received: by 2002:a9d:198c:0:b0:661:aa2e:1aa0 with SMTP id k12-20020a9d198c000000b00661aa2e1aa0mr25432082otk.154.1667852221173;
        Mon, 07 Nov 2022 12:17:01 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 4-20020a9d0604000000b006621427ecc7sm3275762otn.60.2022.11.07.12.17.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 12:17:00 -0800 (PST)
Received: (nullmailer pid 1574276 invoked by uid 1000);
        Mon, 07 Nov 2022 20:17:02 -0000
Date:   Mon, 7 Nov 2022 14:17:02 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        linux-mtd@lists.infradead.org, Richard Weinberger <richard@nod.at>,
        bcm-kernel-feedback-list@broadcom.com,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] dt-bindings: mtd: brcm,brcmnand: update interrupts
 description
Message-ID: <166785221995.1574183.14364467307586191893.robh@kernel.org>
References: <20221104085316.24499-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221104085316.24499-1-zajec5@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 04 Nov 2022 09:53:16 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> 1. DMA and EDU are mutually exclusive: don't allow both at the same time
> 2. Require interrupt-names for 2+ interrupts to avoid /guessing/
> 
> Reported-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> I also thought of something like:
>   interrupts:
>     minItems: 1
>     items:
>       - description: NAND CTLRDY interrupt
>       - anyOf:
>           - description: FLASH_DMA_DONE if flash DMA is available
>           - description: FLASH_EDU_DONE if EDU is available
> (to avoid text-form "or" in "description") but that didn't work:
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> ./Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml: error checking schema file
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
> Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml: ignoring, error in schema: properties: interrupts
> ---
>  .../devicetree/bindings/mtd/brcm,brcmnand.yaml   | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
