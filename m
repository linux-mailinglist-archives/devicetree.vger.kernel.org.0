Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0CD62A9594
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 12:43:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727020AbgKFLne (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Nov 2020 06:43:34 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:34316 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726010AbgKFLn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Nov 2020 06:43:28 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0A6BhQLb063773;
        Fri, 6 Nov 2020 05:43:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1604663006;
        bh=YabxRWNUs/aEPBfQ7UceYvxSetQ0EbGIjhnHJXTnT7w=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=QojAcvTS6V88/fL07U7xOTTh042dwr8+pzqvIpNZdg17URwkY7HXoeGv8XGnipm3U
         FfOwwsCr47/OjgUElpa4Rip0E/tRlJxZ7vnSs+pHLrK5E8R4ofQbM5zcGno96rIOy7
         X9SShLuJwdA+lq3TXIIptX4NfNeV3R6dhXdK80Bg=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0A6BhPNf094741
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 6 Nov 2020 05:43:26 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 6 Nov
 2020 05:43:25 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 6 Nov 2020 05:43:25 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0A6BhNcc065563;
        Fri, 6 Nov 2020 05:43:24 -0600
Subject: Re: [PATCH 0/8] Add R5F nodes on TI K3 AM65x and J721E SoCs
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20201029033802.15366-1-s-anna@ti.com>
From:   Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <547ca06c-9895-b164-60ab-5909e6c78983@ti.com>
Date:   Fri, 6 Nov 2020 17:13:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20201029033802.15366-1-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/10/20 9:07 am, Suman Anna wrote:
> Hi Nishanth,
> 
> The TI K3 R5F remoteproc driver and bindings were merged into 5.10-rc1,
> and this series adds the follow-on base dt nodes for the R5F remote
> processors on TI K3 AM65x and J721E SoCs. Additional memory nodes were
> also added to boot these processors successfully on applicable TI K3
> AM65x and J721E EVM boards. The series uses previously accepted mailbox
> nodes.
> 
> The patches follow slightly different convention between AM65x and
> J721E. The reserved-memory nodes are added directly in the relevant
> board dts file for AM65x boards, while they are added in the common
> k3-j721e-som-p0.dtsi file for J721E SoCs following the similar addition
> of K3 C66x and C71x DSP nodes in 5.10-rc1.
> 
> Patches apply on top of your 5.10-rc1 based staging branch.
> 
> I have validated the IPC functionality using System Firmware v2020.04a
> and corresponding IPC example firmwares. 


Series looks good to me.

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

On a side note: any reason not to add R5f nodes for J7200?

Thanks and regards,
Lokesh

