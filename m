Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6240965A8A0
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 03:31:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbjAAC3P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 21:29:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjAAC3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 21:29:14 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0729E6246
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 18:29:13 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A7C4BB80958
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 02:29:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DFBBC433EF;
        Sun,  1 Jan 2023 02:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672540151;
        bh=Rx/6qcNT91USzqM8aJocDJ1wmt3wmGfvYzeRxyPsQiI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MKwZlE5lWhIV+4jti7A9NpvZQvcVCxfDfbiN2jIya4VlGfMiIQYg3xyEwqqaOIGIY
         fZtStLuBi+YJvgC/TceRV/UlYvOXJ6KovG+o+xHLdIJ/iq3v+rXQ3xJwDOhLTUdNEg
         AY+vrlmFnabcd+c8QFAtXIt1N+PxVbjY/yVj6zzNMQNLafUgeRCAzZGv/8QUy1INMK
         a7nRi9GE4SeGSXhBZqvoSex7+TBi0KdnE6BGj8tt0sGu3yMHbwlZD7uV7IK7IBnn0l
         VduU58+SIx7KHhNX0lJacgRqWO7HVivLVeDFCbwF1xvIJLYIwOV/cTbfsJW2fVzp7s
         U1Te4l/iwiTSw==
Date:   Sun, 1 Jan 2023 10:29:04 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Felix Radensky <felix.r@variscite.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: imx8mm: Drop deprecated
 regulator-compatible from Variscite VAR-SOM-MX8MM
Message-ID: <20230101022903.GI6112@T480>
References: <20221215235827.228620-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221215235827.228620-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 12:58:25AM +0100, Marek Vasut wrote:
> The "regulator-compatible" property is deprecated and unused, as the
> match happens on the node name in Linux of_regulator_match() in case
> the property is not present. Drop the deprecated property from DT.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied all, thanks!
