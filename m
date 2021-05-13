Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB37137F3BB
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 09:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231405AbhEMHwU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 03:52:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:35226 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230090AbhEMHwQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 May 2021 03:52:16 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9854061433;
        Thu, 13 May 2021 07:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620892267;
        bh=h2OypLQlAF1A013X765kcZNHYuLEG9U1vkMM6PYoAuU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BUoR80s107AadEfQbxPz1i04m6RE64wds4Ifvgre8czubJVNXcOidG1KHcx91Mx9p
         wVha6BOHjUkr2PkqDzAWUFURaVoq04HQ2gjhnzWIGpyGQFOBuvom2uYO3VupkhoYvg
         mGI3A6XR4PTEywt+aDTLPNvYStWqyE2yCtc8yH9wOy/gxitwmVt1hFfhVceiIJYDBH
         st7VXfqychVZ7DxBHzGjdVYbBLVK+Xy0T4xmZRQIlKVMDXCmJ7plexjvXAfvQj5w/O
         6ldQEdlfAYY71HxQwxomf9qjk0oSC0k94ed0VMqDvoWYAs178aX2bu40yKsEvgk780
         ih40tZh3U8gBw==
Date:   Thu, 13 May 2021 15:51:02 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp-evk: enable EQOS ethernet
Message-ID: <20210513075101.GU3425@dragon>
References: <20210426070654.8703-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210426070654.8703-1-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 26, 2021 at 03:06:54PM +0800, Joakim Zhang wrote:
> Enable EQOS ethernet on i.MX8MP EVK board.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

Applied, thanks.
