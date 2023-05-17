Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26F52706B94
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 16:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231311AbjEQOuu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 10:50:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbjEQOuu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 10:50:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 572AD7EE8
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 07:50:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D8A5564812
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 14:50:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 736ABC433EF;
        Wed, 17 May 2023 14:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684335045;
        bh=4A7TPC9rPpE7IRQLXcp+P269NIHY6f4y/qxECPLEfS0=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=uFKtgj284jjNvG6b4PsRFjB3ssh+BYWkAZpRo18YdV7PViAKSUytFGNDePtl6x5s0
         9Xsa18v/0QdCCCeDGrgoaDOWFw5TI6SCeBQ+EjuxpkXqfmgM9L5iiotgTXgOisVOfw
         9TSK8oPFVHYoFC9BfkSXTODNlyJfV26ZvR2V+FZAT2T2YURjyJaB52rsyj1Um02lZk
         edxmtooPc9a6uFxlXVhOPS/IJmWwGDEvrEP1yrxn3rAx0dUNMH0JcNqJTf9IY+6E/P
         b/gIKqxGeQw+NFgVMF1NeiA+UqiParbu+BF3kIq1z8BaTiX0GkPFxATGIiS5rIuvqD
         FOj8i9vLjZ19w==
From:   Mark Brown <broonie@kernel.org>
To:     David Lin <CTLIN0@nuvoton.com>
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
In-Reply-To: <20230516054447.1081404-1-CTLIN0@nuvoton.com>
References: <20230516054447.1081404-1-CTLIN0@nuvoton.com>
Subject: Re: [PATCH] ASoC: dt-bindings: nau8810: Convert to dtschema
Message-Id: <168433504227.453649.13416759593266238659.b4-ty@kernel.org>
Date:   Wed, 17 May 2023 23:50:42 +0900
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-bfdf5
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 May 2023 13:44:48 +0800, David Lin wrote:
> Convert the NAU8810 audio CODEC bindings to DT schema.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: nau8810: Convert to dtschema
      commit: bc8c537bd68c6fa99f81609d912115e0a6499fb5

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

