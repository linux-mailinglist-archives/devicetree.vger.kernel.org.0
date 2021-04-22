Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 670CC36774E
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 04:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbhDVCVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 22:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbhDVCVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 22:21:39 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99E3EC06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 19:21:05 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so131842pjh.1
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 19:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=axtens.net; s=google;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=rtMvEVhQW7PSxXx3gDEY/7/ndA+VJactp7XJCyvYRds=;
        b=e9ZQBA84dRYzG3c8qvB3M8kCpiwPbX0MF0xpeInbdqk0aAlkzOGlE/VTdOSoydcYJZ
         jH4i3Da7Gg5jq9AOdbo6muUudMD4MZaRMQF8uI8YLSQD++Ng8nmb7seDkOSdRvAVEDBL
         OO1kpq/LngnBf+Hk+gHoS86FQhMtGk3ET4xj8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=rtMvEVhQW7PSxXx3gDEY/7/ndA+VJactp7XJCyvYRds=;
        b=jWKA8yhNXqBfpCWJ3Tixz8L6db+upLhapNyPsDi15MzMzB95oX5zRG1WG5PGBL/fYe
         GQ4lUyA+mcNXecx0sWgEbqI7O6CwBmf3i+/IZEfNQt9XcFr611GLAaZ57QYuin+Emy8e
         E70vbJkKMAfuQ1K6qfZkkEjHGSWh45UXPUta6+HdZuMuAh3b5sIjKSwDJHUcZeTeIrNQ
         +2kfQ5uaMOttN5ErCWmCpd3dDOgvqM6KNJBwzzRCphfkjHfoyT1dJ1ozH6WW2hmDtmU/
         QxyKi5HcSMEY6Q/DkgqrARx2rd37bwICNMohvwDk+G6dJjfedsitItU7WOKvSufzn2LH
         sBZQ==
X-Gm-Message-State: AOAM530kYzhmqJmYG5mxoBjdiPWCiGxqJ+zG5dVoNNPu/LbRobnhNfyQ
        Wuymq/TMqRV8IvEyjLMrMgL3mSZLUc/tWg==
X-Google-Smtp-Source: ABdhPJzSfBbIuocRNt5X/klBmTsHAtSRfJcc6vLLNyDfYWk2IMBm6IUeS/HlmWtYoMPitwmt5p0UEQ==
X-Received: by 2002:a17:90a:c404:: with SMTP id i4mr14838105pjt.10.1619058065160;
        Wed, 21 Apr 2021 19:21:05 -0700 (PDT)
Received: from localhost (2001-44b8-1113-6700-0077-ddd3-a27e-431c.static.ipv6.internode.on.net. [2001:44b8:1113:6700:77:ddd3:a27e:431c])
        by smtp.gmail.com with ESMTPSA id nv7sm3032529pjb.18.2021.04.21.19.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 19:21:04 -0700 (PDT)
From:   Daniel Axtens <dja@axtens.net>
To:     Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com
Cc:     devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        kbuild-all@lists.01.org, lkp@intel.com, bauerman@linux.ibm.com
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in elf64_load()
In-Reply-To: <87eefag241.fsf@linkitivity.dja.id.au>
References: <20210415191437.20212-1-nramas@linux.microsoft.com> <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com> <87eefag241.fsf@linkitivity.dja.id.au>
Date:   Thu, 22 Apr 2021 12:21:01 +1000
Message-ID: <87r1j3ys8i.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Daniel Axtens <dja@axtens.net> writes:

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

OK, so perhaps this was putting it too strongly. I have been bitten
by uninitialised things enough in C that I may have taken a slightly
overly-agressive view of fixing them in the source rather than the
compiler. I do think compiler-level mitigations are better, and I take
the point that we don't want to defeat compiler checking.

(Does anyone - and by anyone I mean any large distro - compile with
local variables inited by the compiler?)

I was reading the version in powerpc/next, clearly I should have looked
at linux-next. Having said that, I think I will leave the rest of the
bikeshedding to the rest of you, you all seem to have it in hand :)

Kind regards,
Daniel

>
> The out label reads in part:
>
> 	/* Make kimage_file_post_load_cleanup free the fdt buffer for us. */
> 	return ret ? ERR_PTR(ret) : fdt;
>
> As far as I can tell, any time we get a non-zero ret, we're going to
> return an error pointer rather than the uninitialised value...
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
>
> Kind regards,
> Daniel
>
>>> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
>>> ---
>>>   arch/powerpc/kexec/elf_64.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>> 
>>> diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
>>> index 5a569bb51349..0051440c1f77 100644
>>> --- a/arch/powerpc/kexec/elf_64.c
>>> +++ b/arch/powerpc/kexec/elf_64.c
>>> @@ -32,7 +32,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>>>   	int ret;
>>>   	unsigned long kernel_load_addr;
>>>   	unsigned long initrd_load_addr = 0, fdt_load_addr;
>>> -	void *fdt;
>>> +	void *fdt = NULL;
>>>   	const void *slave_code;
>>>   	struct elfhdr ehdr;
>>>   	char *modified_cmdline = NULL;
>>> 
>>
>> thanks,
>>   -lakshmi
