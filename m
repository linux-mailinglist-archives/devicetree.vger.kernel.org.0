Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A2DC6FFF9A
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 06:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239779AbjELETU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 00:19:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239840AbjELETS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 00:19:18 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D8FB5277
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 21:19:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D3FC564F9C
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 04:19:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A23BC433D2;
        Fri, 12 May 2023 04:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683865150;
        bh=ZT00TaH5yteNvbFSoG2NguTfXRoQzCVVxtPo3JI7BwE=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=llZ894fPQJSmNuAdgy6nOUD0+GNdRpSNw4b9nCxygq5PUYM1Q2BrpcMdqyMFwkfPS
         n5Bn1whiNTzkrBmAdKLh7HVdThggtiV9BpyKUS9Yj6Gix0aIMyBWHyRPRrb667moIu
         Gy47XtFDddUOKNt65TnA2xxyc5ePFxXE3njzMYXjc1oy5+lP1ua+6QzQ7U1ISbqECU
         vr2j0qfn1eCmopN8cqgEBndDMW3mk7TqUJnlgDT/zjQbZYKGl2nEB8gE8rpCNSbB3Q
         B+EROqJHEt5R9bq4mi8tDFn2tib8WZLlkGALZKoTT5t+rGLICuJWi/l8hEceUVmOnt
         xOMQb08LHDDDg==
From:   Mark Brown <broonie@kernel.org>
To:     David Lin <CTLIN0@nuvoton.com>
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
In-Reply-To: <20230511113607.595184-1-CTLIN0@nuvoton.com>
References: <20230511113607.595184-1-CTLIN0@nuvoton.com>
Subject: Re: [PATCH v4] ASoC: dt-bindings: nau8825: Convert to dtschema
Message-Id: <168386514706.352974.7432872441818177751.b4-ty@kernel.org>
Date:   Fri, 12 May 2023 13:19:07 +0900
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

On Thu, 11 May 2023 19:36:08 +0800, David Lin wrote:
> Convert the NAU8825 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> 
> Changes:
> V3 -> V4:
>   - remove the description from interrupts, clocks and clock-names properites
>   - add sound-dai-cells property and update the dts example
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: nau8825: Convert to dtschema
      commit: 35bccf467cefc5ff9c71f10def6279bb974fcd99

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

