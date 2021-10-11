Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31D57429511
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 19:01:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233325AbhJKRDv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 13:03:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:46146 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233121AbhJKRDv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 Oct 2021 13:03:51 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 48D9D60F6E;
        Mon, 11 Oct 2021 17:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633971710;
        bh=rR6CIAETTiB8Hp3alrmbSApBUZ88acp+fwGwfCq2aV0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=GetKfUMkkiIXaBgv6CLGF6DId08Ovq7eNrCn6zbBqtmvm5ZAXb4duhsWcRSYRGXsm
         /oQegYd3GItZ/h/1SSn+rtlTCaYhWOY2vWkz+H9kn0LA/FwD+ZAjyJ2gIYNmulOoC7
         nfT0NCe/hjPc+y/rsFO3ZzWroEFXj83gnEUPL92igrktkgYdU/U7K1AgKcK8qE0OH+
         YXhTYf/s7LggSCV4PBTPwSrGeJT8ROLIl7MOLc8JkEVqe/yIWrwtn0JPd2PTziQ0t+
         +um1SEZHMu6g6aKn96wgbJe4vBUaAAFPM9AjqwJMAwYJ1X/gdnIQ8js4J57LUTUdPL
         bTW/xTMT61Unw==
From:   Mark Brown <broonie@kernel.org>
To:     Tzung-Bi Shih <tzungbi@google.com>, robh+dt@kernel.org
Cc:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
Date:   Mon, 11 Oct 2021 18:01:39 +0100
Message-Id: <163397094547.6567.10438692721309572798.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210914091204.2204278-1-tzungbi@google.com>
References: <20210914091204.2204278-1-tzungbi@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Sep 2021 17:12:04 +0800, Tzung-Bi Shih wrote:
> The document was merged as commit 1afc60e00de3 ("dt-bindings:
> mediatek: mt8192: add audio afe document").
> 
> However, [1] revealed that the commit 1afc60e00de3 breaks
> dt_binding_check due to dt-bindings/clock/mt8192-clk.h doesn't
> exist.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
      commit: c861af7861aac72075046e9932c606c8cfe64427

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
