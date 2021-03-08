Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D34673305AE
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 02:46:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233560AbhCHBpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 20:45:49 -0500
Received: from mail.kernel.org ([198.145.29.99]:37316 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233228AbhCHBps (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 20:45:48 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 32A946509D;
        Mon,  8 Mar 2021 01:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615167948;
        bh=NYr1ETbSdkQiGtUyjDDGTeRIGDvP24WZ9DnH/Zb0+v8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=G2ckVeiqVqSb+fiF+r9oQ2ubWzEuVnQOUfKXrjBtYJ5zSANf85al+TzcEpLcjr0vk
         zx3lSo77/6wPi4xBgwFv1zExhp9+yygA/SobZKz8mS8uvHGszHc9zaCbiuVRXxDfQc
         kIMhFWX0Ctya/LRacnxq9oFW8aMxapYlZxYOhvygOpnvX6xvbg09HshN/SuI99d6nP
         NGZJ4BnX+vYdMKhRQikrJgUgXBsY5M3ont4XUaauImUbdmfS7XYiVcVbV5TzCPBMzk
         hL7wMDztiLpyHNQC5AsynpJY3w7EKgssGss6Ed3XIYbROKwCo0svKFu4S78/dvFdVv
         cCdHVopW/ktxw==
Date:   Mon, 8 Mar 2021 09:45:44 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, kernel@pengutronix.de, robh+dt@kernel.org,
        linux-imx@nxp.com, jan.kiszka@siemens.com
Subject: Re: [PATCH v5 18/18] firmware: imx: scu-pd: do not power off console
 domain
Message-ID: <20210308014543.GX543@dragon>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
 <1614950268-22073-20-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1614950268-22073-20-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 09:17:48PM +0800, Dong Aisheng wrote:
> Do not power off console domain in runtime pm.
> 
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> ChangeLog:
>  * original patch was sent here:
>    https://patchwork.kernel.org/project/linux-arm-kernel/patch/1573995924-14752-1-git-send-email-aisheng.dong@nxp.com/
>  * move to this patch series as it's required for imx8qm booting

Applied, thanks.
