Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F34CB77150D
	for <lists+devicetree@lfdr.de>; Sun,  6 Aug 2023 14:33:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbjHFMd1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Aug 2023 08:33:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjHFMd0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Aug 2023 08:33:26 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01503114
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 05:33:25 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9391161006
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 12:33:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EE65C433C8;
        Sun,  6 Aug 2023 12:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691325205;
        bh=sA5ITJOt9gBberj3SzJ8fudABqIqTB4j5lxkZ2TC1GU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iilcrO/IjG4Qdu6pjJnSJy+5Lxx6xpsD0OpdjBJ56CD713XcTNrVWP6MKvYQf4zvp
         TDjni3bdxT4C0L6uvg1TY6Rm5forpJFJX/Gn9ZfWXF06sntLEUbUFa62wKnoNb8M3K
         49mE9nz6mnughf934Nt/mbrcTyXJMeN8oyF1f3RR5nIamyJS/ePaUJ2H+4f2gxqgX7
         H1CI02eNRfOaeFB5jZh24KUEMZ2EUrZcBuVW8n2iwunGZPiNNto2kXKuoC4S+tQ1x9
         0Vyn8eK/JQTHuCw6709/hJxmdseUw7GDXBtP5uvVk9vzXSuojTD0EydEPDypcWYk5+
         qR/gJZ3tUNCgA==
Date:   Sun, 6 Aug 2023 20:33:16 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Subject: Re: [PATCH] ARM: dts: imx6q-prti6q: Fix the SDIO wifi node
Message-ID: <20230806123316.GH151430@dragon>
References: <20230731203610.1600482-1-festevam@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230731203610.1600482-1-festevam@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 31, 2023 at 05:36:10PM -0300, Fabio Estevam wrote:
> #address-cells, #size-cells and unit address are missing for the WL1271
> Wifi chip description, which causes the following schema warning:
> 
> imx6q-prti6q.dtb: mmc@2194000: Unevaluated properties are not allowed ('wifi' was unexpected)
> 
> Pass the missing items to fix it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
