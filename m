Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AA38458286
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 09:24:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235456AbhKUI1W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 03:27:22 -0500
Received: from mail.kernel.org ([198.145.29.99]:52690 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235452AbhKUI1W (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 21 Nov 2021 03:27:22 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D34F60295;
        Sun, 21 Nov 2021 08:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637483057;
        bh=+rpcEPMz8LMacV2QuBMtDErllYyZZkFNjUsRjC3mV5k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ig65QetFpCk1NU8VNWHdF4JxykbRhHExUEvbeVFl8rFYyu0w6IqUqY7UCF0VmOUch
         BfrmKivyljBHrEwxBWXOiJbk40fovVAMNNuNaddj3rJaAr9JK7Aa7/AZrCnLTGQYje
         UmjdEzz935oHrYfsqyWWnAUd3j+sMy1xzJV1EC319jNjCCOoSDliFESpNADT2s0XZ+
         as4P5gS30dqwp6OMliZ5E+zFg1vyQ8GW1bWKCOq3Oyrp7bu+UUZhRZU8OETxTmSGkS
         28Ebkzm3Xpt87cTr9qDBoKO1QmiETAK4n2xRFJMfy81Ikax9eQDVr+KKFhk2UQ+LIy
         CbygoBjIwk7cg==
Date:   Sun, 21 Nov 2021 16:24:12 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: vf610-zii-dev-rev-b: specify phy-mode for
 external PHYs
Message-ID: <20211121082411.GJ31998@dragon>
References: <E1mfIqd-001K4C-RP@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1mfIqd-001K4C-RP@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 26, 2021 at 10:34:23AM +0100, Russell King (Oracle) wrote:
> Specify the phy-mode for the external PHYs on the third switch on the
> ZII development rev B board so phylink and phylib knows what mode these
> interfaces are configured for.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Applied, thanks.
