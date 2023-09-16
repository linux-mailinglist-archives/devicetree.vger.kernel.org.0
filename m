Return-Path: <devicetree+bounces-723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B47E7A2CE1
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 03:12:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA672283526
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 01:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8AB710E2;
	Sat, 16 Sep 2023 01:12:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2645A2A
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 01:12:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C602EC433C9;
	Sat, 16 Sep 2023 01:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694826720;
	bh=bYO59QCoX4XqFb5BucbBKtrS3lsg1tXwdOkE59vdUkI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Fnn/2QslaMEHclg29ykrYpVMCfJgIF+O169JKMrM4svS1H4ZM1q014Kjjl3BOHmRU
	 iQ68uDmaKGMFZic98LyRgEF6ckEexLAPQ3bvuS8Ertutb6uhqkCBWlsB1b8rf7qNuj
	 zvpKTm4OJosbkfBLPH8ftyvmnCSYUEPPXGudmN44GCSvJveY46IJGQk/zqxtZ+PDbx
	 6hVZx7Kf0Up1KCl3o6Vfx8L5/GVIzgTHScVaDzdJJVjtsSOGnBEuHsYpNLieHMc7gQ
	 Zlnby+VMzBAPdKELC8bJ4t7fQwZiBBblVG4wnaSKE/l5TFNVdVQTZ0e/LhMeR203O4
	 1mi/8+LMi0PpQ==
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20230914190033.1852600-1-robh@kernel.org>
References: <20230914190033.1852600-1-robh@kernel.org>
Subject: Re: [PATCH] spi: dt-bindings: arm,pl022: Move child node
 properties to separate schema
Message-Id: <169482671852.606665.18307676908315471963.b4-ty@kernel.org>
Date: Sat, 16 Sep 2023 02:11:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-034f2

On Thu, 14 Sep 2023 14:00:17 -0500, Rob Herring wrote:
> In order to validate SPI peripherals, SPI controller-specific child node
> properties need to be in a separate schema, spi-peripheral-props.yaml,
> which SPI peripheral schemas reference. Move the arm,pl022 child
> properties to their own schema file and add a $ref in
> spi-peripheral-props.yaml.
> 
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] spi: dt-bindings: arm,pl022: Move child node properties to separate schema
      commit: b0ef97ac89a794ae786eb1ff1cd2b07e9d9ab3c4

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


