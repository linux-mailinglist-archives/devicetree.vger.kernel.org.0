Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 703B42EC7CE
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 02:48:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726357AbhAGBrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 20:47:51 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:39324 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725822AbhAGBru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 20:47:50 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1071kAKM091320;
        Wed, 6 Jan 2021 19:46:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1609983970;
        bh=U6pozSNSl59JRbQiGKQJ0thZfCYwqFaa9rVq2Uwo4NU=;
        h=Date:From:To:CC:In-Reply-To:References:Subject;
        b=IUzYL8wgN+9RbO8Cj5DCyPKNc5gLxQRCzskgJoLQXFzGL4TFNhMUjGE6Zrzf0Qoac
         AyUYg6e6JUOV+6o3v2pRDerunpV9AEYoYh8xd30TVFbkxzqbK5w4FbHHjjSQ1Lpn4X
         vWxDU5sKTz4fjmLcFevrspNvbdKKBW4Y1Zzz0h6w=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1071kAar116654
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 6 Jan 2021 19:46:10 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 Jan
 2021 19:46:10 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 Jan 2021 19:46:10 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1071kA3X086039;
        Wed, 6 Jan 2021 19:46:10 -0600
Date:   Wed, 6 Jan 2021 19:46:10 -0600
From:   Gowtham A Tammana <g-tammana@ti.com>
To:     Nishanth Menon <nm@ti.com>, Gowtham Tammana <g-tammana@ti.com>
CC:     <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Message-ID: <5ff667e2275a0_51d12ad2269e30a42f@uda0271916b.notmuch>
In-Reply-To: <20201218140213.gmgyahowalljvp3t@skittle>
References: <20201217000716.11091-1-g-tammana@ti.com>
 <20201217000716.11091-2-g-tammana@ti.com>
 <20201218140213.gmgyahowalljvp3t@skittle>
Subject: Re: [PATCH 1/2] dt-bindings: watchdog: change node name to generic
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Nishanth Menon wrote:
> On 18:07-20201216, Gowtham Tammana wrote:
> > Modifying the example to use generic as node name to keep it consistent
> ^^ Please don't state in commit message the actual change you are
> doing.. We can see that from the diffstat. There are lots of
> documentation now a days on smart commit messages, I suggest reading
> those.
> 
> > with the generic name recommendation.
> 
> 
> I think what you are doing here is to fix a typo in the example
> provided to match with the compatible that is supposed to be used.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation//devicetree/bindings/watchdog/ti,rti-wdt.yaml#n26
> 
> While this change is valid, please:
> a) Rewrite the commit message
> b) Fix $subject "dt-bindings: watchdog: change node name to generic"
> "dt-bindings: watchdog" is a huge range of watchdog driver scope, you
> want to narrow it to the ti,rti
> dt-bindings: watchdog: ti,rti:" or What ever wdt/dt maintainers may prefer.
> 
> "change node name to generic" -> yes, diff tells us that, you are trying
> to fix a typo in the example, so please use the word fix to indicate
> this is a fixup, not a new 'change' ..
> 
> c) Please CC subsystem maintainers.. I suppose these go through
> subsystem maintainer trees once Rob Acks..

Thanks for the review here Nishant. Will make the suggested changes for v2.

Gowtham
> 
> > 
> > Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
> > ---
> >  Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> > index c1348db59374..e21af390b3e9 100644
> > --- a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> > +++ b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> > @@ -57,8 +57,8 @@ examples:
> >       */
> >      #include <dt-bindings/soc/ti,sci_pm_domain.h>
> >  
> > -    watchdog0: rti@2200000 {
> > -        compatible = "ti,rti-wdt";
> > +    watchdog0: watchdog@2200000 {
> > +        compatible = "ti,j7-rti-wdt";
> >          reg = <0x2200000 0x100>;
> >          clocks = <&k3_clks 252 1>;
> >          power-domains = <&k3_pds 252 TI_SCI_PD_EXCLUSIVE>;
> > -- 
> > 2.29.0
> > 
> 
> -- 
> Regards,
> Nishanth Menon
> Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D


