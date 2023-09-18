Return-Path: <devicetree+bounces-1133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2233B7A4E24
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 18:07:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D06D7282A85
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 16:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EF9121113;
	Mon, 18 Sep 2023 16:06:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477A920B29
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 16:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4191AC43397;
	Mon, 18 Sep 2023 16:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695053165;
	bh=V2Ca0FDQjE39oqGvsLz24cV0i2ZCGGyShiYZ2H0bMsg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UldQm7CJ9UETNwt+IdBde9nLe74kkvoFkvfYLgXu1wygHRMBeXhwMD4yoVxTVDqT5
	 KF7laZavM388qSKV5hu541FbgkeV/OLoJMEGr+esV1HWx69xQ6y+hPQZwPJBJTSHFW
	 i5jmLAjYCu93Oh0/saLqhJ0sr40KOZQO/dBntn5sFcSBZDrY9AmceMpk0ZnvZ7FZve
	 yzGiJyTINuLc2TZuyXflbd6l8bjKcZJMnI76hyKDALDA7yESCoJR7uWEPL6OvGPSt4
	 NGwyHhGF3qIuZbVamVqmwshVBvQbcrA3P5Tl7uoelHpXhj5GrgTl1M/muH0HokK8SJ
	 34BmXpUUBpeQQ==
From: Mark Brown <broonie@kernel.org>
To: alsa-devel@alsa-project.org, John Watts <contact@jookia.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, 
 Charles Keepax <ckeepax@opensource.cirrus.com>, 
 patches@opensource.cirrus.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230918131532.2257615-1-contact@jookia.org>
References: <20230918131532.2257615-1-contact@jookia.org>
Subject: Re: [PATCH v4 0/3] ASoC: wm8782: Allow higher audio rates
Message-Id: <169505316298.74713.188374805406477074.b4-ty@kernel.org>
Date: Mon, 18 Sep 2023 17:06:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-034f2

On Mon, 18 Sep 2023 23:15:29 +1000, John Watts wrote:
> The wm8782 supports higher audio rates than just 48kHz. This is
> configured by setting the FSAMPEN pin on the codec chip.
> 
> This patch series introduces the 'wlf,fsampen' device tree property
> to indicate the pin status and control the maximum rate available
> when using the codec.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: wm8782: Constrain maximum audio rate at runtime
      commit: 00524a8415aa400567538c0e75a463d517cded7f
[2/3] ASoC: wm8782: Use wlf,fsampen device tree property
      commit: 5d34887eab8daad8f63d584ae4d12d480beb9f0e
[3/3] ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen property
      commit: 5d5529b0057146043a4328aa194280299ba966c2

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


