Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0DEB40DDB3
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:15:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238593AbhIPPQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:16:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:41556 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238551AbhIPPQl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Sep 2021 11:16:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1F10D6112E;
        Thu, 16 Sep 2021 15:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1631805320;
        bh=nisdCjxx8h3smoc19yNYbMFQO1k/T8CrbliHaeUAbaI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=tyeGe50nEUbpewuTBOCJP4oosBn1Bq+QL6hGL6dKJrG2DaQc6OKL8DS70HAMAuKYt
         J2vvuJIljOjNLus2Tz4SAfww92Ymufy6rTajcER1movniMZ1xkC1sB2INffZmi4AsQ
         PPrMxBNgD4Nz7eijkg9qpmlw9+tt8rvOWpfHzCnNuFaNo69Yn6bOxk+umbNVQCqHJw
         AApVp6l0xJyoqcV13FnV01CjoriHMSGFMF1CAPLOT8h20sLzP1buOlZHqX+ZCt9y9B
         GytohIK0it7RnWkP/YCmAankyp0neJlJPhl+HW2+79qsLvWIPePtUaCNkW7zqLKzk5
         STuPM4+cGZQTg==
From:   Mark Brown <broonie@kernel.org>
To:     alsa-devel@alsa-project.org,
        David Rhodes <drhodes@opensource.cirrus.com>,
        patches@opensource.cirrus.com, david.rhodes@cirrus.com,
        devicetree@vger.kernel.org, robh@kernel.org,
        ckeepax@opensource.cirrus.com
Cc:     Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] ASoC: cs35l41: Binding fixes
Date:   Thu, 16 Sep 2021 16:14:29 +0100
Message-Id: <163180495857.19842.15753133396233565359.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210915191422.2371623-1-drhodes@opensource.cirrus.com>
References: <20210915191422.2371623-1-drhodes@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Sep 2021 14:14:22 -0500, David Rhodes wrote:
> Fix warnings and errors in DT bindings
> 
> Add newline at end of file
> Replace 'unevaluatedProperties' with 'additionalProperties'
> Add spi context to DT example
> Add #sound-dai-cells to DT example
> Rename to 'cirrus,cs35l41.yaml'
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: cs35l41: Binding fixes
      commit: 6116df7fafabbd9b2b09bfd8d568cd5fad656125

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
