Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A987B3752CF
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 13:11:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234706AbhEFLMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 07:12:53 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:36754 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234656AbhEFLMv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 07:12:51 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id 8E5611F41E34
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH v2 0/3] Rockchip Timer DT binding YAML conversion
Date:   Thu,  6 May 2021 08:11:33 -0300
Message-Id: <20210506111136.3941-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes from v1:
* Fix the order of clock specifiers.

Ezequiel Garcia (3):
  arm64: dts: rockchip: add timer0 clocks on rk3368
  arm: dts: rockchip: Fix the timer clocks order
  dt-bindings: timer: convert rockchip,rk-timer.txt to YAML

 .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
 .../bindings/timer/rockchip,rk-timer.yaml     | 64 +++++++++++++++++++
 arch/arm/boot/dts/rk3188.dtsi                 |  8 +--
 arch/arm/boot/dts/rk3288.dtsi                 |  4 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi      |  2 +
 5 files changed, 72 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml

-- 
2.30.0

