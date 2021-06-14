Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BC963A6F9C
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 21:57:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233732AbhFNT5Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 15:57:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:53404 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235670AbhFNT5M (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Jun 2021 15:57:12 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8522861246;
        Mon, 14 Jun 2021 19:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623700509;
        bh=lmulZGLVIGgfLTHPuc1g/ChqUK2CxHQVWiDek7Fcvx4=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=m24IE0P8yQ6et73WXk2Ee9oJZHR7XXd11fxTb3ApdeMumDT30IQ0/F8b5cdEDNMvE
         LoE6VRiTJqnu+SBRrqF+HGjzBEOPQO54S7Z9PCCKOE4OUOJMJSJkOCeaoMnXNqcT45
         S7k/DDm40bcWxjfRIMzu5kWQUC04tHAMtFsHa4tDZ1MlkyW+NQwHwrdaqBqiIo/3AI
         TxEHOo6cJwsI7I3U1iOaK2gWf4/617RyadFg50IyDLj2vsI1SW05ITB2PmP7dztaOw
         bEz2NEz+g2n6WmXBe9bkMGf8GbmX8tT0BE45IqbExMHWH+E6DREV6YInmpav4Q5BLt
         dLOI8euWndE+g==
From:   Mark Brown <broonie@kernel.org>
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, kernel@dh-electronics.com,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] dt-bindings: ASoC: sgtl5000: Add audio-graph-card port
Date:   Mon, 14 Jun 2021 20:53:48 +0100
Message-Id: <162369994009.34524.17249754614402570910.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210610150135.29905-1-marex@denx.de>
References: <20210610150135.29905-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Jun 2021 17:01:35 +0200, Marek Vasut wrote:
> The SGTL5000 codec can be connected via audio-graph-card,
> add the missing port: entry into the bindings.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] dt-bindings: ASoC: sgtl5000: Add audio-graph-card port
      commit: f1905ab2a8a2103b7fa74a5f96fb50cce0dee6f5

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
