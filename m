Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 757F75EFE72
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 22:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbiI2UMB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 16:12:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbiI2UMB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 16:12:01 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96DBB125183
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 13:11:59 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id e18so1675169wmq.3
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 13:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=oFwRN9/+HAZ47ZDPOtBQaPZUhjUuEq054hKa2jiY+zo=;
        b=V7NUWeBJ1cXOaHiNZlG2wXE9zFMR22EJSriUNhPQN/3qzohg4eD/IJVORdS9HVHNmH
         4rVzpPfu6NjV22DpFcurwAxV9HqUVG1AccErfGIatI4xUNRzE9q7NGoHisz/lePb0UoS
         Q4TLIiYBO4LZMt4gYXYwKfB7rUvq7RZY/pAw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=oFwRN9/+HAZ47ZDPOtBQaPZUhjUuEq054hKa2jiY+zo=;
        b=ZvBGWLLxkBYNEHGk2ZB8W6DecsTV2r/XGUxfwH9YoOhyfVkQzxyuyq0kmj0ORDf5Mf
         a2lrk4S+9FYPMtNjUI25uqup6cj9A0cRHMKI0m8+NkFJD9qnnLmbSeem6XYqPHsYhmCV
         cDSC/4jK5f3wzmcXn7PWDYNufVJQz7cZs+hU84vB8CeVpVGMdKMAD+Z8u82HRs8cmXA9
         PGTQ6IE9HbuW0/hPihRMp/A15SLbftPMgF7c/2LpDeI/NlS/5mmg8p4KLB3HL6TF9Ohw
         pjzMU3kK6QX2lNwHm4dSPzLolezbJMezr3ZoT9/H1XFtNXLD/P8cuUcONqSDhcA1j8oV
         SKig==
X-Gm-Message-State: ACrzQf0V2XCisG5wEznCdY249ejt5Dg7Hq+KJwuk6T4eRo5D+jWDQpAs
        fb73KlymVxZTErYrwLHVPezyJbvGjT+zO9FFP9lUtyWvWFc=
X-Google-Smtp-Source: AMsMyM6aliXunJUoQTZAH3vtjkwRrErsDraJ6WcN9ZdYKYf0wL1LNX56crszYo0Cqtd7mDDuPLXOLsWRn0JIODCOF8Q=
X-Received: by 2002:a7b:ca46:0:b0:3b4:7ff2:1ca8 with SMTP id
 m6-20020a7bca46000000b003b47ff21ca8mr3689947wml.11.1664482317581; Thu, 29 Sep
 2022 13:11:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220929195804.2773808-1-sjg@chromium.org>
In-Reply-To: <20220929195804.2773808-1-sjg@chromium.org>
From:   Simon Glass <sjg@chromium.org>
Date:   Thu, 29 Sep 2022 14:11:45 -0600
Message-ID: <CAPnjgZ1yHO6-JARn_rEjHD_bQC4cP6i586Ws2qS76dOsWLpw5Q@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for U-Boot driver model 'phase tags'
To:     Devicetree Discuss <devicetree@vger.kernel.org>,
        U-Boot Custodians <u-boot-custodians@lists.denx.de>
Cc:     Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+U-Boot Custodians too

On Thu, 29 Sept 2022 at 13:58, Simon Glass <sjg@chromium.org> wrote:
>
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
>   (SPL) phase which typically runs in a pre-SDRAM environment where code
>   and data space are limited. In particular, there may not be enough
>   space for the full device tree blob. U-Boot uses various automated
>   techniques to reduce the size from perhaps 40KB to 3KB.
> - Some U-Boot phases needs to run before the clocks are properly set up,
>   where the CPU may be running very slowly. Therefore it is important to
>   bind only those devices which are actually needed in that phase
> - Unlike Linux or UEFI, U-Boot uses lazy initialisation for its devices,
>   with 'bind' and 'probe' being separate steps. Even if a device is bound,
>   it is not actually probed until it is used. This is necessary to keep
>   the boot time reasonable, e.g. to under a second
>
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
>  dtschema/schemas/u-boot.yaml | 48 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 dtschema/schemas/u-boot.yaml
>
> diff --git a/dtschema/schemas/u-boot.yaml b/dtschema/schemas/u-boot.yaml
> new file mode 100644
> index 0000000..6c5c820
> --- /dev/null
> +++ b/dtschema/schemas/u-boot.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: BSD-2-Clause
> +# Copyright 2022 Google LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial.yaml#
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
> +      Note that xPL builds also drop the tags, since they have server their
> +      purpose by that point. So when looking at xPL device tree files you will
> +      not see these tags. The means, for example, that ofnode_pre_reloc()
> +      returns true always in xPL builds. This is done to save space.
> +
> +      Multiple tags can be used in the same node.
> +
> +      One complication is that tags apply only to the node they are added to,
> +      not to any parents. This means that you often need to add the same tag to
> +      parent nodes so that any properties needed by the parent driver are
> +      included. Without that, the parent node may have no properties, or may not
> +      be bound before relocation (meaning that its child will not be either).
> +
> +      The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
> +      pre-relocation, then post-relocation). ALl but the last two are optional.
> +
> +additionalProperties: true
> --
> 2.38.0.rc1.362.ged0d419d3c-goog
>
