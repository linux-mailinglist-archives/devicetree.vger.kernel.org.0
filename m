Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12B7E47B88B
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 03:51:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233971AbhLUCu5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 21:50:57 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:52994 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233927AbhLUCu5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 21:50:57 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 4B5D7B81118
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 02:50:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B740C36AEB;
        Tue, 21 Dec 2021 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1640055055;
        bh=Fhuf2bqC66bUEidwQH3UzUgFbxEW2XnM6iI70FqfJVI=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=InUTiCl8v+Z5Sm1v5DDrrtxAWE1ZTfNENab03Hn7ozhfJNoQZQyraXW5D5q7dj1s4
         31xghjOLOm6/xoJYTF4zrjm+v76K3YEY3OHP9YlG4e2zR7llGhsGXeeLnLGTb5vTCT
         CtQSYud2pYe5e5fHtamHlSq69VBaSk62YSqSn+9VLIsJNYw1nbxiR1hQWBZgErco7t
         VTHifti2+N/HWWfjA2Pl/mpHf/+OUV9JHA1hAm4QTYAqnV9+G5eNCNf/4G0n/gepzj
         Xb6qcNriF/zZ/9PB9cxqK6iHyJ/BuTw3mXjh3LjU5b3MouqzIqrMGvx5zyGlNpjZLl
         1RRDx5qoteUdg==
From:   Mark Brown <broonie@kernel.org>
To:     Ricard Wanderlof <ricardw@axis.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     devicetree@vger.kernel.org,
        alsa-devel <alsa-devel@alsa-project.org>
In-Reply-To: <alpine.DEB.2.21.2112151759170.27889@lap5cg0092dnk.se.axis.com>
References: <alpine.DEB.2.21.2112151759170.27889@lap5cg0092dnk.se.axis.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: sound: tlv320adc3xxx: New codec driver
Message-Id: <164005505377.2647792.3979001225457179227.b4-ty@kernel.org>
Date:   Tue, 21 Dec 2021 02:50:53 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Dec 2021 18:01:24 +0100, Ricard Wanderlof wrote:
> DT bindings for Texas Instruments TLV320ADC3001 and TLV320ADC3101
> audio ADCs.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] dt-bindings: sound: tlv320adc3xxx: New codec driver
      commit: e047d0372689f5d4231eefb731b60ac64720bbf0

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
