Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2CE04D2230
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 21:09:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244531AbiCHUKO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 15:10:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239591AbiCHUKM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 15:10:12 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9A7F396A7
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 12:09:15 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9688CB81D55
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 20:09:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FE5BC340F5;
        Tue,  8 Mar 2022 20:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646770153;
        bh=pkH5xEpTcwC8GLw+ij4JZqgXdc2urQc8Jr4n56zjEqo=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=FyOjbWM7dLscuc+nWLcF8Ez+hH5sNYGky2yqWs6inl1ZWX1AQCaG0BzuSMVZOH2aL
         bmC3wRIHfUdHB5Q0OJU4zSZzf4tSl0z8QSop5OYGii2iR2D2VoePM4K9l+lBff2ix8
         r0jEQWZoaE4IBtibLvsLMFpiuyNk/Fi/kuF7nqZ2Vazj10TbDiobgsAGUFdTBhCrl5
         X13taMvNYxFm7fUzsJQapEDPmIN+M5AB35dRDdm6zU9fL9/P7e+f9FAZ3mL3XsN9jX
         99ZkpjAJTDGk/l+StBpb4V5cVEKMCtTKN1FM3qtSA80Hv+RdLzveyF+35Mb/bueDRc
         yiybWpxnIxNAA==
From:   Mark Brown <broonie@kernel.org>
To:     devicetree@vger.kernel.org, Georgi Vlaev <g-vlaev@ti.com>,
        krzysztof.kozlowski@canonical.com
Cc:     vigneshr@ti.com, ldewangan@nvidia.com, lgirdwood@gmail.com,
        robh+dt@kernel.org, nm@ti.com
In-Reply-To: <20220308134454.14504-1-g-vlaev@ti.com>
References: <20220308134454.14504-1-g-vlaev@ti.com>
Subject: Re: [PATCH v3] dt-bindings: regulator: Convert TPS62360 binding to json-schema
Message-Id: <164677015083.3181783.11088662239637994003.b4-ty@kernel.org>
Date:   Tue, 08 Mar 2022 20:09:10 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Mar 2022 15:44:54 +0200, Georgi Vlaev wrote:
> Convert the TPS62360 regulator binding to DT schema format
> using json-schema.
> 
> This also removes redundant "ti,enable-force-pwm" property
> from the example. The property description was removed from the
> original text binding file by commit 9a00630c3db8 ("regulator:
> tps62360: support force PWM mode via regulator mode"), but a
> reference to it remained in the example.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] dt-bindings: regulator: Convert TPS62360 binding to json-schema
      commit: 2594703044ad2ef7ea7d463bf2cf82a13f7fc266

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
