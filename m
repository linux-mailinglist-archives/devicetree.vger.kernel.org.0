Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF0483E0C96
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 05:00:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238354AbhHEDBL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 23:01:11 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:50264 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbhHEDBK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 23:01:10 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id 92B7D1F43B32
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 0/4] RK3568 GPU
Date:   Wed,  4 Aug 2021 23:59:44 -0300
Message-Id: <20210805025948.10900-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I've decided to split the GPU off previous series:

https://lore.kernel.org/linux-rockchip/2147216.TLkxdtWsSY@diego/

This series now contains only the GPU support, as the VPU
needs a tiny rework.

This is compiled tested only, in this case. Similar patches
have been tested on a v5.10-based kernel, so I'd say it's good
to go.

The mesa side is merged https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/10771
and can be tested without a display, using something like weston --backend=headless-backend.so,
which provides an environment for GL to work.

Ezequiel Garcia (4):
  dt-bindings: gpu: mali-bifrost: Allow up to two clocks
  dt-bindings: gpu: mali-bifrost: Add RK3568 compatible
  arm64: dts: rockchip: Add GPU node for rk3568
  arm64: dts: rockchip: Enable the GPU on Quartz64 Model A

 .../bindings/gpu/arm,mali-bifrost.yaml        |  8 ++-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  5 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 50 +++++++++++++++++++
 3 files changed, 62 insertions(+), 1 deletion(-)

-- 
2.32.0

