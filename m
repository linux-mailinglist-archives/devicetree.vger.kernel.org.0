Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6BDF2A141D
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 09:14:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726473AbgJaIOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 04:14:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:53536 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726456AbgJaIOY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Oct 2020 04:14:24 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 384E82076D;
        Sat, 31 Oct 2020 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604132063;
        bh=+apFUQ5stbu0/8RHI12E0Pp2/4BfSWO4n23JYi+eFMo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Hdv/ZFCRcxwGQgPIPbCwZLsgC90PY/HAN9O8AnkBa4u1IMsLW00IFLhxfD3tErftj
         mdaMAgEw4B2yyRHJm0YVaGNOBb1vvB3tLAMo+V6NkqRm0kvyRHt1mIJGV7UNiJrNmq
         385gORtYfXpMjDvcYGHfYU5CGhsIhuiRGBUnjxZs=
Date:   Sat, 31 Oct 2020 16:14:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, festevam@gmail.com, linux-imx@nxp.com,
        m.podolszki@phytec.de, c.hemp@phytec.de, j.remmet@phytec.de,
        devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: add Phytec Nunki boards
Message-ID: <20201031081418.GT28755@dragon>
References: <20201014162724.4041-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201014162724.4041-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 14, 2020 at 06:27:23PM +0200, Marco Felsch wrote:
> Add bindings for the PHYTEC phyBOARD-Nunki evalboards.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Doesn't apply for me.

Shawn
