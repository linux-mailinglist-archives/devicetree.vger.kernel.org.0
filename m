Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C9ED419D64
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 19:48:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235946AbhI0Rtl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 13:49:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:58826 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236737AbhI0Rt1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 13:49:27 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0B27960F4F;
        Mon, 27 Sep 2021 17:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1632764869;
        bh=uVl5ACrfcIN4ooLozQqnr+TxY/foOGM8sxO3/2FeKmA=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=QNQMvYyrlucLrAj/mojcJ6teenH0XIbkgaKGCP5hU+C/SM/xyIahSoUV5YTjZJrby
         fhC5CpftHyxMt63kjp9F90FdWcMgCdlrZQ7bMqqOfATdTTumlnaDqxdAAuPJl6tXEq
         FCQLaljGKLGz70ozWu3avec/jSJqTeY+VXr+MUCkT63wr1bUaTSBNlUQ0S2jHn46Fg
         5KG+hDTfhIKS8ZuBLI/Pgx8mgeA+q+i96ZHJm/ituutWJUQz6Ch9kjDSMEpUp255IP
         ZTOz4gMAY1McPbRH33GNldBwXkW4Mm3ztaoPAU2LpwnMQQfsK4mNecoW8NeiXO81In
         fs8yUL1jH4QTQ==
From:   Mark Brown <broonie@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        alsa-devel@alsa-project.org, Maxime Ripard <maxime@cerno.tech>,
        patches@opensource.cirrus.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: wlf,wm8978: Fix I2C address in example
Date:   Mon, 27 Sep 2021 18:45:41 +0100
Message-Id: <163276442023.18200.16335825617425254658.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <c99fc865e3fca6ea623661c52de7dc6a3c36c8b4.1632487554.git.geert+renesas@glider.be>
References: <c99fc865e3fca6ea623661c52de7dc6a3c36c8b4.1632487554.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Sep 2021 14:47:32 +0200, Geert Uytterhoeven wrote:
> According to the WM8978 datasheet, the address of the device is fixed as
> 0011010 in 2-wire mode.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: wlf,wm8978: Fix I2C address in example
      commit: 9208d3ca8cb65748e436c224ed63dbba4a60a3d5

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
