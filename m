Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D8173281FF
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 16:15:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237001AbhCAPP1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 10:15:27 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:35444 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236937AbhCAPOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 10:14:06 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 121FDBAK003025;
        Mon, 1 Mar 2021 09:13:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614611591;
        bh=x5HSK58oashc9WJr91GZ5PykUYk4aEiUM82vLcZ7yxs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=eyVVBzr0yreRe+eGedF211eQD2/gAtBVqjn3MVUvVGd5aO6HjP9/AF/RKqysgd2/C
         OFcrJTT2ehh20V7AOlDRdgV1MPoTAiOHOoskzIXsS0elecGe7k6/hnQAmMBjr8RAdL
         RwzT4TtDaeM7Ds92Pu1NSYoGQwYphA1IS9j4LyJA=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 121FDB09080184
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 1 Mar 2021 09:13:11 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Mar
 2021 09:13:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Mar 2021 09:13:10 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 121FDAO0020400;
        Mon, 1 Mar 2021 09:13:10 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Nishanth Menon <nm@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 0/2] arm64: Initial support for Texas Instruments AM642 SK
Date:   Mon, 1 Mar 2021 09:13:09 -0600
Message-ID: <161461157011.6535.14114393931647681115.b4-ty@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210226184251.26451-1-lokeshvutla@ti.com>
References: <20210226184251.26451-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 27 Feb 2021 00:12:49 +0530, Lokesh Vutla wrote:
> AM642 StarterKit (SK) board is a low cost, small form factor board
> designed for TI’s AM642 SoC. This series introduces basic support for
> AM642 SK.
> 
> * Depends on Dave's series for adding AM642 SoC:
> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=439039
> 
> [...]

Hi Lokesh Vutla,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/2] dt-bindings: arm: ti: Add bindings for AM642 SK
      commit: 905627a3e9f48a094c7e28beba19b687e2e33d98
[2/2] arm64: dts: ti: Add support for AM642 SK
      commit: 40b329e4df7a140d678cb3ce47158267f6625d43


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

