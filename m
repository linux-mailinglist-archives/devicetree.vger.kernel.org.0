Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A83E238D2B2
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 02:54:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230391AbhEVA4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 20:56:10 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:39244 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230280AbhEVA4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 20:56:10 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14M0sbQA043789;
        Fri, 21 May 2021 19:54:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621644877;
        bh=q2AP0DxblmdyIE35CSF2BFdrum7HkCUYw+TrB1ssjqg=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=dekudFpPI00uCk27IpRQgy570IfKq8Kpwz2OQpmaHx9CLsRMW2lFLCDw4N3n7pLXb
         Mk+OAtxclkZ7bu9oVBWd7LP1yWkOMqdu25mVNHAUk5wC7IVHbIHCNFwNGVsoM2VoiA
         7tAk7k2QYFzA5UY+USqiO9RkG030u9CbFpgweu8Y=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14M0sbJq045227
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 21 May 2021 19:54:37 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 21
 May 2021 19:54:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 21 May 2021 19:54:37 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14M0savg047359;
        Fri, 21 May 2021 19:54:37 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Jan Kiszka <jan.kiszka@siemens.com>, Suman Anna <s-anna@ti.com>
CC:     Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65-iot2050-common: Disable mailbox nodes
Date:   Fri, 21 May 2021 19:54:36 -0500
Message-ID: <162164485436.24134.9425462741964160380.b4-ty@ti.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210514212016.3153-1-s-anna@ti.com>
References: <20210514212016.3153-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 14 May 2021 16:20:16 -0500, Suman Anna wrote:
> There are no sub-mailbox devices defined currently for both the
> IOT2050 boards. These are usually dictated by the firmwares running
> on the R5F remote processors and the applications they provide.
> Defining the actual sub-mailboxes will also dictate the interrupts
> the clusters will use for interrupts on the Cortex-A53 cores.
>
> Disable all of the Mailbox clusters until the sub-mailboxes are
> defined and used. This fixes the warnings around the missing
> interrupts with the upcoming conversion of the OMAP Mailbox binding
> to YAML format.

Hi Suman Anna,

I have applied the following to branch ti-k3-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-am65-iot2050-common: Disable mailbox nodes
      commit: 547be9a05dc825fbbaeb970ec9e2313a49bf586f


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

