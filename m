Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3DC72570B4
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 23:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726179AbgH3V3b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 17:29:31 -0400
Received: from gloria.sntech.de ([185.11.138.130]:48554 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726178AbgH3V3b (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 30 Aug 2020 17:29:31 -0400
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1kCUtB-0003Bx-V8; Sun, 30 Aug 2020 23:29:26 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Adrian Schmutzler <freifunk@adrianschmutzler.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 23:29:24 +0200
Message-Id: <159882296016.30005.15088296328562827915.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200830201112.1934-1-freifunk@adrianschmutzler.de>
References: <20200830201112.1934-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 Aug 2020 22:11:12 +0200, Adrian Schmutzler wrote:
> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.

Applied, thanks!

[1/1] arm64: dts: rockchip: replace status value "ok" by "okay"
      commit: 9caff35d7eba8e15c996c694a282fd38b2ea345e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
