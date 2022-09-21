Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EE365BFC3F
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 12:23:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbiIUKXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 06:23:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbiIUKXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 06:23:21 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29192D12A
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:23:20 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28LANCQ2013194;
        Wed, 21 Sep 2022 05:23:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1663755792;
        bh=tXv35ZqAZhn+gOwxVqGghAHayH49f6j+Ks8T+Lvipis=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=eh4hmkta0+ZaloYtvB56udBsWGUzcGpFWi7flfroK1+c6BhLD3Q6C7TJOL/k3Dh8F
         E6rUqKe0qkFfyWqS/hXHMHIYKAAZVX+sIcFhlOkCE1ZntnbGUJXPMIg9+8WJgHJDVj
         xZMBS4y6w/d5WhOAs1aTV1BeW8+xyAeU10tqM2tw=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28LANCJw071980
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 21 Sep 2022 05:23:12 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 21
 Sep 2022 05:23:11 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 21 Sep 2022 05:23:11 -0500
Received: from uda0132425.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28LAN97M054781;
        Wed, 21 Sep 2022 05:23:10 -0500
From:   Vignesh Raghavendra <vigneshr@ti.com>
To:     <nm@ti.com>, Matt Ranostay <mranostay@ti.com>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] arm64: dts: ti: k3-j7200: fix main pinmux range
Date:   Wed, 21 Sep 2022 15:53:07 +0530
Message-ID: <166375577215.1126660.12635396035388901294.b4-ty@ti.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220919205723.8342-1-mranostay@ti.com>
References: <20220919205723.8342-1-mranostay@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matt Ranostay,

On Mon, 19 Sep 2022 13:57:23 -0700, Matt Ranostay wrote:
> Range size of 0x2b4 was incorrect since there isn't 173 configurable
> pins for muxing. Additionally there is a non-addessable region in the
> mapping which requires spliting into two ranges.
> 
> main_pmx0 -> 67 pins
> main_pmx1 -> 3 pins
> 
> [...]

I have applied the following to branch ti-k3-dts-next on [1].
Thank you!

[1/1] arm64: dts: ti: k3-j7200: fix main pinmux range
      commit: 0d0a0b4413460383331088b2203ba09a6971bc3a

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

