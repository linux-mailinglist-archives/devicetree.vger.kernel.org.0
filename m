Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DABE349783
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 18:02:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbhCYRBz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 13:01:55 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:37854 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229893AbhCYRBe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 13:01:34 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12PH1Rkj023418;
        Thu, 25 Mar 2021 12:01:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616691687;
        bh=iOXa94N/lcMrhiiEn2gZZ8IlLQcRwIJJ4yrJ0QTa8qE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=BC0jl3aC7zGCMRqfW3EIRCDYjqKUgE39Z+XEilefhdyFyO6PHgyW3wM1nRnJMz/zE
         aAB4kMOeRSZaZImu7+HEsaa7ouZny9RCQzyakbQS9tg0rZ/e05zrz3QWm2AuC2uwlZ
         NLmgr9bINPi7x2niQ2tGmLa1SwHQps78ypnudN94=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12PH1RWW049348
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 25 Mar 2021 12:01:27 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 25
 Mar 2021 12:01:26 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 25 Mar 2021 12:01:26 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12PH1Q2A019358;
        Thu, 25 Mar 2021 12:01:26 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tero Kristo <kristo@kernel.org>, Suman Anna <s-anna@ti.com>
CC:     Nishanth Menon <nm@ti.com>, Gowtham Tammana <g-tammana@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 0/3] AM64x HwSpinlock and Mailbox DT nodes
Date:   Thu, 25 Mar 2021 12:01:25 -0500
Message-ID: <161669163053.31495.2326767187646410972.b4-ty@ti.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210322185430.957-1-s-anna@ti.com>
References: <20210322185430.957-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021 13:54:27 -0500, Suman Anna wrote:
> The following is a minor revision of the HwSpinlock and Mailbox DT nodes
> series [1] for AM64x SoCs on both AM64x-EVM and AM64x-SK boards. The main
> change is the squashing of the individual board dts patches into a single
> patch as per your request, and rebasing on your current latest ti-k3-dts-next
> branch HEAD commit e4e4e89482ea ("arm64: dts: ti: k3-am64-evm/sk: Add OSPI
> flash DT node"). I have also picked up Gowtham's Reviewed-by tags.
> 
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/3] arm64: dts: ti: k3-am64-main: Add hwspinlock node
      commit: 8248d5b3249c8a361c6906e73513769064854252
[2/3] arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
      commit: ef1525761477c18b6b8fd420abb712e38492b480
[3/3] arm64: dts: ti: k3-am642-evm/sk: Add IPC sub-mailbox nodes
      commit: 7dd847523ed527cc8e90ca670675ea63d6239f64


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

