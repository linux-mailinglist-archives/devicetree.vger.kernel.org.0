Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94666763FD1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 21:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230159AbjGZTgH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 15:36:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjGZTgG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 15:36:06 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AF7E19BF
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 12:36:04 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5222b917e0cso182755a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 12:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1690400162; x=1691004962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r0HWCMXi7385egpye2WW6ocueBgzFHUoQ1cWfVFLXb8=;
        b=eLjCSN6Btlz/m2b149y7QpC/qywqxIZvz8wIwP5DYFesHfY9tG1ix6EeNB4qO7z/fK
         M5gOfHU8NSVmj7Klz1z7pTzcIwbhYRWIkfIx4l5bzsjKj/68kJA/c9rR77N4aA37bGk5
         +MNh7J9q5VmRILhEPMIowEicYFfVH6bFV+d0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690400162; x=1691004962;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r0HWCMXi7385egpye2WW6ocueBgzFHUoQ1cWfVFLXb8=;
        b=V4kkomRJsxc0a0oXFfwhKE3lA7n/KbMD2DoGCtUZfDlZzP5LYyw5Dc1BS3POjHUT4h
         XelCf25YOU6VWMfNqQrlQljBOQUdQTzHKlwHLMF88KsiFsKJjyf1wbB6fQVp2AnDcg8K
         lUttkdHPS4McPqSaJIy23izUrMR899YVN3Twwmthdn1N/5ToVRP1cRWx0mNDmoVHg+6+
         lKYUi8MhhOcwEqEU0QnFW9L8TC07PJMsvuSe3jRdpVQKQyYZpwjBGnlsugKB/ayVUxiX
         5/l58jm6XfgpOvD3BsTifFnFaBZakG4kLknu5CM7f2RPmpz9GbuEbzt5w5BsIARu/WGK
         XC/Q==
X-Gm-Message-State: ABy/qLY1sqxwX/DuENf+o7fPF3jXBNKHn5J5biB/kv/mfqJGB/O4S/h+
        ZknxBRpb+YYYpaRAWOb1XJn8dHsh+HEiEGb/0+V2Y1Z+t0+8yIvNkjU=
X-Google-Smtp-Source: APBJJlGJyxocifv8U1uKYgqk+0+B2nx+J32clNqxqaxodeeQ+Cevx0Xh14OS2q3vwMPyZnxfrW6Ffuhgxd4CCNh5SZQ=
X-Received: by 2002:aa7:ccd4:0:b0:522:46bd:f9ba with SMTP id
 y20-20020aa7ccd4000000b0052246bdf9bamr62026edt.42.1690400162041; Wed, 26 Jul
 2023 12:36:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230720195617.2276563-1-sjg@chromium.org> <20230720195617.2276563-2-sjg@chromium.org>
In-Reply-To: <20230720195617.2276563-2-sjg@chromium.org>
From:   Simon Glass <sjg@chromium.org>
Date:   Wed, 26 Jul 2023 13:35:50 -0600
Message-ID: <CAPnjgZ3wqSC-5Y2DTrL=H1GLSVa4XkJ4mSu7OG1hmE9o2z5JbQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] schemas: Add a schema for binman
To:     devicetree@vger.kernel.org
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Tom Rini <trini@konsulko.com>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED,USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 20 Jul 2023 at 13:56, Simon Glass <sjg@chromium.org> wrote:
>
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
> +    };
> +
> +  Note that the intention is to change Binman to use whatever schema is agreed
> +  here.
> +
> +properties:
> +  $nodename:
> +    const: binman
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
> --
> 2.41.0.487.g6d72f3e995-goog

Are there any more comments on this v2? Is there anyone else we should
add to review this?

Regards,
Simon

>
