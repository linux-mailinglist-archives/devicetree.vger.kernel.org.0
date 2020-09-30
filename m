Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E347227E84E
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 14:15:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729205AbgI3MPb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 08:15:31 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:58160 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728232AbgI3MPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 08:15:31 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UCFSnA126920;
        Wed, 30 Sep 2020 07:15:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1601468128;
        bh=q0tOUg5l6JlrySwjxuYNRmV0Wjf0+XV57FFNEkXVhNU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=ffo/+TITznXAZYcnEtpYzqnjMFEg6CXsvRo9phKKHJy0jhBWJjQKJgFUQXeIIb8Ka
         q07z+sW0RiAdnB1gnt6uGdNpvfELtuAz1mlBp2axx+RiHoGWb7rBj6UzVWYu2bvJM2
         M6Z1NG6tVyfRQatLz7/IklsW+rQtRJpReOHAfLvo=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UCFS2r112990;
        Wed, 30 Sep 2020 07:15:28 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 07:15:27 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 07:15:27 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UCFRgk098056;
        Wed, 30 Sep 2020 07:15:27 -0500
Date:   Wed, 30 Sep 2020 07:15:27 -0500
From:   Nishanth Menon <nm@ti.com>
To:     <g@akan>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Suman Anna <s-anna@ti.com>,
        Tero Kristo <t-kristo@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v4 2/5] dt-bindings: arm: ti: Convert K3 board/soc
 bindings to DT schema
Message-ID: <20200930121527.xxevqyl6n3ecf3ci@akan>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-3-lokeshvutla@ti.com>
 <CAL_JsqLxC=EVqZZNdNYcUXd-X_8r8SkFA1P=GTrk3XW_j+dMKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAL_JsqLxC=EVqZZNdNYcUXd-X_8r8SkFA1P=GTrk3XW_j+dMKQ@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11:51-20200928, Rob Herring wrote:
> On Mon, Sep 14, 2020 at 11:22 AM Lokesh Vutla <lokeshvutla@ti.com> wrote:
> >
> > Convert TI K3 Board/SoC bindings to DT schema format.
> >
> > Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> > Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> > ---
> >  .../devicetree/bindings/arm/ti/k3.txt         | 26 ----------------
> >  .../devicetree/bindings/arm/ti/k3.yaml        | 31 +++++++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 32 insertions(+), 27 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml
> 
> This causes warnings in ti,omap-hwspinlock.yaml which also landed for 5.10:
> 
> /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
> /: compatible: ['ti,am654'] is not valid under any of the given
> schemas (Possible causes of the failure):
> /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
> /: compatible: ['ti,am654'] is too short
> /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
> /: compatible:0: 'ti,am654' is not one of ['ti,am654-evm']
> /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
> /: compatible:0: 'ti,j721e' was expected
> /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.example.dt.yaml:
> /: compatible:0: 'ti,j7200' was expected
> 
> From schema: /builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/arm/ti/k3.yaml
> 
> Please fix. I'd suggest just removing part of the example. It's not relevant.


	I think this is addressed by [1]

[1] https://lore.kernel.org/linux-arm-kernel/20200928225155.12432-1-s-anna@ti.com/

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
