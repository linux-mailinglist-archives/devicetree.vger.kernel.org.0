Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1EC559F63B
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 00:34:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725997AbfH0Web (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 18:34:31 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38818 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725989AbfH0Web (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 18:34:31 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7RMYSxw104756;
        Tue, 27 Aug 2019 17:34:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1566945268;
        bh=iGbHiDwfaJ1ToRRU2etB2TGPOpwBvqEOF0vVDGEktEA=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=alUjGY/VxbEymQg7HDaejV+Y66LsmeHipYYYenx6/Pa/mrCsqrFHJdv5NwxQjgRJg
         QDS791obgwVgrOW5J3k/EErytxMQwRytJHlWLxmf4GFlXJWw/iH8dVEBrm6FQuUv2R
         hkKurygFfMxsPfPK5QfHSmB9AjEoBm8L6DSLrj6w=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7RMYSXL092892
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Aug 2019 17:34:28 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 17:34:28 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 17:34:28 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7RMYSTL125727;
        Tue, 27 Aug 2019 17:34:28 -0500
Subject: Re: [PATCH 0/2] Add HwSpinlock nodes for TI K3 SoCs
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20190722190539.27816-1-s-anna@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <715d61be-c881-cde8-38f0-451637767909@ti.com>
Date:   Tue, 27 Aug 2019 17:34:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190722190539.27816-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero,

On 7/22/19 2:05 PM, Suman Anna wrote:
> Hi Tero,
> 
> The following series adds the HwSpinlock DT nodes for the
> TI K3 AM65x and J721E SoC families. Patches are based on
> v5.3-rc1.

I am not sure if you have already staged these, but if haven't,
can you please pick these and the mailbox nodes for 5.4 merge window?

Thanks,
Suman

> 
> The bindings and driver support for the same have been
> merged in v5.3-rc1.
> 
> regards
> Suman
> 
> Suman Anna (2):
>   arm64: dts: ti: k3-am65-main: Add hwspinlock node
>   arm64: dts: ti: k3-j721e-main: Add hwspinlock node
> 
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 6 ++++++
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 6 ++++++
>  2 files changed, 12 insertions(+)
> 

