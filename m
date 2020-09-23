Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACC712759D8
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 16:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726621AbgIWOYn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Sep 2020 10:24:43 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:37026 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726514AbgIWOYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Sep 2020 10:24:43 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08NEOZuB115778;
        Wed, 23 Sep 2020 09:24:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600871075;
        bh=NR7f3YvJ/uN9+qYBcFSETqbzEhF0zeieYDdc9DDbwZ0=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=v82pCkxIvVGT5TSBkOaHzR9johQ7emBRXXrB9u/95Ll7eOXdhfoWbAMCBMm9cuUxI
         ws+hxurz7bfv8mszC2M/xbx99IeSWNPPm2hfuqF8GDo4Fd3bLL+UOmHArJbZoNy552
         yfkPKgRI7nHUuK/PPIe+CIKIPNB2fJGPfkOLO3cU=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08NEOY1V014192;
        Wed, 23 Sep 2020 09:24:35 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 23
 Sep 2020 09:24:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 23 Sep 2020 09:24:31 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08NEOURw054900;
        Wed, 23 Sep 2020 09:24:31 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Tero Kristo <t-kristo@ti.com>
CC:     Nishanth Menon <nm@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v4 0/5] arm64: Initial support for Texas Instrument's J7200 Platform
Date:   Wed, 23 Sep 2020 09:24:29 -0500
Message-ID: <160087076010.3924.5778122108206196076.b4-ty@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200914162231.2535-1-lokeshvutla@ti.com>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Sep 2020 21:52:26 +0530, Lokesh Vutla wrote:
> This series adds initial support for latest new SoC, J7200, from Texas Instruments.
> 
> The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
> It is targeted for for automotive gateway, vehicle compute systems,
> Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
> The SoC aims to meet the complex processing needs of modern embedded products.
> 
> [...]

Hi Lokesh Vutla,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/5] arm64: dts: ti: Makefile: Use ARCH_K3 for building dtbs
      commit: 21bb8c83c94923f1f996e1cb57c4744ea1163eed
[2/5] dt-bindings: arm: ti: Convert K3 board/soc bindings to DT schema
      commit: 66e06509aa37bcf089ce341ec9c027922f105155
[3/5] dt-bindings: arm: ti: Add bindings for J7200 SoC
      commit: 214b0eb35e55d9d726ad02ffec62f087c09864fb
[4/5] arm64: dts: ti: Add support for J7200 SoC
      commit: d361ed88455feae5f7e555828b0d8104588cc53d
[5/5] arm64: dts: ti: Add support for J7200 Common Processor Board
      commit: 26bd3f312c2ece0e8860c80fc64a112df5a620c6
	NOTE: I have edited the patch to address the trivial comment

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

