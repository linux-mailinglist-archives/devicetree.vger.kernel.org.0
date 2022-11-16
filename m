Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A0B962B84A
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:29:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233638AbiKPK3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:29:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233682AbiKPK3F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:29:05 -0500
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DC732EF23
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:25:45 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AGAPWM5057785;
        Wed, 16 Nov 2022 04:25:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668594332;
        bh=88z0Ue4g+t2LtzlquJXFb+TnKZT2t1j2/+hDy92nm8M=;
        h=Date:CC:Subject:To:References:From:In-Reply-To;
        b=F27vZtWmqiKUPPgMX9Q1bW5O1O6PqI0jLtvuWDz445J60be6O4WgfLq5h5s6otfgS
         UQSdNzAWY2/z2lPAkZASYze0f2lNmb8lNEUYsp/duPcQwHz4CZ6X1WyAI9PBNerrew
         n8IN8SRxLSFOhWh369u0Akmaaaf4b1AVYETScqCI=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AGAPWg8091635
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Nov 2022 04:25:32 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 16
 Nov 2022 04:25:31 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 16 Nov 2022 04:25:31 -0600
Received: from [172.24.145.61] (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AGAPS6r117788;
        Wed, 16 Nov 2022 04:25:29 -0600
Message-ID: <8ef33819-56fb-30c7-41f2-16d61a44f30a@ti.com>
Date:   Wed, 16 Nov 2022 15:55:28 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <s-vadapalli@ti.com>
Subject: Re: [PATCH v5 7/8] arm64: dts: ti: k3-j721s2-main: Add PCIe device
 tree node
To:     Matt Ranostay <mranostay@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
References: <20221103044125.172864-1-mranostay@ti.com>
 <20221103044125.172864-8-mranostay@ti.com>
Content-Language: en-US
From:   Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <20221103044125.172864-8-mranostay@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/11/22 10:11, Matt Ranostay wrote:
> From: Aswath Govindraju <a-govindraju@ti.com>
> 
> Add PCIe device tree node (both RC and EP) for the single PCIe
> instance present in j721s2.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 61 ++++++++++++++++++++++
>  1 file changed, 61 insertions(+)

Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>
