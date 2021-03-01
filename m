Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D3E432820C
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 16:17:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237038AbhCAPQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 10:16:12 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:49774 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236993AbhCAPPe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 10:15:34 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 121FCXNr088458;
        Mon, 1 Mar 2021 09:12:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614611553;
        bh=2MPfcQpTQdBTcx5ImbyzraUgAKoO1YRp6KeCLTSx6HI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=otYKttrQgwGMM3wvomMMg0qlnHvHZcaUQX7G4C4gZStdFcskxtTx3TPR0DF8HHaW7
         +c6DkvtoP5weKgZ95czmYTkMfrdZDu/fcrDwgSkY9ZD9yOzBWaW++ySAUfJx7KicGE
         vEgyF41w3OXQLfe+lVUyZoHAEEGxwN/4/YfcDkjM=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 121FCXDj010672
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 1 Mar 2021 09:12:33 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Mar
 2021 09:12:32 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Mar 2021 09:12:33 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 121FCWRY018901;
        Mon, 1 Mar 2021 09:12:32 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>
CC:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>,
        <devicetree@vger.kernel.org>, Kishon Vijay Abraham <kishon@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>
Subject: Re: [PATCH v4 0/5] arm64: Initial support for Texas Instruments AM642 Platform
Date:   Mon, 1 Mar 2021 09:12:31 -0600
Message-ID: <161461151747.6317.11113205773932419500.b4-ty@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210226144257.5470-1-d-gerlach@ti.com>
References: <20210226144257.5470-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 26 Feb 2021 08:42:52 -0600, Dave Gerlach wrote:
> This is v4 of the series to add initial support for the latest new SoC,
> AM642, from Texas Instruments. Additional detail can be found in the
> patch descriptions, also see AM64X Technical Reference Manual (SPRUIM2,
> Nov 2020) for further details: https://www.ti.com/lit/pdf/spruim2
> 
> This version contains a few minor fixes from v3:
> 
> [...]

Hi Dave Gerlach,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/5] dt-bindings: arm: ti: Add bindings for AM642 SoC
      commit: 0278277fb65ec8c44240d6a8fce553c3dadd8c96
[2/5] dt-bindings: pinctrl: k3: Introduce pinmux definitions for AM64
      commit: 05a5095d6fd45c0835a3094ff7f41d95da04f278
[3/5] arm64: dts: ti: Add support for AM642 SoC
      commit: 2560bb56251d3d65c5b353ad7f92c51ebd6d2bed
[4/5] arm64: dts: ti: k3-am64-main: Enable DMA support
      commit: 926c9cab8221eae6f2246adbbe94ebbaad014785
[5/5] arm64: dts: ti: Add support for AM642 EVM
      commit: 8b12ce52b0c6a2fd7a17bbf51cafe90de94174ac


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

