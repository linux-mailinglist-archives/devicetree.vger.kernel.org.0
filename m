Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 522D22C7792
	for <lists+devicetree@lfdr.de>; Sun, 29 Nov 2020 06:03:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725616AbgK2FBC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Nov 2020 00:01:02 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:47122 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725468AbgK2FBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Nov 2020 00:01:02 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ASDN0HP102933;
        Sat, 28 Nov 2020 07:23:00 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606569780;
        bh=J4Dhp5ZoR0ZMpuE4l2vKB9kELvWS8D0cTSjkX7ZEpqg=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=n9kiRiD/b9/aLBUfj7Wx5wOSeB3Se0v5FkreouV07lUP8T8NJqP9RlePbg8PD77YU
         RvhsRvVEnzwmWcuS7UPFjC7iczTHwe99h5lVZLxu24gPCOKj1VZrHJIgOK86L4dRcn
         DxgrTQTQzpPTNh9i8+H5W+9VrnOk9Gk/mHwECQdA=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ASDN05j107965
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 28 Nov 2020 07:23:00 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 28
 Nov 2020 07:22:59 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 28 Nov 2020 07:22:59 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ASDMxpe092835;
        Sat, 28 Nov 2020 07:22:59 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Sekhar Nori <nsekhar@ti.com>
CC:     Nishanth Menon <nm@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: ti: k3: squelch warning about lack of #interrupt-cells
Date:   Sat, 28 Nov 2020 07:22:58 -0600
Message-ID: <160656975481.3050.4853953557822475795.b4-ty@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201127210128.9151-1-nsekhar@ti.com>
References: <20201127210128.9151-1-nsekhar@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 28 Nov 2020 02:31:28 +0530, Sekhar Nori wrote:
> There are couple of places where INTA interrupt controller
> lacks #interrupt-cells property. This leads to warnings of
> the type:
> 
> arch/arm64/boot/dts/ti/k3-j721e-main.dtsi:147.51-156.5: Warning (interrupt_provider): /bus@100000/main-navss/interrupt-controller@33d00000: Missing #interrupt-cells in interrupt provider
> 
> when building TI device-tree files with W=2 warning level.
> Fix these.

Hi Sekhar Nori,

I have applied the following to branch ti-k3-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3: squelch warning about lack of #interrupt-cells
      commit: 15ffd94a904bafcce6dd4babf8f26bd8fe965bff


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

