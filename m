Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1EA52D5104
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 03:49:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726865AbgLJCtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 21:49:24 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:40341 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726278AbgLJCtY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 21:49:24 -0500
Received: by mail-ot1-f67.google.com with SMTP id j12so3547009ota.7
        for <devicetree@vger.kernel.org>; Wed, 09 Dec 2020 18:49:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=uO0odTnBAecYBuS60TZCfYqMMreK7ArrUExBsARa7L4=;
        b=IJmXFkVqyMIUS3Lt6wrbXZTdzN5ohLY1pOeARqHmID13pA4x/rkC9v9mPSbfWY/htE
         rxIqumYFI0bkNeKYvTf/G3bePm9Xtmc8YoTmqlhZC+k0nuUdIXiTn5iFDk0O8TPsRK2w
         QggcGPOrME98c5z5RBrjkOKTUJ/iuK3kW1Ymb+L818AV0vnMUxcd8hMLeAJBISptrQIc
         z4fVQue4hsn86Q2tzCd9csClWD/SAN+1E8FS0ETDtUb5JQGXFd6gBfuD6zWvQXnCLPkO
         W2wDcD8vmMr+2DgSChMo+oLgBD27rAwaeA6OscTQ1gsmbFqeRjejh5HY5W103qIap8rc
         0UbA==
X-Gm-Message-State: AOAM530Ec8gN3V8E0TLLEWFQFTlQ/C1P/zGZoH1igXNdw3ztKUIAADBn
        qxehF0YCNrtra22NVAwiCQ==
X-Google-Smtp-Source: ABdhPJxQOi1mx3owHPai9RUEUoVNDNGOYiQx7owQ2rECQnbbRxXoSxDPSSl2n4kwOCx6skSs2QHVcg==
X-Received: by 2002:a9d:5e97:: with SMTP id f23mr4333858otl.204.1607568522635;
        Wed, 09 Dec 2020 18:48:42 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id n22sm718265oig.32.2020.12.09.18.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Dec 2020 18:48:41 -0800 (PST)
Received: (nullmailer pid 1541730 invoked by uid 1000);
        Thu, 10 Dec 2020 02:48:40 -0000
Date:   Wed, 9 Dec 2020 20:48:40 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: mtd: convert "fixed-partitions" to the
 json-schema
Message-ID: <20201210024840.GA1510718@robh.at.kernel.org>
References: <20201209130235.7505-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201209130235.7505-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 09, 2020 at 02:02:35PM +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This standardizes its documentation, allows validating with Makefile
> checks and helps writing DTS files.
> 
> Noticeable changes:
> 1. Dropped "Partitions can be represented by sub-nodes of a flash
>    device." as we also support subpartitions (don't have to be part of
>    flash device node)
> 2. Dropped "to Linux" as bindings are meant to be os agnostic.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/mtd/partition.txt     | 131 +---------------
>  .../mtd/partitions/fixed-partitions.yaml      | 146 ++++++++++++++++++
>  2 files changed, 148 insertions(+), 129 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
> index 4a39698221a2..ead90e8274d6 100644
> --- a/Documentation/devicetree/bindings/mtd/partition.txt
> +++ b/Documentation/devicetree/bindings/mtd/partition.txt
> @@ -24,137 +24,10 @@ another partitioning method.
>  Available bindings are listed in the "partitions" subdirectory.
>  
>  
> -Fixed Partitions
> -================
> -
> -Partitions can be represented by sub-nodes of a flash device. This can be used
> -on platforms which have strong conventions about which portions of a flash are
> -used for what purposes, but which don't use an on-flash partition table such
> -as RedBoot.
> -
> -The partition table should be a subnode of the flash node and should be named
> -'partitions'. This node should have the following property:
> -- compatible : (required) must be "fixed-partitions"
> -Partitions are then defined in subnodes of the partitions node.
> +Deprecated: partitions defined in flash node
> +============================================
>  
>  For backwards compatibility partitions as direct subnodes of the flash device are
>  supported. This use is discouraged.
>  NOTE: also for backwards compatibility, direct subnodes that have a compatible
>  string are not considered partitions, as they may be used for other bindings.
> -
> -#address-cells & #size-cells must both be present in the partitions subnode of the
> -flash device. There are two valid values for both:
> -<1>: for partitions that require a single 32-bit cell to represent their
> -     size/address (aka the value is below 4 GiB)
> -<2>: for partitions that require two 32-bit cells to represent their
> -     size/address (aka the value is 4 GiB or greater).
> -
> -Required properties:
> -- reg : The partition's offset and size within the flash
> -
> -Optional properties:
> -- label : The label / name for this partition.  If omitted, the label is taken
> -  from the node name (excluding the unit address).
> -- read-only : This parameter, if present, is a hint to Linux that this
> -  partition should only be mounted read-only. This is usually used for flash
> -  partitions containing early-boot firmware images or data which should not be
> -  clobbered.
> -- lock : Do not unlock the partition at initialization time (not supported on
> -  all devices)
> -- slc-mode: This parameter, if present, allows one to emulate SLC mode on a
> -  partition attached to an MLC NAND thus making this partition immune to
> -  paired-pages corruptions
> -
> -Examples:
> -
> -
> -flash@0 {
> -	partitions {
> -		compatible = "fixed-partitions";
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -
> -		partition@0 {
> -			label = "u-boot";
> -			reg = <0x0000000 0x100000>;
> -			read-only;
> -		};
> -
> -		uimage@100000 {
> -			reg = <0x0100000 0x200000>;
> -		};
> -	};
> -};
> -
> -flash@1 {
> -	partitions {
> -		compatible = "fixed-partitions";
> -		#address-cells = <1>;
> -		#size-cells = <2>;
> -
> -		/* a 4 GiB partition */
> -		partition@0 {
> -			label = "filesystem";
> -			reg = <0x00000000 0x1 0x00000000>;
> -		};
> -	};
> -};
> -
> -flash@2 {
> -	partitions {
> -		compatible = "fixed-partitions";
> -		#address-cells = <2>;
> -		#size-cells = <2>;
> -
> -		/* an 8 GiB partition */
> -		partition@0 {
> -			label = "filesystem #1";
> -			reg = <0x0 0x00000000 0x2 0x00000000>;
> -		};
> -
> -		/* a 4 GiB partition */
> -		partition@200000000 {
> -			label = "filesystem #2";
> -			reg = <0x2 0x00000000 0x1 0x00000000>;
> -		};
> -	};
> -};
> -
> -flash@3 {
> -	partitions {
> -		compatible = "fixed-partitions";
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -
> -		partition@0 {
> -			label = "bootloader";
> -			reg = <0x000000 0x100000>;
> -			read-only;
> -		};
> -
> -		firmware@100000 {
> -			label = "firmware";
> -			reg = <0x100000 0xe00000>;
> -			compatible = "brcm,trx";
> -		};
> -
> -		calibration@f00000 {
> -			label = "calibration";
> -			reg = <0xf00000 0x100000>;
> -			compatible = "fixed-partitions";
> -			ranges = <0 0xf00000 0x100000>;
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -
> -			partition@0 {
> -				label = "wifi0";
> -				reg = <0x000000 0x080000>;
> -			};
> -
> -			partition@80000 {
> -				label = "wifi1";
> -				reg = <0x080000 0x080000>;
> -			};
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> new file mode 100644
> index 000000000000..c5e509e08f31
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/partitions/fixed-partitions.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Fixed partitions
> +
> +description: |
> +  This binding can be used on platforms which have strong conventions about
> +  which portions of a flash are used for what purposes, but which don't use an
> +  on-flash partition table such as RedBoot.
> +
> +  The partition table should be a node named "partitions". Partitions are then
> +  defined as subnodes.
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +
> +properties:
> +  compatible:
> +    const: fixed-partitions
> +
> +patternProperties:
> +  "^.*@[0-9a-f]+$":

You can drop '^.*'.

This needs to recurse to nested nodes. 

I think here you can do just:
  
$ref: #/

And drop 'compatible' as required. It's redundant anyways because the 
schema will only be applied if compatible matches.

This creates a circular schema which I'm not sure what will happen. If 
that doesn't work, then we'll have to define how many levels we support 
and then do something like this:

$defs:
  partition:
    # everything you have here...

And then here, just:

       $ref: #/$defs/partition
       unevaluatedProperties: false
       patternProperties:
         "@[0-9a-f]+$":
           $ref: #/$defs/partition

And repeat for however many levels we want to nest.

Also, I just added '$def' support to dt-schema last week.

> +    description: node describing a single flash partition
> +    type: object
> +
> +    properties:
> +      reg:
> +        description: partition's offset and size within the flash

I don't think we support more than 1 entry here, so add 'maxItems: 1'.

> +
> +      label:
> +        description: The label / name for this partition. If omitted, the label
> +          is taken from the node name (excluding the unit address).
> +
> +      read-only:
> +        description: This parameter, if present, is a hint that this partition
> +          should only be mounted read-only. This is usually used for flash
> +          partitions containing early-boot firmware images or data which should
> +          not be clobbered.
> +        type: boolean
> +
> +      lock:
> +        description: Do not unlock the partition at initialization time (not
> +          supported on all devices)
> +        type: boolean
> +
> +      slc-mode:
> +        description: This parameter, if present, allows one to emulate SLC mode
> +          on a partition attached to an MLC NAND thus making this partition
> +          immune to paired-pages corruptions
> +        type: boolean
> +
> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +
> +additionalProperties: true
