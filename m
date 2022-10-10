Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0D895FA20B
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 18:34:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbiJJQeQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 12:34:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229731AbiJJQeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 12:34:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DBC275CE6
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 09:34:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 548B160FB5
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 16:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF32EC433C1
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 16:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1665419651;
        bh=MFkjLZyIGqKQX+KlLNf2bhcd5ajneFBDWtz1y+xJ1JA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=aFT32MMtkOtI6kdubAJe/xmjWAtjtERcn8TI+eLRBylAa2ync7ZLi93vBJhxT9YpP
         Jzi42UBPbOsNAVhbVgCVcvL5ye66aLtsXNCMviuAXb82sdAVoLZiaYToJpLaJ8YI1u
         3XZcLC8Add7qTUUJJzpEe4BOV+1gk0AjA8AVZHzFwu8rsf5LdQrVk/JdA8sexZk5zd
         Vz9MDcvhzRJSF37CbUcqbiV+t7BQq3aI0csBMo29+2giT0fJrCXMl2MrdHZbXNlpxK
         Wk2Cr4nnuC00nX2gX0Q5wIf897/UOagAcvGzzosc3fUyLv57O4fT5FtVf32RI1aokl
         0HFGxG83G72nw==
Received: by mail-vk1-f173.google.com with SMTP id o28so1670648vkn.11
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 09:34:11 -0700 (PDT)
X-Gm-Message-State: ACrzQf0c+bo3jGDs+R95qDyfgvpcu4Opf4tjIn4BG23RAX+Ssakh9EED
        toEaPc70NRu4Tq+/EHVN+eK82hOb7V6RUfDZ6g==
X-Google-Smtp-Source: AMsMyM5so7nzRGWFs8gzlBMW6/X4D1FquCWd5HLVATKl3BR+HLUaUTUZiILU6ccyqM9ax8kYqkP7d6pdVn9N3nh4zYc=
X-Received: by 2002:a1f:1442:0:b0:3ab:857c:cd8d with SMTP id
 63-20020a1f1442000000b003ab857ccd8dmr5637687vku.35.1665419650426; Mon, 10 Oct
 2022 09:34:10 -0700 (PDT)
MIME-Version: 1.0
References: <20221004232246.239237-1-sjg@chromium.org>
In-Reply-To: <20221004232246.239237-1-sjg@chromium.org>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 10 Oct 2022 11:34:00 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLF4J1UeuYtE_SHUVsFTuwd-THK6KX=E1wU03hnZB7X9A@mail.gmail.com>
Message-ID: <CAL_JsqLF4J1UeuYtE_SHUVsFTuwd-THK6KX=E1wU03hnZB7X9A@mail.gmail.com>
Subject: Re: [PATCH v3] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Simon Glass <sjg@chromium.org>
Cc:     devicetree@vger.kernel.org,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 4, 2022 at 6:22 PM Simon Glass <sjg@chromium.org> wrote:
>
> Until recently it has not been possible to add any U-Boot-specific
> properties to the device tree schema. Now that it is somewhat separated
> from Linux and people are feeling the enormous pain of the bifurcated
> schema, it seems like a good time to add this and other U-Boot-specific
> bindings.

It's been possible provided there was agreement on the properties.
There just wasn't in this case.

What's the pain point precisely? I can think of several. Syncing dts
files from Linux tree, running schema validation on a dtb from u-boot,
or ...?

> U-Boot has some particular challenges with device tree and devices which
> are not faced with Linux:
>
> - U-Boot has multiple build phases, such as a Secondary Program Loader
>   (SPL) phase which typically runs in a pre-SDRAM environment where code
>   and data space are limited. In particular, there may not be enough
>   space for the full device tree blob. U-Boot uses various automated
>   techniques to reduce the size from perhaps 40KB to 3KB.

As this is a build time thing, would this be better handled as a
source annotation rather than properties? We already have a 'delete if
unreferenced' tag for similar reasons. We could add something more
flexible like '/tag spl, tpl/' and dtc could have command line options
to keep or delete nodes based on tag names. (Added David G for his
thoughts on this)

Yes, there is also a runtime need for a portion of this, but I think
it's 2 different problems AIUI.

> - Some U-Boot phases needs to run before the clocks are properly set up,
>   where the CPU may be running very slowly. Therefore it is important to
>   bind only those devices which are actually needed in that phase
> - Unlike Linux or UEFI, U-Boot uses lazy initialisation for its devices,
>   with 'bind' and 'probe' being separate steps. Even if a device is bound,
>   it is not actually probed until it is used. This is necessary to keep
>   the boot time reasonable, e.g. to under a second

Linux could do this now if we wanted. There's a full dependency graph.
Once you have that, it's just an implementation decision whether you
probe top down or bottom up. We have this graph because Linux specific
probing hint properties in DT was rejected. (Not saying u-boot needs
to go implement a dependency graph, but rather u-boot is not unique
here and there's more than one way to solve it.)

> The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> pre-relocation, then post-relocation). ALl but the last two are optional.
>
> For the above reasons, U-Boot only includes the full device tree in the
> final 'U-Boot proper' build. Even then, before relocation U-Boot only
> processes nodes which are marked as being needed.
>
> For this to work, U-Boot's driver model[1] provides a way to mark device
> tree nodes as applicable for a particular phase. This works by adding a
> tag to the node, e.g.:
>
>    cru: clock-controller@ff760000 {
>       u-boot,dm-all;
>       compatible = "rockchip,rk3399-cru";
>       reg = <0x0 0xff760000 0x0 0x1000>;
>       rockchip,grf = <&grf>;
>       #clock-cells = <1>;
>       #reset-cells = <1>;
>       ...
>    };
>
> Here the "u-boot,dm-all" tag indicates that the node must be present in
> all phases, since the clock driver is required
>
> There has been discussion over the years about whether this could be done
> in a property instead, e.g.
>
>    options {
>       u-boot,dm-all = <&cru> <&gpio_a> ...;
>       ...
>    };
>
> Some problems with this:
>
> - we need to be able to merge several such tags from different .dtsi files
>   since many boards have their own specific requirements

A source annotation to append/prepend properties could solve that.

> - it is hard to find and cross-reference the affected nodes
> - it is more error-prone
> - it requires significant tool rework in U-Boot, including fdtgrep and
>   the build system
> - is harder (slower, more code) to process since it involves scanning
>   another node/property to find out what to do with a particular node
> - we don't want to add phandle arguments to the above since we are
>   referring, e.g., to the clock device as a whole, not a paricular clock
> - the of-platdata feature[2], which converts device tree to C for even
>   more constrained environments, would need to become aware of the
>   /options node
>
> There is also the question about whether this needs to be U-Boot-specific,
> or whether the tags could be generic. From what I can tell, U-Boot is the
> only bootloader which seriously attempts to use a runtime device tree in
> all cases. We could perhaps adopt U-Boot's naming for the phases and drop
> the "u-boot," prefix, but that might cause confusion.

I am concerned about the u-boot adding your own properties, and then
the next consumer wanting to add something similar. Even dropping
'u-boot,' the properties seem pretty u-boot specific. Of them, SPL
seems like the least specific as that's a pre-DRAM state. VPL/TPL
don't appear to be widely used. Pre/post relocation seems pretty
implementation specific unless you can define what state that implies.
So maybe a mixture with and without 'u-boot'?

> It should also be noted that the approach provided here has stood the test
> of time, used in U-Boot for 8 years so far.
>
> So add the schema for this. This will allow a major class of schema
> exceptions to be dropped from the U-Boot source tree.

This schema won't actually work for validation. The issue is for any
given node, we need a schema that includes all possible properties for
that node. That's necessary to detect any unknown properties.
Typically, we have the device's schema with references to any common
'class' schemas. There are some exceptions of properties allowed on
any node (or allowed when some other property is present). That is all
handled as a schema fixup within the tool currently, but I've been
thinking of changing that to an 'all nodes' schema file. Minimally,
we'd just need to add '^u-boot,dm-' to the list. Look for 'status' or
'pinctrl-' in the dtschema.

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
>  dtschema/schemas/u-boot.yaml | 66 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 dtschema/schemas/u-boot.yaml
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

Why is this? That seems at best redundant and at worst pretty broken.
For example, If you dropped 'ranges' and the associated address
properties, then decoding 'reg' is broken. It would only kind of work
if you just assume 1:1 address translation. The resulting dtb would
also not pass validation.

Rob
