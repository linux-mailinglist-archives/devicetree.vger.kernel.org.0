Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF2D5A707F
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 00:19:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiH3WTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 18:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbiH3WT3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 18:19:29 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E09D6D9E7
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 15:19:27 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 27UMJCZS002994;
        Tue, 30 Aug 2022 17:19:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1661897952;
        bh=JN6JUuYgAqymz7RY7tcaiDfkt0RnJfsoLuo8MrTmSvM=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=gkviOJb6rNv75v2GJm0bt4N04XgDbU0dW2uGClAOvHnDJwwNl8LMkNTZFKYvlsVc/
         +H2am3PxNzhUf20obnMIrwl5OvS7uDamTBFrH6LRLDuJrXoyHodE1MT16963itLuI1
         If9CX0WBc0WuNQ2G1CuTaScC9FvGEDGBguwlHiyQ=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 27UMJCc3000958
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 30 Aug 2022 17:19:12 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Tue, 30
 Aug 2022 17:19:12 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Tue, 30 Aug 2022 17:19:12 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 27UMJCCU031062;
        Tue, 30 Aug 2022 17:19:12 -0500
Date:   Tue, 30 Aug 2022 17:19:12 -0500
From:   Bryan Brattlof <bb@ti.com>
To:     Julien Panis <jpanis@baylibre.com>
CC:     <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH v1 0/2] AM62x watchdog support
Message-ID: <20220830221912.5xfagplrbejzh52m@bryanbrattlof.com>
References: <20220718122328.251602-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220718122328.251602-1-jpanis@baylibre.com>
X-PGP-Fingerprint: D3D1 77E4 0A38 DF4D 1853 FEEF 41B9 0D5D 71D5 6CE0
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Julien!

On July 18, 2022 thus sayeth Julien Panis:
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

These patches look great to me!

Reviewed-by: Bryan Brattlof <bb@ti.com>

~Bryan
