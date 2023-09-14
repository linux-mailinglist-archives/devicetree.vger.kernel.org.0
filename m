Return-Path: <devicetree+bounces-261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6B57A08EA
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:20:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AFE10B20926
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF91B266AB;
	Thu, 14 Sep 2023 15:03:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556B7266AA
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:03:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B6D7C433C9;
	Thu, 14 Sep 2023 15:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694703810;
	bh=W3Y6Gm9/IGgV579HraWZyIC6jSTAdBWlzF8CdXDvIrE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jTz0CICJshUvrLKjdU+/bCj2Ns6Qc/YO8MYWzbwNg0PJGPHw/42/3YEBUCF/ekELD
	 QFrRldUu1VvTfVbAUkqix6ISsfxCRzYqUCFYtwYbEvQAHMKvSmOrOHXvryIQpk0fFD
	 Fc8Wta1JGgYvQHQZLQhsTq+mUh1UgMNDnq5mnUuHrP0Kqg+bKgU6tZm/KN7LoCPH6E
	 a/zQgM7I7m/Qz2ldYrZA4CRoqi5LieliP0ZfKLU2oCkkmaeCKsNoIt+0NWkEXDDzMF
	 gS2AZS0aGNYP1fXu3mHZLG6aY64RUxaJyL809CKE9MXS3AGs4r8HwEm4JQK4KVGbvC
	 rVel0+SPJN4ZA==
Received: (nullmailer pid 1299783 invoked by uid 1000);
	Thu, 14 Sep 2023 15:03:28 -0000
Date: Thu, 14 Sep 2023 10:03:28 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/5] dt-bindings: gpio: vf610: correct i.MX8ULP and
 i.MX93 interrupts
Message-ID: <20230914150328.GA1293008-robh@kernel.org>
References: <20230914-vf610-gpio-v1-0-3ed418182a6a@nxp.com>
 <20230914-vf610-gpio-v1-1-3ed418182a6a@nxp.com>
 <4520fa76-8645-a438-ba7d-ef50c9781249@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4520fa76-8645-a438-ba7d-ef50c9781249@linaro.org>

On Thu, Sep 14, 2023 at 07:47:29AM +0200, Krzysztof Kozlowski wrote:
> On 14/09/2023 04:20, Peng Fan (OSS) wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> > 
> > i.MX8ULP and i.MX93 actually has two interrupts for each gpio
> > controller, one for
> 
> ...
> 
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - fsl,vf610-gpio
> > +              - fsl,imx7ulp-gpio
> > +    then:
> > +      properties:
> > +        interrupts:
> > +          maxItems: 1
> > +    else:
> > +      properties:
> > +        interrupts:
> > +          maxItems: 2
> 
> Instead describe the items with "items:" and descriptions.

Except not here, but in the top level 'interrupts' entry.

Rob


