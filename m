Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0A56771510
	for <lists+devicetree@lfdr.de>; Sun,  6 Aug 2023 14:35:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbjHFMfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Aug 2023 08:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjHFMfc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Aug 2023 08:35:32 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87C97114
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 05:35:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 262FF610A3
        for <devicetree@vger.kernel.org>; Sun,  6 Aug 2023 12:35:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97D7DC433C7;
        Sun,  6 Aug 2023 12:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691325330;
        bh=51xNPknvBwwpZEr6kkL+TwA4K9JqJdDCSLHPYZ9uKuA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Lk17nXrvFhMLdZzASazHQheeBWKRsT1Anh+gpopRPHdW90liDaKqQXsDZlV0cmYj8
         ON78uvbfByHFR88MJxe3YYWRQngDql8mXrKynyenL1fzfjJNDuw8EHBULnSa79A98l
         l13Ku2NPJitUH/LXBrDYe4n5txgvDjsiTwxabpoqE4VSAEt942ggQsk5+6lxrH53DF
         9+FOUR+f9NDJ4h24xIdU+vJ7oNtLisgxY08CggOqPrmjPG0hZA08GL4AaleGQx8F3A
         UY5UL0EXRQEoLflexNOHoIH51wUJjrnG6Fppoz+X2jpz/2InCMKN5O6wT8UIbcYXlI
         45PF2QvSdVgUw==
Date:   Sun, 6 Aug 2023 20:35:16 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] arm64: dts: imx: Pass a single BD71847 clock entry
Message-ID: <20230806123516.GI151430@dragon>
References: <20230804020947.189713-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230804020947.189713-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 03, 2023 at 11:09:46PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Pass a single BD71847 clock entry to fix the following schema
> warning:
> 
> imx8mm-var-som-symphony.dtb: pmic@4b: clocks: [[22], [0]] is too long
> 	from schema $id: http://devicetree.org/schemas/mfd/rohm,bd71847-pmic.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!
