Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A84D63A89B3
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 21:42:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231145AbhFOToY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 15:44:24 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:50882 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230368AbhFOToS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 15:44:18 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15FJg7GO054577;
        Tue, 15 Jun 2021 14:42:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1623786127;
        bh=MmN7hggLu/18z6JpvS+JoXkQHW/H9xgRcXkmXe/LAdM=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=wOVdlOETsYkYqcYFSDg0K7Pa87blI6YzOwt013WTiqObqnD5tNb4HMwsO/1U0Dc2V
         tzmB49HPl+Dkylfyx5+td0CWxt3ghf6T508/1r8aEu5i2newQTJLdZC8/4VbKnhZOU
         FlgYzC2HyzSycsKYZ42bWA1n2gp9foTMn4cl53HM=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15FJg7RX128694
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Jun 2021 14:42:07 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 15
 Jun 2021 14:42:07 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 15 Jun 2021 14:42:07 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15FJg7Fn054716;
        Tue, 15 Jun 2021 14:42:07 -0500
Date:   Tue, 15 Jun 2021 14:42:07 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 4/4] arm64: dts: ti: k3-am642-evm/sk: Reserve some
 on-chip SRAM for R5Fs
Message-ID: <20210615194207.ww3ed7hmibfw6tnd@swiftness>
References: <20210528144718.25132-1-s-anna@ti.com>
 <20210528144718.25132-5-s-anna@ti.com>
 <20210611191353.qn5lgasho2rujyof@situated>
 <209c545d-c012-9ee8-34ca-bc4f48dbfbcb@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <209c545d-c012-9ee8-34ca-bc4f48dbfbcb@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13:05-20210614, Suman Anna wrote:
> >> +&oc_sram {
> >> +	main_r5fss0_core0_sram: r5f-sram@40000 {
> >> +		reg = <0x40000 0x40000>;
> >> +	};
> >> +
> >> +	main_r5fss0_core1_sram: r5f-sram@80000 {
> >> +		reg = <0x80000 0x40000>;
> >> +	};
> >> +
> >> +	main_r5fss1_core0_sram: r5f-sram@c0000 {
> >> +		reg = <0xc0000 0x40000>;
> >> +	};
> >> +
> >> +	main_r5fss1_core1_sram: r5f-sram@100000 {
> >> +		reg = <0x100000 0x40000>;
> >> +	};
> >> +};
> > 
> 
> These addresses are currently in sync with the corresponding firmware linker map
> files. Any changes needed here should also be aligned and updated with all the
> firmwares then.
> 
> Nishanth,
> How about dropping this patch until we conclude the discussion and picking up
> the rest?


Lets skip this patch for this merge cycle - aka stay compatible with the
previous reference binaries that do not use OCSRAM (aka not pick up
4x latency improvement), till we figure out a future looking and
relatively stable memory map that considers:

a) R5s IPC RAM
+ future usage:
b) M4F IPC RAM
c) ICSSG buffer RAMs

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
