Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B28A6682F50
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 15:32:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231614AbjAaOcs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 09:32:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231656AbjAaOcq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 09:32:46 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 421234614F
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 06:32:41 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id AA779B81D1C
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 14:32:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1A71C4339B;
        Tue, 31 Jan 2023 14:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675175559;
        bh=Myx6v5SJEcsB0wkZzd7rJQDeP+AJ6PDc3yMAvTekZBc=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=CVXXfXiZ+f+yjeAM8M75Kv/1Tl3+rGz8zihNviJpLldcuaRcz4Lm0pALojNtarrcs
         QM8gmRmpERp/OvXL6coCfT6szg3KqT4q/S3scAflRUXo2Ss+MOgfkOUyMJ0xbb11Xz
         A9QDN9C8EkbD6ffG+rSTpQnHAmwxZENCLes91ef3oaPDFKKxJtvzrBDNumA7o7YUFn
         ZjKQbY71fYwv1gDTaYyJ88IR51lO7BYrdMUNv2IyZ4CNFd6qObwV5pFE3GOq4ixLvV
         15suKFwuM6Cq+ELH3RJTq+rfURtCVXtRCXbss8k1uOmUYZ7mjhvbb2SknGtzF+Ftbt
         wG5y8NTlw6E7w==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kiseok Jo <kiseok.jo@irondevice.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
In-Reply-To: <20230131050946.14385-1-kiseok.jo@irondevice.com>
References: <20230131050946.14385-1-kiseok.jo@irondevice.com>
Subject: Re: [PATCH] ASoC: dt-bindings: irondevice,sma1303.yaml: Fix about
 breaking the checks
Message-Id: <167517555771.691025.14607561012664314039.b4-ty@kernel.org>
Date:   Tue, 31 Jan 2023 14:32:37 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 31 Jan 2023 05:09:47 +0000, Kiseok Jo wrote:
> Fix the bindings checks like syntax error.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: irondevice,sma1303.yaml: Fix about breaking the checks
      commit: 1c24d12b68fa85fe51184ac64f446b27a4ccfaec

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

