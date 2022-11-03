Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADC266175A1
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 05:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbiKCEfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 00:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbiKCEft (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 00:35:49 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3DF9FDC
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 21:35:48 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A34ZZmQ100805;
        Wed, 2 Nov 2022 23:35:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667450135;
        bh=BW/eLgiq+fhatrc6xdG1C4Em5AEQX/Y9g07DfhwQdog=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=Kj7q2gELxPJAMb6JtaghgnvAWjhHow4evzcIa2r/ZNkK6mkJmi2MT95g9S1RirAj2
         84NBJfUimGuJFJw/tPQQFxCMRXbpB6HMQ5uabDOXYjTViaw8aNrgP3XEPS5tTWPltq
         AXboy6UJ77cS4/fW1ng5rO5l+E3QcIumI1zfUG8E=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A34ZZIq078996
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 2 Nov 2022 23:35:35 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 23:35:35 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 23:35:35 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A34ZZlm038314;
        Wed, 2 Nov 2022 23:35:35 -0500
Date:   Wed, 2 Nov 2022 23:35:35 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Julien Panis <jpanis@baylibre.com>
CC:     <vigneshr@ti.com>, <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v1 0/2] AM62x watchdog support
Message-ID: <20221103043535.ulijdvdmwoz2xbsv@exert>
References: <20220718122328.251602-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220718122328.251602-1-jpanis@baylibre.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:23-20220718, Julien Panis wrote:
> This patch series adds support for AM62x watchdog.
> 
> Changes since v0:
> 	- Mark MCU & WKUP watchdogs as reserved
> 
> Julien Panis (2):
>   arm64: dts: ti: k3-am62: add watchdog nodes
>   arm64: dts: ti: k3-am625-sk: mark MCU and WKUP watchdogs as reserved
> 
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi   | 45 ++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi    |  9 +++++
>  arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi |  9 +++++
>  arch/arm64/boot/dts/ti/k3-am625-sk.dts     | 10 +++++
>  4 files changed, 73 insertions(+)
> 

Could you rebase the series to the latest next?

Also, cosmetics:
a) Patches are of the order [PATCH] indicating v1, [PATCH V2] indicating
   v2 etc.. Also when sending subsequent versions, it is a good practise
   to keep links (typically lore or patchworks) to the previous versions
   of the patches along with change log. See comments such as [1].
   Change logs and lore links help new reviewers quickly catchup on the
   discussions so far.

b) please keep lkml in CC.


[1] https://lore.kernel.org/all/Y1+q2Usm9ecicXqp@google.com/
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
