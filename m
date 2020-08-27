Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D75B253AE6
	for <lists+devicetree@lfdr.de>; Thu, 27 Aug 2020 02:13:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbgH0ANt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Aug 2020 20:13:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:58262 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726765AbgH0ANs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Aug 2020 20:13:48 -0400
Received: from ogun.localdomain (unknown [47.185.225.103])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E312120791;
        Thu, 27 Aug 2020 00:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598487228;
        bh=C1B4bY2Cz3aYhnJ0/LORlaeb3dc/M4oNCTBnm7Qi6w8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UQG2twoL9lA8PNbgh8knbbzr+DBHn8M+JLwdefMmBUbllgfMyQuUTTYeiP+8y2Tbd
         7hV9UXruiozysV45DzouV5PmlTmtxiX2HqQuh88yAPPIW5A/Prz3VutHy548RW9cR8
         s1GuFye+Ycf6uJDcoHyTt8jGpZuPTpAtZcusKBjc=
Date:   Wed, 26 Aug 2020 19:13:52 -0500
From:   Nishanth Menon <nmenon@kernel.org>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am65: mark dss as dma-coherent
Message-ID: <20200827001352.krnwehbtu42q56yw@ogun.localdomain>
References: <20200826131637.421327-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200826131637.421327-1-tomi.valkeinen@ti.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:16-20200826, Tomi Valkeinen wrote:
> DSS is IO coherent on AM65, so we can mark it as such with
> 'dma-coherent' property in the DT file.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 9edfae5944f7..efd3f18f4be3 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -847,6 +847,8 @@ dss: dss@04a00000 {
>  
>  		status = "disabled";
>  
> +		dma-coherent;
> +
>  		dss_ports: ports {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
Could you look closer at the dss node a bit? dtbs_check results in a
change in error (on next-20200824):
-/workdir/arch/arm64/boot/dts/ti/k3-am654-base-board.dt.yaml: dss@04a00000: 'assigned-clock-parents', 'assigned-clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
+/workdir/arch/arm64/boot/dts/ti/k3-am654-base-board.dt.yaml: dss@04a00000: 'assigned-clock-parents', 'assigned-clocks', 'dma-coherent' do not match any of the regexes: 'pinctrl-[0-9]+'

I am not sure what extent is the dss conversion to yaml done.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
