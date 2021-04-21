Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0615366624
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 09:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236654AbhDUHTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 03:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236743AbhDUHTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 03:19:44 -0400
Received: from ozlabs.org (ozlabs.org [IPv6:2401:3900:2:1::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D35C06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 00:18:33 -0700 (PDT)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4FQBjf5mdpz9t2g;
        Wed, 21 Apr 2021 17:18:30 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
        s=201909; t=1618989511;
        bh=qD2AQGh55lz6Vi+j4odWavjJH03GC3RyjxWsY5EY+M8=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
        b=O0AsW4Qa0qMs8j1+qY+HqWaClhEvBpwiYhFj2GYtP65clvn/30KetVRVKHjJGO+36
         gmt5kOaNYeLdOdbKzBWYTys+Ieyuum4Y8RmK1/VaW/fp0BQ1x0jf6ReMoqv+gMDcaD
         7pkACGBY1NO6HurlY4CiUcFPLeX/rXdLw/NfzaV3pfJAvodMVIW6VHCns1BZ3XZP0W
         tIeKIUkCTu/tI2XB03Xe2S68Je1zWgWc5fbxhXXkaiGtVeO3ruX/16VTnbCtogupV3
         ok+q8zeRGSDIT7n1mE4yF61jnA6S+VkBk0J6nfpu0nlK4ppYNVvTlAbDorPWGpJ7no
         RLgv5Ip8aGH8w==
From:   Michael Ellerman <mpe@ellerman.id.au>
To:     Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com
Cc:     bauerman@linux.ibm.com, dja@axtens.net,
        christophe.leroy@csgroup.eu, nramas@linux.microsoft.com,
        lkp@intel.com, kbuild-all@lists.01.org, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH 1/2] powerpc: Free fdt on error in elf64_load()
In-Reply-To: <20210420190355.10059-1-nramas@linux.microsoft.com>
References: <20210420190355.10059-1-nramas@linux.microsoft.com>
Date:   Wed, 21 Apr 2021 17:18:30 +1000
Message-ID: <87r1j4aywp.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Lakshmi Ramasubramanian <nramas@linux.microsoft.com> writes:
> There are a few "goto out;" statements before the local variable "fdt"
> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
> elf64_load().  This will result in an uninitialized "fdt" being passed
> to kvfree() in this function if there is an error before the call to
> of_kexec_alloc_and_setup_fdt().
>
> If there is any error after fdt is allocated, but before it is
> saved in the arch specific kimage struct, free the fdt.
>
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Suggested-by: Michael Ellerman <mpe@ellerman.id.au>

I basically sent you the diff, so this should probably be:

  Reported-by: kernel test robot <lkp@intel.com>
  Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
  Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
  Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>

Otherwise looks good to me, thanks for turning it into a proper patch
and submitting it.

cheers


> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
> index 5a569bb51349..02662e72c53d 100644
> --- a/arch/powerpc/kexec/elf_64.c
> +++ b/arch/powerpc/kexec/elf_64.c
> @@ -114,7 +114,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>  	ret = setup_new_fdt_ppc64(image, fdt, initrd_load_addr,
>  				  initrd_len, cmdline);
>  	if (ret)
> -		goto out;
> +		goto out_free_fdt;
>  
>  	fdt_pack(fdt);
>  
> @@ -125,7 +125,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>  	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>  	ret = kexec_add_buffer(&kbuf);
>  	if (ret)
> -		goto out;
> +		goto out_free_fdt;
>  
>  	/* FDT will be freed in arch_kimage_file_post_load_cleanup */
>  	image->arch.fdt = fdt;
> @@ -140,18 +140,14 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>  	if (ret)
>  		pr_err("Error setting up the purgatory.\n");
>  
> +	goto out;
> +
> +out_free_fdt:
> +	kvfree(fdt);
>  out:
>  	kfree(modified_cmdline);
>  	kexec_free_elf_info(&elf_info);
>  
> -	/*
> -	 * Once FDT buffer has been successfully passed to kexec_add_buffer(),
> -	 * the FDT buffer address is saved in image->arch.fdt. In that case,
> -	 * the memory cannot be freed here in case of any other error.
> -	 */
> -	if (ret && !image->arch.fdt)
> -		kvfree(fdt);
> -
>  	return ret ? ERR_PTR(ret) : NULL;
>  }
>  
> -- 
> 2.31.0
