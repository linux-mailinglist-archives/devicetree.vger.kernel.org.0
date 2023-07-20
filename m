Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A990775B268
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 17:23:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231679AbjGTPXu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 11:23:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231543AbjGTPXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 11:23:48 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F043726AE
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 08:23:46 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3fd18b1d924so7416485e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 08:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689866625; x=1690471425;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=StXaJIyNxiupPE3gZ8jEVq+TeWWhd04Ep5aoUTltSnI=;
        b=bnGgKWhUkCmoSIaShdRBq3GSLwgqzP/P8iziZWYB+B/TcoX0tbCVzpBR+i2NaGY5bx
         ydtofLHxrqN2u0ULXPncWPUCaktB68y8nRaFBCHsJF4BXvR9ykfIRTlljEEzz/h6ih6E
         nT/P1Qv1vihu0WnX+XcjL9wEBu6qcE4e54tG9c1fr3gPcB3mFqZL6uOJ+n/6sXcYLwrR
         0MWgWhifzg7ICwWOqNaHxAP9vqNgbvZK7ZDHcNT8brG72YFGrXpidG/zliWveUk7+9sU
         ceXKgb3dwdJNpU6VMXw5qVG8ittEkzVdn6L8WksoUMymW94QXnQLLF1FxqSTPnXsNwK3
         OGWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689866625; x=1690471425;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=StXaJIyNxiupPE3gZ8jEVq+TeWWhd04Ep5aoUTltSnI=;
        b=VutNpkRxkWoyTUep/JYjRdUrm+wBVupjT7WiVPTJYN8XiVo1jLQEreVLytUVG3I5xp
         TGIq3+eTDj53WIGoXApX4kaTPqfb88uT/ARQgr8YTDhbKWZ4gYtbbSbmZn/csvZwxePN
         K5lXRxmuzoKA5c/Xnv8a91fi4wkMGmkPumHZB+w+Vh1Svh04C8SLb+ltqxiuwtUs7Nkq
         Mq3pUln31ZPBN+H/Oi3svqmzF/a6+Apy3lKQd9AhpnrTlj5LV0JBFV06MeEKTlU9yxTo
         Y6H6zFNMl4mQdS8+4UnvBR1IIJZYXcvLkGrYWfgsIZmcJKzHeUL3btBN2Wk00sjBLrd6
         gGNw==
X-Gm-Message-State: ABy/qLYDXonITK3V5S5f+I5oAL96O5VBI/HMhS90Yal30QdFEwIKguor
        83sCyn4Q7VLUeIcmnRATpg0=
X-Google-Smtp-Source: APBJJlENK14YihuuNqYq+M00i0vK5kdgDUrwYf9KSlykTAOFnjiCwHRVqlOJ+PhN5cH0YwRLPUmBRA==
X-Received: by 2002:a7b:c390:0:b0:3fc:62c:8447 with SMTP id s16-20020a7bc390000000b003fc062c8447mr2122978wmj.9.1689866625173;
        Thu, 20 Jul 2023 08:23:45 -0700 (PDT)
Received: from [192.168.0.78] ([178.233.24.1])
        by smtp.gmail.com with ESMTPSA id q17-20020a05600000d100b0031412b685d2sm1632812wrx.32.2023.07.20.08.23.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 08:23:44 -0700 (PDT)
Message-ID: <e2a70bbe-5acf-8329-1ca4-b5b3bc72b8a3@gmail.com>
Date:   Thu, 20 Jul 2023 18:23:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] schemas: Add a schema for binman
Content-Language: en-US, tr, en-GB
To:     Simon Glass <sjg@chromium.org>
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        devicetree@vger.kernel.org
References: <20230711211810.4172447-1-sjg@chromium.org>
 <20230711211810.4172447-2-sjg@chromium.org>
From:   Alper Nebi Yasak <alpernebiyasak@gmail.com>
In-Reply-To: <20230711211810.4172447-2-sjg@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Simon,

I know I haven't been able to look at binman stuff for a long time, but
I've been occasionally thinking about it through the course of a year
and think binman severely needs a design-wise review before things get
entrenched, even in the most fundamental parts. I do see the
cross-project collaboration intention here, but still...

There's also the issue of binman having multiple different device-trees:
its input, the ones in fdtmaps per image, the ones injected to U-Boot
dtb files per image. I'd say each has different needs, and those
differences have to be figured out before specified upstream. I can only
guess this is about the one that'll be in a u-boot.dtb.

I want to go through binman more thoroughly, but a lot of changes
happened since I last looked at it and I'm a bit slow at writing things,
so won't exactly be soon. That being said, here's some ideas off the top
of my head, for inspiration on both this schema and binman itself.

On 2023-07-12 00:18 +03:00, Simon Glass wrote:
> I am unsure whether to add this with a generic name, such as 'layout',
> but for now am using /firmware/binman to avoid conflicts with any other
> firmware-layout schema that others might be working on.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---

I've been thinking of compatible = "data,<type>" for entries, so
proposing 'data' here. A big ask, but it might be the one schema to
unify them all if we look at things as "description of data" instead of
"firmware layout".

Also consider data layouts in-memory. For example it could be an
alternative to /chosen linux,initrd-start to specify initramfs location.
Or things like keys or logs received from previous stages / other parts?
Weak examples, but maybe might connect better into firmware handoff
things. (Sorry, I don't know much about those.)

I'm also thinking about things like JPEG/BMP files for ACPI BGRT-like
boot splash, unique firmware/configuration/calibration data for drivers,
but they don't exactly need to be in-memory I guess.

> 
>  dtschema/schemas/firmware/binman.yaml       | 51 ++++++++++++++++++
>  dtschema/schemas/firmware/binman/entry.yaml | 57 +++++++++++++++++++++
>  2 files changed, 108 insertions(+)
>  create mode 100644 dtschema/schemas/firmware/binman.yaml
>  create mode 100644 dtschema/schemas/firmware/binman/entry.yaml
> 
> diff --git a/dtschema/schemas/firmware/binman.yaml b/dtschema/schemas/firmware/binman.yaml
> new file mode 100644
> index 0000000..4b1ecf6
> --- /dev/null
> +++ b/dtschema/schemas/firmware/binman.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Google LLC
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/binman.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Binman firmware layout
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description: |
> +  The binman node provides a layout for firmware, used when packaging firmware
> +  from multiple projects. For now it just supports a very simple set of
> +  features, as a starting point for discussion.
> +
> +  Documentation for Binman is available at:
> +
> +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
> +
> +  with the current image-description format at:
> +
> +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
> +
> +properties:
> +  $nodename:
> +    const: binman

I think having a single /firmware/binman node for a single image *and*
having a "multiple-images" mode under it is quite bad because the
single-image mode is multiple-images with one image. Multiple images
should be the only mode of operation

Furthermore, each image should be able to function independently of
others, so I think to help enforce that maybe there shouldn't be any
formal binman node. Merely instances of images that may happen to be
under one parent node that may happen to be called /firmware/binman. The
images can be compatible = "data,image" or something and we could search
by that.

Or, heh, a single image node that happens to be named /firmware/binman
because we are embedding it into a u-boot.dtb in that image. But perhaps
we shouldn't restrain things like that. A bit contrived, but why should
we be unable to start from an image in SPI and make it load something
from microSD?

Going even further, let me suggest putting the image nodes as children
of the devices whose layout the image describes. Then I imagine we can
have something like a "data driver" (both for U-Boot and Linux) that
reads the entry data from the parent data/block device and makes it
available for other drivers or in sysfs.

> +
> +required:
> +  - compatible
> +
> +additionalProperties: false

Including the binman version or a version number for the spec might be
useful later on.

> +
> +examples:
> +  - |
> +  - |
> +    firmware {
> +      binman {
> +        compatible = "u-boot,binman";

Consider including "image" or "namespace" in the compatible string to
disambiguate. Not sure of the conventions, "binman,*" could work just as
well, though I'm partial to "data,*" as I've suggested.

> +
> +        u-boot {
> +          size = <0xa0000>;
> +        };
> +
> +        atf-bl31 {
> +          offset = <0x100000>;
> +        };
> +      };
> +    };
> diff --git a/dtschema/schemas/firmware/binman/entry.yaml b/dtschema/schemas/firmware/binman/entry.yaml
> new file mode 100644
> index 0000000..16b84c5
> --- /dev/null
> +++ b/dtschema/schemas/firmware/binman/entry.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Google LLC
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/binman/entry.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Binman entry
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description: |
> +  The entry node specifies a single entry in the firmware.
> +
> +  Entries have a specific type, such as "u-boot" or "atf-bl31". If the type
> +  is missing, the name is used as the type.

I really dislike the name being a fallback for the type, it's guiding
people to using types as the names (or even worse, to assuming names can
only be same as the type), leading to ugly combinations of "blob-ext",
"fdt-N", "fit", "section" and so on. Node names should be descriptive
even when you don't have the device-tree source in front of you, think
of "binman extract" and others. Ones like "u-boot" and "atf-bl31" are
fine only because they are very specific entry types.

> +
> +  Note: This definition is intended to be hierarchical, so that entries can
> +  appear in other entries. Schema for that is TBD.

It might be better to redesign things bottom-up -- first raw data, then
a few data types, then sections and images that hold these. Oh, and I
have a feeling section/image can be the same thing if we think hard
enough (e.g. explicit node labels/references for fdtmap).

> +
> +properties:
> +  $nodename:
> +    pattern: "^[-a-z]+(-[0-9]+)?$"
> +
> +  type:
> +    $ref: /schemas/types.yaml#/definitions/string

Consider compatible = "data,bytes" instead, making it required. Or maybe
"data,blob" but that's not what's there on the binman side. (e.g. rename
"blob" to "file", "blob-ext" could be "file" combined with a
globally-available "optional" property.)

> +
> +  offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Provides the offset of this entry from the start of its parent section.
> +
> +  size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Provides the size of this entry in bytes.

Can't we use "reg" for these, and even entry@<addr> in the definitions?
I know the latter conflicts with the fdt@SEQ stuff, but that should be a
binman-input-only thing, and I dislike that anyway. Maybe could work if
we put image nodes under block devices...

Or maybe even better, I think we should make it like FIT: allow a "data"
property that has it inside the dtb, or a pair of "data-offset/position"
and "data-size" properties if it's outside. Inlining data inside the dtb
could help us do nice things in binman, like hashes/signatures as entry
types instead of special-casing them.

In fact it could be possible to turn binman images into a FIT 2.0 if we
do some more work on top of that, instead of nesting a FIT inside a
binman image.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware {
> +      binman {
> +        compatible = "u-boot,binman";
> +
> +        u-boot {
> +          size = <0xa0000>;
> +        };
> +
> +        second-area {
> +          type = "atf-bl31";
> +          offset = <0x100000>;
> +        };
> +      };
> +    };
