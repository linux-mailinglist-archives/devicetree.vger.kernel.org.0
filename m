Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 069793305A9
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 02:41:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233554AbhCHBlX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 20:41:23 -0500
Received: from mail.kernel.org ([198.145.29.99]:36844 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233550AbhCHBkw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 20:40:52 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D82E64F6E;
        Mon,  8 Mar 2021 01:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615167651;
        bh=KyOoheQywUXBpVELgXwu/YAWu6zOmzxXuRwf3ubpm5s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kX8L4DCVjGXpnkjQwTuonOOU8vLNsA0qK6k35mPZs+rjFzRLFg4m3ozSzR6P30ovb
         K6Vj/Ri/iV+Su4+W+Ge8Ac21p+3phhTRfUcyHqlEwttMLeCdfKaauaxMa0zmcwMb13
         1zIxLVbEReMy4YfkpVVnH/espiH0JuRfAfz2IJ0iM3SyiVjJgLORuR0XEDuLh6Rmy+
         mp4f8UbCKfrGCtX+GQQbpTk4KuT8CRdAJvqeL0K06ZwQTwMS0yM/EBfOPMmowB4+Ed
         g6Gtn0cA5SFoTw8yj7YaQx52W6XJ6Y+GGWHSCWbPPl20Y83iN8r9CF2A7wsXxFSe0V
         VfzwodVWxDgQA==
Date:   Mon, 8 Mar 2021 09:40:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dongas86@gmail.com, kernel@pengutronix.de, robh+dt@kernel.org,
        linux-imx@nxp.com, jan.kiszka@siemens.com
Subject: Re: [PATCH v5 02/18] dt-bindings: mailbox: mu: add imx8qm support
Message-ID: <20210308014046.GV543@dragon>
References: <1614950268-22073-1-git-send-email-aisheng.dong@nxp.com>
 <1614950268-22073-4-git-send-email-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1614950268-22073-4-git-send-email-aisheng.dong@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 09:17:32PM +0800, Dong Aisheng wrote:
> Add imx8qm support
> 
> Cc: devicetree@vger.kernel.org
> Cc: Shawn Guo <shawnguo@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

Applied, thanks.
