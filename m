Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17B3F76F407
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 22:29:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjHCU3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 16:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjHCU3p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 16:29:45 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD15410CA
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 13:29:42 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3177f520802so1596858f8f.1
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 13:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691094581; x=1691699381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RSwBHNi97+J9m3FrxpZwkRonzR8gjhpUINnI5IXms0M=;
        b=V2VUmHZFrSWXTcK13oyJSRyLeu03rF02eeL0GJAWZjDrPgx/R7EQNh5WQ2I/a8HYrE
         wqwJsBv+F4rrNYjFB+ogK13SpUK9rtFfHS1Fon9ll1Ri7mDNNISJLiKq91R9HcmFqIPm
         lA4e0AnNBhaNg/IvdKgmDxxbnSUegmrZVL9aZfKjMiGpuhG130fSDYeu3bUUd+hIT4M2
         FwKOeEncqxCozXAR5rdcEdz3r2IE6dE93rWfKc+Fg+R9h8juOAnTXKhw+hYrqPpD6c59
         1TI6BAgDwV0yQcki0EESj+3QBYY4x9pe4Y5xyiZJhxOQaKvlaBVYT/1ZBtqnpHN9w5u+
         xSHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691094581; x=1691699381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RSwBHNi97+J9m3FrxpZwkRonzR8gjhpUINnI5IXms0M=;
        b=DMu+Pt+w/tQ9McKmJSoGLYCvIlErGb8V6i9f1rdNHgEJLlvM+8XjMYJPJDcpkVxJGg
         wffIDJoblvq8oRGicMIxj+02cjfMK9JTg/38TrdELw2nHAqh38JCDngD24QA/uaoGBg3
         x7h1Htk4BxVzLEeGmsU3pZkRA30QtBKGVqGo55ar83rPK+1yQQEEpM1W9B4bis9jmU/4
         B3Mbcdz3d96/j//K17qYnivry0mAVIL8+5viNnFPP2CIncmlpZXhvN/9xI6PfmQc3+0P
         leGVwj0OreiEJ0f7fhp6FP4NDnhLnbq1Z1fHz05RddsOzePq6oy6h0az90l7vuZ+ph7v
         30iQ==
X-Gm-Message-State: ABy/qLY0XJKjh8/IBQfVC+vwGH2oVxd73BAaQqadC8bgJUd/45YEGMT+
        JVzMztYKw0TUkXV4gYXnkiw=
X-Google-Smtp-Source: APBJJlEiywr0H1pZk3n/fOUtxSUVnRDhU15aAzz2s/sAJ3QAVT6nG3So/GUqRpPrGir4S9yRAz8glg==
X-Received: by 2002:adf:e90d:0:b0:30a:e70d:8022 with SMTP id f13-20020adfe90d000000b0030ae70d8022mr8169591wrm.26.1691094580804;
        Thu, 03 Aug 2023 13:29:40 -0700 (PDT)
Received: from [192.168.0.79] ([178.233.24.1])
        by smtp.gmail.com with ESMTPSA id s8-20020adfea88000000b0031272fced4dsm698782wrm.52.2023.08.03.13.29.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Aug 2023 13:29:40 -0700 (PDT)
Message-ID: <92d83c4c-6f4c-5c75-cb5f-67b453da8058@gmail.com>
Date:   Thu, 3 Aug 2023 23:29:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] schemas: Add a schema for binman
Content-Language: en-US, tr, en-GB
To:     Simon Glass <sjg@chromium.org>
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Tom Rini <trini@konsulko.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org
References: <20230720195617.2276563-1-sjg@chromium.org>
 <20230720195617.2276563-2-sjg@chromium.org>
From:   Alper Nebi Yasak <alpernebiyasak@gmail.com>
In-Reply-To: <20230720195617.2276563-2-sjg@chromium.org>
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

On 2023-07-20 22:56 +03:00, Simon Glass wrote:
> With this version I have done with a generic name, in this case 'data',
> as suggested by Alper Nebi Yasak. This may be controversial, but we may
> as well have the dicussion now. I assume that there are no other
> ongoing attempts to define the layout of firmware in devicetree.
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> Changes in v2:
> - Reworked significantly based on Alper's comments
> 
>  dtschema/schemas/firmware/binman/entry.yaml | 80 +++++++++++++++++++++
>  dtschema/schemas/firmware/image.yaml        | 77 ++++++++++++++++++++
>  2 files changed, 157 insertions(+)
>  create mode 100644 dtschema/schemas/firmware/binman/entry.yaml
>  create mode 100644 dtschema/schemas/firmware/image.yaml
> 
> diff --git a/dtschema/schemas/firmware/binman/entry.yaml b/dtschema/schemas/firmware/binman/entry.yaml
> new file mode 100644
> index 0000000..d50f96d
> --- /dev/null
> +++ b/dtschema/schemas/firmware/binman/entry.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Google LLC
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/image/entry.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Image entry
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description: |
> +  The entry node specifies a single entry in the firmware image.
> +
> +  Entries have a specific type, such as "u-boot" or "atf-bl31". This is provided
> +  using compatible = "data,<type>".
> +
> +  Note: This definition is intended to be hierarchical, so that entries can
> +  appear in other entries. Schema for that is TBD.
> +
> +properties:
> +  $nodename:
> +    pattern: "^[-a-z]+(-[0-9]+)?$"
> +
> +  compatible:
> +    $ref: /schemas/types.yaml#/definitions/string
> +
> +  offset:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Provides the offset of this entry from the start of its parent section.
> +
> +      This may be omitted in the description provided by Binman, in which case
> +      the value is calculated as part of image packing.
> +
> +  size:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Provides the size of this entry in bytes.
> +
> +      This may be omitted in the description provided by Binman, in which case
> +      the value is calculated as part of image packing.

So AFAIU, binman will take none/one/both of "offset" and "size" as
inputs and will pass them to the output unmodified, instead adding a
"reg" pair of their calculated final values?

Is there a schema-computational way to ensure that "reg" has to contain
the same values as "offset" and "size"? Or is that not a restriction at
all and "reg" overrides the others?

> +
> +  reg:
> +    description: |
> +      Defines the offset and size of this entry, with reference to its parent
> +      image / section.
> +
> +      Note This is typically omitted in the description provided to Binman,
> +      since the value is calculated as part of image packing. Separate
> +      properties are provided for the size and offset of an entry, so that it is
> +      easy to specify none, one or both. The `reg` property is the only one that
> +      needs to be looked at once the image has been built.
> +

Do we not need a $ref for "reg"? Is there anything applicable?

BTW, I'm not that familiar with device-tree interpretation, I
occasionally saw 'reg' being used as an <offset size> pair, and was
mostly just asking if it's appropriate.

(Also TIL "ranges", and I'm imagining ranges = <0 $size 4G-$size 4G>; as
an end-at-4gb replacement/generalization :P, but I know, later, later.)

> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware {
> +      image {
> +        compatible = "data,image";
> +        #address-cells = <1>;
> +        $size-cells = <1>;
> +
> +        u-boot@0 {
> +          compatible = "data,u-boot";
> +          reg = <0 0xa0000>;
> +        };
> +
> +        atf-bl31@0x100000 {
> +          compatible = "data,atf-bl31";
> +          reg = <0x100000 0x20000>;
> +        };
> +      };
> +    };
> diff --git a/dtschema/schemas/firmware/image.yaml b/dtschema/schemas/firmware/image.yaml
> new file mode 100644
> index 0000000..949b067
> --- /dev/null
> +++ b/dtschema/schemas/firmware/image.yaml
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Google LLC
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/image.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Binman firmware layout
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +description: |
> +  The image node provides a layout for firmware, used when packaging firmware
> +  from multiple projects. For now it just supports a very simple set of
> +  features, as a starting point for discussion.
> +
> +  The Binman tool processes this node to produce a final image which can be
> +  loaded into suitable storage device. Documentation is at:
> +
> +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
> +
> +  The current image-description format is here:
> +
> +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
> +
> +  It is desirable to reference the image from the storage-device node, perhaps
> +  using an image-desc property:
> +
> +    spiflash@0 {
> +      compatible = "spidev", "jedec,spi-nor";
> +      image-desc = <&image>;

Bikeshedding, but maybe "layout" or "data,layout" would be nicer.

> +    };
> +
> +  Note that the intention is to change Binman to use whatever schema is agreed
> +  here.
> +
> +properties:
> +  $nodename:
> +    const: binman

Doesn't match the example, and I guess you mean "^[-a-z]+(-[0-9]+)?$"
like the entry one.

> +
> +  compatible:
> +    const: data,image
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - "#address-cell"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware {
> +      image {
> +        compatible = "data,image";
> +        #address-cells = <1>;
> +        $size-cells = <1>;
> +
> +        u-boot@0 {
> +          compatible = "data,u-boot";
> +          reg = <0 0xa0000>;
> +        };
> +
> +        atf-bl31@0x100000 {
> +          compatible = "data,atf-bl31";
> +          reg = <0x100000 0x20000>;
> +        };
> +      };
> +    };
