Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFA8D29DF5B
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 02:01:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730458AbgJ2BA7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 21:00:59 -0400
Received: from mail.kernel.org ([198.145.29.99]:60548 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731550AbgJ1WR2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 18:17:28 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 259FE24672;
        Wed, 28 Oct 2020 08:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603874888;
        bh=sLaLhnbPsf3EhhiQ2UgXXv5yVj4P+LuPey4JP1IUC+Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=S18f+l7O06BdF6F/1d27Z2jNey5RyB+8yHOc4T30wyVAL1sjVr94aONyQPw4DGG2b
         huXNw2R1yJDRFryuv0g/v3tjvRhAUyrSposiAxYO0Bpjz6moD3up6HHuXoPkV94Izq
         lbMJEdW1PAwZqZbsJkbH5NtWQ2j8ydPJxX9YjhS8=
Date:   Wed, 28 Oct 2020 16:48:01 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Riedmueller <s.riedmueller@phytec.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/6] ARM: dts: imx6ul: segin: Fix stmpe touchscreen
 subnode name
Message-ID: <20201028084800.GF28755@dragon>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200922092313.151293-1-s.riedmueller@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 22, 2020 at 11:23:08AM +0200, Stefan Riedmueller wrote:
> The touchscreen subnode name needs to be stmpe_touchscreen as mentioned
> in the dt-bindings.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Applied, thanks.
