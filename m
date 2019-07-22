Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B8996F9AF
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 08:50:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726812AbfGVGum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 02:50:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:46572 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726643AbfGVGum (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 02:50:42 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 65A4D21F26;
        Mon, 22 Jul 2019 06:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563778242;
        bh=pdUfzx8QLb9VxjOC+DQxRiLfZuFPZP3d6X3qO1BDZAo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CrBufTEDemi49FXBz31DSj3+x3L/IaSN2T9RCxuAzbTGwLKiM3S310IiOrVLltGI2
         6dNsGZoLSrHhG50VuDyn22I8v+pWdyeEvC2sXUTGIQfsz/pTxDvjhcciQUujRsE8YY
         rvieKbBIKf2ylY/VQk9TI/nRxPUJQeO0gezWqJxk=
Date:   Mon, 22 Jul 2019 14:50:15 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix clock frequency property name
 of I2C buses
Message-ID: <20190722065013.GC3738@dragon>
References: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190704110053.19028-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 04, 2019 at 01:00:53PM +0200, Sébastien Szymanski wrote:
> A few boards set clock frequency of their I2C buses with
> "clock_frequency" property. The right property is "clock-frequency".
> 
> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>

Applied, thanks.
