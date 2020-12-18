Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 696422DE3A3
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 15:03:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725911AbgLRODA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 09:03:00 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:57564 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725885AbgLRODA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Dec 2020 09:03:00 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0BIE2D04116700;
        Fri, 18 Dec 2020 08:02:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1608300133;
        bh=1A+SuRXmlSGi6d2AAWwJbdDnstPf+12WYJqTl7RC1JI=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=ri1auqMGgheJHDynhY/fY8mfwbXT89a3qYPonAUfc6NDGPKBiwo6nOdihsASTGDKv
         yRylP9tSZBYu3dKgOMynATuA61wDg1i+f19kqvT08rh0BSUquMbJjhGwi92fouzbCW
         /0ZqKASoerHbMmswQeOZUOCOmKWxykqmephLXiWQ=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0BIE2D9Z048604
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 18 Dec 2020 08:02:13 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Dec 2020 08:02:13 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Dec 2020 08:02:13 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0BIE2DEj057357;
        Fri, 18 Dec 2020 08:02:13 -0600
Date:   Fri, 18 Dec 2020 08:02:13 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Gowtham Tammana <g-tammana@ti.com>
CC:     <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: change node name to generic
Message-ID: <20201218140213.gmgyahowalljvp3t@skittle>
References: <20201217000716.11091-1-g-tammana@ti.com>
 <20201217000716.11091-2-g-tammana@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201217000716.11091-2-g-tammana@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18:07-20201216, Gowtham Tammana wrote:
> Modifying the example to use generic as node name to keep it consistent
^^ Please don't state in commit message the actual change you are
doing.. We can see that from the diffstat. There are lots of
documentation now a days on smart commit messages, I suggest reading
those.

> with the generic name recommendation.


I think what you are doing here is to fix a typo in the example
provided to match with the compatible that is supposed to be used.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation//devicetree/bindings/watchdog/ti,rti-wdt.yaml#n26

While this change is valid, please:
a) Rewrite the commit message
b) Fix $subject "dt-bindings: watchdog: change node name to generic"
"dt-bindings: watchdog" is a huge range of watchdog driver scope, you
want to narrow it to the ti,rti
dt-bindings: watchdog: ti,rti:" or What ever wdt/dt maintainers may prefer.

"change node name to generic" -> yes, diff tells us that, you are trying
to fix a typo in the example, so please use the word fix to indicate
this is a fixup, not a new 'change' ..

c) Please CC subsystem maintainers.. I suppose these go through
subsystem maintainer trees once Rob Acks..


> 
> Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
> ---
>  Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> index c1348db59374..e21af390b3e9 100644
> --- a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> @@ -57,8 +57,8 @@ examples:
>       */
>      #include <dt-bindings/soc/ti,sci_pm_domain.h>
>  
> -    watchdog0: rti@2200000 {
> -        compatible = "ti,rti-wdt";
> +    watchdog0: watchdog@2200000 {
> +        compatible = "ti,j7-rti-wdt";
>          reg = <0x2200000 0x100>;
>          clocks = <&k3_clks 252 1>;
>          power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
> -- 
> 2.29.0
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
