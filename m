Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0F14617797
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 08:23:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231182AbiKCHXz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 03:23:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbiKCHXy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 03:23:54 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69A90FCC
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 00:23:53 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A37NicV006859;
        Thu, 3 Nov 2022 02:23:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667460224;
        bh=UVkcWVmcysisWxLBoNao8wqYoryxSKNJ+Y83oiHc6+I=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=dE7CHf9qCprs2CcrAo+VKgvZ4O5Rkp/vVgmg3EGeamKIdypO2nYRlGNiWEIKClwqO
         rB7Fjv/CVz1+6caY/Ufe1vnuaMQ6TGmWhJDOwAvax0wcWuwOQ3ZPAiQxcPt6D4Qzs1
         TRTyau7q8CtyK9vEXRXZhq6uv7B6RASMI+l5eguY=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A37NiK4030688
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 3 Nov 2022 02:23:44 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Thu, 3 Nov
 2022 02:23:43 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Thu, 3 Nov 2022 02:23:43 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A37NhB2083793;
        Thu, 3 Nov 2022 02:23:43 -0500
From:   Nishanth Menon <nm@ti.com>
To:     <krzysztof.kozlowski+dt@linaro.org>, <kristo@kernel.org>,
        <vigneshr@ti.com>, <mranostay@ti.com>, <miquel.raynal@bootlin.com>,
        <robh+dt@kernel.org>
CC:     Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: rename clock-names adc_tsc_fck to fck
Date:   Thu, 3 Nov 2022 02:23:42 -0500
Message-ID: <166746020740.2058.2273830543196413507.b4-ty@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221024151648.394623-1-mranostay@ti.com>
References: <20221024151648.394623-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matt Ranostay,

On Mon, 24 Oct 2022 08:16:48 -0700, Matt Ranostay wrote:
> Avoid the following warnings from dt-schema by just renaming the
> clock-names string from adc_tsc_fck to fck so it matches the values in
> ti,am3359-tscadc.yaml
> 
> tscadc@40200000: clock-names:0: 'fck' was expected
> 
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: rename clock-names adc_tsc_fck to fck
      commit: e5bad300e46c5bd0c5cf0a89c74116fbbf608a8c

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] git://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

