Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9747771670F
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 17:30:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbjE3PaH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 11:30:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230164AbjE3PaG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 11:30:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21919BE
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 08:30:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B163962D61
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 15:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A2CEC4339C;
        Tue, 30 May 2023 15:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685460604;
        bh=yOuAKUH99eerkYSbcvpKliULkWETDw5RZSn654tpR6Q=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=nDdaKX9Jic2T/xQsiY+ZhFhGH7owLNXhAa4zdrXptXTj4rLL3AXI6WzkFpv5OQvzy
         /GoqKx8oAvTH6O5C48iEDEc43q2MU3I5sfLgUEkwYvMlNEBM1DGwpZNwTqonYfJ2xo
         YtK8J6fAJRWm/SxDBcioNQGlhd/cTlNY69FP/AXT9uCyR6cDanO/VWi6rfqkOd/rvC
         giT2IAvAtE6Auh63IL9NJK+c9hgL1rEuiKaMmOcVRVL5JAIzFwg2fLl+/2YJMqXL6L
         +zCLZNnVqXrT/8OCeo2Qt7BeqdOWwCeuy7WTJIuInMxVsW5KIetqfiWVUJ6asa0AU7
         Vhkx2NDH46jgQ==
From:   Mark Brown <broonie@kernel.org>
To:     shawnguo@kernel.org, Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20230527205048.418360-1-festevam@gmail.com>
References: <20230527205048.418360-1-festevam@gmail.com>
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: pfuze100.yaml: Add an
 entry for interrupts
Message-Id: <168546060181.564321.13566400067176392032.b4-ty@kernel.org>
Date:   Tue, 30 May 2023 16:30:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-bfdf5
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 27 May 2023 17:50:46 -0300, Fabio Estevam wrote:
> The PFUZE100 PMIC has an interrupt pin that can be connected to
> the host SoC. Describe it in the dt-bindings to avoid warnings like:
> 
> imx6q-zii-rdu2.dtb: pmic@8: 'interrupt-parent', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
> From schema: Documentation/devicetree/bindings/regulator/pfuze100.yaml
> 
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/3] dt-bindings: pfuze100.yaml: Add an entry for interrupts
      commit: 87fe0214d7aae5e1152953710489c5ab5469b388

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

