Return-Path: <devicetree+bounces-318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D0E7A0FA7
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 23:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 525B41C2092D
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 21:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C410C26E20;
	Thu, 14 Sep 2023 21:16:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F863210FE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 21:16:13 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 223E426BB
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:16:12 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id B4981FF803;
	Thu, 14 Sep 2023 21:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694726169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QfHE7Gy8icrSvGsTMlEV38zZ/z1OUPzjNqGfkRIIxr8=;
	b=jhodw+HFc8WoRUsJCam8bcN36VprOZAAK3tj8P1awGAj7ay5iRO5VsGz6YGrR/pGkYWJfF
	p8YTlMZ1UycuI17niKtxYPlH9Zyh/hsZ8F8TzUFeNrVOkKW6k91S83GOPWxinoB24NkEv2
	Gvhhpz5c6JxTdmADlzJBX0MQ/B7z2JY2/tXeiOMam2urXKhZwMpPNgtaFnoGP5kYksv1TZ
	n4YfSI83N/xDyyXc9+Okkf5Fgi2e9DKm7xmqaijHyKhsj6zX5Z56AV6fy66vAb/y+aZhS3
	bFZEzE2wkHSDiRdEK3ATnL0Zyr/qS3JPJkagnoC53MiGzCVOhwiYxbnnY9JL+Q==
Date: Thu, 14 Sep 2023 23:16:06 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio
 Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de, Richard
 Leitner <richard.leitner@skidata.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: add binding for the i.MX8MP
 HDMI PHY
Message-ID: <20230914231606.714982be@booty>
In-Reply-To: <20230906184211.1857585-1-l.stach@pengutronix.de>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com

Hi Lucas,

On Wed,  6 Sep 2023 20:42:10 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks for resending this series!

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

