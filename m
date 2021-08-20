Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CA643F25E1
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 06:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbhHTEcc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 00:32:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbhHTEcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 00:32:32 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF59BC061756
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 21:31:54 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id 18so7535172pfh.9
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 21:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=kGUsXVjhYVNqqDUplUqGfaMv9a3sMzZvTTWSgXAKeoA=;
        b=vysr45wmx6bUrXF0N/a2X2lB6TLNMruSRTGPFJV/qeHb/7wLiD/NnDnckqkgw8ag9L
         er9i67FuRz37SrgS4x3Lc6pdZrdH6z3JyJ2tUzuAKZWCUDu86DUbWD8T9InE30hGWdpv
         LmSavBQepWO20MenUktfU5N5htBdN6E4djZP1D/qLSbhv3Tm9Mu1EvOWQIA9lQwpgO8v
         GCDumNLUm3X+kL5kEMatRRPkcEze+KkBDVtXpuU4S/ZFkUwflpQZFA06ZeYYS3usefSh
         SpAljBrSt7Qjo7XRH9XzSX/CcNzq4dsKDwR16DEY/EF/n3oypdljgFnoLtyQA6jp4OCH
         6CYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=kGUsXVjhYVNqqDUplUqGfaMv9a3sMzZvTTWSgXAKeoA=;
        b=U0claBJ9Vym4fzs2DyEkhDAD28aSF2C+paR6GE7mrf0/f4zWpKyBi/YZKv9cxeM8mm
         0W4Oth0gg7zoJc06gcP3EUndvsDN6d9pkrWnifBygaQazSsnrsihVEffMapOQe8lsdfU
         vbMPv30GE48nK/F9Ap6T/uhS4H7nkWknl8rrdQVcQMThcAkiaiq6Nx1nSC+dBaUyVh01
         O2uQaRKIE9dM15/6TW7zJEl7Y2z26jk78XTIBsWh7jteEjzY76xYqF2F97I6GpOkXfHe
         hH77skMt0Am8YqmozcBDZ/YwuWxL1VTF5d+83duA4YWAKLLwOHYw4JYFxzcs9tP0B8NV
         efOg==
X-Gm-Message-State: AOAM533GBsIse6KoTwMlGGGkwvaTLGoENnauWmlyhb6E5FdCi4aXIc9M
        1z5gJvnbBH+ySXVMCb2eTpPbfVggX/kmJA==
X-Google-Smtp-Source: ABdhPJyS1DqIzxR93iVwZIP2G0nZomzW8c6Lq4fpfYaMPWsqFpt79VvtUo0LKUPICC7P9n/ka3YrGw==
X-Received: by 2002:a63:4005:: with SMTP id n5mr16785065pga.140.1629433914057;
        Thu, 19 Aug 2021 21:31:54 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id a8sm5131173pfo.79.2021.08.19.21.31.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 21:31:53 -0700 (PDT)
Date:   Thu, 19 Aug 2021 21:31:53 -0700 (PDT)
X-Google-Original-Date: Thu, 19 Aug 2021 20:55:39 PDT (-0700)
Subject:     Re: [PATCH] dt-bindings: sifive-l2-cache: Fix 'select' matching
In-Reply-To: <20210817174755.541735-1-robh@kernel.org>
CC:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, sagar.kadam@sifive.com,
        yash.shah@sifive.com, linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     robh@kernel.org
Message-ID: <mhng-25484677-27e9-4456-b497-0c7bd00bab18@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 17 Aug 2021 10:47:55 PDT (-0700), robh@kernel.org wrote:
> When the schema fixups are applied to 'select' the result is a single
> entry is required for a match, but that will never match as there should
> be 2 entries. Also, a 'select' schema should have the widest possible
> match, so use 'contains' which matches the compatible string(s) in any
> position and not just the first position.
>
> Fixes: 993dcfac64eb ("dt-bindings: riscv: sifive-l2-cache: convert bindings to json-schema")
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Sagar Kadam <sagar.kadam@sifive.com>
> Cc: Yash Shah <yash.shah@sifive.com>
> Cc: linux-riscv@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/riscv/sifive-l2-cache.yaml        | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> index 1d38ff76d18f..2b1f91603897 100644
> --- a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> +++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> @@ -24,10 +24,10 @@ allOf:
>  select:
>    properties:
>      compatible:
> -      items:
> -        - enum:
> -            - sifive,fu540-c000-ccache
> -            - sifive,fu740-c000-ccache
> +      contains:
> +        enum:
> +          - sifive,fu540-c000-ccache
> +          - sifive,fu740-c000-ccache
>
>    required:
>      - compatible

Thanks, this is on fixes.
