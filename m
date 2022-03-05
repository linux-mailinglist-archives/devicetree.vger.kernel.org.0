Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 918AE4CE642
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 18:36:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230426AbiCERgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Mar 2022 12:36:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbiCERgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Mar 2022 12:36:49 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 888D21EEFB6
        for <devicetree@vger.kernel.org>; Sat,  5 Mar 2022 09:35:57 -0800 (PST)
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.dip.tu-dresden.de)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nQYJs-000687-W9; Sat, 05 Mar 2022 18:35:53 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, lee.jones@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        strit@manjaro.org, mbrugger@suse.com, zyw@rock-chips.com,
        zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
        knaerzche@gmail.com, arnaud.ferraris@collabora.com
Subject: Re: (subset) [PATCH 0/4 v5] rk808: Convert bindings to yaml
Date:   Sat,  5 Mar 2022 18:35:50 +0100
Message-Id: <164650173745.1811166.11606878506351946894.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220303203958.4904-1-macroalpha82@gmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
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

On Thu, 3 Mar 2022 14:39:54 -0600, Chris Morgan wrote:
> Convert the rk808 bindings into yaml format. In order to accomplish
> this some bindings for the rk809 had to be updated to remove
> non-existent vcc inputs. Additionally, some bindings for the rk805
> needed to be updated to add a now-mandatory #clock-cells value, and
> a regulator for a board using the rk818 PMIC needed to be renamed.
> 
> Changes from V4:
>  - The latest version of yamllint, dt_binding_check, and dtbs_check now
>    return no errors for arm and arm64.
>  - Added DCDC_BOOST regulator for rk818 to documentation.
>  - Renamed regulator for rk3188-px3-evb from SWITCH_REG1 to SWITCH_REG
>    to match driver and other rk818 boards.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
      commit: 079d76ab304227dd29e7bba76736567b5ac73030
[2/4] dts: rockchip: Add #clock-cells value for rk805
      commit: f188620d6f96d398988a22934aa2cac5043c739c
[3/4] dts: rockchip: Update regulator name for PX3
      commit: c042639a70ed00ab2138f507ae1d6fa57c66ce11

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
