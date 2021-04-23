Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A33EA3694FC
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 16:42:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231680AbhDWOnC convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 23 Apr 2021 10:43:02 -0400
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.85.151]:52212 "EHLO
        eu-smtp-delivery-151.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231604AbhDWOnB (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 23 Apr 2021 10:43:01 -0400
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-284-PmE_EISXMrO369CsnbPo2Q-1; Fri, 23 Apr 2021 15:42:22 +0100
X-MC-Unique: PmE_EISXMrO369CsnbPo2Q-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Fri, 23 Apr 2021 15:42:21 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Fri, 23 Apr 2021 15:42:21 +0100
From:   David Laight <David.Laight@ACULAB.COM>
To:     'Michael Ellerman' <mpe@ellerman.id.au>,
        Daniel Axtens <dja@axtens.net>,
        Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        "robh@kernel.org" <robh@kernel.org>,
        "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
        "bauerman@linux.ibm.com" <bauerman@linux.ibm.com>,
        "lkp@intel.com" <lkp@intel.com>
Subject: RE: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
Thread-Topic: [PATCH] powerpc: Initialize local variable fdt to NULL in
 elf64_load()
Thread-Index: AQHXOEeqL6Jjg9Iqf02Ssp9xJukHBarCLKqw
Date:   Fri, 23 Apr 2021 14:42:21 +0000
Message-ID: <3a6b9c56f81e47d08e6bf70d8222725f@AcuMS.aculab.com>
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
 <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
 <87eefag241.fsf@linkitivity.dja.id.au>
 <87r1j3ys8i.fsf@dja-thinkpad.axtens.net> <875z0daz46.fsf@mpe.ellerman.id.au>
In-Reply-To: <875z0daz46.fsf@mpe.ellerman.id.au>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Ellerman
> Sent: 23 April 2021 14:51
...
> > (Does anyone - and by anyone I mean any large distro - compile with
> > local variables inited by the compiler?)
> 
> This is where I say, "yes, Android" and you say "ugh no I meant a real
> distro", and I say "well ...".
> 
> But yeah doesn't help us much.

And it doesn't seem to stop my phone crashing either :-)

Of course, I've absolutely no way of finding out where it is crashing.
Nor where the massive memory leaks are that means it need rebooting
every few days.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

