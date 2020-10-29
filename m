Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D4DC29EFA0
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 16:23:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727905AbgJ2PXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 11:23:05 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:42260 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725909AbgJ2PXE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 11:23:04 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09TEf3m2108021;
        Thu, 29 Oct 2020 09:41:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603982463;
        bh=2rHaRKAN8kaefGnljxOphLFhEtuWfvShQLMhYd/G4h0=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=eZh1669B1fWZthJmojWRjG1znboTcOjD4PovZmXAiXzU8eMbxM2XZi9nsSBjkLSm7
         rEpfwFXbPzhBtkHMeeiTTODAFviZ4+EqyakYXCZRO7/g+PKRTT/R0OKhCYo6D3NNJi
         Xls551jBO0uHyYi6xg/3SP1oUJgkXrsMGHv6hEFo=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09TEf2pt109645
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 29 Oct 2020 09:41:03 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 29
 Oct 2020 09:41:01 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 29 Oct 2020 09:41:01 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09TEf0do070396;
        Thu, 29 Oct 2020 09:41:01 -0500
Date:   Thu, 29 Oct 2020 20:11:00 +0530
From:   Nikhil Devshatwar <nikhil.nd@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Message-ID: <20201029144100.bf35vierhfignips@NiksLab>
References: <20201029141159.190621-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201029141159.190621-1-tomi.valkeinen@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:11-20201029, Tomi Valkeinen wrote:
> DSS is IO coherent on AM65, so we can mark it as such with
> 'dma-coherent' property in the DT file.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Acked-by: Nikhil Devshatwar <nikhil.nd@ti.com>

Nikhil D
> ---
> 
> Sending separately as requested.
> 
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
