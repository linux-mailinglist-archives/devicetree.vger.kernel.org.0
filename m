Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D43BC58170D
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 18:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231416AbiGZQNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 12:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229725AbiGZQNb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 12:13:31 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD5CB21804
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 09:13:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9D365B80FF0
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 16:13:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F154CC433D6;
        Tue, 26 Jul 2022 16:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658852008;
        bh=lBXBlTt8of9ENP47XpLIyjUVRBGhosFykkx8XUx780Y=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=M/KOBOQNa7Pph72JOjmMgxacAb1zaib0xCLuFXfZXEcxJF9Z7EjoxO03lUe8XYnYo
         rXy5Nq+9HHzedLlKUl4rH3JgkCKO4I+K8v+AQkvjoMpmbqG5GW35YpF8LS5Pzgc0uZ
         kd9kJPx0R0D9VxXZ/iw4g+5BQ8g04YFWVphw9BR/xPdXXBn+DKlTMEC1OrJpCCTZTr
         12cdz2cCDe1sZbp+9OiyY3Pvurdhg1xMn/gIaUdtBTKyRVoQvcX0fK1lMGaIPniXFu
         7eWV0dqLsjPepdV80qeMDukZzvGSFeUgBkV587WHR8sk0yWObM+7SQvXOb/eIbLMO+
         ZFPq51UR1BFQA==
From:   Mark Brown <broonie@kernel.org>
To:     robh+dt@kernel.org, Raphael-Xu <13691752556@139.com>
Cc:     kevin-lu@ti.com, devicetree@vger.kernel.org, raphael-xu@ti.com,
        alsa-devel@alsa-project.org, shenghao-ding@ti.com
In-Reply-To: <20220722105345.175-1-13691752556@139.com>
References: <20220722105345.175-1-13691752556@139.com>
Subject: Re: [PATCH v7] ASoc: dt-bindings: tas2780: remove tas2780 and will merge it to tas27xx
Message-Id: <165885200667.210393.7730933722595002390.b4-ty@kernel.org>
Date:   Tue, 26 Jul 2022 17:13:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-c7731
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 22 Jul 2022 18:53:45 +0800, Raphael-Xu wrote:
> remove tas2780
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoc: dt-bindings: tas2780: remove tas2780 and will merge it to tas27xx
      commit: 7209344223f77311aee677ea820a93b9ba0bcae0

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
