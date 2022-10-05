Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F60D5F4D99
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 04:12:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbiJECMD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 22:12:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229618AbiJECMC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 22:12:02 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DFA939B9F
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 19:12:01 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id g23so9256931qtu.2
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 19:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Bhak+s3ylR2FF/B/HW4Yj0hJZg7TqIKd6TKJAIyki4Q=;
        b=QDEdwBT56HxPesX7dJ3/d/Y8GVEVHlbzvffzH2KcTza0wEnEtIvkKXCaXjXZFqvuFb
         FZvIExCkeUhVtEFHwC/bpe2xLn9auxEEFu23pXvF8L+cI0t6OCyJ+XC9D0IL8IzECkF0
         5llU5WQ5oVXJppl4aV800AjoFhJc8eBu2JZb+Dg55CDL6EJ53ShW+PFruQApq5QuLLxQ
         LZVwtfGg2VjJ/NPWLPgVpSiXnJcwqZYg1WzGZvCq5Hg+wIr/Ze9ZYqncTiQpftPbUpz8
         jonEuLX2l+OT6TfK9wR0LE6m/DB/rzGGh7omRUi1qJJjYQ336ZLMQj4DMTn3rWBhX2Js
         D79g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Bhak+s3ylR2FF/B/HW4Yj0hJZg7TqIKd6TKJAIyki4Q=;
        b=BsoyLdhafB3WQazvDjLnovAhy0fgoGbom43CdyArTCuzOF4g5jWVOKT1L3FKjUEYri
         3RkplikHkGn4GDKFmWYkjHgl8mZ0BB8CVOhngPWWpQoJ7U4qB7ZlwpMgmUtkPCU/qfqp
         IM3uCneCVyGle4AmUPnCSXJGnpJskzhqcIzBt4+u+PocaDS1MdBsWcCSFyD8s8PMZiaB
         2RvMYBxThFylou9w4Ot1GYCiVx0ZdC0i+luEFoqddxJtMWVLc+RFaFTAO5EwNm1yD/XX
         r8mFJ8FBcqZgj8n80AmjFalXrBVuI5b2oTvAw7njw/iq92hUZ0DBxgW+cLi+Fy74PcVJ
         ECCQ==
X-Gm-Message-State: ACrzQf2CXYwSWb2MU1RwXSOtS/EYsaJ7ZgzvdIWYfkl4aYnSQTIz262+
        H8Pwkb50mGJoZmfWO0asXn0=
X-Google-Smtp-Source: AMsMyM6akWGi+fjuuH+6s1ZKtuPV6bhyHsAuJrb7M1HBXafmCXOAmw0Sm/F0cC+Ka+UzbzYAdD8Gdw==
X-Received: by 2002:ac8:5bc5:0:b0:35d:129b:5104 with SMTP id b5-20020ac85bc5000000b0035d129b5104mr22555193qtb.237.1664935920366;
        Tue, 04 Oct 2022 19:12:00 -0700 (PDT)
Received: from [192.168.1.201] (pool-173-73-95-180.washdc.fios.verizon.net. [173.73.95.180])
        by smtp.gmail.com with ESMTPSA id u7-20020a05620a454700b006b640efe6dasm16229376qkp.132.2022.10.04.19.11.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 19:11:59 -0700 (PDT)
Message-ID: <cfb502de-6888-135f-9f85-4614d3655656@gmail.com>
Date:   Tue, 4 Oct 2022 22:11:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3] schemas: Add schema for U-Boot driver model 'phase
 tags'
Content-Language: en-US
To:     Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>
References: <20221004232246.239237-1-sjg@chromium.org>
From:   Sean Anderson <seanga2@gmail.com>
In-Reply-To: <20221004232246.239237-1-sjg@chromium.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/4/22 19:22, Simon Glass wrote:
> Until recently it has not been possible to add any U-Boot-specific
> properties to the device tree schema. Now that it is somewhat separated
> from Linux and people are feeling the enormous pain of the bifurcated
> schema, it seems like a good time to add this and other U-Boot-specific
> bindings.
> 
> U-Boot has some particular challenges with device tree and devices which
> are not faced with Linux:
> 
> - U-Boot has multiple build phases, such as a Secondary Program Loader
>    (SPL) phase which typically runs in a pre-SDRAM environment where code
>    and data space are limited. In particular, there may not be enough
>    space for the full device tree blob. U-Boot uses various automated
>    techniques to reduce the size from perhaps 40KB to 3KB.
> - Some U-Boot phases needs to run before the clocks are properly set up,
>    where the CPU may be running very slowly. Therefore it is important to
>    bind only those devices which are actually needed in that phase
> - Unlike Linux or UEFI, U-Boot uses lazy initialisation for its devices,
>    with 'bind' and 'probe' being separate steps. Even if a device is bound,
>    it is not actually probed until it is used. This is necessary to keep
>    the boot time reasonable, e.g. to under a second
> 
> The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> pre-relocation, then post-relocation). ALl but the last two are optional.

nit: All

> 
> For the above reasons, U-Boot only includes the full device tree in the
> final 'U-Boot proper' build. Even then, before relocation U-Boot only
> processes nodes which are marked as being needed.
> 
> For this to work, U-Boot's driver model[1] provides a way to mark device
> tree nodes as applicable for a particular phase. This works by adding a
> tag to the node, e.g.:
> 
>     cru: clock-controller@ff760000 {
>        u-boot,dm-all;
>        compatible = "rockchip,rk3399-cru";
>        reg = <0x0 0xff760000 0x0 0x1000>;
>        rockchip,grf = <&grf>;
>        #clock-cells = <1>;
>        #reset-cells = <1>;
>        ...
>     };
> 
> Here the "u-boot,dm-all" tag indicates that the node must be present in
> all phases, since the clock driver is required
> 
> There has been discussion over the years about whether this could be done
> in a property instead, e.g.
> 
>     options {
>        u-boot,dm-all = <&cru> <&gpio_a> ...;
>        ...
>     };
> 
> Some problems with this:
> 
> - we need to be able to merge several such tags from different .dtsi files
>    since many boards have their own specific requirements
> - it is hard to find and cross-reference the affected nodes
> - it is more error-prone
> - it requires significant tool rework in U-Boot, including fdtgrep and
>    the build system
> - is harder (slower, more code) to process since it involves scanning
>    another node/property to find out what to do with a particular node
> - we don't want to add phandle arguments to the above since we are
>    referring, e.g., to the clock device as a whole, not a paricular clock
> - the of-platdata feature[2], which converts device tree to C for even
>    more constrained environments, would need to become aware of the
>    /options node
> 
> There is also the question about whether this needs to be U-Boot-specific,
> or whether the tags could be generic. From what I can tell, U-Boot is the
> only bootloader which seriously attempts to use a runtime device tree in
> all cases. We could perhaps adopt U-Boot's naming for the phases and drop
> the "u-boot," prefix, but that might cause confusion.
> 
> It should also be noted that the approach provided here has stood the test
> of time, used in U-Boot for 8 years so far.
> 
> So add the schema for this. This will allow a major class of schema
> exceptions to be dropped from the U-Boot source tree.
> 
> This being sent to the mailing list since it might attract more review.
> A PR will be sent when this has had some review. That is why the file
> path is set up for https://github.com/devicetree-org/dt-schema rather
> than the Linux kernel.
> 
> [1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.html
> [2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html
> 
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
> 
> Changes in v3:
> - Fix an incorrect schema path in $id
> 
> Changes in v2:
> - Expand docs to include a description of each tag
> - Fix some typos and unclear wording
> 
>   dtschema/schemas/u-boot.yaml | 66 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 66 insertions(+)
>   create mode 100644 dtschema/schemas/u-boot.yaml
> 
> diff --git a/dtschema/schemas/u-boot.yaml b/dtschema/schemas/u-boot.yaml
> new file mode 100644
> index 0000000..b888b3e
> --- /dev/null
> +++ b/dtschema/schemas/u-boot.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: BSD-2-Clause
> +# Copyright 2022 Google LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/u-boot.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Bindings required by U-Boot driver model
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +patternProperties:
> +  "^u-boot,dm-(tpl|vpl|spl|all|pre-reloc)$":
> +    type: boolean
> +    description: |
> +      The device tree is often quite large (e.g. 40KB) and cannot fit into xPL
> +      phases like SPL, TPL. Even with U-Boot proper, we normally only want to
> +      init a small subset of devices before relocation.
> +
> +      U-Boot supports adding tags to device tree nodes to allow them to be
> +      marked according to the U-Boot phases where they should be included.
> +
> +      Without any tags, nodes are included only in U-Boot proper after
> +      relocation. Any untagged nodes are dropped from xPL and are ignored before
> +      relocation in U-Boot proper.
> +
> +      The xPL builds use fdtgrep drop any nodes which are not needed for that
> +      build. For example, TPL will drop any nodes which are not marked with
> +      u-boot,dm-tpl or u-boot,dm-all tags.
> +
> +      The available tags are as follows:
> +
> +        u-boot,dm-all:
> +          Include this node in all phases (see enum u_boot_phase)
> +
> +        u-boot,dm-pre-reloc:
> +          Enable this node before relocation in U-Boot proper
> +
> +        u-boot,dm-tpl:
> +          Enable this node in the Tertiary Program Loader (TPL)
> +
> +        u-boot,dm-vpl:
> +          Enable this node in the Verifying Program Loader (VPL)
> +
> +        u-boot,dm-spl:
> +          Enable this node in the Secondary Program Loader (SPL)
> +
> +      Note that xPL builds also drop the tags, since they have served their
> +      purpose by that point. So when looking at xPL device tree files you will
> +      not see these tags. This means, for example, that ofnode_pre_reloc()
> +      always returns true in xPL builds. This is done to save space.
> +
> +      Multiple tags can be used in the same node.
> +
> +      One complication is that tags apply only to the node they are added to,
> +      not to any parents. This means that you often need to add the same tag to
> +      parent nodes so that any properties needed by the parent driver are
> +      included. Without that, the parent node may have no properties, or may not
> +      be bound before relocation (meaning that its child will not be bound
> +      either).
> +
> +      The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> +      pre-relocation, then post-relocation). ALl but the last two are optional.

nit: All

> +
> +additionalProperties: true

(The rest of this LGTM)
