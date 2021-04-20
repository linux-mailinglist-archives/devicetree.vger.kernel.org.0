Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7434365B60
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 16:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232277AbhDTOmm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 10:42:42 -0400
Received: from linux.microsoft.com ([13.77.154.182]:55562 "EHLO
        linux.microsoft.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232174AbhDTOmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 10:42:42 -0400
Received: from [192.168.0.104] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
        by linux.microsoft.com (Postfix) with ESMTPSA id 9A08120B8001;
        Tue, 20 Apr 2021 07:42:10 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 9A08120B8001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
        s=default; t=1618929730;
        bh=NVm2vo4GXXRMexKDwSwg3+CXMqPX9ItM3I9tjQFYJeI=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=hepldv/2ui8GWJoHLyLWTVwmm7kq5UZFZipOgtP3OsMPbMS9OYkxhqJnRuBEqq1pz
         bkxXeMEs2LfKkTxZ2eAUkbIvjhEm/6oJHz4TChxZn9vCS57zzDEv7MyH7h66bossYy
         NjuigEso0BBbnxccOgktltZzkcaxa9xPIai7Xxjc=
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
To:     Rob Herring <robh@kernel.org>
Cc:     Dan Carpenter <dan.carpenter@oracle.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Daniel Axtens <dja@axtens.net>, devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        kbuild-all@lists.01.org,
        Thiago Jung Bauermann <bauerman@linux.ibm.com>,
        kbuild test robot <lkp@intel.com>
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
 <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
 <87eefag241.fsf@linkitivity.dja.id.au> <87tuo6eh0j.fsf@mpe.ellerman.id.au>
 <2817d674-d420-580f-a0c1-b842da915a80@linux.microsoft.com>
 <87pmypdf93.fsf@mpe.ellerman.id.au> <20210420050015.GA1959@kadam>
 <b84c76d6-2be8-77a4-3c0f-ad8657c0e508@linux.microsoft.com>
 <CAL_JsqLS9Wu_+_S-2wwMb3Chd_8RYAtFe_uLh5tjj_sAkTgRJA@mail.gmail.com>
From:   Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <2e8dd39b-0372-4874-340e-6f87185091cc@linux.microsoft.com>
Date:   Tue, 20 Apr 2021 07:42:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLS9Wu_+_S-2wwMb3Chd_8RYAtFe_uLh5tjj_sAkTgRJA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/20/21 6:06 AM, Rob Herring wrote:
> On Tue, Apr 20, 2021 at 12:20 AM Lakshmi Ramasubramanian
> <nramas@linux.microsoft.com> wrote:
>>
>> On 4/19/21 10:00 PM, Dan Carpenter wrote:
>>> On Tue, Apr 20, 2021 at 09:30:16AM +1000, Michael Ellerman wrote:
>>>> Lakshmi Ramasubramanian <nramas@linux.microsoft.com> writes:
>>>>> On 4/16/21 2:05 AM, Michael Ellerman wrote:
>>>>>
>>>>>> Daniel Axtens <dja@axtens.net> writes:
>>>>>>>> On 4/15/21 12:14 PM, Lakshmi Ramasubramanian wrote:
>>>>>>>>
>>>>>>>> Sorry - missed copying device-tree and powerpc mailing lists.
>>>>>>>>
>>>>>>>>> There are a few "goto out;" statements before the local variable "fdt"
>>>>>>>>> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
>>>>>>>>> elf64_load(). This will result in an uninitialized "fdt" being passed
>>>>>>>>> to kvfree() in this function if there is an error before the call to
>>>>>>>>> of_kexec_alloc_and_setup_fdt().
>>>>>>>>>
>>>>>>>>> Initialize the local variable "fdt" to NULL.
>>>>>>>>>
>>>>>>> I'm a huge fan of initialising local variables! But I'm struggling to
>>>>>>> find the code path that will lead to an uninit fdt being returned...
>>>>>>>
>>>>>>> The out label reads in part:
>>>>>>>
>>>>>>>    /* Make kimage_file_post_load_cleanup free the fdt buffer for us. */
>>>>>>>    return ret ? ERR_PTR(ret) : fdt;
>>>>>>>
>>>>>>> As far as I can tell, any time we get a non-zero ret, we're going to
>>>>>>> return an error pointer rather than the uninitialised value...
>>>>>
>>>>> As Dan pointed out, the new code is in linux-next.
>>>>>
>>>>> I have copied the new one below - the function doesn't return fdt, but
>>>>> instead sets it in the arch specific field (please see the link to the
>>>>> updated elf_64.c below).
>>>>>
>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/tree/arch/powerpc/kexec/elf_64.c?h=for-next
>>>>>
>>>>>>>
>>>>>>> (btw, it does look like we might leak fdt if we have an error after we
>>>>>>> successfully kmalloc it.)
>>>>>>>
>>>>>>> Am I missing something? Can you link to the report for the kernel test
>>>>>>> robot or from Dan?
>>>>>
>>>>> /*
>>>>>             * Once FDT buffer has been successfully passed to
>>>>> kexec_add_buffer(),
>>>>>             * the FDT buffer address is saved in image->arch.fdt. In that
>>>>> case,
>>>>>             * the memory cannot be freed here in case of any other error.
>>>>>             */
>>>>>            if (ret && !image->arch.fdt)
>>>>>                    kvfree(fdt);
>>>>>
>>>>>            return ret ? ERR_PTR(ret) : NULL;
>>>>>
>>>>> In case of an error, the memory allocated for fdt is freed unless it has
>>>>> already been passed to kexec_add_buffer().
>>>>
>>>> It feels like the root of the problem is that the kvfree of fdt is in
>>>> the wrong place. It's only allocated later in the function, so the error
>>>> path should reflect that. Something like the patch below.
>>>>
>>>> cheers
>>>>
>>>>
>>>> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
>>>> index 5a569bb51349..02662e72c53d 100644
>>>> --- a/arch/powerpc/kexec/elf_64.c
>>>> +++ b/arch/powerpc/kexec/elf_64.c
>>>> @@ -114,7 +114,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>>>       ret = setup_new_fdt_ppc64(image, fdt, initrd_load_addr,
>>>>                                 initrd_len, cmdline);
>>>>       if (ret)
>>>> -            goto out;
>>>> +            goto out_free_fdt;
>>>>
>>>>       fdt_pack(fdt);
>>>>
>>>> @@ -125,7 +125,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>>>       kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>>>>       ret = kexec_add_buffer(&kbuf);
>>>>       if (ret)
>>>> -            goto out;
>>>> +            goto out_free_fdt;
>>>>
>>>>       /* FDT will be freed in arch_kimage_file_post_load_cleanup */
>>>>       image->arch.fdt = fdt;
>>>> @@ -140,18 +140,14 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>>>       if (ret)
>>>>               pr_err("Error setting up the purgatory.\n");
>>>>
>>>> +    goto out;
>>>
>>> This will leak.  It would need to be something like:
>>>
>>>        if (ret) {
>>>                pr_err("Error setting up the purgatory.\n");
>>>                goto out_free_fdt;
>>>        }
>> Once "fdt" buffer is successfully passed to kexec_add_buffer() it cannot
>> be freed here - it will be freed when the kexec cleanup function is called.
> 
> That may be the case currently, but really if a function returns an
> error it should have undone anything it did like memory allocations. I
> don't think you should do that to fix this issue, but it would be a
> good clean-up.
> 

I agree - in case of an error the function should do a proper clean-up.
Just to be clear - for now, I will leave this as is. Correct?

In my patch, I will do the following changes:

  => Free "fdt" when possible (as Michael had suggested in his patch)
  => Zero out "elf_info" struct at the start of the function.

thanks,
  -lakshmi



