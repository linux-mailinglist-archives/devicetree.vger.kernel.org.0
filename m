Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC3243C3FEE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 01:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229984AbhGKX26 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Jul 2021 19:28:58 -0400
Received: from gloria.sntech.de ([185.11.138.130]:54636 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229781AbhGKX26 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 11 Jul 2021 19:28:58 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1m2ipr-0000zL-H4; Mon, 12 Jul 2021 01:26:07 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: rename pcfg_* nodenames for rk3066/rk3188
Date:   Mon, 12 Jul 2021 01:26:03 +0200
Message-Id: <162604593564.371932.5221214110315638021.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210711112154.5287-1-jbx6244@gmail.com>
References: <20210711112154.5287-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 11 Jul 2021 13:21:54 +0200, Johan Jonker wrote:
> Rename pcfg_* nodenames for rk3066/rk3188 to pcfg-*,
> so that they fit in the regex with the other Rockchip SoCs.

Applied, thanks!

[1/1] ARM: dts: rockchip: rename pcfg_* nodenames for rk3066/rk3188
      commit: f295228b384f9d66d1b4d31151123261a1c9e071

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
