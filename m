Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9B9735FF0
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 00:50:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbjFSWun (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 18:50:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjFSWum (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 18:50:42 -0400
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 442E0E54
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 15:50:41 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-777a6ebb542so162422639f.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 15:50:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687215040; x=1689807040;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdmKEO8LetRwQhVmgte2Z1MHdDvvmR8biVbcp0wwjpI=;
        b=J3VbwoqIvBwhkbu0PNbGMdCQXg5rN4O8GX4pesRKjoOu0gOOa5pT6+MravM9l2gYEx
         RKdY/pVhNzLYB1KpKo5LZG5YoylUZI4Fpy0rNLBePJWB4ORe5zKKqxnkJAumkM5Iz4Ls
         LTHWWDAv6fXd1FRZ/DYjKvlDw7Qqgeseq81jrad1KLkhwaVRq6z0sPF9t51edsZPTq39
         TIhDJKq0VruU27umccjeI8GKRZbkjRMqn6r44EHs+vTO8jwhiDvgL9HdyIISzJVj1oA9
         3+D9gZCTptenX8zqU801j5GlFftcqWJexPI4F2pmo7iXjGE3bTS+mj8nx+GhiE5p+WYC
         Jemw==
X-Gm-Message-State: AC+VfDzg6dK/Mv0DOReGz3T9bzFjRE+h0n1FC52qDVOjabFKODSye5cQ
        aRPio5JbCsLezYZqBFXZqw==
X-Google-Smtp-Source: ACHHUZ7fc5zUOQFvyDbp88VM712kkIPAiP1BxKYiaRt5dJxgdfUoi+V70oW7sV1a7w2CPIe9+bA7Hg==
X-Received: by 2002:a6b:a14:0:b0:777:aa2c:c2ab with SMTP id z20-20020a6b0a14000000b00777aa2cc2abmr7549381ioi.12.1687215040393;
        Mon, 19 Jun 2023 15:50:40 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id n2-20020a6bf602000000b0077de452f071sm228829ioh.1.2023.06.19.15.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 15:50:39 -0700 (PDT)
Received: (nullmailer pid 1677662 invoked by uid 1000);
        Mon, 19 Jun 2023 22:50:38 -0000
Date:   Mon, 19 Jun 2023 16:50:38 -0600
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3 02/17] dt-bindings: mtd: Create a file for raw NAND
 chip properties
Message-ID: <20230619225038.GA1676165-robh@kernel.org>
References: <20230619092916.3028470-1-miquel.raynal@bootlin.com>
 <20230619092916.3028470-3-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619092916.3028470-3-miquel.raynal@bootlin.com>
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

On Mon, Jun 19, 2023 at 11:29:01AM +0200, Miquel Raynal wrote:
> In an effort to constrain as much as we can the existing binding, we
> want to add "unevaluatedProperties: false" in all the NAND chip
> descriptions part of NAND controller bindings. But in order to do that
> properly, we also need to reference a file which contains all the
> "allowed" properties. Right now this file is nand-chip.yaml but in
> practice raw NAND controllers may use additional properties in their
> NAND chip children node. These properties are listed under
> nand-controller.yaml, which makes the "unevaluatedProperties" checks
> fail while the description are valid. We need to move these NAND chip
> related properties into another file, because we do not want to pollute
> nand-chip.yaml which is also referenced by eg. SPI-NAND devices.
> 
> Let's create a raw-nand-chip.yaml file to reference all the properties a
> raw NAND chip description can contain. The chain of inheritance becomes:
>   nand-controller.yaml <- raw-nand-chip.yaml
>   raw-nand-chip.yaml   <- nand-chip.yaml
>   spi-nand.yaml        <- nand-chip.yaml
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mtd/nand-controller.yaml         |  85 +--------------
>  .../bindings/mtd/raw-nand-chip.yaml           | 102 ++++++++++++++++++
>  2 files changed, 104 insertions(+), 83 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index f70a32d2d9d4..83a4fe4cc29d 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -16,16 +16,6 @@ description: |
>    children nodes of the NAND controller. This representation should be
>    enforced even for simple controllers supporting only one chip.
>  
> -  The ECC strength and ECC step size properties define the user
> -  desires in terms of correction capability of a controller. Together,
> -  they request the ECC engine to correct {strength} bit errors per
> -  {size} bytes.
> -
> -  The interpretation of these parameters is implementation-defined, so
> -  not all implementations must support all possible
> -  combinations. However, implementations are encouraged to further
> -  specify the value(s) they support.
> -
>  properties:
>    $nodename:
>      pattern: "^nand-controller(@.*)?"
> @@ -51,79 +41,8 @@ properties:
>  
>  patternProperties:
>    "^nand@[a-f0-9]$":
> -    $ref: nand-chip.yaml#
> -
> -    properties:
> -      reg:
> -        description:
> -          Contains the chip-select IDs.
> -
> -      nand-ecc-placement:
> -        description:
> -          Location of the ECC bytes. This location is unknown by default
> -          but can be explicitly set to "oob", if all ECC bytes are
> -          known to be stored in the OOB area, or "interleaved" if ECC
> -          bytes will be interleaved with regular data in the main area.
> -        $ref: /schemas/types.yaml#/definitions/string
> -        enum: [ oob, interleaved ]
> -
> -      nand-bus-width:
> -        description:
> -          Bus width to the NAND chip
> -        $ref: /schemas/types.yaml#/definitions/uint32
> -        enum: [8, 16]
> -        default: 8
> -
> -      nand-on-flash-bbt:
> -        description:
> -          With this property, the OS will search the device for a Bad
> -          Block Table (BBT). If not found, it will create one, reserve
> -          a few blocks at the end of the device to store it and update
> -          it as the device ages. Otherwise, the out-of-band area of a
> -          few pages of all the blocks will be scanned at boot time to
> -          find Bad Block Markers (BBM). These markers will help to
> -          build a volatile BBT in RAM.
> -        $ref: /schemas/types.yaml#/definitions/flag
> -
> -      nand-ecc-maximize:
> -        description:
> -          Whether or not the ECC strength should be maximized. The
> -          maximum ECC strength is both controller and chip
> -          dependent. The ECC engine has to select the ECC config
> -          providing the best strength and taking the OOB area size
> -          constraint into account. This is particularly useful when
> -          only the in-band area is used by the upper layers, and you
> -          want to make your NAND as reliable as possible.
> -        $ref: /schemas/types.yaml#/definitions/flag
> -
> -      nand-is-boot-medium:
> -        description:
> -          Whether or not the NAND chip is a boot medium. Drivers might
> -          use this information to select ECC algorithms supported by
> -          the boot ROM or similar restrictions.
> -        $ref: /schemas/types.yaml#/definitions/flag
> -
> -      nand-rb:
> -        description:
> -          Contains the native Ready/Busy IDs.
> -        $ref: /schemas/types.yaml#/definitions/uint32-array
> -
> -      rb-gpios:
> -        description:
> -          Contains one or more GPIO descriptor (the numper of descriptor
> -          depends on the number of R/B pins exposed by the flash) for the
> -          Ready/Busy pins. Active state refers to the NAND ready state and
> -          should be set to GPIOD_ACTIVE_HIGH unless the signal is inverted.
> -
> -      wp-gpios:
> -        description:
> -          Contains one GPIO descriptor for the Write Protect pin.
> -          Active state refers to the NAND Write Protect state and should be
> -          set to GPIOD_ACTIVE_LOW unless the signal is inverted.
> -        maxItems: 1
> -
> -    required:
> -      - reg
> +    type: object
> +    $ref: raw-nand-chip.yaml#
>  
>  required:
>    - "#address-cells"
> diff --git a/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
> new file mode 100644
> index 000000000000..2caa6a9a73d3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/raw-nand-chip.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: GPL-2.0

Should be dual licensed like the original.

Rob
