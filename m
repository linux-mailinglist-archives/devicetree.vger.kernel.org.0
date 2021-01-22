Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A443300373
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 13:50:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726739AbhAVMuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 07:50:00 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59020 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726579AbhAVMt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 07:49:59 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10MCn5Pl080707;
        Fri, 22 Jan 2021 06:49:05 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611319745;
        bh=r+Xc54hnzt0PojdqoqVpWanpF4+nvNDLjwFQ4ikTjXA=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=AhCRmqUDh+xIEh63gYsbGv7aSaoXsHVgpiN+1yvRxFGB1MiJxeK+mUZYZjtCNBXHd
         IkHP8ckc/2InmKYHQJg5oQ4i19C6w9V9T7F1OF9zWevOCaN8vXs9sV/CUgGY2VcHgB
         Co8LbWto02hbaKGhwQUxrddnVh00/iKxbox/yrKE=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10MCn5LG006460
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 22 Jan 2021 06:49:05 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 Jan 2021 06:49:04 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 Jan 2021 06:49:04 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10MCn4oW057379;
        Fri, 22 Jan 2021 06:49:04 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Nishanth Menon <nm@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4] arm64: dts: ti: k3: squelch warnings regarding no #address-cells for interrupt-controller
Date:   Fri, 22 Jan 2021 06:49:04 -0600
Message-ID: <161131973654.21299.8023411678794984222.b4-ty@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121060305.29133-1-lokeshvutla@ti.com>
References: <20210121060305.29133-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Jan 2021 11:33:05 +0530, Lokesh Vutla wrote:
> With dtc 1.6.0, building TI device-tree files with W=2 results in warnings
> like below for all interrupt controllers.
> 
> /bus@100000/bus@30000000/interrupt-controller1: Missing #address-cells in interrupt provider
> 
> Fix these by adding #address-cells = <0>; for all interrupt controllers in
> TI device-tree files. Any other #address-cells value is really only needed
> if interrupt-map property is being used (which is not the case for existing
> TI device-tree files)

Hi Lokesh Vutla,

I have applied the following to branch ti-k3-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3: squelch warnings regarding no #address-cells for interrupt-controller
      commit: 73d0af633c4bed02f8e71658c9e25ac8250b08c4


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

