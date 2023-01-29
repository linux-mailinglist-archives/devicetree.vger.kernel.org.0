Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CC9967FF6D
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 14:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231297AbjA2Nja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 08:39:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231760AbjA2Nj2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 08:39:28 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AB9920D39
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 05:39:27 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pM7ts-0003rM-FJ; Sun, 29 Jan 2023 14:39:16 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, tzimmermann@suse.de,
        linux-rockchip@lists.infradead.org,
        maarten.lankhorst@linux.intel.com, airlied@gmail.com,
        sam@ravnborg.org, mripard@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>, daniel@ffwll.ch,
        linus.walleij@linaro.org
Subject: Re: (subset) [PATCH V12 0/4] drm/panel: Add Magnachip D53E6EA8966 Panel Controller
Date:   Sun, 29 Jan 2023 14:39:10 +0100
Message-Id: <167499930027.3595793.11045957919180031569.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123154603.1315112-1-macroalpha82@gmail.com>
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 Jan 2023 09:45:59 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the Magnachip D53E6EA8966 panel IC controller for display panels
> such as the Samsung AMS495QA01 panel as found on the Anbernic RG503.
> This panel uses DSI to receive video signals, but 3-wire SPI to receive
> command signals using DBI.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: add display to RG503
      commit: 97ce9f36631dafd6daaab0c06a6a48b4301199b5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
