Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B99A2EA17E
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 01:35:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726545AbhAEAe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 19:34:58 -0500
Received: from mail.kernel.org ([198.145.29.99]:34414 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726329AbhAEAe6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Jan 2021 19:34:58 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id A8F082255F;
        Tue,  5 Jan 2021 00:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609806857;
        bh=6qKlMf7tNJNTFQY55+sLpl7Jp5y89n/riwjh61hiXck=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qwWJfOnxVB5pBf467ILYBeXm0u8UtTq6YZWT3cOUYp2mb9Z2+AEtgj3+YnoHZVqCC
         VW5tyAmRTqY5+QhEgMF0IdTnaMvoPKDM3I85TprOhk4IXFPo7L0Syc+cPlBzBP9nZP
         ESt14brP5tGJzAKmrrUP4PtBO0hgMxeqUJWyFUzvK1yTLP4ECA28bv8t7IXCX9zxV/
         xC1scT3E6xoNxnmsreLN267udx/JqslfETM9YmB4LkNaBZxAUN/EVnsvxHXYrK3CnB
         MmFxNUrwjqQd2zikBza3vv520reltbBPZr/l5YiVrcuqLIkYGbIYVUn3vs6pfmy+h1
         icTuAv6IS0+8w==
Date:   Tue, 5 Jan 2021 08:34:13 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     s.hauer@pengutronix.de, festevam@gmail.com,
        devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: Re: [PATCH 2/5] arch: arm64: imx8mm/n/p: correct assigned clocks for
 FEC
Message-ID: <20210105003412.GC4142@dragon>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
 <20201119095249.25911-3-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201119095249.25911-3-qiangqing.zhang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 05:52:46PM +0800, Joakim Zhang wrote:
> CLK_ENET_TIMER assigned clocks twice, should be a typo, correct to
> CLK_ENET_PHY_REF clock.
> 
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

'arm64: dts: ...' for subject prefix.

Shawn
