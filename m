Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE7253564C
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 07:45:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726050AbfFEFpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 01:45:04 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:48112 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725268AbfFEFpE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 01:45:04 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x555iw0g130550;
        Wed, 5 Jun 2019 00:44:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1559713498;
        bh=mvC8ysoD2td/BeQzG9ByBP2PgmFd/m8oI3Fmb8eMEpo=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=rY4/PaDL5ijzjDIV/ORQwTNMjRADSarhGxBuRWiYH06xRqjebD3ncS3CKZ8tocHh5
         +QURX0y2G6FdEourW/7MMkevjk/3RFm50yj4fTFVZ0N3k0z9ZrIoj3cw9QySKJDQ1N
         +cdBQen0XT+mG/gWT7ImdZ5QvR2yDa+IeRYEp5Yc=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x555iwdV038153
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 5 Jun 2019 00:44:58 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 00:44:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 00:44:57 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x555itoY125799;
        Wed, 5 Jun 2019 00:44:56 -0500
Subject: Re: [PATCH v3 3/5] soc: ti: ti_sci_pm_domains: Add support for
 exclusive and shared access
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
References: <20190410053728.17374-1-lokeshvutla@ti.com>
 <20190410053728.17374-4-lokeshvutla@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <b6f005da-3c0a-ce73-79f0-eaa19c7da92c@ti.com>
Date:   Wed, 5 Jun 2019 11:14:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190410053728.17374-4-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Santosh,

On 10/04/19 11:07 AM, Lokesh Vutla wrote:
> TISCI protocol supports for enabling the device either with exclusive
> permissions for the requesting host or with sharing across the hosts.
> There are certain devices which are exclusive to Linux context and
> there are certain devices that are shared across different host contexts.
> So add support for getting this information from DT by increasing
> the power-domain cells to 2.
> 
> For keeping the DT backward compatibility intact, defaulting the
> device permissions to set the exclusive flag set. In this case the
> power-domain-cells is 1.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Any chance you can pick this patch? Tero is waiting for you to pick it up so
that dts changes can be pulled. Or can you ack it so that Tero can pick the
entire series?

Thanks and regards,
Lokesh

