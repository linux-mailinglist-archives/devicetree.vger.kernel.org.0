Return-Path: <devicetree+bounces-208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5945B7A044E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:49:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0AB681F236D7
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD796241FF;
	Thu, 14 Sep 2023 12:48:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34CE241EE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:48:36 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F061FCE;
	Thu, 14 Sep 2023 05:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=CVUvxHBM5O+MyRP23hv5Z9PIto6UUkP3gySpL3i25V4=; b=0glgrg6+vAUCsCZ9zCyFg+D6l8
	g6gESlAheEx5eS8arfXuZ2S1IXdaN/GKGz807o99/aFKSFn92P6uIt8I7E4J3TkbqE4flyVFMqA0r
	9NKseWcdI15cabQBJBEvLKuU6zVo3xurQ+sEO+xUts6+Hk6gncGNeio3I1dgFxJqb/tI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qgllk-006P7i-Rw; Thu, 14 Sep 2023 14:48:28 +0200
Date: Thu, 14 Sep 2023 14:48:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Robert Marko <robert.marko@sartura.hr>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	luka.perkov@sartura.hr
Subject: Re: [PATCH 1/2] arm64: dts: marvell: uDPU: rename the SFP GPIO
 properties
Message-ID: <a6d9e914-25ad-4bc2-8eb7-43bf31ada00b@lunn.ch>
References: <20230914094550.1519097-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914094550.1519097-1-robert.marko@sartura.hr>

On Thu, Sep 14, 2023 at 11:45:00AM +0200, Robert Marko wrote:
> Rename the GPIO related SFP properties to include the preffered -gpios
> suffix as defined in the SFP schema.
> 
> This fixes the following warning:
> arch/arm64/boot/dts/marvell/armada-3720-eDPU.dtb: sfp-eth1: 'los-gpio', 'mod-def0-gpio', 'tx-disable-gpio', 'tx-fault-gpio' do not match any of the regexes: 'pinctrl-[0-9]+'
> from schema $id: http://devicetree.org/schemas/net/sff,sfp.yaml#
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

