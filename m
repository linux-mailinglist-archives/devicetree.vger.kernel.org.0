Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 491C2368560
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 19:00:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236496AbhDVRBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 13:01:01 -0400
Received: from gate.crashing.org ([63.228.1.57]:33501 "EHLO gate.crashing.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236058AbhDVRBB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Apr 2021 13:01:01 -0400
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
        by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 13MGsfdu020034;
        Thu, 22 Apr 2021 11:54:41 -0500
Received: (from segher@localhost)
        by gate.crashing.org (8.14.1/8.14.1/Submit) id 13MGsb0c020029;
        Thu, 22 Apr 2021 11:54:37 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date:   Thu, 22 Apr 2021 11:54:37 -0500
From:   Segher Boessenkool <segher@kernel.crashing.org>
To:     David Laight <David.Laight@ACULAB.COM>
Cc:     "'Daniel Axtens'" <dja@axtens.net>,
        Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        "robh@kernel.org" <robh@kernel.org>,
        "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
        "bauerman@linux.ibm.com" <bauerman@linux.ibm.com>,
        "lkp@intel.com" <lkp@intel.com>
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in elf64_load()
Message-ID: <20210422165437.GA27473@gate.crashing.org>
References: <20210415191437.20212-1-nramas@linux.microsoft.com> <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com> <87eefag241.fsf@linkitivity.dja.id.au> <87r1j3ys8i.fsf@dja-thinkpad.axtens.net> <3e6b31d92d5042d982daeb989e49299e@AcuMS.aculab.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e6b31d92d5042d982daeb989e49299e@AcuMS.aculab.com>
User-Agent: Mutt/1.4.2.3i
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 22, 2021 at 08:05:27AM +0000, David Laight wrote:
> > (Does anyone - and by anyone I mean any large distro - compile with
> > local variables inited by the compiler?)
> 
> There are compilers that initialise locals to zero for 'debug' builds
> and leave the 'random' for optimised 'release' builds.
> Lets not test what we are releasing!

Yeah, that's the worst of all possible worlds.

> I also think there is a new option to gcc (or clang?) to initialise
> on-stack structures and arrays to ensure garbage isn't passed.
> That seems to be a horrid performance hit!
> Especially in userspace where large stack allocations are almost free.
> 
> Any auto-initialise ought to be with a semi-random value
> (especially not zero) so that it is never right and doesn't
> lead to lazy coding.

Many compilers did something like this, decades ago -- for debug builds.


Segher
