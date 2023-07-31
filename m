Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D46BB769407
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:00:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231193AbjGaLAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:00:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbjGaLAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:00:44 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A01E197
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:41 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1bb84194bf3so26306135ad.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801241; x=1691406041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d/dEqRGg68M4eDYviYv5iZ5FREu+8Zk3M+fIpiipGM8=;
        b=wdpGiFO3eQkg3tLYWeeGQ2FKuFQeB+nMnArDI9HqCYtMCGU9n3Q8I2pJjMiTrUEI4T
         KMV9Xg5eDNKBD1MKfJ6oaudA2EngtHtfq4dtQ1xG0DGeawaOS+0MzeF7LDmUq17cTkPr
         LRoLpQfrpqjM3bVEnLx7e594gSuS9ucgg0ua0gmanggBnARSjZnONFWIBNZdRH7i67lb
         Ll+FYKnNhdfQsLRsdc9pay00UJ3OwfQmUFGMsm9HjCW8S43Q2jTPd8cI0kSEKUZ6p3yf
         BQsumaUkmGfVD21xbI+NLQe8J1BFI/d4kHSWm31UHRB/kMtq1spyJQ20ZdJyiDehSpYn
         DNLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801241; x=1691406041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d/dEqRGg68M4eDYviYv5iZ5FREu+8Zk3M+fIpiipGM8=;
        b=R2u0ETRNSLdQLWxW3/Ibr+BDHsZnruOpybmycQFmWE9s922d3itRIqF5TaQ/7sqLzO
         kJj8iquPFZywvtvnF5LBxXjrxCLTCF6W9h9tvzk0DWUmV4pHuswR6PE4rwFeiMHwLXjS
         x2TrpVMB9bMtQnSmDiemZU5ZPWnkWYvwcPp0LPX20aJ0NJJufE/O8X7WSeZOwfS4tyum
         m3GcJE7Q4gS/AcahWepu04UkfNyJaZDu7pic8U3cj8Gn6k1W/y9wuVYtx7mtDLnYTC6K
         qrEUTczVYihhxE93+FxeGp00ux21QZGEDtoPmIIIf2+bNlfrGsp7uiEPrsM4AVfNxEQP
         0ZZw==
X-Gm-Message-State: ABy/qLbWMsAHGgKD4ANrl4kFjasPvzNeSbpX7YVFkS68SHqwO8fY6F6r
        kxe3XBG/wf6Ui9SkFCW1Ed59bA==
X-Google-Smtp-Source: APBJJlGYFd3rzRij7zv9gQDyA93YIQqoTFA5YyhYeAATlxG2yeHK6/pJtE10HCfOFvjSXOZxiMytrA==
X-Received: by 2002:a17:903:22c6:b0:1b8:41d4:89f with SMTP id y6-20020a17090322c600b001b841d4089fmr10528440plg.4.1690801240846;
        Mon, 31 Jul 2023 04:00:40 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:40 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sandy Huang <hjc@rock-chips.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 05/14] dt-bindings: display: rockchip-vop: Document rv1126 vop
Date:   Mon, 31 Jul 2023 16:30:03 +0530
Message-Id: <20230731110012.2913742-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the VOP for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>

 .../devicetree/bindings/display/rockchip/rockchip-vop.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
index df61cb5f5c54..b339b7e708c6 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
@@ -31,6 +31,7 @@ properties:
       - rockchip,rk3368-vop
       - rockchip,rk3399-vop-big
       - rockchip,rk3399-vop-lit
+      - rockchip,rv1126-vop
 
   reg:
     minItems: 1
-- 
2.25.1

