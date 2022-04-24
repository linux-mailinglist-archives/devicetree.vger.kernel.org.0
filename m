Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0535450D1DD
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 15:11:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232911AbiDXNOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 09:14:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbiDXNOd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 09:14:33 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD0C025EA4
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 06:11:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 3060FCE0AE7
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 13:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65661C385A9;
        Sun, 24 Apr 2022 13:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650805886;
        bh=g30mwhY/mvWjOiIVFy7Ggl/SJlKq3qiIg2P4u35RyI0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RsEtouDt/K0SInHT9HHr7dkD3OlQqtpS8EgApWMzZc08J1hQtxoKnavzeN/YwAy+Y
         fQ4KwjWfKfhI2tBwQjGAu5GkkVgVUVjdMDFVExmZEnrweXTWmaUvNo/Gm0e3Gic4zq
         uMvvzoMFi46QMXRc0bNJI71H8y5nlQbNUQgScKyIlfmLqiWzdT7Z7ZiSfxrgZFa6Et
         lLbgt7riRRJRi9dr+Qeq0nEnYulrXLNMwdqHO+chDMlP+Y571Y0/4oK/4Cb0bzLBna
         TmrldnpaL7z4xEs1Pp1iUCS91k+pq4JYQrb6gKaIAjagLr6ljaE3LgqUEo1SGQvuUL
         CrqOGBiXuJn2g==
Date:   Sun, 24 Apr 2022 21:11:12 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
        Rob Herring <robh@kernel.org>,
        Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: Add i.MX8M Mini Toradex Verdin
 based Menlo board
Message-ID: <20220424131112.GA988429@dragon>
References: <20220418132457.15849-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220418132457.15849-1-marex@denx.de>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 18, 2022 at 03:24:56PM +0200, Marek Vasut wrote:
> Add DT compatible string for board based on the Toradex Verdin iMX8M
> Mini SoM, the MX8Menlo. The board is a compatible replacement for
> i.MX53 M53Menlo and features USB, multiple UARTs, ethernet, LEDs,
> SD and eMMC.
> 
> Acked-by: Peng Fan <peng.fan@nxp.com>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Fabio Estevam <festevam@denx.de>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org

Applied both, thanks!
