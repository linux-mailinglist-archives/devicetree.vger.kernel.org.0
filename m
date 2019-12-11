Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9EB7011A15B
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2019 03:30:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727286AbfLKCaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Dec 2019 21:30:13 -0500
Received: from mail.kernel.org ([198.145.29.99]:57486 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727230AbfLKCaN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Dec 2019 21:30:13 -0500
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C48872073B;
        Wed, 11 Dec 2019 02:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1576031413;
        bh=frtUdnj+D71Mu+MJl3zzbeOBwOwnAhUFwCH2A9LwaKk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=zjoeliSg6WT/5GREXL53EzEawKMEDzTPi3swgm9Dw5nyKrwNNWyxjAAMA/WVFHBTp
         BDakvErYX83z11XQH7u7tl0PWtusYnQd+o0/A5DXysOvmG15ooVjSts8aeyRXae5FC
         ZJI3104vBTVi4U600rcHSwo3Ai/MzRUOaOAkj2pM=
Date:   Wed, 11 Dec 2019 10:30:04 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH] ARM: dts: imx6: RDU2: link eDP bridge to panel
Message-ID: <20191211023003.GC15858@dragon>
References: <20191202141705.31880-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191202141705.31880-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 02, 2019 at 03:17:05PM +0100, Lucas Stach wrote:
> This makes the eDP bridge chip aware of the panel, so it properly
> advertises eDP instead of DP to userspace and allows for proper
> backlight control through the panel abstraction. This patch is just
> to add all the required nodes, actual linking of the display chain
> will be done by the bootloader depending on panel detection.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.
