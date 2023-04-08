Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 061FA6DB949
	for <lists+devicetree@lfdr.de>; Sat,  8 Apr 2023 09:27:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbjDHH1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Apr 2023 03:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjDHH1G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Apr 2023 03:27:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA380CC2D
        for <devicetree@vger.kernel.org>; Sat,  8 Apr 2023 00:27:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 55CBC6154C
        for <devicetree@vger.kernel.org>; Sat,  8 Apr 2023 07:27:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C324CC433EF;
        Sat,  8 Apr 2023 07:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680938823;
        bh=zX3ch+xJvCAs1KQJ//ufwlQFo3ZYDk4h7lx4A1pfOXA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WSC2BEy63PWM9aCSmpgs6M2gnxf0lrpzI79eQPA74mGodM8Pn7CCTyY65xIykVVjf
         EhmI2GxJJQA/KSTvGAaXWetYCIWZkAJTXXsPXQcOC5uZg2D5xTG+NsRRJLsl51lQUD
         eXs2/iL/bGHSx98m+28czjLU4JCftyTa8cCcf2QP2Gge1goesg+Iw3NUflsOoyofN+
         9NZG2cfJ2D1Q7uf8l29cFYDJkVuyN5vzepxNEcJPel9YZ8u5Yk6Kf7vw27bn7NFtT7
         G4g7aOP390GPBLvUQazDxBBFuGaOum987llnv067kQXPvSoQoeKh3x05kzF6HVYXSn
         xiWv6+kUnl1/Q==
Date:   Sat, 8 Apr 2023 15:26:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: Add Data Modul i.MX8M Plus eDM
 SBC
Message-ID: <20230408072649.GB129227@dragon>
References: <20230406160116.10071-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230406160116.10071-1-marex@denx.de>
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 06, 2023 at 06:01:15PM +0200, Marek Vasut wrote:
> Add DT compatible for Data Modul i.MX8M Plus eDM SBC board.
> This is an evaluation board for various custom display units.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied both, thanks!
