Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC467116849
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 09:38:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727232AbfLIIiq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Dec 2019 03:38:46 -0500
Received: from gate.crashing.org ([63.228.1.57]:59919 "EHLO gate.crashing.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727113AbfLIIio (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 9 Dec 2019 03:38:44 -0500
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
        by gate.crashing.org (8.14.1/8.14.1) with ESMTP id xB98c8a0027516;
        Mon, 9 Dec 2019 02:38:08 -0600
Received: (from segher@localhost)
        by gate.crashing.org (8.14.1/8.14.1/Submit) id xB98c6QK027514;
        Mon, 9 Dec 2019 02:38:06 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date:   Mon, 9 Dec 2019 02:38:06 -0600
From:   Segher Boessenkool <segher@kernel.crashing.org>
To:     Christophe Leroy <christophe.leroy@c-s.fr>
Cc:     Haren Myneni <haren@linux.ibm.com>, mpe@ellerman.id.au,
        hch@infradead.org, mikey@neuling.org, npiggin@gmail.com,
        herbert@gondor.apana.org.au, linuxppc-dev@lists.ozlabs.org,
        devicetree@vger.kernel.org, sukadev@linux.vnet.ibm.com
Subject: Re: [PATCH V2 00/13] powerpc/vas: Page fault handling for user space NX requests
Message-ID: <20191209083806.GA3152@gate.crashing.org>
References: <1575861522.16318.9.camel@hbabu-laptop> <8ba807dd-9d5a-e42a-60e8-f9ad648026bf@c-s.fr>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ba807dd-9d5a-e42a-60e8-f9ad648026bf@c-s.fr>
User-Agent: Mutt/1.4.2.3i
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!

On Mon, Dec 09, 2019 at 06:37:09AM +0100, Christophe Leroy wrote:
> What do you mean by NX ?

It is the Power9 "Nest Accelerator".  The patch series should ideally
mention that right at the start, yeah.

> Up to now, NX has been standing for No-eXecute. That's a bit in segment 
> registers on book3s/32 to forbid executing code.

That bit is called just N fwiw (and not really specific to 32-bit -- on
64-bit implementations it was part of segment table entries, and of SLB
entries on newer machines).


Segher
