Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 19B7C71316
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 09:38:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732979AbfGWHim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 03:38:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:57376 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731579AbfGWHim (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Jul 2019 03:38:42 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 1E0EA21842;
        Tue, 23 Jul 2019 07:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563867521;
        bh=ROcErg5MJPEEra0NdYhivF2N5Qb4+kagEPX8OavN1eE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aVo/dBdHCxthAWRT4rtuTp7sq26yw0S7CVUAAh3YddNDCnOguf5FhiBYfsSdpd/Ob
         OEeWrKezuj8bJ+tqeqgbiYAtRxmwhqXsQ8f8fCHMvo2M9rl2z40/050Ovq98HU2COj
         XSXRoWfzZcAN4yZI3dXHyPB70Gl3CfhTyrZA9wLI=
Date:   Tue, 23 Jul 2019 15:38:12 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mq: fix SAI compatible
Message-ID: <20190723073811.GI15632@dragon>
References: <20190717095436.28154-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190717095436.28154-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 17, 2019 at 11:54:36AM +0200, Lucas Stach wrote:
> The i.MX8M SAI block is not compatible with the i.MX6SX one, as the
> register layout has changed due to two version registers being added
> at the beginning of the address map. Remove the bogus compatible.
> 
> Fixes: 8c61538dc945 "arm64: dts: imx8mq: Add SAI2 node"
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.
