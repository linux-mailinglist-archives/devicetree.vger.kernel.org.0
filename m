Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E576B3095A4
	for <lists+devicetree@lfdr.de>; Sat, 30 Jan 2021 14:59:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbhA3N4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Jan 2021 08:56:38 -0500
Received: from mail.kernel.org ([198.145.29.99]:39578 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229851AbhA3N4S (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 30 Jan 2021 08:56:18 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D78E64E0E;
        Sat, 30 Jan 2021 13:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612014938;
        bh=oHZDK3HrfH9b4klXb6eqnCwXjsYkccsA91q12ll2xE8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cYcrMfoLFd2+DoFZzOnbsGojirDzEpCQW71vMl5hzw2JkVb3ogUrECl8vdq1ObTKb
         jeJO/B0DfatkHfe74VgvGbBc4Dy6wnqLMEEyZWWQF70p5HPjjGvGRPcl3MsmO+he+C
         2YlILUSKIAagSni3zW0y7QSx8inERGQSEs7Be/5Eey1Te18ajHPwvH23oc61IgYdZt
         o9phHQ6rzULedzyS7vplzpB9arUwPxKFGSHlxbvs73L7JnUOLYcPElbOL3oy1doYkP
         HP85t+IxkDBwpLfEdSdLOvhdR3Gm0hWyb/kxmota32c5jsbielgJLJszxzb+0ml8zK
         drjutZGXi/wSw==
Date:   Sat, 30 Jan 2021 21:55:33 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH 01/10] ARM: dts: imx6: rdu2: enable WDOG1
Message-ID: <20210130135532.GK907@dragon>
References: <20210125184736.1226435-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210125184736.1226435-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 07:47:27PM +0100, Lucas Stach wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Enable the i.MX6 WDOG1 internal watchdog for warm reboots. This allows
> to issue emergency restarts without clearing the RAM, so collecting oops
> logs from ramoops pstore in barebox becomes feasible.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied all, thanks.
