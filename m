Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D617C29AC2D
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 13:34:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439469AbgJ0MeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 08:34:17 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51162 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439454AbgJ0MeQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 08:34:16 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RCYDMj047582;
        Tue, 27 Oct 2020 07:34:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603802053;
        bh=W3X2QNcT+D9/pPf37sVhTggLK06dehQCpgsZiNvI/1E=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=bwaAKpQB7xX79yFzPCKgCNZjQSVAVbaYU4RcwamDrOxoof4mgqGc5Fyz9sK1r31W4
         7qLdkBnS/d4l6TB3p6a6nx6ubW2Lweu6X896c7aXmsRnCa9iXNbJhSUzffz7nC5yQ2
         SngygBXktTDEMlT1wZfoH8MlQ/gtuxrYAJ8CABX4=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RCYD9s057883
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 07:34:13 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 07:34:12 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 07:34:13 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RCYCAt106001;
        Tue, 27 Oct 2020 07:34:12 -0500
Date:   Tue, 27 Oct 2020 07:34:12 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 3/4] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Message-ID: <20201027123412.ghwb5p3ruzm7lpqo@repent>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-4-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201027104132.105485-4-tomi.valkeinen@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:41-20201027, Tomi Valkeinen wrote:
> DSS is IO coherent on AM65, so we can mark it as such with
> 'dma-coherent' property in the DT file.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 533525229a8d..a0b4a421026f 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -867,6 +867,8 @@ dss: dss@04a00000 {
>  
>  		status = "disabled";
>  
> +		dma-coherent;
> +
>  		dss_ports: ports {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 

Does it need to be part of this series?

I'd appreciate an additional reviewed-by from folks..
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
