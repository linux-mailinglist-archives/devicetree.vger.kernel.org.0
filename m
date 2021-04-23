Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8A5636940B
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 15:50:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbhDWNvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Apr 2021 09:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbhDWNvc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Apr 2021 09:51:32 -0400
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B238C061574
        for <devicetree@vger.kernel.org>; Fri, 23 Apr 2021 06:50:55 -0700 (PDT)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.ozlabs.org (Postfix) with ESMTPSA id 4FRbKR0kq4z9sRR;
        Fri, 23 Apr 2021 23:50:51 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
        s=201909; t=1619185851;
        bh=NBR0doxevZcspE7GMPniJrjcztr5jXz2a0JCNWCT7jw=;
        h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
        b=bzjegyk9DXvu/3ti2c56HI7OdoN+5+TWGLWWSvKQ052n4AcUgH0UDudeNu8zHVdkX
         GUpiiO25ILL3aXaVpitzkEtKShm/l0Zq+FAo1x5yvQNUADIx5Pn1hpxEqjv/wY9RAT
         aEMNwYdu7TMK5kU2x6EpEmElHNWjwdXo2xm+zDcgnyRFQ9qZzhulj5tMEmqi4hHYV9
         NINnxG2dHpdpoBiP+MI3OQe4b8cRfqZMIWHcJoRVyTpaXR4GyPa7QRJpf1zPPhe5Ns
         Cqi0PE1gKDaPt+NQH25TZM97GhV/PMe4pLuRiTrbEkJ8+r6DQWMKlxUky8djYGeYIZ
         nSQcxHYLPUHAw==
From:   Michael Ellerman <mpe@ellerman.id.au>
To:     Daniel Axtens <dja@axtens.net>,
        Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        robh@kernel.org, dan.carpenter@oracle.com
Cc:     devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        kbuild-all@lists.01.org, bauerman@linux.ibm.com, lkp@intel.com
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
In-Reply-To: <87r1j3ys8i.fsf@dja-thinkpad.axtens.net>
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
 <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
 <87eefag241.fsf@linkitivity.dja.id.au>
 <87r1j3ys8i.fsf@dja-thinkpad.axtens.net>
Date:   Fri, 23 Apr 2021 23:50:49 +1000
Message-ID: <875z0daz46.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Daniel Axtens <dja@axtens.net> writes:
> Daniel Axtens <dja@axtens.net> writes:
>
>> Hi Lakshmi,
>>
>>> On 4/15/21 12:14 PM, Lakshmi Ramasubramanian wrote:
>>>
>>> Sorry - missed copying device-tree and powerpc mailing lists.
>>>
>>>> There are a few "goto out;" statements before the local variable "fdt"
>>>> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
>>>> elf64_load(). This will result in an uninitialized "fdt" being passed
>>>> to kvfree() in this function if there is an error before the call to
>>>> of_kexec_alloc_and_setup_fdt().
>>>> 
>>>> Initialize the local variable "fdt" to NULL.
>>>>
>> I'm a huge fan of initialising local variables! But I'm struggling to
>> find the code path that will lead to an uninit fdt being returned...
>
> OK, so perhaps this was putting it too strongly. I have been bitten
> by uninitialised things enough in C that I may have taken a slightly
> overly-agressive view of fixing them in the source rather than the
> compiler. I do think compiler-level mitigations are better, and I take
> the point that we don't want to defeat compiler checking.
>
> (Does anyone - and by anyone I mean any large distro - compile with
> local variables inited by the compiler?)

This is where I say, "yes, Android" and you say "ugh no I meant a real
distro", and I say "well ...".

But yeah doesn't help us much.

cheers
