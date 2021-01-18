Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 889602F968E
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 01:21:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730363AbhARAU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 19:20:56 -0500
Received: from mail.kernel.org ([198.145.29.99]:56514 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726785AbhARAUz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 17 Jan 2021 19:20:55 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7CB932137B;
        Mon, 18 Jan 2021 00:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610929214;
        bh=dS4f/1BykfEfBDCsMyA9FOjgQL/14LAVXWk6QfSd3LQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=q0Hb+lD5DlD4jRoi7QQwD+wuWWp7qi9A9Zd711ELYl7ovBavuxVBNYaDrcLDzROLW
         uvQSqYJ0SK9RZotKTnBhWbJhEjkGphy6eyxxLE4aZcP6R0aJPexEifapRfMNDLm8Qw
         0khdxrW3tRe48YfSsnCbrc1Fr4wyfDYveJrvybO4eekTEGfQ8KHRDUmfZ0E3NbbRDs
         3vy3xpTBesLQmikXDuZU2GN3p1BMHZdbBb1lhgqIr0YI+N8a5AKI2HHLsQUPUOmGOT
         Fk0R3caAi22S7i60ZiqxB2hXLU7FZ8Mnec/JcGCHppR1sIA2Z4zhECqCS2z7oP5fLv
         a1YnqBMYOm73Q==
Date:   Mon, 18 Jan 2021 08:20:09 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: lx2160a-cex7: delete RTC interrupt
Message-ID: <20210118002009.GC28365@dragon>
References: <E1kybEV-0003w1-DS@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1kybEV-0003w1-DS@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 10, 2021 at 01:58:15PM +0000, Russell King wrote:
> The RTC interrupt is incorrect and prevents the RTC driver
> initialising. In any case, the PCF2127 driver wants an active low
> interrupt, which neither the GIC nor the GPIO blocks support.
> There is an ISPPT block in the LX2160A, but this is not supported
> in mainline kernels. So, just delete the interrupt.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.
