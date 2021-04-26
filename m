Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5006C36AA50
	for <lists+devicetree@lfdr.de>; Mon, 26 Apr 2021 03:29:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231583AbhDZB3y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Apr 2021 21:29:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:59714 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231565AbhDZB3y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 25 Apr 2021 21:29:54 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2EFB961107;
        Mon, 26 Apr 2021 01:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1619400553;
        bh=gpj1CexPafnuB7HatwjXFDlpD9DNQvHbdQnHjRi4JYE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XSiuI/NVkQo5D1XDEzXzO3eycIAUyhhFScn0mdoK4ixrcHS+0vEg3mAcXpSHwEp9i
         EOxOe4lEKf2rv83JkTI2CDy1rIkAwNYEN0WP3msY6P2045fnR3dilJhal13Xf/ro5s
         ZrkMtEj/TZ/clb4Y0wOoQytOVlIXMPXyCguNXtPWJob/+SCN2H4Xhs7IOU8+/263+e
         Jj7y4ifGQnpKJx4fh0kXYeTYHHxyD4J/rK3sHSHenXZ5+RDNUae9EfwtAqy3rEcqHK
         Ky2lyJ2xcZvqhSpjiAu1IcZqjLh/f2qnJ7c4qnc3J3QniP9IhedgLzOm5hgu9fGcyP
         KqyTB6KIsMP4Q==
Date:   Mon, 26 Apr 2021 09:29:08 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: imx8mp-evk: Add PMIC device
Message-ID: <20210426012907.GD27585@dragon>
References: <20210329123409.26975-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210329123409.26975-1-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 29, 2021 at 02:34:09PM +0200, Uwe Kleine-König wrote:
> The imx8mp-evk uses an PCA9450C as PMIC that supplies various
> regulators.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Applied, thanks.
