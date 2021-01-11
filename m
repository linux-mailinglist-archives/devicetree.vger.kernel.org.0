Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C1912F0B7F
	for <lists+devicetree@lfdr.de>; Mon, 11 Jan 2021 04:35:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726362AbhAKDfG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jan 2021 22:35:06 -0500
Received: from mail.kernel.org ([198.145.29.99]:58230 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726224AbhAKDfG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 10 Jan 2021 22:35:06 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 39135206D6;
        Mon, 11 Jan 2021 03:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610336065;
        bh=mdMbte40M7QwVzJsnpART/08lVB28sP+AUZG25M4YBY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=q7Qk784UPtMaCPh6UDEE1QZF51gcS7c18dfBR8Zg35hQXsPFjrXRdzthcQqYZfTXZ
         bqWwssuIJNWHehnJ882TQSBgiC0/n3Wxvr1b9yK7EDCBoke+lDUwERIxzVD49zMvTs
         aMYB+jHEVVZ24L6hmjbe99vAPnMC+m/uqUQtzES4uJyqsOQP7GycitiIqY1OtFaLJx
         WLNezyH7hYgjZOQJdu9+Fq0Xk94FQKg89tFMUSe/OjDRLOsttbYt4FrR+lcDvkonHs
         yGh1N0vQY5eo/mw4ggrLCMXOZ3ySVXJbfDj2LvoZuubCmvJH0/p3BnkGRnHLInYzFe
         UbiKbOC/bckMw==
Date:   Mon, 11 Jan 2021 11:34:21 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx6q(dl): Move 'port' nodes under 'ports' for
 HDMI encoder
Message-ID: <20210111033420.GB28365@dragon>
References: <20210106150851.8480-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210106150851.8480-1-laurent.pinchart+renesas@ideasonboard.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 06, 2021 at 05:08:51PM +0200, Laurent Pinchart wrote:
> In preparation for the conversion of the DWC HDMI TX device tree
> bindings to YAML, move the HDMI encoder's 'port' nodes under a 'ports'
> node. The 'ports' node is optional in the OF graph implementation, but
> YAML bindings require it.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

Applied, thanks.
