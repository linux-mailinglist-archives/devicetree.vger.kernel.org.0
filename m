Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2925E62A2B8
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 21:23:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbiKOUXL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 15:23:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230472AbiKOUXJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 15:23:09 -0500
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3503A2CDF5
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 12:23:09 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AFKN5tL012173;
        Tue, 15 Nov 2022 14:23:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668543785;
        bh=6f7LiAhpG5Hii1ndKZ/WGVi0ywic75RT+UpVk/HuO6U=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Ym12zvIRyTxp1gdl8rsTix107oZi1xnJGwpsh6b2D3a0d4eiMIefRg6Z7s7pOXYp9
         JaoxLZLHGRpLYDL54O6AmUYfahMfP1xs6gvIcktapz/cxpBd8RsArkU5LuBhYaoqsR
         oD3Me7sebKO/D50SdxRQEtgv/+5Z869+O+Go6VkI=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AFKN5mW053890
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Nov 2022 14:23:05 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 15
 Nov 2022 14:23:05 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 15 Nov 2022 14:23:05 -0600
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AFKN5Rw069046;
        Tue, 15 Nov 2022 14:23:05 -0600
From:   Nishanth Menon <nm@ti.com>
To:     <tony@atomide.com>, <vigneshr@ti.com>
CC:     Nishanth Menon <nm@ti.com>, <j-keerthy@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <g-vlaev@ti.com>
Subject: Re: [PATCH v3 0/3] Collected pending TI dmtimer dts changes
Date:   Tue, 15 Nov 2022 14:23:04 -0600
Message-ID: <166854376727.11677.14097105577577542690.b4-ty@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20221115154842.7755-1-tony@atomide.com>
References: <20221115154842.7755-1-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tony Lindgren,

On Tue, 15 Nov 2022 17:48:39 +0200, Tony Lindgren wrote:
> Here are the pending TI dmtimer dts changes posted earlier. The related
> driver and binding changes are now in the mainline Linux. There has been
> no changes to these patches, I just updated them against current Linux
> next and added the tags from Georgi.
> 
> Regards,
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/3] arm64: dts: ti: k3-am65: Configure pinctrl for timer IO pads
      commit: 7928c712e2d6666a1816d5182038436902f57380
[2/3] arm64: dts: ti: k3-am65: Add general purpose timers for am65
      commit: cdbaf880b440287f56bc7dc58c4362b6bebb64e4
[3/3] arm64: dts: ti: k3-am62: Add general purpose timers for am62
      commit: 3308a31c507cacff94dc4c55f8402de1f9102621

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

