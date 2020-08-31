Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F25B258055
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 20:08:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726929AbgHaSIv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 14:08:51 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:56404 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729472AbgHaSIV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 14:08:21 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 07VI8HAF094391;
        Mon, 31 Aug 2020 13:08:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1598897297;
        bh=XKwif/t4YcOKrMQqOHdEhp8yvpBOEJdx3YvaGfE99xI=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=I8O484J1kYBvwxzSN14to7YxL9JmLOopEvGCFZirNb4YgUuIL6opMtnJaAbjYLt7M
         POVETDQCQeUjXcxuKUKwdTKPYDO98uTRwnjjHSt3dsPdkjvAh5LeUywtBEEWBddNiJ
         zOyzsJFZBSbMeiz3TkYo6DYw8UxBud/pIk0nWCe0=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 07VI8HxX053903
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 31 Aug 2020 13:08:17 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 31
 Aug 2020 13:08:16 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 31 Aug 2020 13:08:16 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07VI8G42085672;
        Mon, 31 Aug 2020 13:08:16 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Suman Anna <s-anna@ti.com>
CC:     Nishanth Menon <nm@ti.com>, <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 0/8] Add C66x & C71x DSP nodes on J721E SoCs
Date:   Mon, 31 Aug 2020 13:08:15 -0500
Message-ID: <159887493854.19735.39662308799452025.b4-ty@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825172145.13186-1-s-anna@ti.com>
References: <20200825172145.13186-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Aug 2020 12:21:37 -0500, Suman Anna wrote:
> The following is a revised version of the series [1] that adds the base
> dt nodes for the 2 C66x and 1 C71x DSP remote processors present in MAIN
> domain on J721E SoCs, and the required nodes to boot these successfully
> on J721E EVM board. It addresses the cleanup comments from you.
> 
> The patches are based on top of the pending ABI 3.0 pull-request [2] and
> I have used your temporary staging branch [3] as the baseline.
> 
> [...]

Hi Suman Anna,

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/8] arm64: dts: ti: k3-j721e-som-p0: Move mailbox nodes from board dts file
      commit: 74b5742b59b19f4ae9c53ae719161928d9768879
[2/8] arm64: dts: ti: k3-j721e-main: Add C66x DSP nodes
      commit: eb9a2a637ae5b23d7881f28fb83d11c88a371229
[3/8] arm64: dts: ti: k3-j721e-som-p0: Add mailboxes to C66x DSPs
      commit: a55babbf00d71f285bbd52433a859862cc3223fb
[4/8] arm64: dts: ti: k3-j721e-som-p0: Add DDR carveout memory nodes for C66 DSPs
      commit: e379ba840a7e2c8fb275722226154339077b8f37
[5/8] arm64: dts: ti: k3-j721e-main: Add C71x DSP node
      commit: 804a4cc7fe3cc7207b25c63f21ea82f1b77d19ae
[6/8] arm64: dts: ti: k3-j721e-som-p0: Add mailboxes to C71x DSP
      commit: cf53928fa0d9120d9c5336504e1c836e453f446a
[7/8] arm64: dts: ti: k3-j721e-som-p0: Add DDR carveout memory nodes for C71x DSP
      commit: 1939d37f94937cf5082ee2612b76106cb3d90978
[8/8] arm64: dts: ti: k3-j721e-som-p0: Reserve memory for IPC between RTOS cores
      commit: 67cfbb62132e4210b4c4785b0ca1fbe4cafb7c4d

[1] git://git.kernel.org/pub/scm/linux/kernel/git/nmenon/linux.git
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D

