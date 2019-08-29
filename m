Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 13055A12A7
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 09:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726417AbfH2Hbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 03:31:36 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:55162 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726075AbfH2Hbg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 03:31:36 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7T7VT2F117558;
        Thu, 29 Aug 2019 02:31:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1567063889;
        bh=6lFiBJb8Ta1sG6UfjVQLk4Nn8P/YN1U8LTVtNgQJm74=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=VpNLZD6Kuun8uGQBKui/gGiHTxeNEsv8gbwOtaLjG75BGaKpNETS9fu1OX1DeWLLi
         pDpQ2kP4ZwndnIBRSADaG84hFTGrBVJhV5ssmslv5+MSF/19MqF3XcvZzwrMveFvXk
         +MY00CkkRKAT4jonqLWKS4bcOwTKQ6AkHOcvYH6A=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7T7VT8c037199
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 29 Aug 2019 02:31:29 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 29
 Aug 2019 02:31:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 29 Aug 2019 02:31:29 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7T7VQDt009951;
        Thu, 29 Aug 2019 02:31:27 -0500
Subject: Re: [PATCH v5 0/2] arm64: dts: ti: k3: Update the power-domain cells
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190729123023.32702-1-lokeshvutla@ti.com>
 <9aa7eeaf-36ee-3d5f-9654-d8fa37577877@ti.com>
From:   Tero Kristo <t-kristo@ti.com>
Message-ID: <4dab34ae-e7cc-6c6e-4adb-3a061027ab39@ti.com>
Date:   Thu, 29 Aug 2019 10:31:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9aa7eeaf-36ee-3d5f-9654-d8fa37577877@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2019 15:48, Lokesh Vutla wrote:
> 
> 
> On 29/07/19 6:00 PM, Lokesh Vutla wrote:
>> Update the power-domains cells on all K3 based devices to reflect
>> exclusive and shared permissions in each device.
> 
> Gentle Ping on this series.
> 
> Thanks and regards,
> Lokesh
> 

This can't be merged until the driver portion is in. I could probably 
live with an immutable branch though.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
