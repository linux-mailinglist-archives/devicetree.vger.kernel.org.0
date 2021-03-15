Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87EB033AF7D
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 11:03:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbhCOKCq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 06:02:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229712AbhCOKCn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 06:02:43 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 079A6C061574
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 03:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=jGbix6t9YwK6+wYpe95g10PJb+7U2ab/66D50RfadB0=; b=ziRD3TZHXpQgpRsfNVGaGHrDh
        9qol2OtwMGaiBq7T2Wyp96JldIdQXVmuj1t0tX8mria8FEN1KJRN/aXNB4M9Zn9q8wyX27MzRmaXX
        pE+dshFBxquYmvfysqRwqA2QcUKqD1K6QZQ5SEDT5Zcfb3V+V1cdWrIPoYMGyAgOEFDHPQUvMBcRx
        q/oslIXofeJ/B3oFSLiCr9O03SbTggIl7lqKkvQPPK7sa3Qw0tuco/app5geCXNNU3mftLzURZZ/u
        svm5A5Q4ZLBxJLON4YFqjoy2Pu/sA1hkgeoi5/Ga56hP513SwPsOS+9EGPDqtMp9ZyUEx62Kp5UFI
        gmsTq7bUA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51316)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <linux@armlinux.org.uk>)
        id 1lLk36-00005t-QP; Mon, 15 Mar 2021 10:02:08 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1lLk35-0005GX-IF; Mon, 15 Mar 2021 10:02:07 +0000
Date:   Mon, 15 Mar 2021 10:02:07 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jon Nettleton <jon@solid-run.com>
Subject: Re: [PATCH] arm64: dts: lx2160a-clearfog-itx: add SFP support
 [*experimental*]
Message-ID: <20210315100207.GL1463@shell.armlinux.org.uk>
References: <E1lJfLu-0000Q2-Nl@rmk-PC.armlinux.org.uk>
 <20210315070314.GN11246@dragon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210315070314.GN11246@dragon>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 15, 2021 at 03:03:15PM +0800, Shawn Guo wrote:
> On Tue, Mar 09, 2021 at 04:36:58PM +0000, Russell King wrote:
> > Add 2x2 SFP+ cage support for clearfog-itx boards.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> What is the implication of [*experimental*] in subject?

Oh, I should've dropped that, thanks for pointing it out.

It was experimental as we didn't know which direction NXP were heading
with the PCS support on the LX2160A until it was finally merged into
net-next.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
