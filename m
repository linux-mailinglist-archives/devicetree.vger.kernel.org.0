Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 860AD274475
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 16:39:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726700AbgIVOjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 10:39:46 -0400
Received: from gloria.sntech.de ([185.11.138.130]:40460 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726507AbgIVOjq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Sep 2020 10:39:46 -0400
X-Greylist: delayed 2019 seconds by postgrey-1.27 at vger.kernel.org; Tue, 22 Sep 2020 10:39:45 EDT
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1kKivi-0000Ut-Om; Tue, 22 Sep 2020 16:06:02 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     devicetree@vger.kernel.org, m.reichl@fivetechno.de,
        David Bauer <mail@david-bauer.net>, kever.yang@rock-chips.com,
        linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com,
        jbx6244@gmail.com, robh+dt@kernel.org, andy.yan@rock-chips.com,
        jagan@amarulasolutions.com, linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Date:   Tue, 22 Sep 2020 16:06:01 +0200
Message-Id: <160078353166.2390697.16495251990636395272.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200920154528.88185-1-mail@david-bauer.net>
References: <20200920154528.88185-1-mail@david-bauer.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 20 Sep 2020 17:45:27 +0200, David Bauer wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R2S.

Applied, thanks!

[1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
      commit: 8cfcf3279419acbf2d2c471262bfb18d9e175fc9
[2/2] arm64: dts: rockchip: Add support for FriendlyARM NanoPi R2S
      commit: f1ec83f880dbeaceb10d33c40c47aa1769b787e8

After adapting to the renamed pinctrl name.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
