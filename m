Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2E1C71337C
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231566AbjE0Ivj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbjE0Ivj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:51:39 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30294EB
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:51:38 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BE0C360B40
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:51:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 747B0C433D2;
        Sat, 27 May 2023 08:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685177497;
        bh=xlZcULQDL20121PfflNjOiczrHQPpAbOnbE9s3UzLPk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fGUc+kdwKjK+zIsYfzUJG19ybUn9LwfYF4Yia0K5vI7kQe3noF5OLqafqDtkZRqSO
         PWDsaUOi+Nj5cu9tZ3QQOWpedGISQhRQ0M4nyVAEohQCrKbCKgzSy0/obTPqH+/x8Q
         GXGNGul8xDvpfTQv6ZNtID0uLxdZ3KzSzgF2vR09/n1ddWvvonyrW9eEA+XCQetUax
         rON0HVAFh75cAy/kofyc5MD55pTrSmpM1jxgLgYnkKsxyLdHoXMU6Bf+dLz4AOdh4A
         EB0KC6tT9l4RA19Vl+tEa/gfQN15cIG0EFAZNQrl/5MZOqcfHkOWbMvd10wQFLxU70
         6DhBq0tq7GkNw==
Date:   Sat, 27 May 2023 16:51:21 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm: fsl: Fix syntax error
Message-ID: <20230527085121.GI528183@dragon>
References: <20230516085713.109309-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230516085713.109309-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 16, 2023 at 10:57:13AM +0200, Marek Vasut wrote:
> Fix the following error by replacing tab indent with spaces.
> "
> Documentation/devicetree/bindings/arm/fsl.yaml:930:46: [error] syntax error: found character '\t' that cannot start any token (syntax)
> "
> 
> Fixes: d2bf7abfd235 ("dt-bindings: arm: fsl: Add Emtop SoM & Baseboard")
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
