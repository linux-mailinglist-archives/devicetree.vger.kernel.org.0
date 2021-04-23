Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7FC9369883
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 19:34:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243410AbhDWRfE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Apr 2021 13:35:04 -0400
Received: from linux.microsoft.com ([13.77.154.182]:36878 "EHLO
        linux.microsoft.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243123AbhDWRfD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Apr 2021 13:35:03 -0400
Received: from [192.168.0.104] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
        by linux.microsoft.com (Postfix) with ESMTPSA id 1900820B8001;
        Fri, 23 Apr 2021 10:34:26 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 1900820B8001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
        s=default; t=1619199266;
        bh=wauSRbWpWMAp2gLVa1RG3QS9v1f1bggDujvhpEqfnDo=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=kcMCoRktudKFcWP0+SIZ1vixpBadwk75Mgtm8GrSChiUcXV/X24QaUvQl7PligvKP
         MNqsG96/qR1qk7o/wixGXQXcVexeUVInCV5xCcAE+Vb6gzqPSVC07nepQCcAtPnQzj
         pRHskL+Ov8mK82/D3cOp0KTIT+B7VqVgNfJshqwM=
Subject: Re: [PATCH v2 1/2] powerpc: Free fdt on error in elf64_load()
To:     robh@kernel.org, dan.carpenter@oracle.com, mpe@ellerman.id.au
Cc:     bauerman@linux.ibm.com, dja@axtens.net,
        christophe.leroy@csgroup.eu, lkp@intel.com,
        kbuild-all@lists.01.org, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
References: <20210421163610.23775-1-nramas@linux.microsoft.com>
From:   Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <4e434de5-522c-a7fd-3178-d1636cb9bbc1@linux.microsoft.com>
Date:   Fri, 23 Apr 2021 10:34:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210421163610.23775-1-nramas@linux.microsoft.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/21/21 9:36 AM, Lakshmi Ramasubramanian wrote:

Hi Dan,

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
>   arch/powerpc/kexec/elf_64.c | 16 ++++++----------
>   1 file changed, 6 insertions(+), 10 deletions(-)
> 

Please review this patch and Patch 2/2.

thanks,
  -lakshmi

> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
> index 5a569bb51349..02662e72c53d 100644
> --- a/arch/powerpc/kexec/elf_64.c
> +++ b/arch/powerpc/kexec/elf_64.c
> @@ -114,7 +114,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>   	ret = setup_new_fdt_ppc64(image, fdt, initrd_load_addr,
>   				  initrd_len, cmdline);
>   	if (ret)
> -		goto out;
> +		goto out_free_fdt;
>   
>   	fdt_pack(fdt);
>   
> @@ -125,7 +125,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>   	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>   	ret = kexec_add_buffer(&kbuf);
>   	if (ret)
> -		goto out;
> +		goto out_free_fdt;
>   
>   	/* FDT will be freed in arch_kimage_file_post_load_cleanup */
>   	image->arch.fdt = fdt;
> @@ -140,18 +140,14 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>   	if (ret)
>   		pr_err("Error setting up the purgatory.\n");
>   
> +	goto out;
> +
> +out_free_fdt:
> +	kvfree(fdt);
>   out:
>   	kfree(modified_cmdline);
>   	kexec_free_elf_info(&elf_info);
>   
> -	/*
> -	 * Once FDT buffer has been successfully passed to kexec_add_buffer(),
> -	 * the FDT buffer address is saved in image->arch.fdt. In that case,
> -	 * the memory cannot be freed here in case of any other error.
> -	 */
> -	if (ret && !image->arch.fdt)
> -		kvfree(fdt);
> -
>   	return ret ? ERR_PTR(ret) : NULL;
>   }
>   
> 

