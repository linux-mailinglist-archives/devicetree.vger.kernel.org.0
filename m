Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C33652051A
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 21:18:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240498AbiEITUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 15:20:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240491AbiEITUA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 15:20:00 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE383ED28
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 12:16:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 1E70BB81905
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 19:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D068DC385BA
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 19:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1652123757;
        bh=OsuyLcdLQpgTKTYo0LLIBaSMMLENmd+UGNAXpwhb51s=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=dw5zQbZiTYVZxPaHtP5XE8ej2o3VMLTketmV7sdsXXTkl4KfS4BGJmybHLV5xtujL
         wfrvDHXsKkK8fPMdOZcE0yXzDVt7v4fzgTgLkwO+Gb1Z93zYNTRjzKT0vSEzpeU43v
         KdIhdcrhjh2s2GuY1PXKkfnE90JXBpseF0g3UGi9okWkLKuroANM/Ogm/4q3BQarGN
         4iwT5T2GKY1p7RPdCFG7oUMRynvaMDg014sMEOZKf1BntXIm2SxIE4npS+5VkL6ky2
         dGve+/LO2dtxHKUIjFOrvpx2rn0RjzmxT78qvWl9ryldjAJmmqF/o1ZCBB7YIt2O9S
         To8774UAARS7g==
Received: by mail-pj1-f48.google.com with SMTP id x88so2444722pjj.1
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 12:15:57 -0700 (PDT)
X-Gm-Message-State: AOAM531Xen5NfnYZ5I4J4F3elha09dB2Au5CKRBnRxnOhQJM68bPJVDm
        XCQPxJUg2XDFASmwJduu0MKf6dgGaWAUmNvX2A==
X-Google-Smtp-Source: ABdhPJz283abi/POOLI4DXTVklm9FzFdi4wxvjdw3pdV+wcck6FoNclE7AFq90WK8Vnr1fbRh4ixpsdm0GYMaRqyDtk=
X-Received: by 2002:a17:90b:1646:b0:1dc:3366:b87e with SMTP id
 il6-20020a17090b164600b001dc3366b87emr27122406pjb.211.1652123757342; Mon, 09
 May 2022 12:15:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220506140533.3566431-1-andre.przywara@arm.com>
In-Reply-To: <20220506140533.3566431-1-andre.przywara@arm.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 9 May 2022 14:15:45 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK2B44ayPd6ZcqomwSpTF-x5hn2JmLiLb6+BywciuqDtQ@mail.gmail.com>
Message-ID: <CAL_JsqK2B44ayPd6ZcqomwSpTF-x5hn2JmLiLb6+BywciuqDtQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] dt-bindings: Convert Arm Ltd. peripherals to DT schema
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, Will Deacon <will@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 6, 2022 at 9:05 AM Andre Przywara <andre.przywara@arm.com> wrote:
>
> Hi,
>
> this drop fixes the review comments from Krzysztof and Rob (many
> thanks for that!). Changelog below.
>
> =================
> In an effort to get the FVP DTs to pass the automated DT bindings checks,
> this series collects some DT schema binding conversions for various
> Arm Ltd. IP devices.
> This is mostly for old IP, but it's still used by the FVPs, for which we
> have DTs in the tree.
>
> Please have a look!
>
> Cheers,
> Andre
>
> Changelog:
> v1 .. v2:
> - all: fix indentation in examples (4 spaces)
> - all: drop line break preservation in descriptions
> - smmu-v3: tighten IRQ ordering to only allow certain combinations
> - spe-pmu: move new .yaml file into perf/ directory
> - sp810: don't require fixed clock output names
> - sp810: explain optional assigned-clock properties
> - pl041/pl051: rename binding file name
> - pl041/pl051: use generic node name in example nodes
> - vexpress-sysreg: specify additionalProperties
> - vexpress-sysreg: disallow uppercase hex letters in node name address
> - vexpress-config: specify additionalProperties
> - hdlcd/mali-dp: use properties/port instead of $defs/port-base
>
> Andre Przywara (11):
>   dt-bindings: iommu: arm,smmu-v3: make PRI IRQ optional
>   dt-bindings: arm: spe-pmu: convert to DT schema
>   dt-bindings: arm: sp810: convert to DT schema
>   dt-bindings: sound: add Arm PL041 AACI DT schema
>   dt-bindings: serio: add Arm PL050 DT schema
>   dt-bindings: arm: convert vexpress-sysregs to DT schema
>   dt-bindings: arm: convert vexpress-config to DT schema
>   dt-bindings: display: convert PL110/PL111 to DT schema
>   dt-bindings: display: convert Arm HDLCD to DT schema
>   dt-bindings: display: convert Arm Mali-DP to DT schema
>   dt-bindings: display: convert Arm Komeda to DT schema

I've applied the whole series. I made pl11x interrupts optional as
Realview EB doesn't have an interrupt, and I squashed in the
'arm,malidp-arqos-value' property addition.

Thanks,
Rob
