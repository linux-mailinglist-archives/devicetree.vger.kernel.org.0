Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84DAE6CA29A
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 13:37:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjC0Lhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 07:37:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231956AbjC0Lhy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 07:37:54 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EE5D4221
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 04:37:53 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id ew6so34733437edb.7
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 04:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1679917071;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lFk1Od/+EdFCUvY552WWMWkI0eZLoEwGftRpKewd8rg=;
        b=DJZmuSfOOXMci0CCcQn88zNuGofkdZkxnSNwJ0x4zQstHMQky3y5QlTg5FVpotfbcP
         TQ4ByFJ0dp6h+arNG44mFKA4ZywVCsFeVzHYiQh2NJrMf6oZhJYryF387zRz8jhRoXk9
         ES4DBioW9Z9a6U5H3QlyNZOouR1KKWmMEjuT1maFPfW/k544tPLkUxFRb+Hnf2RYI5h1
         EZoY8Y69rWi3msOKEHdgttPTTJQ+JhoZXWctsUT1qA0k5BOC6C4AqEtOO/ixslGR/9H2
         dfNsFAh0TIGyambe6bm0rFUk8Xxn+OMjrgsda1PRyYRRZklZm1PgBPLkUXLo1MZkPlT3
         o7CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679917071;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lFk1Od/+EdFCUvY552WWMWkI0eZLoEwGftRpKewd8rg=;
        b=BUoLtS3Fi+UdgGtWZ8yd4Wa5IXEI5uxr4Jsn0zYDZgz9U9RRt8KhbW+GCMO3PJOeUe
         wi3cuEvqLzGTmXRuIsUOHJy0EgP1bN0zoUjzxwwtrU9K4Hnu1EUinzqj64vPCnrX8KOB
         MDDbpIjtJQD16xblgif1ArjryOCylJXtUzFh+Lx7dNbV/gMyMETvd09mLWVE99i6G0OB
         5go9EWKchM4MFCQwKiByweJqOi3EAcaG/ZhfsixXG7JaNm9mCwLJY9ts6qyTrDHUachp
         F/DtfraE1GYcmB3LyG4tyJvFVSd5n+y4taqY9DEM2oOWoXbyZAQtgnZFkVTTAWM4X8l1
         x2wg==
X-Gm-Message-State: AAQBX9f7uPRolFLzD+ZYykeZdyOTCM6FISKn7KukkmLrTFMs8uhirbdH
        vroPLr8pKqVVdQ6wT+nQadSKcw==
X-Google-Smtp-Source: AKy350a+xAzIAbxpLmLmCH/0KNk1tkTjeH1fEruONhgv3OXe/3DHnb9cBTHt4wnrFQpYd0e8eXUy7g==
X-Received: by 2002:a17:906:f143:b0:933:4c93:69ee with SMTP id gw3-20020a170906f14300b009334c9369eemr12617295ejb.45.1679917071855;
        Mon, 27 Mar 2023 04:37:51 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id kg2-20020a17090776e200b009334219656dsm12248051ejc.56.2023.03.27.04.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 04:37:51 -0700 (PDT)
Date:   Mon, 27 Mar 2023 13:37:50 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Alexandre Ghiti <alexghiti@rivosinc.com>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v9 3/3] riscv: Use PUD/P4D/PGD pages for the linear
 mapping
Message-ID: <20230327113750.4dahiicpcg3b27mz@orel>
References: <20230324155421.271544-1-alexghiti@rivosinc.com>
 <20230324155421.271544-4-alexghiti@rivosinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230324155421.271544-4-alexghiti@rivosinc.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 24, 2023 at 04:54:21PM +0100, Alexandre Ghiti wrote:
> During the early page table creation, we used to set the mapping for
> PAGE_OFFSET to the kernel load address: but the kernel load address is
> always offseted by PMD_SIZE which makes it impossible to use PUD/P4D/PGD
> pages as this physical address is not aligned on PUD/P4D/PGD size (whereas
> PAGE_OFFSET is).
> 
> But actually we don't have to establish this mapping (ie set va_pa_offset)
> that early in the boot process because:
> 
> - first, setup_vm installs a temporary kernel mapping and among other
>   things, discovers the system memory,
> - then, setup_vm_final creates the final kernel mapping and takes
>   advantage of the discovered system memory to create the linear
>   mapping.
> 
> During the first phase, we don't know the start of the system memory and
> then until the second phase is finished, we can't use the linear mapping at
> all and phys_to_virt/virt_to_phys translations must not be used because it
> would result in a different translation from the 'real' one once the final
> mapping is installed.
> 
> So here we simply delay the initialization of va_pa_offset to after the
> system memory discovery. But to make sure noone uses the linear mapping
> before, we add some guard in the DEBUG_VIRTUAL config.
> 
> Finally we can use PUD/P4D/PGD hugepages when possible, which will result
> in a better TLB utilization.
> 
> Note that:
> - this does not apply to rv32 as the kernel mapping lies in the linear
>   mapping.
> - we rely on the firmware to protect itself using PMP.
> 
> Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
> Acked-by: Rob Herring <robh@kernel.org> # DT bits
> ---
>  arch/riscv/include/asm/page.h | 16 ++++++++++
>  arch/riscv/mm/init.c          | 58 +++++++++++++++++++++++++++++++----
>  arch/riscv/mm/physaddr.c      | 16 ++++++++++
>  drivers/of/fdt.c              | 11 ++++---
>  4 files changed, 90 insertions(+), 11 deletions(-)
> 

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

Thanks,
drew
