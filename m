Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6197B4310B3
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 08:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230091AbhJRGm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 02:42:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhJRGm3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 02:42:29 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 514BEC06161C
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 23:40:18 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id z20so66792912edc.13
        for <devicetree@vger.kernel.org>; Sun, 17 Oct 2021 23:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20210112.gappssmtp.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5/7hBCmpfW9MTjUXgrKdtGWjkgtU8/we8OWRfC8+kMU=;
        b=jGCiFWIozFtWDE1T+9nxnGqjF2A1pX0+KZyJP2RLpI1vI6tRTql9ktYE+xvnk/+nVT
         i54qqTOQ8UiOV/6Djx6Ye/m4JtiqqiamvXTRLztf9jzVUnpfGpV1Ws/rwnWQb7B4yxKB
         o4sjyaGPbV8qTNWy0JTp9g9vY4Tfg0cPTepWFBmMcluYYGabrGcUAkxIRSGLfWis0DfA
         mtNNqgM6xE+fU9Q1IuONkj74QTkmrfagz4ASHP086615rpO9S1SwknxKofRDQieBsKgh
         H6Uq1xO14mKNaLR1Zshuql0Tyh8a1C3QmyYImRYCZkn02zfFbSKqndXljCavVNIqwSIj
         mP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=5/7hBCmpfW9MTjUXgrKdtGWjkgtU8/we8OWRfC8+kMU=;
        b=JzcfpiLc3UqK7rnioYBFyym5CajvwSdNL2nn8ilbX/xZimqkHFGQc0ublGiTSbtPNS
         kTpm+AYsayx4GZI4rr2WHQKVF3Jqw4X6qiQau3M78MyPdURu98+x+e7foL2/eh2x8CZG
         nFWG4j+3A3DaXq7btaisd6U+HL7B2AKWXStRSHPuLtYLC/iTAzhmd46/fvrk6R9UUd4z
         D6TDcDjrNbmJ8uQsMjfA9dwMLQLTuQWxIYjwZhSOpOMC7snXtCY+vQv9Xo9Ihobyr+SZ
         YGirR8KZNeVj8sjUA7rLBnsykSBUIzhU+gxhblKX84xWIyreYh9+fam5qlEPEAYureYj
         nHCA==
X-Gm-Message-State: AOAM533mGtdxq1x6aYRt3Y5N55YSOgXlLHXwqhqg+AZRC5rcQG1/FPeP
        0kXLA11FwJQ11e4ybpFsJDZe+A==
X-Google-Smtp-Source: ABdhPJwpfA0BoEQhv6pd4Op8P97mbX7msngKe6mKU3AEA7gl3+/5yuT20iGp771CluTA50hpKXe3qw==
X-Received: by 2002:a17:906:6bce:: with SMTP id t14mr27276140ejs.546.1634539216960;
        Sun, 17 Oct 2021 23:40:16 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id j22sm8253013ejt.11.2021.10.17.23.40.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Oct 2021 23:40:16 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: display: xilinx: Fix example with psgtr
Date:   Mon, 18 Oct 2021 08:40:12 +0200
Message-Id: <a291be294dea6e580ad9acd436742a48b7cd00a2.1634539210.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit cea0f76a483d ("dt-bindings: phy: Add DT bindings for Xilinx ZynqMP
PSGTR PHY") clearly defines #phy-cells as 4. In past 5 cells were used by
it never went to upstream. That's why fix example by using only 4 cells
instead of 5.

Fixes: e7c7970a678d ("dt-bindings: display: xlnx: Add ZynqMP DP subsystem bindings")
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml b/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
index d88bd93f4b80..10ec78ca1c65 100644
--- a/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
+++ b/Documentation/devicetree/bindings/display/xlnx/xlnx,zynqmp-dpsub.yaml
@@ -160,8 +160,8 @@ examples:
                <&xlnx_dpdma 2>,
                <&xlnx_dpdma 3>;
 
-        phys = <&psgtr 1 PHY_TYPE_DP 0 3 27000000>,
-               <&psgtr 0 PHY_TYPE_DP 1 3 27000000>;
+        phys = <&psgtr 1 PHY_TYPE_DP 0 3>,
+               <&psgtr 0 PHY_TYPE_DP 1 3>;
 
         phy-names = "dp-phy0", "dp-phy1";
     };
-- 
2.33.1

