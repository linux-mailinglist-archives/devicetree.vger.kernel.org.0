Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57FE22C84F7
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 14:19:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726137AbgK3NTa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 08:19:30 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59878 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726074AbgK3NTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 08:19:30 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AUDIaNL107061;
        Mon, 30 Nov 2020 07:18:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606742316;
        bh=XHKWNZvELsjQvE6MzWRmdM5AONf65tVnCalHFRV4zzU=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=cR4L6y5MzyibsgpGIRcNJkX4sBISsl76XNYbNYUNaWbTm7Qeit73fcNlrWLUDieWQ
         gIz0N7teez47otALsfOmci6ykxr9Of8A5MUx8wizRQkAHQ0mTenCaXB7OdzJFIXjeq
         gd9fBrL78gDxp5jZxBwAtnQk0fn9U55CHVAXUov4=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AUDIaU0055502
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 30 Nov 2020 07:18:36 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 30
 Nov 2020 07:18:36 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 30 Nov 2020 07:18:35 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AUDIZ6q030570;
        Mon, 30 Nov 2020 07:18:35 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Sekhar Nori <nsekhar@ti.com>
CC:     Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Faiz Abbas <faiz_abbas@ti.com>
Subject: Re: [PATCH v3 0/2] arm64: dts: ti: k3-j721e: MMC/SD higher speed modes support
Date:   Mon, 30 Nov 2020 07:18:35 -0600
Message-ID: <160674229339.20892.14299676609206500300.b4-ty@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201129175223.21751-1-nsekhar@ti.com>
References: <20201129175223.21751-1-nsekhar@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 29 Nov 2020 23:22:21 +0530, Sekhar Nori wrote:
> This is repost of Faiz's patches adding higher speed modes
> for J721E, originally posted here:'
> 
> https://lore.kernel.org/lkml/20201001190541.6364-1-faiz_abbas@ti.com/
> 
> Dependencies are resolved now, and patches rebased to latest linux-next.
> 
> [...]

Hi Sekhar Nori,

I have applied the following to branch ti-k3-next on [1].
Thank you!

[1/2] arm64: dts: ti: k3-j721e-main: Add output tap delay values
      commit: 09ff4e90e041485f7562d9baec340a9824af4f45
[2/2] arm64: dts: ti: k3-j721e-common-proc-board: Add support for SD card UHS modes
      commit: cd48ce86a4d0c1ffec86aa46a26da993c9af5f53


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

