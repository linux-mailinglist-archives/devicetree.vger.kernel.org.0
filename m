Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F24922FF2BC
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 19:03:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732813AbhAUPnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:43:43 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:46586 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733247AbhAUPnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:43:17 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFfcXV077244;
        Thu, 21 Jan 2021 09:41:38 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611243698;
        bh=x6+UgMlLetJPaXvFSXB4EZ9PLh2N1Yul4PCPiVClU70=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=GumhSbrUqF6735KjbSBOHVfBu9/cI7J2hvQEySdIc9Q2kZBt4/uV5rVDZ7qQVWuXY
         9mo6LJM85zUSSMS2BX7/luhwWELaDXJ9meJx5j9cw5Ort1QtNDjxZ4ihuBN3F3Nt/1
         bTMJuFRbHI8BkYVwqvIC9tPJItFCKNgJisht5Xcw=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFfcJJ093356
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:41:38 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:41:37 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:41:37 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFfXbG129373;
        Thu, 21 Jan 2021 09:41:34 -0600
Subject: Re: [PATCH 0/2] arm64: Initial support for Texas Instruments AM642 SK
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>
References: <20210121143924.26213-1-lokeshvutla@ti.com>
From:   Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <7b2f5b91-7a08-9ad0-fae4-473639f65508@ti.com>
Date:   Thu, 21 Jan 2021 21:11:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121143924.26213-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/01/21 8:09 pm, Lokesh Vutla wrote:
> AM642 StarterKit (SK) board is a low cost, small form factor board
> designed for TI’s AM642 SoC. This series introduces basic support for
> AM642 SK.
> 
> Depends on Dave's series for adding AM642 SoC:
> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=418539

Tested this with MMC rootfs after applying
https://lore.kernel.org/linux-devicetree/20210113115908.3882-3-a-govindraju@ti.com/

Logs: https://pastebin.ubuntu.com/p/xGRMjXb5q5/

Tested-by: Kishon Vijay Abraham I <kishon@ti.com>

Thanks
Kishon

> 
> Lokesh Vutla (2):
>   dt-bindings: arm: ti: Add bindings for AM642 SK
>   arm64: dts: ti: Add support for AM642 SK
> 
>  .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
>  arch/arm64/boot/dts/ti/Makefile               |   3 +-
>  arch/arm64/boot/dts/ti/k3-am642-sk.dts        | 145 ++++++++++++++++++
>  3 files changed, 148 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-sk.dts
> 
