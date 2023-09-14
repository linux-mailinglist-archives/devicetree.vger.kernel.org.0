Return-Path: <devicetree+bounces-256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 612587A0890
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CD8E281E95
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CED692110B;
	Thu, 14 Sep 2023 14:52:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389B21D6A6
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:52:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4994C433C8;
	Thu, 14 Sep 2023 14:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694703156;
	bh=gE+iGruQvOG/SXJlNTNSS7Rv1fSDB/ionw3c3sNQrcE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S5ESi6R5qMDsXGmiZDsnnind0aPSnL6noRDyLYFTZtx1d+j1daLn7AWfsepRmepyf
	 viDS8j6XGiMLl50jlo7xDu3U+90/N5EZ19I0jOGIP5jLktjo279oem6Ri6jaLJhWNx
	 VV03MjWJqy5rq4m/h+OLechKjMHRILcFnnHQ9CR9t+Ja3iKYb6iuy4OXj1+UUmUmk7
	 sHJ2m7IALxLbuJa8hfxQcfpAv6UwjLAWlh1nEtZ0Xp7zanYEohytfLo8wbk5wet7o7
	 Qhfvhf5MULFQUlPhgaCyJynvsuC9h1MAVmzPQUfvTVNgmJVlechH3RVnHN/SxZK7Vv
	 CaEobsiHP5ApQ==
Received: (nullmailer pid 1276282 invoked by uid 1000);
	Thu, 14 Sep 2023 14:52:34 -0000
Date: Thu, 14 Sep 2023 09:52:34 -0500
From: Rob Herring <robh@kernel.org>
To: John Watts <contact@jookia.org>
Cc: alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, patches@opensource.cirrus.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen
 property
Message-ID: <20230914145234.GA1275176-robh@kernel.org>
References: <20230913171552.92252-1-contact@jookia.org>
 <20230913171552.92252-4-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230913171552.92252-4-contact@jookia.org>

On Thu, Sep 14, 2023 at 03:15:52AM +1000, John Watts wrote:
> The WM8782 can safely support rates higher than 48kHz by changing the
> value of the FSAMPEN pin.
> 
> Allow specifying the FSAMPEN pin value in the device tree.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  Documentation/devicetree/bindings/sound/wm8782.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/wm8782.txt b/Documentation/devicetree/bindings/sound/wm8782.txt
> index 256cdec6ec4d..d217a616e103 100644
> --- a/Documentation/devicetree/bindings/sound/wm8782.txt
> +++ b/Documentation/devicetree/bindings/sound/wm8782.txt
> @@ -8,10 +8,15 @@ Required properties:
>   - Vdda-supply : phandle to a regulator for the analog power supply (2.7V - 5.5V)
>   - Vdd-supply  : phandle to a regulator for the digital power supply (2.7V - 3.6V)
>  
> +Optional properties:
> +
> + - wlf,fsampen : FSAMPEN pin value, 0 for low, 1 for high, 2 for disconnected

What's the default if the property is not present?

> +
>  Example:
>  
>  wm8782: stereo-adc {
>  	compatible = "wlf,wm8782";
>  	Vdda-supply = <&vdda_supply>;
>  	Vdd-supply = <&vdd_supply>;
> +	wlf,fsampen = <2>; /* 192KHz */
>  };
> -- 
> 2.42.0
> 

