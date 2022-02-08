Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0225A4ADEC2
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 17:59:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352368AbiBHQ71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 11:59:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240440AbiBHQ71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 11:59:27 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3238C061578
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 08:59:24 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nHTpq-0002ya-Ea; Tue, 08 Feb 2022 17:59:22 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     devicetree@vger.kernel.org,
        Michael Saunders <mick.saunders@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3399-firefly: enable the mali GPU
Date:   Tue,  8 Feb 2022 17:59:19 +0100
Message-Id: <164433936976.231183.7748819784400946135.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207073617.7386-1-mick.saunders@gmail.com>
References: <20220207073617.7386-1-mick.saunders@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 7 Feb 2022 17:06:19 +0930, Michael Saunders wrote:
> The Firefly RK3399 device tree had the GPU status set to disabled as per
> the default from the rk3399.dtsi. This patch sets the status in the
> firefly dts to enable it for use. Tested successfully on a 2GB Firefly
> RK3399 board.

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-firefly: enable the mali GPU

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
