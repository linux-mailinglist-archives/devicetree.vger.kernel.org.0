Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D140246E7A
	for <lists+devicetree@lfdr.de>; Mon, 17 Aug 2020 19:32:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389090AbgHQRcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Aug 2020 13:32:22 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:40072 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388333AbgHQRbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Aug 2020 13:31:01 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 07HHUXSI014096;
        Mon, 17 Aug 2020 12:30:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1597685433;
        bh=PG9JAeZMAXBcSpwUlCeY7pAxF4Wy5p0R1AjUx3eK6N4=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=WeYnJ04n0Qv47O96b9IS3XrOc9x7NwgtNNAq88fRiT43bym61RvvqVghhQe7zL872
         xXWK4RyRrzDMrkDU22RAHVMewfOVdyUxzS8em57wPqrsZ/HSdxoRviDISHQ3QhT+cZ
         TGDfAidHmmMJ6kSLQ6mCeviNloamPOhHOUkHBdoI=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07HHUXbj065592;
        Mon, 17 Aug 2020 12:30:33 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 17
 Aug 2020 12:30:33 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 17 Aug 2020 12:30:33 -0500
Received: from [10.24.69.198] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 07HHUSA2021627;
        Mon, 17 Aug 2020 12:30:30 -0500
Subject: Re: [PATCH v6 00/13] irqchip: ti, sci-intr/inta: Update the dt
 bindings to accept different interrupt parents
To:     Marc Zyngier <maz@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     Nishanth Menon <nm@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>
References: <20200806074826.24607-1-lokeshvutla@ti.com>
 <159761176350.113206.9390488246050456819.b4-ty@kernel.org>
From:   Sekhar Nori <nsekhar@ti.com>
Message-ID: <e5b705cd-1795-1a70-bdd8-0940a475356b@ti.com>
Date:   Mon, 17 Aug 2020 23:00:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <159761176350.113206.9390488246050456819.b4-ty@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marc,

On 8/17/20 2:33 AM, Marc Zyngier wrote:
> On Thu, 6 Aug 2020 13:18:13 +0530, Lokesh Vutla wrote:
>> 	This is continuation of the RFC patches[0] regarding the driver
>> updates to support for following interrupt parent connection:
>> - INTR -> INTR
>> - INTA -> GICv3
>> The current existing driver assumes that INTR is always connected to
>> GICv3 and INTA is always connected to INTR.
>>
>> [...]
> 
> Applied to irq/irqchip-next, thanks!

Thanks for queuing these!

Is there any chance we can get these into v5.9-rc2 instead of v5.10?
Without these patches we are stuck with using an old firmware with
mainline kernel for both AM65x and J721E devices. There are bugfixes we
get with latest firmware and also the ability to shift between mainline
and TI vendor kernel without re-flashing the SD card.

Thanks,
Sekhar
