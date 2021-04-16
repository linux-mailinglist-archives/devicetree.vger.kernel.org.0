Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98781361CF0
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 12:09:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235189AbhDPJGJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 05:06:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238478AbhDPJGF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 05:06:05 -0400
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56325C061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 02:05:40 -0700 (PDT)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4FM9KY0PN8z9sRR;
        Fri, 16 Apr 2021 19:05:36 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
        s=201909; t=1618563938;
        bh=ODI74klkPteUtUE2RViGCzX+1GpV6bkKxunEM80VHEQ=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
        b=N5K+P5uI8zLBgHhpJPdrouDzj3Tny9rxGnD0pO2rxvh6hAcHhkrH2GnJzAHuxkDUY
         QhdfK8K1Z0Pumw3BaNMxLkURu41hYxQScn1jm+DC+Y0/YWQnJDQnggSf+N6VK9MTgy
         xPXEKynNnpM618/eFJ4jzWxZJluP/fyzeYrFH3X6FVIhmKUAHFv5TtBR+JNIgx7IY9
         miVOR70+UkJncVLS75fElHdIOMFkcnkH1Vw1y2NNvol0YkXopOT5kVxkpBbMoBq1Po
         /ksN+pHOxpvoTo5Qrp14GAUQXaHJfklM7hV8vLg8FT/wX73M/5gvI1JxiRSBYFh26h
         peuneCnGS+9Gg==
From:   Michael Ellerman <mpe@ellerman.id.au>
To:     Daniel Axtens <dja@axtens.net>,
        Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com
Cc:     devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        kbuild-all@lists.01.org, bauerman@linux.ibm.com, lkp@intel.com
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
In-Reply-To: <87eefag241.fsf@linkitivity.dja.id.au>
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
 <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
 <87eefag241.fsf@linkitivity.dja.id.au>
Date:   Fri, 16 Apr 2021 19:05:32 +1000
Message-ID: <87tuo6eh0j.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Daniel Axtens <dja@axtens.net> writes:
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

Why is it good practice?

It defeats -Wuninitialized. So you're guaranteed to be returning
something initialised, but not necessarily initialised to the right
value.

In a case like this NULL seems like a safe choice, but it's still wrong.
The function is meant to return a pointer to the successfully allocated
fdt, or an ERR_PTR() value. NULL is neither of those.

I agree there are security reasons that initialising stack variables is
desirable, but I think that should be handled by the compiler, not at
the source level.

cheers
