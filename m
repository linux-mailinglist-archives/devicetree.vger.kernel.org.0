Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23F2C2A1CA6
	for <lists+devicetree@lfdr.de>; Sun,  1 Nov 2020 09:15:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725931AbgKAIPJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Nov 2020 03:15:09 -0500
Received: from mail.kernel.org ([198.145.29.99]:39692 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725930AbgKAIPJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 1 Nov 2020 03:15:09 -0500
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id EC3E722273;
        Sun,  1 Nov 2020 08:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604218508;
        bh=Uf5c7H9jj9fdmFBOv4HZcnTG7q0kGKo420Xeiip+9/Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=k7/iIKDE10PLvSjjBCT35wEZ2fLHExC0lsNp+B39roYQ8rH1J7Eh4//mF5p+3+JE0
         fwI9erxtRnbHvP5xu4KEr8A3/tYngy1PPEp/hn8JAVnETThbn95qTbi3Dhd3TCFfOV
         vhDHlshbFW55rtC/FwBS1O+3Xi9vd3YqLNeK7g20=
Date:   Sun, 1 Nov 2020 16:15:03 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Yangbo Lu <yangbo.lu@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: freescale: use fixed index mmcN for
 layerscape
Message-ID: <20201101081502.GH31601@dragon>
References: <20201021083136.10554-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201021083136.10554-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 21, 2020 at 04:31:36PM +0800, Yangbo Lu wrote:
> The eSDHC driver has converted to use asynchronous probe.
> Let's use fixed index mmcN for eSDHC controllers, so that
> we can ignore the effect on usage, and avoid problem on
> previous use cases with fixed index mmcblkN.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Applied, thanks.
