Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D8D604A438
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 16:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728881AbfFROmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 10:42:39 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:44276 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727105AbfFROmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 10:42:38 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IEgY5v022870;
        Tue, 18 Jun 2019 09:42:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1560868954;
        bh=pWglah+Tv7nXb4I+ZrEjywRNFMByK/cKx6+ezIDQtvc=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=B7njUQmqzowBgymGgw/cPkpBrchc5GwZ2P8LqmzKBCyaxtwhvnNiLIgfgERhr/j51
         2j3sCM2LmwFZ4/W66El9v5Y/YJcgbbn2/D2+3+mkCegUv49RuDAaCpYHexvYtaPIx0
         FZBrkxY3CTuR3ZWBaMpl3oK448X0IiU1ya1UH6Wo=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IEgY25042753
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 18 Jun 2019 09:42:34 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 09:42:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 09:42:33 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IEgVo6017641;
        Tue, 18 Jun 2019 09:42:32 -0500
Subject: Re: [PATCH 0/2] arm64: dts: ti: k3-j721e: Add interrupt controller
 nodes
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Suman Anna <s-anna@ti.com>
References: <20190614145001.9598-1-lokeshvutla@ti.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <d1f99db5-0d51-25f5-89b5-e7beb2089261@ti.com>
Date:   Tue, 18 Jun 2019 17:42:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190614145001.9598-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2019 17:49, Lokesh Vutla wrote:
> This series adds dt nodes for interrupt controllers available in
> J721E SoC.
> 
> Depends on the main nav intr node posted by Suman:
> https://patchwork.kernel.org/patch/10969399/
> 
> Lokesh Vutla (2):
>    arm64: dts: ti: k3-j721e: Add interrupt controllers in main domain
>    arm64: dts: ti: k3-j721e: Add interrupt controllers in wakeup domain
> 
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 23 +++++++++++++++++++
>   .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      | 11 +++++++++
>   2 files changed, 34 insertions(+)
> 

Queuing both patches towards 5.3, thanks.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
