Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D107E4233E7
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 00:54:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236885AbhJEW4l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 18:56:41 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:57148 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236764AbhJEW4l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 18:56:41 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 195Mse1G025806;
        Tue, 5 Oct 2021 17:54:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1633474480;
        bh=DRu4uGHJOsn2Qjk78rnIUvTnwRcSP0GiBlBS7UnsB9c=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=TrCgSwMXpUygqZ+RKmPeUxi+zXfYbn/vX+crSOm2MwnAyeH7Ld8cvC4szj30hA7ks
         Cjo+ZijjEHOT403qBYHUDeX3bNYzq8RlZFB4yTm2lTaaZMNju4YenLERV1+/SHuiM3
         Zh57kVtz9iU+u3qu2CCepd3bNiE/wLtMRDF5hkCE=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 195MserD078224
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 5 Oct 2021 17:54:40 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 5
 Oct 2021 17:54:39 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 5 Oct 2021 17:54:39 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 195Msd5O093934;
        Tue, 5 Oct 2021 17:54:39 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC:     Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am64-main: Add ICSSG nodes
Date:   Tue, 5 Oct 2021 17:54:38 -0500
Message-ID: <163347441478.2593.14491163786099201140.b4-ty@ti.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210919202935.15604-1-s-anna@ti.com>
References: <20210919202935.15604-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 19 Sep 2021 15:29:35 -0500, Suman Anna wrote:
> Add the DT nodes for the ICSSG0 and ICSSG1 processor subsystems that are
> present on the K3 AM64x SoCs. The two ICSSGs are identical to each other
> for the most part, with some of the peripheral pins from ICSSG1 not pinned
> out. Each ICSSG instance is represented by a PRUSS subsystem node and other
> child nodes.
> 
> The nodes are all added and enabled in the common k3-am64-main.dtsi
> file by default. The MDIO nodes need pinctrl lines, and so should be
> enabled only on boards where they are actually wired and pinned out
> for ICSSG Ethernet. Any new board dts file should disable these if
> they are not sure. These are disabled in the existing AM64x board dts
> files to begin with.
> 
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am64-main: Add ICSSG nodes
      commit: c9087e3898a1d085c6fd462e9c325a0afcb4af29


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
Key (0xDDB5849D1736249D)/Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

