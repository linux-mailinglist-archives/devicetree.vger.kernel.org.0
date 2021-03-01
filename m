Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2FE932819F
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 16:01:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234880AbhCAPAG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 10:00:06 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:59330 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236670AbhCAO74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 09:59:56 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 121EwIpg126564;
        Mon, 1 Mar 2021 08:58:18 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614610698;
        bh=ibprOMhT5Q8OKy8/TRn5EiiHy6wBYG5CX6utWi+4Dzg=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=wIzvVznVEOZn6ItPAWGkJTV7uqKjMVrFxdcXIt+aqDmHnf1Mx9O6+gNQwaXcdgMQR
         jq+5BjfdRgAaA5pRY0RevJ95fW48bSuKCDei2SLPEQiYfp9RGkPS3Xde9GE9SAuEMr
         g8GU5rTKKHpNbda5lplSFb3INtvv88jG5HE9MUxI=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 121EwIlx010190
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 1 Mar 2021 08:58:18 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Mar
 2021 08:58:17 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Mar 2021 08:58:17 -0600
Received: from [10.250.232.211] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 121EwE2R023661;
        Mon, 1 Mar 2021 08:58:14 -0600
Subject: Re: [PATCH v3 0/2] arm64: Initial support for Texas Instruments AM642
 SK
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>
References: <20210226184251.26451-1-lokeshvutla@ti.com>
From:   Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <16f7846f-f404-2493-c2f3-92df108f39cd@ti.com>
Date:   Mon, 1 Mar 2021 20:28:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210226184251.26451-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27/02/21 12:12 am, Lokesh Vutla wrote:
> AM642 StarterKit (SK) board is a low cost, small form factor board
> designed for TI’s AM642 SoC. This series introduces basic support for
> AM642 SK.
> 
> * Depends on Dave's series for adding AM642 SoC:
> https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=439039
> 
> Boot log: https://pastebin.ubuntu.com/p/TKPbkwdBxH/

Kernel Boot Log: https://pastebin.ubuntu.com/p/vYSm2XnjKM/

Tested-by: Kishon Vijay Abraham I <kishon@ti.com>

> 
> Changes since v2:
> - Added Reviewed-by tag from Rob
> - Rebased on top of latest master 
> 
> v2: https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210202081530.14984-1-lokeshvutla@ti.com/ 
> v1: https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210121143924.26213-1-lokeshvutla@ti.com/
> 
> Lokesh Vutla (2):
>   dt-bindings: arm: ti: Add bindings for AM642 SK
>   arm64: dts: ti: Add support for AM642 SK
> 
>  .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
>  arch/arm64/boot/dts/ti/Makefile               |   2 +
>  arch/arm64/boot/dts/ti/k3-am642-sk.dts        | 173 ++++++++++++++++++
>  3 files changed, 176 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-sk.dts
> 
