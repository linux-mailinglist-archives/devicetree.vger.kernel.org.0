Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0623C332A34
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 16:20:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231869AbhCIPT6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 10:19:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232058AbhCIPTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 10:19:40 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D91D5C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 07:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
        Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=2wqMpYIO6JkEUzwTqDUV0cFXqnwSFhMRHipkJ/YL0+o=; b=jxhlHN5OXvVhu0UjhoTbzu6DC
        nFrehA+6fB0y8Bv34I7t70nuL/cZxJl+olKJNXz+n2y2rXDDeS/E1FLWqLK024z07skM9VucydwsM
        HyjzjvzJdzj787Sje73buBd1y1Lw831k+G6C5d3DThYiiIRS+yCcDAzoSpqYz99BYIpd2RQ+EqDKz
        jLt+StwgR9UIG8K+30J+nkdbfDfg7dgrYOP2oTVhg+o3SMGT62mn9u1EfqNgypoUZvpB3wJWkUstp
        ML2G9SCdap5FnTM1K4glGWw8dufUDYFrS6zz507iqkHujgG2G67akc3PXbUg+ODZkN+wvorojRoUE
        wuTqpsRAA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50540)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <linux@armlinux.org.uk>)
        id 1lJe8s-0003eT-DV; Tue, 09 Mar 2021 15:19:26 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1lJe8r-0008Hp-HR; Tue, 09 Mar 2021 15:19:25 +0000
Date:   Tue, 9 Mar 2021 15:19:25 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm64: clearfog-gt-8k: Add DT for fan control
Message-ID: <20210309151925.GG1463@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This patch series adds the DT descriptions to control a PWM fan on the
SolidRun Clearfog GT8k platform.

 .../dts/marvell/armada-8040-clearfog-gt-8k.dts     | 127 +++++++++++++++++++++
 1 file changed, 127 insertions(+)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
