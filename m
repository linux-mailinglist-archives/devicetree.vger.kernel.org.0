Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4364229D6AF
	for <lists+devicetree@lfdr.de>; Wed, 28 Oct 2020 23:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731531AbgJ1WR1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 18:17:27 -0400
Received: from mail.kernel.org ([198.145.29.99]:60516 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731513AbgJ1WR0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 18:17:26 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 1B11324679;
        Wed, 28 Oct 2020 08:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603875034;
        bh=k1R5mq0RklBzGeSXt/iakxVt2UjuPUbvOsP5h3g+1pM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WGoJir9YhT0qvYqBaWc6iSGhEQL8b/afAtgo4kqx9tmLtXW4n+c02mgLStDwKn0m5
         mYrg8Lommgoc/MafgwdoAvpoV4F+CUB8rYigKsLS1xcoI9GaYZGTmNXsecvLGxzCja
         jgZOvIblmbcddtHgvVzrJirj7eLL88ZbmwfKvBpE=
Date:   Wed, 28 Oct 2020 16:50:29 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Riedmueller <s.riedmueller@phytec.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 3/6] ARM: dts: imx6: phytec: Add eeprom pagesize
Message-ID: <20201028085028.GH28755@dragon>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
 <20200922092313.151293-3-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200922092313.151293-3-s.riedmueller@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 22, 2020 at 11:23:10AM +0200, Stefan Riedmueller wrote:
> Defining the EEPROM pagesize can increase the write speed significantly.
> Set it to the pagesize stated in the EEPROM's datasheet for
> phyCORE-i.MX 6UL, phyCORE-i.MX 6 and phyFLEX-i.MX 6.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Applied, thanks.
