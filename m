Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 639BB26211B
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 22:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728936AbgIHU3c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 16:29:32 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:36058 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729717AbgIHU3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 16:29:09 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088Bvg2n021678;
        Tue, 8 Sep 2020 06:57:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599566262;
        bh=8DhhiAKUeabZ0xamvehLQNTTMY3zSJ/MHTa+raQaw2A=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=w07q2CZ4p8TE7UPuBcX6O19us5AaK12GjFBDCWo0ZxGcSTUXKHMFtvkuHhLlS3m8Y
         Sg/PJkYPwqqB+aRB0xK/QdQiPaptQ4+hANCAzCleGlkZaPGQr7NBqkvd7zo/Qlt0nQ
         y/rmxSqznPBtXnV6npXaxh6agPx2EAQlvDGwAN7c=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088Bvg0x106344
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 06:57:42 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 06:57:42 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 06:57:42 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088BvgHS057572;
        Tue, 8 Sep 2020 06:57:42 -0500
Date:   Tue, 8 Sep 2020 06:57:41 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>, <ssantosh@kernel.org>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: ti: Add support for J7200 Common
 Processor Board
Message-ID: <20200908115741.v6enutg2mdnwhkk6@akan>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <20200827065144.17683-5-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20200827065144.17683-5-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:21-20200827, Lokesh Vutla wrote:
[..]
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile               |  3 +-
>  .../dts/ti/k3-j7200-common-proc-board.dts     | 64 +++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 29 +++++++++
>  3 files changed, 95 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 05c0bebf65d4..60ab9b72c130 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -8,4 +8,5 @@
>  
>  dtb-$(CONFIG_ARCH_K3_AM6_SOC) += k3-am654-base-board.dtb
>  
> -dtb-$(CONFIG_ARCH_K3_J721E_SOC) += k3-j721e-common-proc-board.dtb
> +dtb-$(CONFIG_ARCH_K3_J721E_SOC) += k3-j721e-common-proc-board.dtb \
> +				   k3-j7200-common-proc-board.dtb


As we discussed in [1], to allow lesser dependencies and better
maintainability,
a) Lets first s/CONFIG_ARCH_K3_AM6_SOC/CONFIG_ARCH_K3/ and same
   with CONFIG_ARCH_K3_J721E_SOC in the dts Makefile. Santosh: headsup,
   we are cleaning up users of the SOC config options[2] - we will clean
   the Kconfig up in a follow-on rc/kernel rev.
b) lets not use the \ and instead, use += - it will be lesser diff as we
add new dtbs.
+dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb

[1] https://lore.kernel.org/linux-arm-kernel/20200908112534.t5bgrjf7y3a6l2ss@akan/
[2] https://mailman.alsa-project.org/pipermail/alsa-devel/2020-September/173791.html
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
> new file mode 100644
> index 000000000000..e27069317c4e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts

Otherwise looks fine to me.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
