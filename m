Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 14648373F4
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 14:17:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726777AbfFFMRq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 08:17:46 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:37732 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726717AbfFFMRq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 08:17:46 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56CHgRV114343;
        Thu, 6 Jun 2019 07:17:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559823462;
        bh=H7Du1MyZ+7sjHGicCkJ8eU3MECXzTdUKJREaqOwZpQ0=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=i7Fbz9mguwm+vXE5I2Da4CU/vPxoxWO1ps783Av3rTw+gkAIa/lt74QKShJujeEkM
         vVowYnTj4NfUF4wCG/8rvHZOfH3qndd/cbrO17HEcxCeMhpJoyqu71mO74TTVFmIM7
         AS1pKcDoIMRN0h5PYwAh1gau9RfwLIu6o+8mmLRs=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56CHgRf082775
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 6 Jun 2019 07:17:42 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 07:17:41 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 07:17:41 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56CHcb7080322;
        Thu, 6 Jun 2019 07:17:40 -0500
Subject: Re: [PATCH 0/3] arm64: dts: ti: k3-am654: Add interrupt controller
 nodes
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>
References: <20190502094119.16350-1-lokeshvutla@ti.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <4283c4e7-b3ef-a4b6-86c0-5a961dbf42c7@ti.com>
Date:   Thu, 6 Jun 2019 15:17:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502094119.16350-1-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2019 12:41, Lokesh Vutla wrote:
> This series adds dt nodes for interrupt controllers available in
> AM654 SoC.
> 
> Lokesh Vutla (3):
>    arm64: dts: ti: k3-am654: Update compatible for dmsc
>    arm64: dts: ti: k3-am654: Add interrupt controllers in main domain
>    arm64: dts: ti: k3-am654: Add interrupt controllers in wakeup domain
> 
>   arch/arm64/boot/dts/ti/k3-am65-main.dtsi   | 41 ++++++++++++++++++++++
>   arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 13 ++++++-
>   2 files changed, 53 insertions(+), 1 deletion(-)
> 

Queued up towards 5.3, thanks.

Also, pushed to am654-next for people that may want to post patches that 
depend on this series.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
