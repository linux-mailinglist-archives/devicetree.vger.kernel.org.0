Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6342B3EB2F4
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 10:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239832AbhHMIwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 04:52:17 -0400
Received: from gloria.sntech.de ([185.11.138.130]:43220 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239804AbhHMIwQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Aug 2021 04:52:16 -0400
Received: from 82-99-180-238.static.bluetone.cz ([82.99.180.238] helo=phil.sntech)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mESuo-00077D-9Y; Fri, 13 Aug 2021 10:51:46 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     robh+dt@kernel.org, Dan Johansen <strit@manjaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Setup USB typec port as datarole on
Date:   Fri, 13 Aug 2021 10:51:40 +0200
Message-Id: <162884469491.2596417.6630020779304962035.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210805220426.2693062-1-strit@manjaro.org>
References: <20210805220426.2693062-1-strit@manjaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 6 Aug 2021 00:04:27 +0200, Dan Johansen wrote:
> Some chargers try to put the charged device into device data
> role. Before this commit this condition caused the tcpm state machine to
> issue a hard reset due to a capability missmatch.

Applied, thanks!

[1/1] arm64: dts: rockchip: Setup USB typec port as datarole on
      commit: d34a2131ab59c8bb0786de693729fbd1aeef1049

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
