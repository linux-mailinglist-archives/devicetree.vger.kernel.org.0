Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD9F33D31E9
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 04:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233216AbhGWB4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 21:56:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:41948 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231663AbhGWB4v (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 21:56:51 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD52360EBE;
        Fri, 23 Jul 2021 02:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627007845;
        bh=ih2Jg/VuhmFyvh3eUDj2O/rjSdIsmye3Z4uwZSJt2uY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=udQ6VspB3t48gHl8znJMS8X/k8T8aOeLqfx4PMPY0kTANhZn/eu4YZ7cs/JVagZWI
         pON/waMS3thNqIBRdwaZGgzVJ+WCaNMNYjCaDbdaN4oeLUkw3xEKfqPrhdPNfCZBpv
         k0zb30LmgorRlOip0HoSHA3zxn2TMyTMiRUwB7uU+b5JWIr7cq/ozCvnBjAyn1N6Tj
         tRaK4+pOVAhY4Vf9fGoYdoEk7GlBazk+B3O+fw3PHaOgjiKE2fi8IC/oTlli4v5VZO
         x7S1knsCiikXC76Zj4Go49V2rrvjraR7je0zzoaLodRB8uQd1/+HmbD7bbk2mVNC15
         j7sq8S1NefNKA==
Date:   Fri, 23 Jul 2021 10:37:19 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx6qdl-gw5xxx: add missing USB OTG OC pinmux
Message-ID: <20210723023718.GA28658@dragon>
References: <20210701180057.4055-1-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210701180057.4055-1-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 01, 2021 at 11:00:57AM -0700, Tim Harvey wrote:
> Add USB OTG over-current pinmux to the GW51xx/GW52xx/GW54xx/GW553x
> boards.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks.
