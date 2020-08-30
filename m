Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC91525706C
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 22:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726485AbgH3UQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 16:16:44 -0400
Received: from gloria.sntech.de ([185.11.138.130]:48258 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726404AbgH3UQn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 30 Aug 2020 16:16:43 -0400
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1kCTkn-0002d8-3f; Sun, 30 Aug 2020 22:16:41 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Adrian Schmutzler <freifunk@adrianschmutzler.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 22:16:32 +0200
Message-Id: <159881858451.25534.279324596705885008.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200830190820.20583-1-freifunk@adrianschmutzler.de>
References: <20200830190820.20583-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 Aug 2020 21:08:20 +0200, Adrian Schmutzler wrote:
> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.

Applied, thanks!

[1/1] ARM: dts: rockchip: replace status value "ok" by "okay"
      commit: 0cf10e6f94335495f90fc62fb75d9569f6a603fb

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
