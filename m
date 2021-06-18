Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 885913ACE2E
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 16:58:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234777AbhFRPBH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 11:01:07 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:33548 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234183AbhFRPBH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 11:01:07 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15IEwrOF033831;
        Fri, 18 Jun 2021 09:58:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1624028333;
        bh=28kpjwOrxZwjFnnykZ/LWOKqAgGivGqzeZuR3h0J3Vw=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=eTahUdwUXcMmbWSjIeIswtwgYffyRbqtowH4ntZ6jkl3xD36nQGkZXbaohCrkjCGO
         qru2Pi+mo2930kZyK+LLtBz9i0y5ZwlzCTc35oC5juE8CAGOXUop4o18sNdhVoNaKc
         TYJ4sGzs132L/yqO+yJuONq9uSxNZ2CkzwUB6d5U=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15IEwr91100760
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 18 Jun 2021 09:58:53 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 18
 Jun 2021 09:58:52 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 18 Jun 2021 09:58:52 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15IEwq2W117708;
        Fri, 18 Jun 2021 09:58:52 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        <devicetree@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Hari <hnagalla@ti.com>
Subject: Re: [PATCH v2 0/3] Add R5F nodes on TI K3 AM64x SoCs
Date:   Fri, 18 Jun 2021 09:58:51 -0500
Message-ID: <162402789600.25544.13955211751661856760.b4-ty@ti.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210615195718.15898-1-s-anna@ti.com>
References: <20210615195718.15898-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Jun 2021 14:57:15 -0500, Suman Anna wrote:
> This is a rebased version of the K3 AM64x R5F node series posted previously.
> Please see the v1 cover-letter for all the functional details [1]. I have
> dropped Patch 4 [2] from the previous series as per the discussion and agreed
> upon in [2] until we align on the longer-term memory utilization of OCM RAM.
> 
> Patches are on top of your latest staged ti-k3-dts-next branch commit
> d65f069e50a3 (arm64: dts: ti: Drop reg-io-width/reg-shift from UART nodes")
> + Aswath's [PATCH v4 0/3] AM64: Update the locations of various elements in SRAM
> series (can't see the links on lakml patchworks).
> 
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

NOTE:
* I have pulled in yaml tag from Bjorn[2] prior to your patches. (cced him as
  well FYI - Thanks Bjorn for facilitating this)
* As discussed in [3], the shared-dma-pool dtbs_check warnings - I am merging
  since there is at least one precedence in this merge window, but as we have
  been discussing in prior threads as well, we will not do this in the 5.15
  window. In the future, please give a headsup in patch if such issues are
  introduced.

[1/3] arm64: dts: ti: k3-am64-main: Add MAIN domain R5F cluster nodes
      commit: a4f221cd68b306d6311237e47b531d21fab8dfa4
[2/3] arm64: dts: ti: k3-am642-evm/sk: Add mailboxes to R5Fs
      commit: 0afadba435892c8d330e3238b9cc7f9ee8b20e90
[3/3] arm64: dts: ti: k3-am642-evm/sk: Add DDR carveout memory nodes for R5Fs
      commit: d71abfcc6c050b72ba735b74f3e3848ce07ddd15


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

[1] git://git.kernel.org/pub/scm/linux/kernel/git/nmenon/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/andersson/remoteproc.git/tag/?h=20210327143117.1840-2-s-anna@ti.com
[3] https://lore.kernel.org/linux-devicetree/20210617004448.aozqtxu5smg57vr5@exterior/

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

