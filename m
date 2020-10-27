Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09E6B29BD49
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 17:49:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1794977AbgJ0POl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 11:14:41 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:37732 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1794971AbgJ0POk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 11:14:40 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09RFEZia114957;
        Tue, 27 Oct 2020 10:14:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1603811675;
        bh=Myixi6KvwFLmjWY8p0yJ8RgrDA/N1FetVi34pbNVvMU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=oKLM8LSG7biGUbxCOfROPNbnn/hkneHyQw0o4qkvsH6yHWL+p7TFHwXgbidvNGOjM
         qGrzc7sp2yXHuWCxVreMxOypA5xlELcf1DzUiQYzh/Vx3N5e3r+kiHw2l7aPTWZYls
         gPAj7qhtP7YkIxZXPx9s6j6lKlzOzdT+lpTSZ49g=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09RFEZKD054302
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 27 Oct 2020 10:14:35 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 27
 Oct 2020 10:14:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 27 Oct 2020 10:14:35 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09RFEYHt020641;
        Tue, 27 Oct 2020 10:14:35 -0500
Date:   Tue, 27 Oct 2020 10:14:34 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 3/4] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Message-ID: <20201027151434.getywrdbjidcggth@marshy>
References: <20201027104132.105485-1-tomi.valkeinen@ti.com>
 <20201027104132.105485-4-tomi.valkeinen@ti.com>
 <20201027123412.ghwb5p3ruzm7lpqo@repent>
 <25f63a9b-7473-949b-2310-5c00440fb830@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <25f63a9b-7473-949b-2310-5c00440fb830@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:45-20201027, Tomi Valkeinen wrote:
> On 27/10/2020 14:34, Nishanth Menon wrote:
> > On 12:41-20201027, Tomi Valkeinen wrote:
> >> DSS is IO coherent on AM65, so we can mark it as such with
> >> 'dma-coherent' property in the DT file.
> >>
> >> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> >> ---
> >>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> index 533525229a8d..a0b4a421026f 100644
> >> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> @@ -867,6 +867,8 @@ dss: dss@04a00000 {
> >>  
> >>  		status = "disabled";
> >>  
> >> +		dma-coherent;
> >> +
> >>  		dss_ports: ports {
> >>  			#address-cells = <1>;
> >>  			#size-cells = <0>;
> >> -- 
> >> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> >> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> >>
> > 
> > Does it need to be part of this series?
> 
> No. The two DP patches should go together, but the am6 ones can be applied independently.


Please split accordingly.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
