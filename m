Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B2E12B5F6A
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 13:54:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725747AbgKQMxt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 07:53:49 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53318 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725355AbgKQMxt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 07:53:49 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AHCrkbk021528;
        Tue, 17 Nov 2020 06:53:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1605617626;
        bh=wd7lpsmgL3oO/7m40yMsS0a5Udumy2NOFBKofsbxGlM=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=svwhR96rfcT87IJ7kZz5dcqwRuLV9iFHlrkGemhq0F1nTc7AbM9dNvlbNNgg5X0SQ
         EpMP34Y6UMzJt5l9L6y3GLVPFaXnB+KuGyTJeRHS2HLIQi7E6VWuefPvkzeF35K0La
         fbYKuPpUfxvxfmrmtiGFmC9zN6n6Pu4fzS5XfqFg=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AHCrkCf037927
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 17 Nov 2020 06:53:46 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 17
 Nov 2020 06:53:46 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 17 Nov 2020 06:53:46 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AHCrkrh025858;
        Tue, 17 Nov 2020 06:53:46 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Suman Anna <s-anna@ti.com>
CC:     Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/3] Add HwSpinlock & Mailbox nodes on J7200 SoCs
Date:   Tue, 17 Nov 2020 06:53:46 -0600
Message-ID: <160561756333.22964.1029119444913341855.b4-ty@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201026232637.15681-1-s-anna@ti.com>
References: <20201026232637.15681-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Oct 2020 18:26:34 -0500, Suman Anna wrote:
> The following series adds the HwSpinlock and Mailbox nodes for the J7200
> series. The sub-mailbox nodes that will be used by the K3 R5F remoteproc
> nodes are also added to the k3-j7200-som-p0.dtsi file in sync with the
> convention used on J721E SoCs.
> 
> Patches are based on 5.10-rc1 and your current staged branch commit
> 9dcd17be61e4 ("arm64: dts: ti: k3-am65: ringacc: drop
> ti,dma-ring-reset-quirk")
> 
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/3] arm64: dts: ti: k3-j7200-main: Add hwspinlock node
      commit: 1d7a01c40840d844fb5d353c151f0ee0a7680c2f
[2/3] arm64: dts: ti: k3-j7200-main: Add mailbox cluster nodes
      commit: d15d1cfbd765b4b2a113b6025e8edc7db4a7800a
[3/3] arm64: dts: ti: k3-j7200-som-p0: Add IPC sub-mailbox nodes
      commit: 6804a987de733c805675973e3afde128fe7a7cfa


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
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

