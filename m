Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4081425E5DC
	for <lists+devicetree@lfdr.de>; Sat,  5 Sep 2020 08:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726372AbgIEGdu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Sep 2020 02:33:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:51362 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726302AbgIEGdu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 5 Sep 2020 02:33:50 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 50CD920797;
        Sat,  5 Sep 2020 06:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1599287630;
        bh=DkiN4BIVM2LBbBhYkzEGJY7JO3S/lgk2nSlNdy+ZmFI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mr4LJKG68sPzOx6Iyd7wkyVlD/iSTpAoe0AZ37psKInGyf6ZuH2Y7y4Hm8YHsBYuv
         WqIcKVGh8UoNybyouv2ExHHJ+xO7RdiInP8ba0FuAWvjNJKLNVBpgh125154vHDe7n
         6z3xotl+cnB1UHgxLRipblrKO/4c1yq3hh2NkdIo=
Date:   Sat, 5 Sep 2020 14:33:14 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: imx6qdl: move iomuxc compatible assignment out
 of root node
Message-ID: <20200905063313.GF9261@dragon>
References: <20200831132749.3902-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200831132749.3902-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 31, 2020 at 03:27:49PM +0200, Marco Felsch wrote:
> The common imx6qdl.dtsi already defines the iomuxc phandle. Make use of
> it in the imx6dl.dtsi and imx6q.dtsi.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied, thanks.
