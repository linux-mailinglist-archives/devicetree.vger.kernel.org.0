Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0C1A2D5CA1
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 15:00:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389792AbgLJOAL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 09:00:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389761AbgLJN5d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 08:57:33 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAECAC0613CF
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 05:56:52 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id y19so8277813lfa.13
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 05:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RNFfYLpasfC9Br1QpSswUhPahvfKJChaREtG6rY3u6U=;
        b=NtHHIPyNsgcmQGlrXBghrGMFjqvLXxOZ0LM928wSPBLXoUIE84JqLiK2njmxSldEgn
         DxemkUql2x1xb9Tyo2hJqVUYsReoOa6KnCvWarwmeOHNmR7CjUa9nTFOVZn9WgedLD3A
         iBtaMsyvr4AC2cexgXj6HVbpl+YvGBdfR/hxNK5Cw/rLRMN2OtOdIleXhMHLhkT6/NTu
         X8lgzlK2vYT/dtvDVHvMaMQjI+mTpzF7RYYhhd6ewGsNbMLoMGErw5LmHaCjTolOZIAO
         r1IY7/8E3g3aV63WghgMKd+AttlukJxGs1OI6AOfljP3cG495UWLJLKsCtwc+cAjJcqb
         6idA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RNFfYLpasfC9Br1QpSswUhPahvfKJChaREtG6rY3u6U=;
        b=scxVMIQcz68zNnqa6jGlP9daQUXAbtuO1T7Feenn+S5zGH7EceR804/KopC6WPc1SJ
         PMnh0exP195VPpN+1MNkLSdpmUue7h1XTM9mnBUyNAMY939CIqCtqNBioTC3t0d/zDcG
         smWHLakpSknSe8pS3kvP2fJ2WiiYAYYgaZKUxAfNDWcuIzGF4/KeVUGwq0nKmchRAeRa
         eBBM2aC3EpZCIlZpShgFBvLDlgFjzwPYonmAMc5Df9DwsdqrPa3kJPD3I6FGlyQuQHDW
         MkBe0Phxum3/zx7rm4uSZT988tJ9DE+yrbjcHqTn0KXLIcV6hA6vKyHovpU2VBKy/9st
         mirg==
X-Gm-Message-State: AOAM533kWT7DKI08vnlSVFvnMF2f9RVAR2wLTQy5+xHuG0mKNARO1tbU
        EUNld3u8jSCtFbkv4yXq4Qw=
X-Google-Smtp-Source: ABdhPJzp4uW5x937rWLyJOuddKRcQ0s7mJUVdx/1JPqrfgYba/+mjiV+UvPI5GG2x53QaZfgC2VBpQ==
X-Received: by 2002:a05:6512:110a:: with SMTP id l10mr2632401lfg.167.1607608611199;
        Thu, 10 Dec 2020 05:56:51 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id a15sm526651lfr.68.2020.12.10.05.56.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 05:56:50 -0800 (PST)
Subject: Re: [PATCH] dt-bindings: mtd: convert "fixed-partitions" to the
 json-schema
To:     Rob Herring <robh@kernel.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20201209130235.7505-1-zajec5@gmail.com>
 <20201210024840.GA1510718@robh.at.kernel.org>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <daa204cc-c736-8eab-7740-00c4ba457bcb@gmail.com>
Date:   Thu, 10 Dec 2020 14:56:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210024840.GA1510718@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10.12.2020 03:48, Rob Herring wrote:
> On Wed, Dec 09, 2020 at 02:02:35PM +0100, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> This standardizes its documentation, allows validating with Makefile
>> checks and helps writing DTS files.
>>
>> Noticeable changes:
>> 1. Dropped "Partitions can be represented by sub-nodes of a flash
>>     device." as we also support subpartitions (don't have to be part of
>>     flash device node)
>> 2. Dropped "to Linux" as bindings are meant to be os agnostic.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   .../devicetree/bindings/mtd/partition.txt     | 131 +---------------
>>   .../mtd/partitions/fixed-partitions.yaml      | 146 ++++++++++++++++++
>>   2 files changed, 148 insertions(+), 129 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/partition.txt b/Documentation/devicetree/bindings/mtd/partition.txt
>> index 4a39698221a2..ead90e8274d6 100644
>> --- a/Documentation/devicetree/bindings/mtd/partition.txt
>> +++ b/Documentation/devicetree/bindings/mtd/partition.txt
>> @@ -24,137 +24,10 @@ another partitioning method.
>>   Available bindings are listed in the "partitions" subdirectory.
>>   
>>   
>> -Fixed Partitions
>> -================
>> -
>> -Partitions can be represented by sub-nodes of a flash device. This can be used
>> -on platforms which have strong conventions about which portions of a flash are
>> -used for what purposes, but which don't use an on-flash partition table such
>> -as RedBoot.
>> -
>> -The partition table should be a subnode of the flash node and should be named
>> -'partitions'. This node should have the following property:
>> -- compatible : (required) must be "fixed-partitions"
>> -Partitions are then defined in subnodes of the partitions node.
>> +Deprecated: partitions defined in flash node
>> +============================================
>>   
>>   For backwards compatibility partitions as direct subnodes of the flash device are
>>   supported. This use is discouraged.
>>   NOTE: also for backwards compatibility, direct subnodes that have a compatible
>>   string are not considered partitions, as they may be used for other bindings.
>> -
>> -#address-cells & #size-cells must both be present in the partitions subnode of the
>> -flash device. There are two valid values for both:
>> -<1>: for partitions that require a single 32-bit cell to represent their
>> -     size/address (aka the value is below 4 GiB)
>> -<2>: for partitions that require two 32-bit cells to represent their
>> -     size/address (aka the value is 4 GiB or greater).
>> -
>> -Required properties:
>> -- reg : The partition's offset and size within the flash
>> -
>> -Optional properties:
>> -- label : The label / name for this partition.  If omitted, the label is taken
>> -  from the node name (excluding the unit address).
>> -- read-only : This parameter, if present, is a hint to Linux that this
>> -  partition should only be mounted read-only. This is usually used for flash
>> -  partitions containing early-boot firmware images or data which should not be
>> -  clobbered.
>> -- lock : Do not unlock the partition at initialization time (not supported on
>> -  all devices)
>> -- slc-mode: This parameter, if present, allows one to emulate SLC mode on a
>> -  partition attached to an MLC NAND thus making this partition immune to
>> -  paired-pages corruptions
>> -
>> -Examples:
>> -
>> -
>> -flash@0 {
>> -	partitions {
>> -		compatible = "fixed-partitions";
>> -		#address-cells = <1>;
>> -		#size-cells = <1>;
>> -
>> -		partition@0 {
>> -			label = "u-boot";
>> -			reg = <0x0000000 0x100000>;
>> -			read-only;
>> -		};
>> -
>> -		uimage@100000 {
>> -			reg = <0x0100000 0x200000>;
>> -		};
>> -	};
>> -};
>> -
>> -flash@1 {
>> -	partitions {
>> -		compatible = "fixed-partitions";
>> -		#address-cells = <1>;
>> -		#size-cells = <2>;
>> -
>> -		/* a 4 GiB partition */
>> -		partition@0 {
>> -			label = "filesystem";
>> -			reg = <0x00000000 0x1 0x00000000>;
>> -		};
>> -	};
>> -};
>> -
>> -flash@2 {
>> -	partitions {
>> -		compatible = "fixed-partitions";
>> -		#address-cells = <2>;
>> -		#size-cells = <2>;
>> -
>> -		/* an 8 GiB partition */
>> -		partition@0 {
>> -			label = "filesystem #1";
>> -			reg = <0x0 0x00000000 0x2 0x00000000>;
>> -		};
>> -
>> -		/* a 4 GiB partition */
>> -		partition@200000000 {
>> -			label = "filesystem #2";
>> -			reg = <0x2 0x00000000 0x1 0x00000000>;
>> -		};
>> -	};
>> -};
>> -
>> -flash@3 {
>> -	partitions {
>> -		compatible = "fixed-partitions";
>> -		#address-cells = <1>;
>> -		#size-cells = <1>;
>> -
>> -		partition@0 {
>> -			label = "bootloader";
>> -			reg = <0x000000 0x100000>;
>> -			read-only;
>> -		};
>> -
>> -		firmware@100000 {
>> -			label = "firmware";
>> -			reg = <0x100000 0xe00000>;
>> -			compatible = "brcm,trx";
>> -		};
>> -
>> -		calibration@f00000 {
>> -			label = "calibration";
>> -			reg = <0xf00000 0x100000>;
>> -			compatible = "fixed-partitions";
>> -			ranges = <0 0xf00000 0x100000>;
>> -			#address-cells = <1>;
>> -			#size-cells = <1>;
>> -
>> -			partition@0 {
>> -				label = "wifi0";
>> -				reg = <0x000000 0x080000>;
>> -			};
>> -
>> -			partition@80000 {
>> -				label = "wifi1";
>> -				reg = <0x080000 0x080000>;
>> -			};
>> -		};
>> -	};
>> -};
>> diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
>> new file mode 100644
>> index 000000000000..c5e509e08f31
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
>> @@ -0,0 +1,146 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mtd/partitions/fixed-partitions.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Fixed partitions
>> +
>> +description: |
>> +  This binding can be used on platforms which have strong conventions about
>> +  which portions of a flash are used for what purposes, but which don't use an
>> +  on-flash partition table such as RedBoot.
>> +
>> +  The partition table should be a node named "partitions". Partitions are then
>> +  defined as subnodes.
>> +
>> +maintainers:
>> +  - Rafał Miłecki <rafal@milecki.pl>
>> +
>> +properties:
>> +  compatible:
>> +    const: fixed-partitions
>> +
>> +patternProperties:
>> +  "^.*@[0-9a-f]+$":
> 
> You can drop '^.*'.
> 
> This needs to recurse to nested nodes.
> 
> I think here you can do just:
>    
> $ref: #/
> 
> And drop 'compatible' as required. It's redundant anyways because the
> schema will only be applied if compatible matches.

I managed to implement recursive schema but then I run dt_binding_check and
realized it may be not what we really want.

The error I got was:
Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.example.dt.yaml: partitions: firmware@100000:compatible:0: 'fixed-partitions' was expected
         From schema: Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml

and was caused by the following example:
partitions {
	compatible = "fixed-partitions";
	#address-cells = <1>;
	#size-cells = <1>;

	(...)

	firmware@100000 {
		label = "firmware";
		reg = <0x100000 0xe00000>;
		compatible = "brcm,trx";
	};

	(...)
}

As you can see a single partition can use any available parser, so we can't
require only "fixed-partitions" to be nested in the "fixed-partitions".

In this situation I think this commit may be OK after all if I just fix regex
and required (drop "compatible").

What do you think?


FWIW:

properties:
   compatible:
     const: fixed-partitions

patternProperties:
   "@[0-9a-f]+$":
     allOf:
       - $ref: "#"
       - properties:
           reg:
             maxItems: 1
             description: partition's offset and size within the flash

           label:
             description: The label / name for this partition. If omitted, the label
               is taken from the node name (excluding the unit address).

           read-only:
             description: This parameter, if present, is a hint that this partition
               should only be mounted read-only. This is usually used for flash
               partitions containing early-boot firmware images or data which should
               not be clobbered.
             type: boolean

           lock:
             description: Do not unlock the partition at initialization time (not
               supported on all devices)
             type: boolean

           slc-mode:
             description: This parameter, if present, allows one to emulate SLC mode
               on a partition attached to an MLC NAND thus making this partition
               immune to paired-pages corruptions
             type: boolean

         required:
           - reg
