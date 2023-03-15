Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB8866BAA18
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 08:54:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230421AbjCOHyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 03:54:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230356AbjCOHyp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 03:54:45 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 043643029D
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:54:39 -0700 (PDT)
Received: from [46.183.103.17] (helo=phil.sntech)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pcLy1-00079f-O8; Wed, 15 Mar 2023 08:54:37 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, dianders@chromium.org,
        briannorris@chromium.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
Date:   Wed, 15 Mar 2023 08:54:24 +0100
Message-Id: <167886685403.704797.18042186713287066973.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230307095516.4116827-1-heiko@sntech.de>
References: <20230307095516.4116827-1-heiko@sntech.de>
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

On Tue, 7 Mar 2023 10:55:16 +0100, Heiko Stuebner wrote:
> All of them have an internal emmc that becomes mmc0 and
> devices including the sdmmc snippet get mmc1 for the external
> sd slot on suitable devices.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: Add mmc aliases for rk3288-veyron devices
      commit: 56af59fc0be3fda8d8a32ed996dfb84758d4f431

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
