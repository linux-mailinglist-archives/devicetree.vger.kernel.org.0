Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3898539DFEE
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 17:04:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230264AbhFGPGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 11:06:12 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:57486 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230226AbhFGPGH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 11:06:07 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 157F47iK018163;
        Mon, 7 Jun 2021 10:04:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623078247;
        bh=kR+bJRygBQMle/LUilKvvTbOG/6eDR/4HuyzbNdfQQw=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=ovqrBEqEfN0vJLR3n4GEfXGi9LSxPLqSOwlnhRp8rkUUzDip/7kcJH7e4ww6CPRrP
         O5IoOFdRaPq/GtsFKbjdcJ73Sg0fCQIaUw/d83UxTJte3+LvrIl06TXexI+fdRzoUH
         KFE4AvC3uGE2oAwQG7lAX1vsW9wEpzXxmkHdY6LI=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 157F470Z077815
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 7 Jun 2021 10:04:07 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 7 Jun
 2021 10:04:07 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 7 Jun 2021 10:04:07 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 157F4778042434;
        Mon, 7 Jun 2021 10:04:07 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
Subject: Re: [PATCH v2 0/2] Add ICSSG MDIO nodes on AM65x & J721E SoCs
Date:   Mon, 7 Jun 2021 10:04:06 -0500
Message-ID: <162307823472.25009.11069479156135896671.b4-ty@ti.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210601150032.11432-1-s-anna@ti.com>
References: <20210601150032.11432-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 1 Jun 2021 10:00:30 -0500, Suman Anna wrote:
> he following series is a resend of the ICSSG DT nodes [1] for the 5.14
> merge window. Patches are just rebased on top of 5.13-rc1 + your latest
> ti-k3-dts-next branch HEAD commit 69db725cdb2b ("arm64: dts: ti:
> k3-am654x/j721e/j7200-common-proc-board: Fix MCU_RGMII1_TXC direction")
> + Aswath's AM65x MMCSD1 UHS-I patch [2]. There are no code changes w.r.t
> v1, I have picked up Reviewed-by tags from Jan and Grygorii.
> 
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
      commit: d49a769dcddd4224bd631792a4d2e5bbb160aa20
[2/2] arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes
      commit: 7ce11d4704c080ab890831b8255fbba4d2b0c5ec


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

