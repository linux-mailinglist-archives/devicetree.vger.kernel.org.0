Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E326710ABB1
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2019 09:28:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726149AbfK0I2O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Nov 2019 03:28:14 -0500
Received: from bombadil.infradead.org ([198.137.202.133]:48356 "EHLO
        bombadil.infradead.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726125AbfK0I2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Nov 2019 03:28:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
        :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=LWu0UYYs7bnK8ElFHR7JEZa6mX6bHvaBoAGnBrEd4eA=; b=BCMs7xCGx4+9EuTlluEyg53DW
        87WGVpXWmjnnpSyNe0UkaDOQe9Hfn5RkYB2pEJeGIbOt1UrrxH+1fAjWE7/eDmq5g68inqY8TDKaD
        z1ozQfL4fDe6K4EtvdNgUEkyORnZkm8199Na5Wse8BJeDS6Flv7DhjAD/tmbe4H2Usi9vydgWHCRr
        vy20cK4RT/4Tqctn9/fj5yt9sgAuSG343k54Cr86MVdv2PprzqtgIYyKlknToJi7U4PJUiBjx4lk5
        +6CusoaTmD7PtIGFdnp5cLoh3o1Y4iNitgUUWaaM2PKaPcev4PEmty7qVFJXnza/KZTM6j3+zVXlC
        YF/L7toGw==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
        id 1iZsgE-0005ru-IC; Wed, 27 Nov 2019 08:28:10 +0000
Date:   Wed, 27 Nov 2019 00:28:10 -0800
From:   Christoph Hellwig <hch@infradead.org>
To:     Haren Myneni <haren@linux.vnet.ibm.com>
Cc:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        mpe@ellerman.id.au, npiggin@gmail.com, mikey@neuling.org,
        herbert@gondor.apana.org.au, sukadev@linux.vnet.ibm.com
Subject: Re: [PATCH 02/14] Revert "powerpc/powernv: remove the unused
 vas_win_paste_addr and vas_win_id functions"
Message-ID: <20191127082810.GA17097@infradead.org>
References: <1574816607.13250.6.camel@hbabu-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1574816607.13250.6.camel@hbabu-laptop>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 26, 2019 at 05:03:27PM -0800, Haren Myneni wrote:
> 
> This reverts commit 452d23c0f6bd97f2fd8a9691fee79b76040a0feb.
> 
> User space send windows (NX GZIP compression) need vas_win_paste_addr()
> to mmap window paste address and vas_win_id() to get window ID when
> window address is given.

Even with your full series applied vas_win_paste_addr is entirely
unused, and vas_win_id is only used once in the same file it is defined.

So instead of this patch you should just open code vas_win_id in
init_winctx_for_txwin.

> +static inline u32 encode_pswid(int vasid, int winid)
> +{
> +	u32 pswid = 0;
> +
> +	pswid |= vasid << (31 - 7);
> +	pswid |= winid;
> +
> +	return pswid;

This can be simplified down to:

	return (u32)winid | (vasid << (31 - 7));
