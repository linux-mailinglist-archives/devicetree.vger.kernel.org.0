Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11E1855011A
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 02:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232947AbiFRAO0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 20:14:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237379AbiFRAO0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 20:14:26 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1804E15809
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 17:14:25 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 25I0E73Q105757;
        Fri, 17 Jun 2022 19:14:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1655511247;
        bh=UCAfAI9S2nYKbtwJnnw3Rj1u4WDb2naiITniSGABuk0=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=n55maxJJ6YGVkL18ZgTY4CxUHDr72i5YBY/ExyhuRxZDuvqagHha+r/AKUk9B77Hw
         vTnEH6hpGiw6e2J2HxzAE+wJnNiNf10+FcllIoJb0OPARhmlz5R1oCcELxBznAGT84
         U7lc8eyXoMIL4Bme9mhGZr576N+r3Nus4Xl9rP58=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 25I0E7TA080156
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 17 Jun 2022 19:14:07 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 17
 Jun 2022 19:14:07 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 17 Jun 2022 19:14:07 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 25I0E7Y0112526;
        Fri, 17 Jun 2022 19:14:07 -0500
Date:   Fri, 17 Jun 2022 19:14:07 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Kishon Vijay Abraham I <kishon@ti.com>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am65-main: Remove "syscon" nodes
 added for pcieX_mode/pcie_devid
Message-ID: <20220618001407.fyp4blko76lidnft@kahuna>
References: <20220607064723.2623-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220607064723.2623-1-kishon@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:17-20220607, Kishon Vijay Abraham I wrote:
> Remove "syscon" nodes added for pcieX_mode/pcie_devid and have the PCIe
> node point to the parent with an offset argument. This change is as
> discussed in [1].
> 
> commit 7dcf07ac8867 ("PCI: keystone: Use phandle argument from
> "ti,syscon-pcie-id"/"ti,syscon-pcie-mode"") added the corresponding driver
> changes.
> 
> [1] -> http://lore.kernel.org/r/CAL_JsqKiUcO76bo1GoepWM1TusJWoty_BRy2hFSgtEVMqtrvvQ@mail.gmail.com
> 
> Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> Reported-by: Jan Kiszka <jan.kiszka@siemens.com>
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
> Changes from v1:
> Added Reported-by: Jan Kiszka.

Could you rebase this patch - i have picked  up white space fixes which
is cleanup I would like to apply prior to picking additional patches.

Sorry for the trouble.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
