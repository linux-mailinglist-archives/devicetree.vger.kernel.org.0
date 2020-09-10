Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75DB3264B58
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 19:33:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727019AbgIJRda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 13:33:30 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:51346 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726005AbgIJRXx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 13:23:53 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08AHNa85067378;
        Thu, 10 Sep 2020 12:23:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599758616;
        bh=mKJeUaEE88L34KpZIR8PYe0ce/BfI23fWM9rlX3WJaY=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=dO62BYSIdJW94ic/6+7j/aC9R8PVZjrZB12qgjHBYBgTQ4zU7rPtDYUT1GTi3j5FF
         5niLqxwNP6EydbdLc+/IE8QP8YTwQkjsQPO0OHOVATxt7UJA3e+AurCWH+Uu9fqPdn
         Gw2k0/G9aWKAN1Zl+wntlleIEddKGWM/6lThSLlg=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08AHNa5X035523
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 10 Sep 2020 12:23:36 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 12:23:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 12:23:36 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08AHNZb3093440;
        Thu, 10 Sep 2020 12:23:36 -0500
Date:   Thu, 10 Sep 2020 12:23:35 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 5/5] arm64: dts: ti: Add support for J7200 Common
 Processor Board
Message-ID: <20200910172335.n4nln7wnlupnpfkw@akan>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-6-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20200908162252.17672-6-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21:52-20200908, Lokesh Vutla wrote:
> Add support for J7200 Common Processor Board.
> The EVM architecture is very similar to J721E as follows:
> 
> +------------------------------------------------------+
> |   +-------------------------------------------+      |
> |   |                                           |      |
> |   |        Add-on Card 1 Options              |      |
> |   |                                           |      |
> |   +-------------------------------------------+      |
> |                                                      |
> |                                                      |
> |                     +-------------------+            |
> |                     |                   |            |
> |                     |   SOM             |            |
> |  +--------------+   |                   |            |
> |  |              |   |                   |            |
> |  |  Add-on      |   +-------------------+            |
> |  |  Card 2      |                                    |    Power Supply
> |  |  Options     |                                    |    |
> |  |              |                                    |    |
> |  +--------------+                                    | <---
> +------------------------------------------------------+
>                                 Common Processor Board
> 
> Common Processor board is the baseboard that has most of the actual
> connectors, power supply etc. A SOM (System on Module) is plugged on
> to the common processor board and this contains the SoC, PMIC, DDR and
> basic high speed components necessary for functionality.
> 
> Note:
> * The minimum configuration required to boot up the board is System On
>   Module(SOM) + Common Processor Board.
> * Since there is just a single SOM and Common Processor Board, we are
>   maintaining common processor board as the base dts and SOM as the dtsi
>   that we include. In the future as more SOM's appear, we should move
>   common processor board as a dtsi and include configurations as dts.
> * All daughter cards beyond the basic boards shall be maintained as
>   overlays.
> 
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile               |  2 +
>  .../dts/ti/k3-j7200-common-proc-board.dts     | 64 +++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 29 +++++++++
>  3 files changed, 95 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi

This looks fine to me.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
