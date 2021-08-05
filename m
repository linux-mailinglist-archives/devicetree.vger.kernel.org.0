Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D9B53E0C9A
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 05:01:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238364AbhHEDBY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 23:01:24 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:50286 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238388AbhHEDBV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 23:01:21 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id CE5C11F43B32
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@st.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Johan Jonker <jbx6244@gmail.com>,
        Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 2/4] dt-bindings: gpu: mali-bifrost: Add RK3568 compatible
Date:   Wed,  4 Aug 2021 23:59:46 -0300
Message-Id: <20210805025948.10900-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805025948.10900-1-ezequiel@collabora.com>
References: <20210805025948.10900-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Rockchip RK3568 SoC has a Bifrost Mali-G52 GPU,
add a compatible string for it.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 01532140096e..6afe7030b859 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -20,6 +20,7 @@ properties:
           - mediatek,mt8183-mali
           - realtek,rtd1619-mali
           - rockchip,px30-mali
+          - rockchip,rk3568-mali
       - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
 
   reg:
-- 
2.32.0

