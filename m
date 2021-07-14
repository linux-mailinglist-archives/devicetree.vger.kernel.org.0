Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64C293C7D39
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 06:13:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbhGNEQL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 00:16:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:34774 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229451AbhGNEQL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 14 Jul 2021 00:16:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9FF7761374;
        Wed, 14 Jul 2021 04:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626236000;
        bh=DOZyvtnum7tR6i3QR2QBku3v9zA1Vgz4BSOLxtuOXXY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=t2luj6QLcU4Zw49WoyaCT4b/1mPUKgY4RANDU4CdSkfeoRXHeoHWwot6Sxl3mNiJb
         ko9EoWF+5jsHLq473P1ZNkiv9KSbgjTo74bu8puAG/6y8tu8LTVTuPq6pHyz8sWNYi
         Q9DIvES8u2F4/p739uyX6yz+cbwduXQZIrPqfQx3unYL/AI3EU2AEmQN1yxGv1UW94
         uk2lEHTI7Ad20K7STKR3GjayWxqHYuhciv7I8I14WGzB7koPhHve7h2cUu889B6PWh
         ruL4UMTfxRjrIUXEV+l+gqTK4hnOf52wtNONzqzvucvSitNdM9gXtyjACE/h1dquv3
         OLmnvEK/1pJVQ==
Date:   Wed, 14 Jul 2021 12:13:14 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: fsl: add Nitrogen8 SoM
Message-ID: <20210714041313.GA4419@dragon>
References: <20210614170633.31638-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210614170633.31638-1-dev@lynxeye.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 14, 2021 at 07:06:29PM +0200, Lucas Stach wrote:
> Add compatible for the BoundaryDevices Nitrogen8 system on module.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied all, thanks.
