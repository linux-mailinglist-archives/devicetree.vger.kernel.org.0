Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C1FC3F3B66
	for <lists+devicetree@lfdr.de>; Sat, 21 Aug 2021 18:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233018AbhHUQU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Aug 2021 12:20:57 -0400
Received: from gloria.sntech.de ([185.11.138.130]:38856 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232965AbhHUQU4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 21 Aug 2021 12:20:56 -0400
Received: from p5b3b3c9d.dip0.t-ipconnect.de ([91.59.60.157] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mHTjE-0000Sj-3I; Sat, 21 Aug 2021 18:20:16 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Brian Norris <briannorris@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
Date:   Sat, 21 Aug 2021 18:20:13 +0200
Message-Id: <162956281042.2943041.17828992937259243282.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
References: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Aug 2021 13:38:35 -0700, Brian Norris wrote:
> It's convenient to get nice names for GPIOs. In particular, Chrome OS
> tooling looks for "AP_FLASH_WP" and "AP_FLASH_WP_L". The rest are
> provided for convenience.
> 
> Gru-Bob and Gru-Kevin share the gru-chromebook.dtsi, and for the most
> part they share pin meanings. I omitted a few areas where components
> were available only on one or the other.

Applied, thanks!

[1/1] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
      commit: 9a35fd01f4abc3974e12539448038307acf27f16

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
