Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E3AA50B90A
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 15:48:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377540AbiDVNve (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 09:51:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1448178AbiDVNve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 09:51:34 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC57B5A08F
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 06:48:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7EC7DB82D67
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 13:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29809C385A0
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 13:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650635318;
        bh=ujcmpbpuP0SRFfK4drKhVpuVZ5ar58NcRYrVDfCrfcE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JMNYKlg/Uc+0eab0jRNIy1j+l/5G0O0H+fb1WDcF3cm/S+fBNiXCF3SWYzXVTpBiF
         YgqhLw9ITnW2YM21NEtQQqgvDY2f+dKFEGSvq8xudX2XbOeNY8EVuBGcyvORaBsnMo
         SE/HFGuF42wckDMw+RhoX0ObZOERAl91Ipno5ksFrMGKOnEi7wHRlgwEgEyP79WtnT
         CbaKhzvRdmV2BeKfDhYOZf29sJITkaSpIk+cK/CGs0Bt03NIpqhuGXte17O/kECQ5R
         PKMhs5iExkMGFSogp2uc4PlmprGzuHgVDpmMYFiWBnbzGbCrUnG0PveLE6aE+AICJJ
         AMKuBXfFJBUjQ==
Received: by mail-pl1-f172.google.com with SMTP id b7so10980871plh.2
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 06:48:38 -0700 (PDT)
X-Gm-Message-State: AOAM532KP5zLWvIGUNnv40w36DS5r0RDYAL7QIE5SeGLb4tA2JiAj0rI
        OYC1ycrBUDu6tp0+IOEvJCN/eOU4cntWFw51iQ==
X-Google-Smtp-Source: ABdhPJy6Zgqfot4w0H3WI6A0JQuX5jV5A9mpfi6zseLZ5//gN5YxyrUzXwbqLI8CDKTA0ZIsSIgM0GjCPpt8s/VPs8k=
X-Received: by 2002:a17:90a:410a:b0:1cb:a279:6679 with SMTP id
 u10-20020a17090a410a00b001cba2796679mr16218744pjf.211.1650635317689; Fri, 22
 Apr 2022 06:48:37 -0700 (PDT)
MIME-Version: 1.0
References: <1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com>
In-Reply-To: <1650488954-26662-1-git-send-email-quic_pdaly@quicinc.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 22 Apr 2022 08:48:25 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKSJbPT5ChmLLQME7rF=OYFe8Mk_x-DH7hL9FoV9zprRg@mail.gmail.com>
Message-ID: <CAL_JsqKSJbPT5ChmLLQME7rF=OYFe8Mk_x-DH7hL9FoV9zprRg@mail.gmail.com>
Subject: Re: [PATCH] of: of_reserved_mem: Increase limit for reserved_mem regions
To:     Patrick Daly <quic_pdaly@quicinc.com>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, surenb@google.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 20, 2022 at 4:09 PM Patrick Daly <quic_pdaly@quicinc.com> wrote:
>
> The reserved_mem array must be statically allocated because it is used
> prior to memblock being aware of all "no-map" or otherwise reserved
> regions which have fixed physical addresses. Due to this limitation,
> if one architecture/board has a large number of reserved_mem regions,
> this limit must be raised for all.
>
> In particular, certain new qcom boards currently have 63 reserved memory
> regions, which when new features are added, pushes them over the existing
> limit of 64.

Please revive this instead:

https://lore.kernel.org/all/20211119075844.2902592-3-calvinzhang.cool@gmail.com/

>
> A generalized breakdown by region type:
> 13 for linux-loaded device firmware

If loaded by linux, why do you need fixed carveouts in DT? The devices
can't be told what address their fw is at?

> 9 for guest-vms or inter-vm communication

Why does that need to be in DT?

> 15 cma heaps/dma-buf heaps

Sounds like not trusting the OS to allocate memory itself. From what
I've read, the kernel's memory allocation abilities are better now
than when CMA was added.

> 24 for bootloaders/hypervisor/secure-world devices or software
> 2 misc
>
> Although this number could be reduced by a minor amount by combining
> physically adjacent regions, this comes at the cost of losing
> documention on what/who the regions are used by. In addition, combining
> adjacent regions is not possible if there are phandles in devicetree
> referring to the regions in question, such as "memory-region".
>
> Vmlinux before:
> text      data      bss     dec       hex      filename
> 31030829  15807732  588524  47427085  2d3ae0d  dist/vmlinux
>
> Vmlinux after:
> text      data      bss     dec       hex      filename
> 31030877  15807668  592108  47430653  2d3bbfd  dist/vmlinux
>
> Signed-off-by: Patrick Daly <quic_pdaly@quicinc.com>
> ---
>  drivers/of/of_reserved_mem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 75caa6f..de0cdda 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -26,7 +26,7 @@
>
>  #include "of_private.h"
>
> -#define MAX_RESERVED_REGIONS   64
> +#define MAX_RESERVED_REGIONS   128
>  static struct reserved_mem reserved_mem[MAX_RESERVED_REGIONS];
>  static int reserved_mem_count;
>
> --
> 2.7.4
>
