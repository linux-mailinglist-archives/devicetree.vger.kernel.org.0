Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CFFE366632
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 09:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235098AbhDUHWH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 03:22:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234659AbhDUHWC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 03:22:02 -0400
Received: from ozlabs.org (ozlabs.org [IPv6:2401:3900:2:1::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC1F4C06138B
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 00:21:29 -0700 (PDT)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4FQBn34lbPz9tkF;
        Wed, 21 Apr 2021 17:21:27 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
        s=201909; t=1618989687;
        bh=V7YakiLh0lc5pULnRDAJvj1kBlxh5nVIClHoUbjkUYc=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
        b=Qt148EfW9rQWMC7MzMoJKNRohR6fSDEaLPaHkHNoaCMsvwg/I/pTYkPsv+FmQ+5Uv
         TYQXOOZ12cNKIPVoSwzemRDHsFGmpzBEaCziEXZu8+ASKoNA1bYGEYUVsrhajeQJiH
         YA3GofUQ9PdL4hdNZXuxxVzPoJDJZQ1JWKIQUL2AI/dKWQEBG4p0164YIwdvQvgRVN
         kTi1tS2LptSM0XzkBiAmCJGdojfRCqFopxnk7ltlqtqMGTuXZmH9kXY1wQmBfoSgzI
         SYh0e7cbbSSYn5N8XWzdbr7krgyJGGzOzxo1AVhxkZKtJzGOhBcGn2nU0m2C/+1fJ/
         nonFQWbvKYvmQ==
From:   Michael Ellerman <mpe@ellerman.id.au>
To:     Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com
Cc:     bauerman@linux.ibm.com, dja@axtens.net,
        christophe.leroy@csgroup.eu, nramas@linux.microsoft.com,
        lkp@intel.com, kbuild-all@lists.01.org, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 2/2] powerpc: If kexec_build_elf_info() fails return
 immediately from elf64_load()
In-Reply-To: <20210420190355.10059-2-nramas@linux.microsoft.com>
References: <20210420190355.10059-1-nramas@linux.microsoft.com>
 <20210420190355.10059-2-nramas@linux.microsoft.com>
Date:   Wed, 21 Apr 2021 17:21:26 +1000
Message-ID: <87o8e8ayrt.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Lakshmi Ramasubramanian <nramas@linux.microsoft.com> writes:

> Uninitialized local variable "elf_info" would be passed to
> kexec_free_elf_info() if kexec_build_elf_info() returns an error
> in elf64_load().
>
> If kexec_build_elf_info() returns an error, return the error
> immediately.
>
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Michael Ellerman <mpe@ellerman.id.au>

cheers

> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
> index 02662e72c53d..eeb258002d1e 100644
> --- a/arch/powerpc/kexec/elf_64.c
> +++ b/arch/powerpc/kexec/elf_64.c
> @@ -45,7 +45,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>  
>  	ret = kexec_build_elf_info(kernel_buf, kernel_len, &ehdr, &elf_info);
>  	if (ret)
> -		goto out;
> +		return ERR_PTR(ret);
>  
>  	if (image->type == KEXEC_TYPE_CRASH) {
>  		/* min & max buffer values for kdump case */
> -- 
> 2.31.0
