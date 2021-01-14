Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0978D2F63A8
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 16:05:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728523AbhANPFN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 10:05:13 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:60534 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727460AbhANPFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 10:05:13 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10EF3V2k062896;
        Thu, 14 Jan 2021 09:03:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1610636611;
        bh=vXgCIfGPafr2DcSWpOFQAhx6vGscVUH6lEVz5/MlPpQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=ZbeptpEXi0ucePeZZBvmJah2XgSEBXks3aow0RDpKZIo4106UUXcfKpcyjrZ2egBY
         e7LqsrohEzQpCBxZDkH1uyleC40ViLuaAyxNyQI9NtTDBL72UJg27LUY/fjmomc2pz
         jjpWIJDAsGil7kWQOuAfNmRu9LJm4x0zNv28GtiI=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10EF3Vql096669
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 14 Jan 2021 09:03:31 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 Jan 2021 09:03:31 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 Jan 2021 09:03:31 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10EF3VYg091219;
        Thu, 14 Jan 2021 09:03:31 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Nishanth Menon <nm@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v2 0/3] Add R5F nodes on TI K3 J7200 SoCs
Date:   Thu, 14 Jan 2021 09:03:29 -0600
Message-ID: <161063658083.30539.12739552045443599349.b4-ty@ti.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111184554.6748-1-s-anna@ti.com>
References: <20210111184554.6748-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Jan 2021 12:45:51 -0600, Suman Anna wrote:
> This is v2 of the R5F DT node patches, and is a minor revision of the
> previous series [1] with couple of patches squashed in. There is no
> change in overall delta. Please see the v1 cover-letter for details
> and the individual patches for exact delta.
>
> regards
> Suman
>
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-next on [1].
Thank you!

[1/3] arm64: dts: ti: k3-j7200: Add R5F cluster nodes
      commit: eb6f3655d3ed4ee093b484b7a7246a61ae2bc30f
[2/3] arm64: dts: ti: k3-j7200-som-p0: Add mailboxes to R5Fs
      commit: 7a3b0c2ad3b0cfac5cb8820b8961f0956ff863fb
[3/3] arm64: dts: ti: k3-j7200-som-p0: Add DDR carveout memory nodes for R5Fs
      commit: c8a9c85d4e702f8c81c08f630f2f30901af5ba16


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

