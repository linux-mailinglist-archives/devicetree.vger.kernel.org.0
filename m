Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59D1B2B0B96
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 18:49:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726102AbgKLRs7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 12:48:59 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51302 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726041AbgKLRs7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 12:48:59 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ACHmud9054053;
        Thu, 12 Nov 2020 11:48:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1605203336;
        bh=3xb/cdcMpvYizGJpBxPawoAlx83x4mCKRNcQzqM+Hqs=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=y9mTH0E2HaSZi+lbyn22aSrmnip2X5eN57WQIWJIKdqwS/cFNpokuqWgbrweqNIh6
         uogcfPhiPz0/RmJI4KUYAFbIE3H0IKeND4tDI9mkwLJLFkLYuUFEj5AVATknv11GGw
         kPm8wbib/d5RYJ7rFABtpnbWS4wHtstG+t1r5+Sc=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ACHmtcw049058
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 12 Nov 2020 11:48:55 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 12
 Nov 2020 11:48:55 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 12 Nov 2020 11:48:55 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ACHmtR7039189;
        Thu, 12 Nov 2020 11:48:55 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>, Tero Kristo <t-kristo@ti.com>
CC:     Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH 0/8] Add R5F nodes on TI K3 AM65x and J721E SoCs
Date:   Thu, 12 Nov 2020 11:48:53 -0600
Message-ID: <160520312703.31666.11099218646919403503.b4-ty@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201029033802.15366-1-s-anna@ti.com>
References: <20201029033802.15366-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 28 Oct 2020 22:37:54 -0500, Suman Anna wrote:
> The TI K3 R5F remoteproc driver and bindings were merged into 5.10-rc1,
> and this series adds the follow-on base dt nodes for the R5F remote
> processors on TI K3 AM65x and J721E SoCs. Additional memory nodes were
> also added to boot these processors successfully on applicable TI K3
> AM65x and J721E EVM boards. The series uses previously accepted mailbox
> nodes.
> 
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/8] arm64: dts: ti: k3-am65-mcu: Add MCU domain R5F cluster node
      commit: 5bb9e0f6e8505e31159963150104569d9b8a8911
[2/8] arm64: dts: ti: k3-am654-base-board: Add mailboxes to R5Fs
      commit: 10332cd6bcf287e22dac875d121b73adb762f96b
[3/8] arm64: dts: ti: k3-am654-base-board: Add DDR carveout memory nodes for R5Fs
      commit: 954ec5139db091ff51cec4bf57c42f9deebc8747
[4/8] arm64: dts: ti: k3-am654-base-board: Reserve memory for IPC between R5F cores
      commit: f82c5e0a8bc1311aee140bfed0888fc9a99afde0
[5/8] arm64: dts: ti: k3-j721e-mcu: Add MCU domain R5F cluster node
      commit: dd74c9459cf2c87c3143b4b9005b7c9056fccdb0
[6/8] arm64: dts: ti: k3-j721e-main: Add MAIN domain R5F cluster nodes
      commit: df445ff9de893146107d37e0cd5e542f800d9b39
[7/8] arm64: dts: ti: k3-j721e-som-p0: Add mailboxes to R5Fs
      commit: 2879b593c3784e5eafc67cae915d8b7d680455f3
[8/8] arm64: dts: ti: k3-j721e-som-p0: Add DDR carveout memory nodes for R5Fs
      commit: 0f191152bcba6758804eed4f6463f9bd32bdbfdb


Please note:
* I understand the complexity of the code requiring the split up in the
  incremental patches, so I believe it has a case for us to do the same.
* Special note on MCU R5: there are cases on J721e, J7200 and future devices
  where "device management" functionality will run on MCU R5 core 0, which
  means it is capable of running special firmware that may not respond on
  mailbox at all.. The assumption is that the driver is capable of detecting
  and handling such scenarios and this is a hardware description (as it
  should be).

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

