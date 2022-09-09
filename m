Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A46FE5B3AD3
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 16:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231759AbiIIOjS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 10:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231989AbiIIOjL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 10:39:11 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7DA2131EFE
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 07:39:08 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 289Ecrvu028789;
        Fri, 9 Sep 2022 09:38:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1662734333;
        bh=/W1V9VjLhYWJvu0GqytWx+ASGz1sW+xhsEjVJxd9Vmc=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=FTUDwktsZ6ZunynYuXpUKmUjJMLdycR9mjCLudsVI9Swk5gc4h+etFBOJGFNk2zk2
         IUVYhTZ4syjTvz8+xhLWzT4W8xEn9hA38huaLiqUUZ1VUzD4ZLQQCcwQkQrDX3BxB1
         UfbMNNQ2X8Z03htzm8GtPa5NxnMcd1JQbzGUpUIQ=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 289EcqGM111116
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 9 Sep 2022 09:38:53 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Fri, 9 Sep
 2022 09:38:52 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Fri, 9 Sep 2022 09:38:52 -0500
Received: from uda0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 289EcnDF075516;
        Fri, 9 Sep 2022 09:38:50 -0500
From:   Vignesh Raghavendra <vigneshr@ti.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nishanth Menon <nm@ti.com>, Georgi Vlaev <g-vlaev@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/2] arm64: dts: ti: k3-am62: Add ePWM support
Date:   Fri, 9 Sep 2022 20:08:24 +0530
Message-ID: <166273427560.1752090.16795860109420912612.b4-ty@ti.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220531205229.198011-1-g-vlaev@ti.com>
References: <20220531205229.198011-1-g-vlaev@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Georgi Vlaev,

On Tue, 31 May 2022 23:52:27 +0300, Georgi Vlaev wrote:
> This patch series enables the ePWM support on the AM62 platform.
> The ePWMs are enabled by default, but we have to disable them
> for the AM625-SK board, as they are not in use.
> 
> Georgi Vlaev (2):
>   arm64: dts: ti: k3-am62-main: Add epwm nodes
>   arm64: dts: ti: k3-am625-sk: Add epwm nodes
> 
> [...]

I have applied the following to branch master on [1].
Thank you!

[1/2] arm64: dts: ti: k3-am62-main: Add epwm nodes
      commit: ab1ad455cf33de6dc1f6cbf0d0d1d49dbe3d9e4f
[2/2] arm64: dts: ti: k3-am625-sk: Add epwm nodes
      commit: acf3fdc88665a26abfe22827993a2dabf182a513

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent up the chain during
the next merge window (or sooner if it is a relevant bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ti/linux.git
--
Vignesh

