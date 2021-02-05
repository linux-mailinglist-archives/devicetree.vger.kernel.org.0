Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B405E311181
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 20:51:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbhBESHn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 13:07:43 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:45456 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233238AbhBESFa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 13:05:30 -0500
Received: by mail-ot1-f43.google.com with SMTP id o12so7975388ote.12
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 11:47:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ii5iHucEL6kK0ePeaCgZfhVcz7zPyqdUMGbV2GreKgg=;
        b=ViiZhbIrBo9sYin+atS1bVP0Iw+seEUjxxNssf0+YFeXUnnw3BlErfheR2cukvIuiM
         Cthlpq6A4zVJfuzuXW4PF61sViIdX7Nq/KMNPoKlOWqctws4v8i6rOF9Ixw43MH68Nq6
         B7uMEao4JYwCmaXAS85bonmkIs82yPCJEBkuNeG9J9C11afgS+SWTT+k5exVXCajacxT
         tMQ67W7OGBCXsYOSz1sORhoyubEPNdCuIgftv2T7pQJcvkLs3qlEbd4UoNXkj6l07hqi
         GHpBoZVL5sYypXcxfWrx9B5adLxq3N3Zp9vm9ZZrDNWgH+7rzItl8jCwVc4yOrZlwAcO
         wiRw==
X-Gm-Message-State: AOAM530M1OyErtv7Ga4NpZ/QXaH7mhew6tb1Igyo3WSJ1pOTSlUthuyM
        Hz32TeGksnlkwTpWopzARw==
X-Google-Smtp-Source: ABdhPJxTyYSkBCg5+vXUfmMAKNcY1pA6POTIcqW2OEQhLTBZsaKDoKp3H9llCmN4h4Rfs7DXl574+Q==
X-Received: by 2002:a9d:4b07:: with SMTP id q7mr4421349otf.270.1612554433661;
        Fri, 05 Feb 2021 11:47:13 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w2sm591994otq.9.2021.02.05.11.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 11:47:12 -0800 (PST)
Received: (nullmailer pid 3597172 invoked by uid 1000);
        Fri, 05 Feb 2021 19:47:11 -0000
Date:   Fri, 5 Feb 2021 13:47:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     devicetree@vger.kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Sean Anderson <seanga2@gmail.com>,
        Anup Patel <anup.patel@wdc.com>,
        Atish Patra <atish.patra@wdc.com>,
        linux-riscv@lists.infradead.org
Subject: Re: [PATCH v16 03/16] dt-bindings: update risc-v cpu properties
Message-ID: <20210205194711.GA3597111@robh.at.kernel.org>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-4-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210205065827.577285-4-damien.lemoal@wdc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 05 Feb 2021 15:58:14 +0900, Damien Le Moal wrote:
> The Canaan Kendryte K210 SoC CPU cores are based on a rocket chip
> version using a draft verion of the RISC-V ISA specifications. To avoid
> any confusion with CPU cores using stable specifications, add the
> compatible string "canaan,k210" for this SoC CPU cores.
> 
> Also add the "riscv,none" value to the mmu-type property to allow a DT
> to indicate that the CPU being described does not have an MMU or that
> it has an MMU that is not usable (which is the case for the K210 SoC).
> 
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
