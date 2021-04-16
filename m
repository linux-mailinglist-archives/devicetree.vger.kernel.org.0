Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3FE361A40
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 09:01:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbhDPHAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 03:00:40 -0400
Received: from pegase1.c-s.fr ([93.17.236.30]:51299 "EHLO pegase1.c-s.fr"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234708AbhDPHAj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 16 Apr 2021 03:00:39 -0400
Received: from localhost (mailhub1-int [192.168.12.234])
        by localhost (Postfix) with ESMTP id 4FM6Xr63mTzB09bR;
        Fri, 16 Apr 2021 09:00:12 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
        by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
        with ESMTP id woeTyHy5h4RW; Fri, 16 Apr 2021 09:00:12 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
        by pegase1.c-s.fr (Postfix) with ESMTP id 4FM6Xr3zP0zB09bN;
        Fri, 16 Apr 2021 09:00:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
        by messagerie.si.c-s.fr (Postfix) with ESMTP id 7750B8B825;
        Fri, 16 Apr 2021 09:00:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
        by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
        with ESMTP id Vx2--yWqLdbH; Fri, 16 Apr 2021 09:00:13 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
        by messagerie.si.c-s.fr (Postfix) with ESMTP id BE0CF8B81A;
        Fri, 16 Apr 2021 09:00:12 +0200 (CEST)
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
To:     Daniel Axtens <dja@axtens.net>,
        Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com
Cc:     devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        kbuild-all@lists.01.org, bauerman@linux.ibm.com, lkp@intel.com
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
 <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
 <87eefag241.fsf@linkitivity.dja.id.au>
From:   Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <f82a9fe2-3254-3f25-616c-10e56103bdc6@csgroup.eu>
Date:   Fri, 16 Apr 2021 09:00:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <87eefag241.fsf@linkitivity.dja.id.au>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: fr
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Le 16/04/2021 à 08:44, Daniel Axtens a écrit :
> Hi Lakshmi,
> 
>> On 4/15/21 12:14 PM, Lakshmi Ramasubramanian wrote:
>>
>> Sorry - missed copying device-tree and powerpc mailing lists.
>>
>>> There are a few "goto out;" statements before the local variable "fdt"
>>> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
>>> elf64_load(). This will result in an uninitialized "fdt" being passed
>>> to kvfree() in this function if there is an error before the call to
>>> of_kexec_alloc_and_setup_fdt().
>>>
>>> Initialize the local variable "fdt" to NULL.
>>>
> I'm a huge fan of initialising local variables! But I'm struggling to
> find the code path that will lead to an uninit fdt being returned...
> 
> The out label reads in part:
> 
> 	/* Make kimage_file_post_load_cleanup free the fdt buffer for us. */
> 	return ret ? ERR_PTR(ret) : fdt;
> 
> As far as I can tell, any time we get a non-zero ret, we're going to
> return an error pointer rather than the uninitialised value...

I don't think GCC is smart enough to detect that.

> 
> (btw, it does look like we might leak fdt if we have an error after we
> successfully kmalloc it.)
> 
> Am I missing something? Can you link to the report for the kernel test
> robot or from Dan?
> 
> FWIW, I think it's worth including this patch _anyway_ because initing
> local variables is good practice, but I'm just not sure on the
> justification.

I don't think local systematically initing local variables is a good practice at all, as it leads to 
bugs where you get a wrong value because of pathes where you forgot to set the correct value.

If you don't init local variable at declaration and forget to set it in some pathes, the compiler 
will detect it and warn you.
If you init the local variable with an arbitrary value at declaration and forget to set it later in 
some pathes, the compiler won't be able to detect it and you will go with the wrong value.

Christophe

> 
> Kind regards,
> Daniel
> 
>>> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
>>> ---
>>>    arch/powerpc/kexec/elf_64.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
>>> index 5a569bb51349..0051440c1f77 100644
>>> --- a/arch/powerpc/kexec/elf_64.c
>>> +++ b/arch/powerpc/kexec/elf_64.c
>>> @@ -32,7 +32,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>>    	int ret;
>>>    	unsigned long kernel_load_addr;
>>>    	unsigned long initrd_load_addr = 0, fdt_load_addr;
>>> -	void *fdt;
>>> +	void *fdt = NULL;
>>>    	const void *slave_code;
>>>    	struct elfhdr ehdr;
>>>    	char *modified_cmdline = NULL;
>>>
>>
>> thanks,
>>    -lakshmi
