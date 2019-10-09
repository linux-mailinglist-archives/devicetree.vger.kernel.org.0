Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4571CD1982
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 22:19:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729865AbfJIUTq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 16:19:46 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:41398 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728804AbfJIUTq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 16:19:46 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x99KJdVu057004;
        Wed, 9 Oct 2019 15:19:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1570652379;
        bh=DWPHmjHxFw0qJYZqM+VpHTwDZP572BNrMME5vOQBFII=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=hcFC6qm5CNMgM+2QtRrI+MOfbRP7U9f+0IuiEa1F4XzTra+0WP9Kjr12ykMYoPRqV
         HUEydWWxqzI79XwoMnYjp87iaLzqkEO/KNBbwQdZHTYsb8M1Lysz+0a16LopuvHZGM
         CWJcKspTkennhC7o94Cws4qun3Oy2raLFDU6CIyI=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x99KJdVc115216
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 9 Oct 2019 15:19:39 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 9 Oct
 2019 15:19:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 9 Oct 2019 15:19:39 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x99KJdCE104640;
        Wed, 9 Oct 2019 15:19:39 -0500
Subject: Re: [PATCH v2 0/4] Add Mailbox nodes for TI K3 AM65x & J721E SoCs
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190725001020.23781-1-s-anna@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <e27abe06-2df0-fdae-6fe5-080a40ee3bdd@ti.com>
Date:   Wed, 9 Oct 2019 15:19:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190725001020.23781-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero,

On 7/24/19 7:10 PM, Suman Anna wrote:
> Hi Tero, Nishanth,
> 
> The following series is a revised version of the series [1] that adds
> the Mailbox DT nodes and the sub-mailboxes used to communicate between
> the main MPU processor running Linux and the various R5F and DSP remote
> processors present on the TI K3 AM65x and J721E SoC families. Patches
> are based on v5.3-rc1 + the HwSpinlock DT node series [2], and are
> intended for the 5.4 merge window. Functionality is verified using a
> out-of-tree unit-test module and some additional loopback test nodes
> available here [3] for reference.
> 
> Changes in v2:
>  - All clusters are enabled by default in base dtsi files
>  - The sub-mailboxes are moved to the actual board dts files
>  - Unused clusters disabled in the board dts files

Looks like you missed picking this series up for 5.4. Can you please
pick this up for 5.5? Let me know if you want me to repost the series,
the last patch has a conflict when applying on top of 5.4-rc1 due to
some additional nodes in the board dts file.

regards
Suman

> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/cover/11053401/
> [2] https://patchwork.kernel.org/cover/11053311/
> [3] https://github.com/sumananna/mailbox/commits/mbox/test/5.3-rc1-k3-v2
> 
> Suman Anna (4):
>   arm64: dts: ti: k3-am65-main: Add mailbox cluster nodes
>   arm64: dts: ti: k3-am65-base-board: Add IPC sub-mailbox nodes for R5Fs
>   arm64: dts: ti: k3-j721e-main: Add mailbox cluster nodes
>   arm64: dts: ti: k3-j721e-common-proc-board: Add IPC sub-mailbox nodes
> 
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 108 ++++++++++++++++++
>  .../arm64/boot/dts/ti/k3-am654-base-board.dts |  58 ++++++++++
>  .../dts/ti/k3-j721e-common-proc-board.dts     |  93 +++++++++++++++
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 108 ++++++++++++++++++
>  4 files changed, 367 insertions(+)
> 

