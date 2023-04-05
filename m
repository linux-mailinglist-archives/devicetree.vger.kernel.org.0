Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2D326D7F8E
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 16:31:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238117AbjDEOb4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 10:31:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238486AbjDEObx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 10:31:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 420575BB7
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 07:31:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B556962685
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 14:31:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5D91C4339B;
        Wed,  5 Apr 2023 14:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680705108;
        bh=6C3oU725mkosfRHWhWxqynAft0CMTHVd2Bj5BddgHXo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EhzYEYnKsIihuN4ZlRu+X97k2PEMHWA2fARK8Qzlcg3RIfIBETcw9eFmppUR4bzMf
         fU5P9x+PnlA6PW15+hW78vuPkjARL2QLUBWuMYfzpkRrbwoLZgxRQD/ibbPcDNi3ti
         6ZgrsilBWEbiAYt6E2gmIgfpejCTrHwVqOVtSeTF1al/3pUBXUxEYPMH7SoJ/tfymV
         tTEB8dIrmmR2l/Tdp6WuDilnKDmhSDUlr+YccZYJhJ8eAUMAX0VOInzkDOTuqDuvCN
         ZKKyZ7xTD56afgDPAnX5kwNNuFZlEQg7qOGFaV0SYQ9I7e32YBhEKT9UiXvfVX64ZF
         BeuF/ADniWfOg==
Date:   Wed, 5 Apr 2023 22:31:41 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alistair@alistair23.me, philippe.schenker@toradex.com,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] ARM: dts: imx7d-remarkable2: Remove unnecessary
 #address-cells/#size-cells
Message-ID: <20230405143141.GI11367@dragon>
References: <20230328185147.529718-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230328185147.529718-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 28, 2023 at 03:51:46PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Building with W=1 leads to the following dtc warning:
> 
> arch/arm/boot/dts/imx7d-remarkable2.dts:319.19-335.4: Warning (avoid_unnecessary_addr_size): /soc/bus@30800000/i2c@30a50000/pmic@62: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
> 
> Remove unnecessary #address-cells/#size-cells to fix it.
> 
> Fixes: 9076cbaa7757 ("ARM: dts: imx7d-remarkable2: Enable silergy,sy7636a")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!
