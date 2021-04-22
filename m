Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15AA8367DCA
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 11:35:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235339AbhDVJf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 05:35:58 -0400
Received: from userp2130.oracle.com ([156.151.31.86]:51668 "EHLO
        userp2130.oracle.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235232AbhDVJf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 05:35:57 -0400
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
        by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13M93nrf109493;
        Thu, 22 Apr 2021 09:34:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=6RjgZjUJg2lJ22ukJDMpsu+wWXGOhW3PeqXWgaXfYqA=;
 b=Y5X4CsclDioXjDumEbHRApNMjJ+9GS5XVRda8DOyMKP5vGDm354WRpajG03luAmig3Ng
 x/5jfjgfYvPjUyYHR48JzWBqwrZ19/DDqUVkKsW+6bijA4Y37Wa7JMdqZESkTpoH0w4b
 T8hz36ngmi5lER9JeLgGpFNBnP55jRnZP83D8wvKgM5cZz6akDN7bAmvbqFdfk80Ouu4
 E1kgIxUrC1A50r1+wQpPpNYORZ73T/XFKL7xk83AglNlXuxKMnvK0SlEcoYOXiKZqBiE
 Pqugc9jF+7cx3ZgaFbxGIJU+nM8BK3pwwsPSOqX+w83fcd4Txdl4wxwNA4ioTodbWUC5 jA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
        by userp2130.oracle.com with ESMTP id 37yveamg27-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 22 Apr 2021 09:34:36 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
        by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13M9V2lC075531;
        Thu, 22 Apr 2021 09:34:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
        by aserp3030.oracle.com with ESMTP id 38300674dq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 22 Apr 2021 09:34:35 +0000
Received: from aserp3030.oracle.com (aserp3030.oracle.com [127.0.0.1])
        by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 13M9YZaS092572;
        Thu, 22 Apr 2021 09:34:35 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
        by aserp3030.oracle.com with ESMTP id 38300674cg-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 22 Apr 2021 09:34:35 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
        by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 13M9YWqe019237;
        Thu, 22 Apr 2021 09:34:32 GMT
Received: from kadam (/102.36.221.92)
        by default (Oracle Beehive Gateway v4.0)
        with ESMTP ; Thu, 22 Apr 2021 02:34:31 -0700
Date:   Thu, 22 Apr 2021 12:34:24 +0300
From:   Dan Carpenter <dan.carpenter@oracle.com>
To:     David Laight <David.Laight@ACULAB.COM>
Cc:     "'Daniel Axtens'" <dja@axtens.net>,
        Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        "robh@kernel.org" <robh@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
        "bauerman@linux.ibm.com" <bauerman@linux.ibm.com>,
        "lkp@intel.com" <lkp@intel.com>
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
Message-ID: <20210422093424.GL1959@kadam>
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
 <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
 <87eefag241.fsf@linkitivity.dja.id.au>
 <87r1j3ys8i.fsf@dja-thinkpad.axtens.net>
 <3e6b31d92d5042d982daeb989e49299e@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e6b31d92d5042d982daeb989e49299e@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: 4chW3IqnaIorsUZfsqyZWq-OU0sOtfIB
X-Proofpoint-ORIG-GUID: 4chW3IqnaIorsUZfsqyZWq-OU0sOtfIB
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9961 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0 phishscore=0 mlxscore=0
 suspectscore=0 lowpriorityscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 adultscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104220077
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 22, 2021 at 08:05:27AM +0000, David Laight wrote:
> From: Daniel Axtens
> > Sent: 22 April 2021 03:21
> > 
> > > Hi Lakshmi,
> > >
> > >> On 4/15/21 12:14 PM, Lakshmi Ramasubramanian wrote:
> > >>
> > >> Sorry - missed copying device-tree and powerpc mailing lists.
> > >>
> > >>> There are a few "goto out;" statements before the local variable "fdt"
> > >>> is initialized through the call to of_kexec_alloc_and_setup_fdt() in
> > >>> elf64_load(). This will result in an uninitialized "fdt" being passed
> > >>> to kvfree() in this function if there is an error before the call to
> > >>> of_kexec_alloc_and_setup_fdt().
> > >>>
> > >>> Initialize the local variable "fdt" to NULL.
> > >>>
> > > I'm a huge fan of initialising local variables! But I'm struggling to
> > > find the code path that will lead to an uninit fdt being returned...
> > 
> > OK, so perhaps this was putting it too strongly. I have been bitten
> > by uninitialised things enough in C that I may have taken a slightly
> > overly-agressive view of fixing them in the source rather than the
> > compiler. I do think compiler-level mitigations are better, and I take
> > the point that we don't want to defeat compiler checking.
> > 
> > (Does anyone - and by anyone I mean any large distro - compile with
> > local variables inited by the compiler?)
> 
> There are compilers that initialise locals to zero for 'debug' builds
> and leave the 'random' for optimised 'release' builds.
> Lets not test what we are releasing!

We're eventually going to move to a world where initializing to zero
it the default for the kernel.  I think people will still want to
initialize to a poison value for debug builds.

Initializing to zero is better for debugging because it's more
predictable.  An it avoid information leaks.  And dereferencing random
uninitialized pointers is a privilege escalation but dereferencing a
NULL is just an Oops.

The speed impact is not very significant because (conceptually) it only
needs to be done where there is a compiler warning about uninitialized
variables.  It's slightly more complicated in real life.  In this case,
the compiler doesn't know what happens inside the kexec_build_elf_info()
function so it silences the warning.  And GCC silences warnings if the
variable is initialized inside a loop even when it doesn't know that we
enter the loop.

regards,
dan carpenter

