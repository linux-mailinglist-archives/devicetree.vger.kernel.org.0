Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9BBE3619F7
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 08:44:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232618AbhDPGpB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 02:45:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbhDPGpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 02:45:01 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B181EC061574
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 23:44:35 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id nk8so268620pjb.3
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 23:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=axtens.net; s=google;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=u+Ddaz9peG998Lz+UWrfM3P9RuEHrzjlPdY7UuQjR3w=;
        b=cmkn0sPjbiOFMw3vcx7xC7oxxDxJsOQgHZThhseH2E67KTpHQzcGNfHb7pLVnAhbOd
         KP5BsZj6O95A4Fa4wkODthEfd0hNN+33+PIYjmlwpopFRZq0d+33TC+2dwdcVT/ag8bH
         sGdUdlu4WCj+TxjV14NkUd3V2tpQYOo5FZYog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=u+Ddaz9peG998Lz+UWrfM3P9RuEHrzjlPdY7UuQjR3w=;
        b=EW18uNwX7g1QnaOxOuHhoCTosr4/MXEyANx0qZYbeJ8qJtsLTI2OKq9MCngXEsfi/h
         FPHv4PDn3rCoc1TYIFaIM2dNsr8UjQk4n8NKEkXyZ80isXmU4RoRDLe9zIB9TvXuS4cl
         fyQzPFaBinIbBXZN/dO5nI7kQB9k1K9v96dZq+VmDxb+GUrqcjjSaSUC00CiTimnRt3o
         qKQfAq+WnRaDcf+/+dn7BGPnXbwRa/54NksuIs6uV3DCxgBjgpVZQMf6BfAOTv9zqu7U
         UjcN9PCa45tI+4ImMm3/n6ChvXybemB3kjg59sJgMBV8UZ6RzBqrG38csyLjDaHpcHCS
         gm7A==
X-Gm-Message-State: AOAM533QgVTi1QRiBnZt9424Wz2yOaM0W1Na2WJ+Rbovf2EBVjNhPuj5
        zyhv7ITvGP0HhITyRXdQEtRLrg==
X-Google-Smtp-Source: ABdhPJxGCOWnXZrcOlgeZVlgOb/YJRzhJ0+FDOT14Z0DI5NPNg9oeLXfCM2nZMTMzS98hh8QrL6eMg==
X-Received: by 2002:a17:90a:6582:: with SMTP id k2mr8039400pjj.11.1618555475245;
        Thu, 15 Apr 2021 23:44:35 -0700 (PDT)
Received: from localhost (2001-44b8-111e-5c00-09c3-a49e-2955-78c6.static.ipv6.internode.on.net. [2001:44b8:111e:5c00:9c3:a49e:2955:78c6])
        by smtp.gmail.com with ESMTPSA id g18sm3815559pfb.178.2021.04.15.23.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 23:44:34 -0700 (PDT)
From:   Daniel Axtens <dja@axtens.net>
To:     Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com
Cc:     devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        kbuild-all@lists.01.org, lkp@intel.com, bauerman@linux.ibm.com
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in elf64_load()
In-Reply-To: <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
References: <20210415191437.20212-1-nramas@linux.microsoft.com> <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
Date:   Fri, 16 Apr 2021 16:44:30 +1000
Message-ID: <87eefag241.fsf@linkitivity.dja.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lakshmi,

> On 4/15/21 12:14 PM, Lakshmi Ramasubramanian wrote:
>
> Sorry - missed copying device-tree and powerpc mailing lists.
>
>> There are a few "goto out;" statements before the local variable "fdt"
>> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
>> elf64_load(). This will result in an uninitialized "fdt" being passed
>> to kvfree() in this function if there is an error before the call to
>> of_kexec_alloc_and_setup_fdt().
>> 
>> Initialize the local variable "fdt" to NULL.
>>
I'm a huge fan of initialising local variables! But I'm struggling to
find the code path that will lead to an uninit fdt being returned...

The out label reads in part:

	/* Make kimage_file_post_load_cleanup free the fdt buffer for us. */
	return ret ? ERR_PTR(ret) : fdt;

As far as I can tell, any time we get a non-zero ret, we're going to
return an error pointer rather than the uninitialised value...

(btw, it does look like we might leak fdt if we have an error after we
successfully kmalloc it.)

Am I missing something? Can you link to the report for the kernel test
robot or from Dan? 

FWIW, I think it's worth including this patch _anyway_ because initing
local variables is good practice, but I'm just not sure on the
justification.

Kind regards,
Daniel

>> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
>> ---
>>   arch/powerpc/kexec/elf_64.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
>> index 5a569bb51349..0051440c1f77 100644
>> --- a/arch/powerpc/kexec/elf_64.c
>> +++ b/arch/powerpc/kexec/elf_64.c
>> @@ -32,7 +32,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>   	int ret;
>>   	unsigned long kernel_load_addr;
>>   	unsigned long initrd_load_addr = 0, fdt_load_addr;
>> -	void *fdt;
>> +	void *fdt = NULL;
>>   	const void *slave_code;
>>   	struct elfhdr ehdr;
>>   	char *modified_cmdline = NULL;
>> 
>
> thanks,
>   -lakshmi
