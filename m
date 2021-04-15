Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 720073612D4
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 21:18:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234816AbhDOTTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 15:19:04 -0400
Received: from linux.microsoft.com ([13.77.154.182]:57416 "EHLO
        linux.microsoft.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234836AbhDOTTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 15:19:03 -0400
Received: from [192.168.0.104] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
        by linux.microsoft.com (Postfix) with ESMTPSA id 6706420B8001;
        Thu, 15 Apr 2021 12:18:40 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 6706420B8001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
        s=default; t=1618514320;
        bh=oyFzwjqkQUSMMuJGF+BPS7fDUWKbfKx4hV8I/ckQs5A=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=CtwSi4uptCk042u834hYAeLfhdQdIUHrBndx6yJJXS16i0c0YTri5i4Y0vAHP0n0B
         mxZcAVjPsGATh47mM7jTp+caG+GuwTDJz+o4P8hFa2YbqkDdgVBjJVktpuV9zIvwGc
         6/tnQ9IckAa0xc4yOwSKZWxSDZ9XWjq64xkg8Rho=
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
To:     robh@kernel.org, dan.carpenter@oracle.com
Cc:     bauerman@linux.ibm.com, lkp@intel.com, kbuild-all@lists.01.org,
        devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
From:   Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
Date:   Thu, 15 Apr 2021 12:18:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210415191437.20212-1-nramas@linux.microsoft.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/15/21 12:14 PM, Lakshmi Ramasubramanian wrote:

Sorry - missed copying device-tree and powerpc mailing lists.

> There are a few "goto out;" statements before the local variable "fdt"
> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
> elf64_load(). This will result in an uninitialized "fdt" being passed
> to kvfree() in this function if there is an error before the call to
> of_kexec_alloc_and_setup_fdt().
> 
> Initialize the local variable "fdt" to NULL.
> 
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>   arch/powerpc/kexec/elf_64.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
> index 5a569bb51349..0051440c1f77 100644
> --- a/arch/powerpc/kexec/elf_64.c
> +++ b/arch/powerpc/kexec/elf_64.c
> @@ -32,7 +32,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>   	int ret;
>   	unsigned long kernel_load_addr;
>   	unsigned long initrd_load_addr = 0, fdt_load_addr;
> -	void *fdt;
> +	void *fdt = NULL;
>   	const void *slave_code;
>   	struct elfhdr ehdr;
>   	char *modified_cmdline = NULL;
> 

thanks,
  -lakshmi
