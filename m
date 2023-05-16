Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 918A77050A2
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 16:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233679AbjEPO0R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 10:26:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233193AbjEPO0R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 10:26:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00ED57EF3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 07:26:02 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2AB4B63ACB
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 14:26:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED63BC433EF;
        Tue, 16 May 2023 14:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684247161;
        bh=yr6EaQUtUyVjRPCZDNsdX/xYTqOXPgGQCFNn7en4Fg8=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=TureAuVB3tzgW34rFrXlh/VJ4Bd9oJZk5khZGOx3VmBBgDTs3ukTKsXbmRuODlMEh
         5fNnGOO5OunHy2h+PEdQG4Ds5PIetne5a5sE4WG8S3RXMTdd+xpih8SkQV028o/r3X
         SNcJtVF84YDlsdcBgnRvvDpw6kJyPtz9MVcBs4kvBTmkVArdGwXX/npcVS5uRwXWn1
         gzki2FbpXm8sVoDnrYKdUVuHp9OECEObQRTgT+Vq9506ucQVPKaGkv+rQCpehYHxJi
         y/bOoTR2kgnI5eaJ9+DkZIFN1KrSucPweNWBhqafPU+5ZfW/OVvwfJv7aE8s2hiBOE
         s9Y1NI8JlHkZg==
From:   Mark Brown <broonie@kernel.org>
To:     David Lin <CTLIN0@nuvoton.com>
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
In-Reply-To: <20230515065557.614125-1-CTLIN0@nuvoton.com>
References: <20230515065557.614125-1-CTLIN0@nuvoton.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: nau8824: Convert to dtschema
Message-Id: <168424715777.430742.11040319872515006787.b4-ty@kernel.org>
Date:   Tue, 16 May 2023 23:25:57 +0900
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-bfdf5
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 15 May 2023 14:55:58 +0800, David Lin wrote:
> Convert the NAU8824 audio CODEC bindings to DT schema.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: nau8824: Convert to dtschema
      commit: 518a1742f47792b5ea905b6cc4ecb05b77defd88

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

