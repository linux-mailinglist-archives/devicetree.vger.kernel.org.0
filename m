Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94D74366D64
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 15:58:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238217AbhDUN7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 09:59:31 -0400
Received: from linux.microsoft.com ([13.77.154.182]:35870 "EHLO
        linux.microsoft.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235159AbhDUN7b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 09:59:31 -0400
Received: from [192.168.0.104] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
        by linux.microsoft.com (Postfix) with ESMTPSA id B0CC720B8001;
        Wed, 21 Apr 2021 06:58:57 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com B0CC720B8001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
        s=default; t=1619013537;
        bh=m/kK3hlA5gjTlmfPwq8+rli37UA5JEYnAZZ4rdCLBsU=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=QkbDRwQS19YcuVzqMsWNIFqyU3/MHfOTDxmIb5o8XtK/UmWfdKYxCbZ32j3Wxq0oR
         t7uR8hYLemQjyvQwkq+loCQiD8ZNZTIQTUDeXFTq3BikbxZtEGUJiVoD5z2reBzFmM
         5dcUkJxxOoA6BL/Bjkd59lghVvyLTYIbJc/j/2qc=
Subject: Re: [PATCH 1/2] powerpc: Free fdt on error in elf64_load()
To:     Santosh Sivaraj <santosh@fossix.org>, robh@kernel.org,
        dan.carpenter@oracle.com, mpe@ellerman.id.au
Cc:     devicetree@vger.kernel.org, kbuild-all@lists.01.org, lkp@intel.com,
        linuxppc-dev@lists.ozlabs.org, bauerman@linux.ibm.com,
        dja@axtens.net
References: <20210420190355.10059-1-nramas@linux.microsoft.com>
 <871rb4yzca.fsf@fossix.org>
From:   Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <407a9f66-8f91-9c6e-9653-738ba79a97b2@linux.microsoft.com>
Date:   Wed, 21 Apr 2021 06:58:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <871rb4yzca.fsf@fossix.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/20/21 10:35 PM, Santosh Sivaraj wrote:
Hi Santosh,

> 
>> There are a few "goto out;" statements before the local variable "fdt"
>> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
>> elf64_load().  This will result in an uninitialized "fdt" being passed
>> to kvfree() in this function if there is an error before the call to
>> of_kexec_alloc_and_setup_fdt().
>>
>> If there is any error after fdt is allocated, but before it is
>> saved in the arch specific kimage struct, free the fdt.
>>
>> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
>> Suggested-by: Michael Ellerman <mpe@ellerman.id.au>
>> ---
>>   arch/powerpc/kexec/elf_64.c | 16 ++++++----------
>>   1 file changed, 6 insertions(+), 10 deletions(-)
>>
>> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
>> index 5a569bb51349..02662e72c53d 100644
>> --- a/arch/powerpc/kexec/elf_64.c
>> +++ b/arch/powerpc/kexec/elf_64.c
>> @@ -114,7 +114,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>   	ret = setup_new_fdt_ppc64(image, fdt, initrd_load_addr,
>>   				  initrd_len, cmdline);
>>   	if (ret)
>> -		goto out;
>> +		goto out_free_fdt;
> 
> Shouldn't there be a goto out_free_fdt if fdt_open_into fails?

You are likely looking at elf_64.c in the mainline branch. The patch I 
have submitted is based on Rob's device-tree for-next branch. Please see 
the link below:

https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/tree/arch/powerpc/kexec/elf_64.c?h=for-next

> 
>>   
>>   	fdt_pack(fdt);
>>   
>> @@ -125,7 +125,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>   	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>>   	ret = kexec_add_buffer(&kbuf);
>>   	if (ret)
>> -		goto out;
>> +		goto out_free_fdt;
>>   
>>   	/* FDT will be freed in arch_kimage_file_post_load_cleanup */
>>   	image->arch.fdt = fdt;
>> @@ -140,18 +140,14 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>   	if (ret)
>>   		pr_err("Error setting up the purgatory.\n");
>>   
>> +	goto out;
>> +
>> +out_free_fdt:
>> +	kvfree(fdt);
> 
> Can just use kfree here?
"fdt" is allocated through kvmalloc(). So it is freed using kvfree.

thanks,
  -lakshmi

>>   out:
>>   	kfree(modified_cmdline);
>>   	kexec_free_elf_info(&elf_info);
>>   
>> -	/*
>> -	 * Once FDT buffer has been successfully passed to kexec_add_buffer(),
>> -	 * the FDT buffer address is saved in image->arch.fdt. In that case,
>> -	 * the memory cannot be freed here in case of any other error.
>> -	 */
>> -	if (ret && !image->arch.fdt)
>> -		kvfree(fdt);
>> -
>>   	return ret ? ERR_PTR(ret) : NULL;
>>   }
>>   
>> -- 
>> 2.31.0

