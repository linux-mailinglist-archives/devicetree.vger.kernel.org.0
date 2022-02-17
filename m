Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7A2A4B975C
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 04:59:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232796AbiBQD7m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 22:59:42 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230012AbiBQD7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 22:59:41 -0500
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E8A2A22AA
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 19:59:27 -0800 (PST)
Received: by mail-il1-f172.google.com with SMTP id c14so1386560ilm.4
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 19:59:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=QMp03JwfLrGdIz7WkJv38B9CcEHqS5vpZzWHoaVV6vI=;
        b=V0Y6OC4C9FaT+TIwBbm1yW/Ac5mZ9j4l1C9FB2E+3ZjAM9GI0pMzt6bnaHv1IboopB
         HKxTXraunrL/BcXvl6ifGUT3FckmTNvLlJ6zmn1M2LL6jWkCDX4rc/hsO2LggMXtLDAw
         p/SOsmcHAs8HYtjc+Is/lSN+rIvtiavhF7IZpl7IypLx1SmXjNWfY/Uc75gWXYMMSGBj
         h48daecaIKiMYnsWcYSyZeygyamQKLC+CsTIhtIpSMINrgMwjGDED4XBqVTjq/CeA9x0
         aQHjQeskJ1Jw0M86g3tikTne50x3DCqYFNQYsT62a19eIF85wCamgBDAvdp2UJIG6gBd
         FHHw==
X-Gm-Message-State: AOAM5327HkHKgT1dqB/BKY2jIL0FnrW+5jFrqO6PrU2nqNxEjp4aiFiI
        pJGsfHuF+H20whDNxRlH3w==
X-Google-Smtp-Source: ABdhPJyn4QNq6duiajKRbrBRY9gv2AEW1GPnC5BSrD8R7Y3NWxxCyBiwAwR3rysON3OVY139wHnilA==
X-Received: by 2002:a92:dc44:0:b0:2bf:adaa:7a2a with SMTP id x4-20020a92dc44000000b002bfadaa7a2amr794786ilq.172.1645070367123;
        Wed, 16 Feb 2022 19:59:27 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id z13sm1161054iox.21.2022.02.16.19.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Feb 2022 19:59:26 -0800 (PST)
Received: (nullmailer pid 2266019 invoked by uid 1000);
        Thu, 17 Feb 2022 03:59:23 -0000
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <20220216104126.31284-1-zajec5@gmail.com>
References: <20220216104126.31284-1-zajec5@gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: partitions: convert Broadcom's TRX to the json-schema
Date:   Wed, 16 Feb 2022 21:59:23 -0600
Message-Id: <1645070363.930966.2266015.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,PP_MIME_FAKE_ASCII_TEXT,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 16 Feb 2022 11:41:26 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bindings/mtd/partitions/brcm,trx.txt      | 42 ---------------
>  .../bindings/mtd/partitions/brcm,trx.yaml     | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@200000: compatible:0: 'brcm,trx' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@200000: compatible: ['linksys,ns-firmware', 'brcm,trx'] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@200000: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@1100000: compatible:0: 'brcm,trx' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@1100000: compatible: ['linksys,ns-firmware', 'brcm,trx'] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@1100000: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.example.dt.yaml: firmware@100000: 'label', 'reg' do not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/nvmem-cells.example.dt.yaml: firmware@100000: 'label', 'reg' do not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1593614

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

