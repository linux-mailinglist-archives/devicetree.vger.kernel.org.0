Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9817FFD032
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2019 22:17:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726628AbfKNVRZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Nov 2019 16:17:25 -0500
Received: from metis.ext.pengutronix.de ([85.220.165.71]:50785 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726592AbfKNVRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Nov 2019 16:17:24 -0500
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1iVMUK-0001tF-FY; Thu, 14 Nov 2019 22:17:12 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <ukl@pengutronix.de>)
        id 1iVMUG-00072W-EA; Thu, 14 Nov 2019 22:17:08 +0100
Date:   Thu, 14 Nov 2019 22:17:08 +0100
From:   Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        kernel@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx25: fix usbhost1 node
Message-ID: <20191114211708.77d6bttkyj426yqy@pengutronix.de>
References: <20191111114655.9583-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191111114655.9583-1-m.grzeschik@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 11, 2019 at 12:46:56PM +0100, Michael Grzeschik wrote:
> The usb port represented by &usbhost1 uses an USB phy internal to the
> SoC. We add the phy_type to the base dtsi so the board dts only have to
> overwrite it if they use a different configuration. While at it we also
> pin the usbhost port to host mode.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
Acked-by: Uwe Kleine-K�nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

-- 
Pengutronix e.K.                           | Uwe Kleine-K�nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
