Return-Path: <devicetree+bounces-262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C307A08F5
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:22:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4409EB20C32
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EE021F5ED;
	Thu, 14 Sep 2023 15:05:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B4E1D54A
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:05:09 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 089721FC7;
	Thu, 14 Sep 2023 08:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=0xTMByrYhdn9Rb68IEE0B0/ifcUoWWZ2N/e7ELG9Uqw=; b=aUto4Ss55R70Z24fnDrAU/2rC9
	r6zzBPwyF/YtB3WfbXRIOZnlwGUt2sby/XS7j5hJvUbW7dRkz+tWW8WtKaK5g/4EZSZ58PoyISVwa
	lNGUX68up7W9RhFn9yZ18LaFjlSLGKGxoE0MfcIkUV3COsgrMokTEaeAftZl+HkCxkoc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qgnts-006QEO-9d; Thu, 14 Sep 2023 17:05:00 +0200
Date: Thu, 14 Sep 2023 17:05:00 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Robert Marko <robert.marko@sartura.hr>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	luka.perkov@sartura.hr
Subject: Re: [PATCH 2/2] arm64: dts: marvell: eDPU: add support for version
 with external switch
Message-ID: <c371ce9a-ed39-4963-8c41-14937c63be55@lunn.ch>
References: <20230914094550.1519097-1-robert.marko@sartura.hr>
 <20230914094550.1519097-2-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914094550.1519097-2-robert.marko@sartura.hr>

On Thu, Sep 14, 2023 at 11:45:01AM +0200, Robert Marko wrote:
> New revision of eDPU uses an Marvell MV88E6361 switch to connect the SFP
> cage and G.hn IC instead of connecting them directly to the ethernet
> controllers.
> 
> U-Boot will enable the switch node and disable the unused ethernet
> controller.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

