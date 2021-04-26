Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CFF936BB28
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 23:25:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234146AbhDZV0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 17:26:04 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:36818 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234207AbhDZV0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Apr 2021 17:26:04 -0400
Received: by mail-ot1-f46.google.com with SMTP id i16-20020a9d68d00000b0290286edfdfe9eso42867146oto.3
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 14:25:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=if+kpOrEBMc7EsjeYPdnBYrLSadizKO99PTh1HWp/+w=;
        b=NfXayFCY9TtzP0uEONGUb81MOzuL/0vWHQjEqTNPpxpm0nzhURii0moJ5hkRW5++hB
         a6Eza2I2X044owOwro5q/CgCSVkbywGQsxZXpEiUl9nSucqRWLsBISiNWcg4R7n7RsVc
         k1aNoC9osehtjqNbg9AaFUxjr/rt2qaatXbL4rlpw1TerMG3wbJy6jBRjdRLqGOredLf
         fl3h1WACnYQ+8AhtMLIwpoBw84YnNF3BMNR5FnmTa62edkyMHUfD+sEO5EGFgu6aVd4W
         I28qANa+dNrN120t8wEwSdf0dUSrhn2aBvCWfVVz+uUQzbXRkXJE+DXrNpusD1e6NMeF
         1XbQ==
X-Gm-Message-State: AOAM530WpVJwq2SinC0lAsuDb5+dfgb2KNZIkvifoRPt/b1yF16jCKU8
        6WUCyQO4wkgVzCCmqVL3KA==
X-Google-Smtp-Source: ABdhPJytQsNTWy1y3O3rVhWawKgoMbsNBLoMOI596n65aAt19DCMYv0gC0X7OPoXraB6/B6TdKT2Yw==
X-Received: by 2002:a9d:4616:: with SMTP id y22mr6630504ote.250.1619472322465;
        Mon, 26 Apr 2021 14:25:22 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p2sm227792ool.15.2021.04.26.14.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 14:25:21 -0700 (PDT)
Received: (nullmailer pid 4112837 invoked by uid 1000);
        Mon, 26 Apr 2021 21:25:20 -0000
Date:   Mon, 26 Apr 2021 16:25:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Cc:     devicetree@vger.kernel.org, bauerman@linux.ibm.com,
        christophe.leroy@csgroup.eu, dan.carpenter@oracle.com,
        mpe@ellerman.id.au, lkp@intel.com, dja@axtens.net,
        linuxppc-dev@lists.ozlabs.org, kbuild-all@lists.01.org
Subject: Re: [PATCH v2 1/2] powerpc: Free fdt on error in elf64_load()
Message-ID: <20210426212520.GA4112479@robh.at.kernel.org>
References: <20210421163610.23775-1-nramas@linux.microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210421163610.23775-1-nramas@linux.microsoft.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Apr 2021 09:36:09 -0700, Lakshmi Ramasubramanian wrote:
> There are a few "goto out;" statements before the local variable "fdt"
> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
> elf64_load().  This will result in an uninitialized "fdt" being passed
> to kvfree() in this function if there is an error before the call to
> of_kexec_alloc_and_setup_fdt().
> 
> If there is any error after fdt is allocated, but before it is
> saved in the arch specific kimage struct, free the fdt.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
> ---
>  arch/powerpc/kexec/elf_64.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 

Applied, thanks!
