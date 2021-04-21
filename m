Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78FE93664E2
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 07:35:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234659AbhDUFf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 01:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230343AbhDUFf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 01:35:57 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD291C06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 22:35:23 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id y62so3799101pfg.4
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 22:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fossix-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=8jaI/y7tQyXNZ0F/lE5w04XvuFfJHK0sIg7D3ehWa2I=;
        b=FGcmYqzVAfCk4jZIBjwgNdwOcU2kAKiyBAlZAz+ld7OMjWEuPFpr5v0FYC0Up6U3/M
         75av7TzaEn9BqYEkEkhPWjQ/c78xqZTzy8RSSu9IVOBalVrqxIXB/Rh1kf2RKq2CA6JX
         lVNZ3kLxnbe5kzk7m7gWUD6ABlmIhmIz37QewnwLucbI2oMaKDHXvM95aS08FmnjmUCf
         qXSu/4Rkf7GJQdQVJTOKJ4RgeDn6xoCXwATaIG4RnLlPHyhkCttwxrKj05PTriAeqpxp
         5xqF/dV4lq3b58mACsurclxYjVBOWMzVLZ943pXQ9E0F+TzdqPKU3oIo8593CsO/Qwaa
         +kVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=8jaI/y7tQyXNZ0F/lE5w04XvuFfJHK0sIg7D3ehWa2I=;
        b=b6vnqALN1BmZdXlHtPyYaWGAcjbi3pwppgFQS58N6x1vqdAYsi5QvUMCqKmAIQqhAu
         kloulBb/El5v5xSLSf0MCDPz3VOXFteY6UHaKolV4yJUZCYgQeKbITZtydytii1fRS9U
         tzj+HUSImSihYU3LH9uhvJ2K/3WatyDcR+93YA4idBtXNWm8w18GgLoP7M8l8WkNnK9a
         6H4NrsjsNZGL3vF/ZWiAbmsHb2duGdti0K2EF9bKVWiGL3r3KsYUANFwXKCSoczG/OT7
         pCQpha9ULcMFnaZwHriSvDmaWvFj92Y12vOX/w8NtcR9y/lckoWQrxKhd/3J0uDzt0kf
         bofQ==
X-Gm-Message-State: AOAM5330bRa/yLESWq4jD2RsC0K2XLu1+DgWhGbswpwGvb1OJ/KwPhEZ
        9MsXSxSQCj0lEi30baoDEHF9yA==
X-Google-Smtp-Source: ABdhPJyNYSTIUuRRGnWXbcE6S1PfsjcCNWhOMuarMEDyCvHeQDVuTaBITj2UW4m2Z1fYij25QGu6vg==
X-Received: by 2002:aa7:9394:0:b029:264:82c4:34ce with SMTP id t20-20020aa793940000b029026482c434cemr4944123pfe.34.1618983323069;
        Tue, 20 Apr 2021 22:35:23 -0700 (PDT)
Received: from localhost ([103.21.79.4])
        by smtp.gmail.com with ESMTPSA id a20sm646452pfk.46.2021.04.20.22.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 22:35:22 -0700 (PDT)
From:   Santosh Sivaraj <santosh@fossix.org>
To:     Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com, mpe@ellerman.id.au
Cc:     devicetree@vger.kernel.org, kbuild-all@lists.01.org, lkp@intel.com,
        nramas@linux.microsoft.com, linuxppc-dev@lists.ozlabs.org,
        bauerman@linux.ibm.com, dja@axtens.net
Subject: Re: [PATCH 1/2] powerpc: Free fdt on error in elf64_load()
In-Reply-To: <20210420190355.10059-1-nramas@linux.microsoft.com>
References: <20210420190355.10059-1-nramas@linux.microsoft.com>
Date:   Wed, 21 Apr 2021 11:05:17 +0530
Message-ID: <871rb4yzca.fsf@fossix.org>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Lakshmi,

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
> ---
>  arch/powerpc/kexec/elf_64.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
>
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

Shouldn't there be a goto out_free_fdt if fdt_open_into fails?

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

Can just use kfree here?

Thanks,
Santosh
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
