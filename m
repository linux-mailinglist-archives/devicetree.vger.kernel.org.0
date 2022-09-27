Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7257D5EC36B
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 15:00:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbiI0M76 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 08:59:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231869AbiI0M74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 08:59:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D0DE6CD13
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 05:59:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B1F1B61948
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 12:59:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F26C6C433D6;
        Tue, 27 Sep 2022 12:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1664283594;
        bh=WhKfpdHarWpwK0DfgClRr+Pyx0XKbe4sxd8WDUF78wc=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=YkC10HCYIO6+PWu6UnzjKTF9WY+SrZKXkndab8qU8tMrrS2e7WfgJy8XA0j9SDETC
         vx/qsDwpvuKHlNZSJBjk1VigqE24qHvApNwpEFlzyFfntVgVFFRmnVVSSXZx9GyXZd
         YtfF645di+Wr6eif71wbFLJWFhhBKxTZ/GcibWzH1B62JKr39uY72sVJh7qQBzA/4y
         WWnm4l/QNOJwwsCmCSDQh64LbCwEbdoCwBGob5LCcJGaxOWyHDPUgitlq5yaONzso+
         31AkDq5oqSee9GGOygXTY0grT4SPdzhgdszmWlDDoaeirqOCnq+HJoDIcAhMZ3wN2i
         2ae2YZZ11zn/Q==
From:   Mark Brown <broonie@kernel.org>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        alsa-devel@alsa-project.org,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Olivier Moysan <olivier.moysan@foss.st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
In-Reply-To: <20220927002004.685108-1-marex@denx.de>
References: <20220927002004.685108-1-marex@denx.de>
Subject: Re: [PATCH] dt-bindings: sound: st,stm32-sai: Document audio OF graph port
Message-Id: <166428359170.365276.17161501749228510942.b4-ty@kernel.org>
Date:   Tue, 27 Sep 2022 13:59:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-fc921
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Sep 2022 02:20:04 +0200, Marek Vasut wrote:
> It is expected that the SAI subnodes would contain audio OF graph port
> with endpoint to link it with the other side of audio link. Document
> the port: property.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] dt-bindings: sound: st,stm32-sai: Document audio OF graph port
      commit: b3eec3e6670d4da653e742bae16e5a6ff3f03825

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
