Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A114E228260
	for <lists+devicetree@lfdr.de>; Tue, 21 Jul 2020 16:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726710AbgGUOiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jul 2020 10:38:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbgGUOiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jul 2020 10:38:10 -0400
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75E67C061794
        for <devicetree@vger.kernel.org>; Tue, 21 Jul 2020 07:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
        Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=ti0HlU+Pgy/l5dQA5EeqxtMrHYv6NwKUn9x+3xhLNuE=; b=oE2ciNzkFCECT9IslsqB3+0GG
        iFDIwDkxV2UqKJAkouVvNXtsNWnrEELll5pirPUJ1Hb5vbonkT2qRDswhN7VkuBmkcvhAfW7eagWi
        F7dCOQeXM4znkcqBTyf/v4swq1Xh4YkJi2V51umdHEzIL/p735d+PZT58Ret4TH0ug3QcqennYFH5
        s3ArmdmJTSXpaJjl/1u/qZxmS8O3umvj4NtkVCwppY6W6jngh1msVE0ScErqPCZ09iidyVsiDEMle
        pe3C4w0ZoWOlsLcSKWPOC4SzBcDbqHrY9Z+M0WUjtjTDFKsSykvfWcgvYbb42gVkPEkxRyJPAyqbe
        JlXv2a0Gg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42350)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <linux@armlinux.org.uk>)
        id 1jxtP3-0004QT-Pn; Tue, 21 Jul 2020 15:37:57 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1jxtP2-000641-Re; Tue, 21 Jul 2020 15:37:56 +0100
Date:   Tue, 21 Jul 2020 15:37:56 +0100
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/3] Fix Armada 38x mvneta lockups when switching speeds
Message-ID: <20200721143756.GT1605@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

While testing phylink over the weekend, I found it was possible to
cause the mvneta hardware to lockup in various weird and wonderful
ways by switching the interface speed between 1G and 2.5G repeatedly.
It didn't require a rapid switching, but one switch every few seconds.

Symptoms included one or more of:
- Timeout while trying to stop transmit (seen once)
- 2500BASE-X link negotiation failure (fails to exchange link word.)
- Detects lack of sync, but fails to flag 10ms of sync failure.
- SyncOk bit randomly toggles.

Once the hardware gets into a "bad" state, trying to recover it by
using the mvneta GMAC port reset fails to resolve the issue.
Disabling the port also fails to recover it.  The only way to
recover seemed to be via a reboot.

Many solutions to solve this were tried in various combinations -
while changing the COMPHY configuration:
- putting the GMAC into reset
- disabling the GMAC port
- augmenting the COMPHY configuration to try to "cleanly" disable
  the COMPHY via phy_power_down() and reconfigure it via
  phy_power_up(), including resetting parts of the COMPHY and
  re-running the RX initialisation.

None of that worked.  It was then discovered from the u-boot sources
that there is an undocumented register that has a lane-specific bit
set at the end of COMPHY initialisation, once the loosely documented
COMPHY setup has completed.

Experimentation with that showed that if the lane specific bit is
cleared before changing the COMPHY "GEN" configuration, and set
afterwards, mvneta no longer locks up.

Unfortunately, this undocumented register is not part of the COMPHY
register set that we map - it is located in a region of "System
Registers" which are shared between multiple different devices.

Who should be responsible for mapping this register (mvneta or
COMPHY) was considered; the register is only present on Armada 38x
systems, and seemingly not on Armada 37x or Armada 37xx systems.
It seems that it is a system-level register.  The COMPHYs seem to
be system specific, so let's make it part of the COMPHY.

With no real information on this register, all we can do is guess
about it's function and how to fit it into the system.

 .../bindings/phy/phy-armada38x-comphy.txt          | 10 ++++-
 arch/arm/boot/dts/armada-38x.dtsi                  |  3 +-
 drivers/phy/marvell/phy-armada38x-comphy.c         | 45 ++++++++++++++++++----
 3 files changed, 49 insertions(+), 9 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
