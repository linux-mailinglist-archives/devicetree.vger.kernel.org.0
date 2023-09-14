Return-Path: <devicetree+bounces-209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 486317A0497
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 14:57:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A80B282272
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9813C2421B;
	Thu, 14 Sep 2023 12:51:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB91241EE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 12:51:57 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 998BD1FD0;
	Thu, 14 Sep 2023 05:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=oGvct0p3l/d8ADkXUGDi83fvWaNF4mvVZngHoQNceck=; b=FsFFxmTNoWLff43INVEaVTwIXk
	g7VR7Sfld7K7NvuQCiHwFBHJYofA7EXPXphZdYFFTMXG+4/DZ+mqsCcynn6uKSiiOQ7NT9bdBRwS2
	nV7T9K16aKVM5a4NLbGCxdG4wUJ2TCoaYoRimqGEFwyONKdy8OrjwpeaZEqU0DWXwFJ4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qglp1-006P9o-6v; Thu, 14 Sep 2023 14:51:51 +0200
Date: Thu, 14 Sep 2023 14:51:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Robert Marko <robert.marko@sartura.hr>
Cc: gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	luka.perkov@sartura.hr
Subject: Re: [PATCH 2/2] arm64: dts: marvell: eDPU: add support for version
 with external switch
Message-ID: <5bcf3091-af8d-47de-b276-3dccc0997850@lunn.ch>
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

> +&mdio {
> +	status = "disabled";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&smi_pins>;
> +
> +	/* Actual device is MV88E6361 */
> +	switch: switch@0 {
> +		compatible = "marvell,mv88e6190";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0>;
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "cpu";
> +				phy-mode = "2500base-x";
> +				managed = "in-band-status";
> +				ethernet = <&eth0>;
> +			};
> +

So ports 1 through 7 are completely unused? 

> +			port@9 {
> +				reg = <9>;
> +				label = "downlink";
> +				phy-mode = "2500base-x";
> +				managed = "in-band-status";
> +			};

	Andrew

