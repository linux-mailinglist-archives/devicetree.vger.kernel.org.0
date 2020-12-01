Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EBEC2C949A
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 02:21:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389250AbgLABVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 20:21:18 -0500
Received: from mail.kernel.org ([198.145.29.99]:36364 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389249AbgLABVS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 20:21:18 -0500
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6BA5E208C3;
        Tue,  1 Dec 2020 01:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606785637;
        bh=YIOKmVSukFpDiJjDoxS4xehcSdwp5xgonaLHV07pEKg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=17q0A3TgBRtirdQV88EoZiRIwIra81ab8AZfxYwWjT8KUCs+hPlp7+Xeryz5LRQzX
         nX1/SV/q0/V7MSukSkUpSQPyNK9M5X4Jfl5q74d02FrMg4+hsjA2vs4O3xxQL1fNfV
         O3pbK5HSt5NeGqqaAtiyWkSj2duy//Fy00+1Hb1Y=
Date:   Tue, 1 Dec 2020 09:20:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, festevam@gmail.com, plaes@plaes.org,
        kernel@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: fix I2C_PM scl pin
Message-ID: <20201201012031.GQ4072@dragon>
References: <20201126175628.1852-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201126175628.1852-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 26, 2020 at 06:56:28PM +0100, Marco Felsch wrote:
> From: Bernd Bauer <bernd.bauer@anton-paar.com>
> 
> Use the correct pin for the i2c scl signal else we can't access the
> SoM eeprom.
> 
> Fixes: 2a51f9dae13d ("ARM: dts: imx6qdl-kontron-samx6i: Add iMX6-based Kontron SMARC-sAMX6i module")
> Signed-off-by: Bernd Bauer <bernd.bauer@anton-paar.com>
> [m.felsch@pengutronix.de: Adapt commit message]
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
