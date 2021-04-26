Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0885136BB2D
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 23:26:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234217AbhDZV0v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 17:26:51 -0400
Received: from mail-oi1-f170.google.com ([209.85.167.170]:46715 "EHLO
        mail-oi1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236323AbhDZV0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Apr 2021 17:26:50 -0400
Received: by mail-oi1-f170.google.com with SMTP id m13so57779085oiw.13
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 14:26:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=M+kfr4IPPCFa5xs3ch/ZaXobs80sSVS0cUKODNu4aNk=;
        b=LDscx3zilTmuZloCa+nmRKPqJwgXAAx7gruAjKc2b2l/2MSzesB3tppncozqiomWBj
         T/3rTsLvocAmScthevwnkoJy6qf6u/UzTswWGQAyKBgaAD2c7msucEPFhvmQCzFQYX05
         xW6PHdhSp2g+DFKZBU/BydfXo9/er3y1WkRYNpcgJJ5VQp8h7j/zhR1+lTdUqQS1j7cG
         PTnDJVBXnamPw7wBxpESShYOjG804CxzG9vhLQmMpSepxf5R6/0rsMF8SpQdr+EnV+y2
         CG2nLBmidxNkOyK9kUMjcRrAcmZkQWPQTFXAhUjDCJ8puZ2fcKBY1CUR5Alh1HFzpFlg
         tPyg==
X-Gm-Message-State: AOAM531PDJCSa0tX6IgKgmzKdDRMl8pDZiEcXlv2FqrMZEMYfI0xKMg2
        UBsCooANUDUd3rG1oaygQg==
X-Google-Smtp-Source: ABdhPJymQOo1uyvNJPBJdLq+1+tIGbTJ76YWtc9yIVl/sqkwqsFLlW1N8Tl5ylMP6eq+Do6LLCOacg==
X-Received: by 2002:aca:cf12:: with SMTP id f18mr13856265oig.75.1619472366628;
        Mon, 26 Apr 2021 14:26:06 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id g96sm3767686otg.39.2021.04.26.14.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 14:26:05 -0700 (PDT)
Received: (nullmailer pid 4113914 invoked by uid 1000);
        Mon, 26 Apr 2021 21:26:04 -0000
Date:   Mon, 26 Apr 2021 16:26:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Cc:     mpe@ellerman.id.au, dan.carpenter@oracle.com,
        christophe.leroy@csgroup.eu, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, kbuild-all@lists.01.org,
        dja@axtens.net, bauerman@linux.ibm.com, lkp@intel.com
Subject: Re: [PATCH v2 2/2] powerpc: If kexec_build_elf_info() fails return
 immediately from elf64_load()
Message-ID: <20210426212604.GA4113688@robh.at.kernel.org>
References: <20210421163610.23775-1-nramas@linux.microsoft.com>
 <20210421163610.23775-2-nramas@linux.microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210421163610.23775-2-nramas@linux.microsoft.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Apr 2021 09:36:10 -0700, Lakshmi Ramasubramanian wrote:
> Uninitialized local variable "elf_info" would be passed to
> kexec_free_elf_info() if kexec_build_elf_info() returns an error
> in elf64_load().
> 
> If kexec_build_elf_info() returns an error, return the error
> immediately.
> 
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Reviewed-by: Michael Ellerman <mpe@ellerman.id.au>
> ---
>  arch/powerpc/kexec/elf_64.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!
