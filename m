Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 654D937797B
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 02:12:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229999AbhEJAN2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 20:13:28 -0400
Received: from gloria.sntech.de ([185.11.138.130]:55864 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229853AbhEJAN2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 9 May 2021 20:13:28 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lftX5-00085c-Br; Mon, 10 May 2021 02:12:23 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Ezequiel Garcia <ezequiel@collabora.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        kernel@collabora.com, Rob Herring <robh+dt@kernel.org>,
        Kever Yang <kever.yang@rock-chips.com>
Subject: Re: (subset) [PATCH v2 0/3] Rockchip Timer DT binding YAML conversion
Date:   Mon, 10 May 2021 02:12:21 +0200
Message-Id: <162060552749.1271206.3008409330703145492.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506111136.3941-1-ezequiel@collabora.com>
References: <20210506111136.3941-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 6 May 2021 08:11:33 -0300, Ezequiel Garcia wrote:
> Changes from v1:
> * Fix the order of clock specifiers.
> 
> Ezequiel Garcia (3):
>   arm64: dts: rockchip: add timer0 clocks on rk3368
>   arm: dts: rockchip: Fix the timer clocks order
>   dt-bindings: timer: convert rockchip,rk-timer.txt to YAML
> 
> [...]

Applied, thanks!

[2/3] arm: dts: rockchip: Fix the timer clocks order
      commit: 7b46d674ac000b101fdad92cf16cc11d90b72f86

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
