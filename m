Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7DCE6203D4
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 00:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232308AbiKGXfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 18:35:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232085AbiKGXfu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 18:35:50 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62C126471
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 15:35:47 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id i21so20022037edj.10
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 15:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9ayzj5KulTnhN7Zfw5EUqrO7UsW/gaWrga/K5/y9mIc=;
        b=j5OP46R/9IJk3IMdJgZ6jek+61+cUqTqDgnyVKyPovCVpZjNF5pfXvdwhkflYn5G4S
         KWEdi63OGfaMTbj55yhVUQFC/VkezUHR3KkbB7YWsdPZ0xjIwtsBX6Vx/f/0BeY+u/qN
         k+33FHS1JgZKNVJB8aszok+DgyfFCoij22oZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9ayzj5KulTnhN7Zfw5EUqrO7UsW/gaWrga/K5/y9mIc=;
        b=UBmAJW5Cxa2NHcEmNqSCPt9GtQjvtVRG5X3s2bN5kZNbBlHfVz2sFeZ+BQgBzIluy/
         COp7w0dd5mj4e67cvrfpe8zyjjq4WOKzZzJng+PQOwx9ClDk7iS57jMc0dFaA0cWpHNx
         R5BPmpnpDjc++lGpA+CuTkhlyml7D7W546fwHUgobvjhR5jR/0DPPcWKAIQGER741APc
         bTLqNGftkQ037Z7s6DoAVwNVa+HZMzpAtu29DpV51I5T4ujfCDAY6Kn8Pky3f0ayh3vE
         Fx7pe8KHjSkQy7TzxSPJxzAP9bKiMG9jNwOM1iXeI3ZefZstXUCOnJMZLhAscS42RhiB
         R3qA==
X-Gm-Message-State: ACrzQf3sLS23yiMkfb9yzBZLA73n8hEkbkZmqK+VFTH81ztsP2qanCI9
        T5NtgnbaIIiEQyfMIQdTe9cHfgND+IpE3iWoHLId7biCsEAelA==
X-Google-Smtp-Source: AMsMyM47Fwbkfq66gj/sjgVnnRql1naDpYt9NZqfT+lyKW4gJHa68XYKyJKHFhadmRoItarKE7A68c0xPFHnrUrt6tI=
X-Received: by 2002:a05:6402:1c88:b0:461:94a0:33df with SMTP id
 cy8-20020a0564021c8800b0046194a033dfmr52601435edb.0.1667864145272; Mon, 07
 Nov 2022 15:35:45 -0800 (PST)
MIME-Version: 1.0
References: <20221102031312.216353-1-sjg@chromium.org>
In-Reply-To: <20221102031312.216353-1-sjg@chromium.org>
From:   Simon Glass <sjg@chromium.org>
Date:   Mon, 7 Nov 2022 16:35:32 -0700
Message-ID: <CAPnjgZ1yxd4BtF-uOApi4EC6kzOPhoMapcaXKF4yvq2k7w_kXQ@mail.gmail.com>
Subject: Re: [PATCH v4] schemas: Add schema for U-Boot driver model 'phase tags'
To:     devicetree@vger.kernel.org
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, 1 Nov 2022 at 21:13, Simon Glass <sjg@chromium.org> wrote:
>
> U-Boot has some particular challenges with device tree and devices:
>
> - U-Boot has multiple build phases, such as a Secondary Program Loader
>   (SPL) phase which typically runs in a pre-SDRAM environment where code
>   and data space are limited. In particular, there may not be enough
>   space for the full device tree blob. U-Boot uses various automated
>   techniques to reduce the size from perhaps 40KB to 3KB. It is not
>   always possible to handle these tags entirely at build time, since
>   U-Boot proper must have the full device tree, even though we do not
>   want it to process all nodes until after relocation.
> - Some U-Boot phases needs to run before the clocks are properly set up,
>   where the CPU may be running very slowly. Therefore it is important to
>   bind only those devices which are actually needed in that phase
> - U-Boot uses lazy initialisation for its devices, with 'bind' and
>   'probe' being separate steps. Even if a device is bound, it is not
>   actually probed until it is used. This is necessary to keep the boot
>   time reasonable, e.g. to under a second
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
>       phase,all;
>       compatible = "rockchip,rk3399-cru";
>       reg = <0x0 0xff760000 0x0 0x1000>;
>       rockchip,grf = <&grf>;
>       #clock-cells = <1>;
>       #reset-cells = <1>;
>       ...
>    };
>
> Here the "phase,all" tag indicates that the node must be present in all
> phases, since the clock driver is required.
>
> There has been discussion over the years about whether this could be done
> in a property instead, e.g.
>
>    options {
>       phase,all = <&cru> <&gpio_a> ...;
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
> all cases. For this version, an attempt is made to name the phases in a
> generic manner.
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
> Changes in v4:
> - Drop some unnecessary context from the commit message
> - Explain why parent nodes do not automatically inherit their children's
>   tags
> - Rename the tags to use a phase,xxx format, explaining each one
>
> Changes in v3:
> - Fix an incorrect schema path in $id
>
> Changes in v2:
> - Expand docs to include a description of each tag
> - Fix some typos and unclear wording
>
>  dtschema/lib.py             |  5 +++
>  dtschema/schemas/phase.yaml | 73 +++++++++++++++++++++++++++++++++++++
>  test/phases.dts             | 26 +++++++++++++
>  3 files changed, 104 insertions(+)
>  create mode 100644 dtschema/schemas/phase.yaml
>  create mode 100644 test/phases.dts

Any thoughts on this please?

Regards,
Simon
