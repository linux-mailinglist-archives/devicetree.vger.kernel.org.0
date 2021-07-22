Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53E703D1D0C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 06:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229962AbhGVDpw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 23:45:52 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:51919 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229905AbhGVDpv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 23:45:51 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 23AAC5C01E3;
        Thu, 22 Jul 2021 00:26:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 22 Jul 2021 00:26:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=9IB5YC/emfzmo
        8kaHVyvP5nfZ0TMPOR+J27Paj28iVg=; b=WIWAjhm2q8jrPtxlhNg1jg/cbDXC9
        Oa7EbFkvQYUAdaPhMgFaF3820V/MLmrk+/LftZPihezCAIUZyD6enxVBD6yiiGoJ
        Z2UGnVXHZpBXgGMGrQMdSroPSHga+hBGFxpFy5PNv4dhGFhkEuHoXtfyMASwAWKF
        mol0yg04FvDu5rND4iT8N2anmv0c9lFYdwxHDnkHNMj80ofqW3oA8ySQVw1HLLeV
        3C3LFMid12FlLxA4gfzf1hfR1gJsgG8KlRBqVf7iii3kxpHdKnP/Oxb2XKiWHsEt
        xCNhP0aVwo5H05iqj9E+8gTg4QAW/RC+RKNCa0Bl8MfZaF5K1uFjpu4Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=9IB5YC/emfzmo8kaHVyvP5nfZ0TMPOR+J27Paj28iVg=; b=qs1OkuQ6
        Y/D7J/X2BSniLVoSF1qJf9MT8ep3bSPQ6InAAVSIakMQZcmI+R/QAO5BxtNdX60O
        hfu9PL1Lv2ggfAUf2bdROECh0Mm6eNbkzMezZ04xEcLoZsdsLo5k0rn63VJ8o0az
        EWdCnBAkaM3i8S7oaR5PcAI+8lsJtugOTdYqV2rTYBm6JmS4QRfhP6xP2/n0USmQ
        4qIK+jbauMKv+9C28UwUuLQc2I7P/8Rc/Gdtw+UONxc+qeWSkzVnLARSNSQb+9JO
        N/9azsCcQGRV5E2OIcmVrNzj5eBc4yAj0P/DIWw0GB/djfGH39vtOixG16wCr1pO
        30N/yc7Nnf+CqA==
X-ME-Sender: <xms:c_P4YIy3z7WbiFlj1PLP0exq6UrdxlUD_Ylzv4gXiQId7coUgs8U7g>
    <xme:c_P4YMQKX-1zoy4zc93L9hzAQ_xUIZGCG_q9CIsSNOLb2rqGZ1JoSxZfXRY28Rz7X
    Tb7eArVEDCC_IzeCVU>
X-ME-Received: <xmr:c_P4YKUFNFGobbrizuyifF2m-5pT2cHrOwtGjXiH9ocPjWOfJsQKacn_heBFa30urHgqOxv-jIy9-mBhl3wDvPuGzHaxFxfJjIVbkyUsOv35o76nX2JPwNoHeWzSSbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgdekudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:c_P4YGgRON_hyVSi6KxESnE3nWnT90MJ4apqoNHh7bXrJsq8-FWrJQ>
    <xmx:c_P4YKCdpuLfeUuXsdWobMzyeCDap0wgD0ng_F3sz_ZRsj6ZAk_5zQ>
    <xmx:c_P4YHJ59cJ1ZD5arjkfGoAMw07B9aPOzpTXwXQgJNPla4V2zGz7Ag>
    <xmx:c_P4YB5GN9DSZA32Dt3cFeKkOD4tzBzgcsGy9KYorMXCVbG3HmoLBQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 00:26:24 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 4/5] dt-bindings: arm: fsl: Add Traverse Ten64 (LS1088A) board
Date:   Thu, 22 Jul 2021 04:24:49 +0000
Message-Id: <20210722042450.11862-5-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210722042450.11862-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible for the Ten64 board which will
be included as freescale/fsl-ls1088a-ten64.dtb in arm64.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1c827c1954dc..f92919a020e3 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -973,6 +973,12 @@ properties:
               - fsl,s32v234-evb           # S32V234-EVB2 Customer Evaluation Board
           - const: fsl,s32v234
 
+      - description: Traverse LS1088A bassed Boards
+        items:
+          - enum:
+              - traverse,ten64            # Ten64 Networking Appliance / Board
+          - const: fsl,ls1088a
+
 additionalProperties: true
 
 ...
-- 
2.30.1

