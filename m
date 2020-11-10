Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD0912AC9AD
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 01:26:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729243AbgKJA02 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 19:26:28 -0500
Received: from mail.kernel.org ([198.145.29.99]:48402 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727311AbgKJA02 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 9 Nov 2020 19:26:28 -0500
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CC0D42067B;
        Tue, 10 Nov 2020 00:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604967988;
        bh=8aqt4eL1DQYs++C7Lm6dLH0vzDwXSPw9anb6lvFDfkU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fpIuhx+jzWJLzMX6T3wFREXyaqtWloojHaFN9+KjBrWvIVl/rZO6NDfCdLqbDZfxK
         dr3ePPf3dulzA0C+DKGSxgq7BQCkRF/9kmQuD1NvXHbODcG4pveOCc9pc4BBfOe7lL
         8rfJbnGC94jKXkMS+URJDFIkIhnwrVdVYq7CwcHs=
Date:   Tue, 10 Nov 2020 08:26:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Riedmueller <s.riedmueller@phytec.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/6] ARM: dts: imx6ul: segin: Fix stmpe touchscreen
 subnode name
Message-ID: <20201110002622.GE31601@dragon>
References: <20201029070324.16057-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029070324.16057-1-s.riedmueller@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 29, 2020 at 08:03:19AM +0100, Stefan Riedmueller wrote:
> The touchscreen subnode name needs to be stmpe_touchscreen as mentioned
> in the dt-bindings.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Please drop the patches that have been applied.

Shawn
