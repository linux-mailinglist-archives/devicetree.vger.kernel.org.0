Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BF55D181236
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 08:43:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbgCKHnU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 03:43:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:46252 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726362AbgCKHnU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 11 Mar 2020 03:43:20 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 76BD520578;
        Wed, 11 Mar 2020 07:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1583912600;
        bh=eb6X39X/EDrlVTNIumxU0I8Ahmihb5TtN/ubR16x01U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=beALctgQujcAortLMexlUJW267GT3Z/xzHrgHX63e8Lk8Sm2TH8L2qD1dKeXqbAYe
         TrDe8YzRPcF8KZKOYC4Zkf6l/LA9IXwM/6MT8ifEk538EI0sfqDC/zXjHgz0mvQmur
         DNMraLsm0zoWhgZfXn4r/Tt62Zl0ughWyG3nV0Qc=
Date:   Wed, 11 Mar 2020 15:43:15 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: lx2160a-cex7: add support for ltc3882
 regulator
Message-ID: <20200311074314.GS29269@dragon>
References: <E1j7Hvq-0004Vn-5w@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1j7Hvq-0004Vn-5w@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 27, 2020 at 12:06:22PM +0000, Russell King wrote:
> Add support for the LTC3882 regulator so that the hardware monitoring
> can be used with this device.  This regulator provides the 0.78V
> supply for the LX2160A.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.
