Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0343F705406
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbjEPQg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:36:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbjEPQgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:36:21 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 274A7AD2D
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:35:56 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6438d95f447so9983652b3a.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254955; x=1686846955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MtjTsM1mEuCx1mqdMrVR2DcjL7gurSFESB57j4R5kX8=;
        b=rcgpt9POa2STf+Dn/QCe97IruTS7MNOkeO0RKWk0bqI80eCeU+e4YMmerDnE+6SGQR
         Ijueii/irgmFTJjef5fObBPDuBd3TyRNu3pUGaq4v9DTlH15qECJFEt73NDudR6jpdad
         gAg53LG4/SVOXc70Clec/K1lUhRZenoCO0GGmPnqezdhFG3n1THR/FhcRD0/u6KBobSv
         XPk8HtF4WgAWykUzUaltyiT90gM9gplLSpV/vognvnSD/OjkxiRhmSXzh5ds5nq9Mrmv
         9vKDyJKnddiMYhY1AjWcjMxSFJmXZm3lNsbEl1cYgWTf3IJNLb5wCwT6cSEOMCRwd9sf
         isfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254955; x=1686846955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtjTsM1mEuCx1mqdMrVR2DcjL7gurSFESB57j4R5kX8=;
        b=EW1KfbEgGKhNHNdEiK9vE7pY1FdMwV5aCe2V2n9RYZHGsiBxeG2X2sMyYFemgYj5Vc
         KHHoPoLXEifKkzgRyR4NuIBZx1DyhOlpDSgj/nI2CTFuByrywWDXwGIhYAG13Xxc51Y+
         AlJV9hSFxKgRmb4KXT9rh/RhaFI2N/ereK18YyUgbY/YOYquHKsHEQYD+bG/ozNXdAL1
         e8niJpFgweI/sjqauv6NWKMpj8HCLG4U2zEC//iDnsQdIQwh8DS7o28enJg18soI3B/N
         Ep7Z0o/WABaJx3wzP3x81N8i/0vL1QkmArShmZqr2WUylI9PNbrfKhgt00zmsihHm+Kf
         NIrw==
X-Gm-Message-State: AC+VfDzZf6rYPv1CcUN6HuwEU/arG/wkE4vcHi4hIEtRQTu1Dd26kXuJ
        kfhAzcra4D9cMxj+4lXuRI7IWw==
X-Google-Smtp-Source: ACHHUZ7TRgRmCwRk/OxbjWskDkXi/JZIDxgcWdtaggzPh9w/3ugpcpcbsaDgvzJ3wViiEFtVGr5HJQ==
X-Received: by 2002:a05:6a00:248c:b0:647:e6d9:88c2 with SMTP id c12-20020a056a00248c00b00647e6d988c2mr35018625pfv.0.1684254955163;
        Tue, 16 May 2023 09:35:55 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:35:54 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 6B
Date:   Tue, 16 May 2023 22:04:51 +0530
Message-Id: <20230516163454.997736-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 6B(Neu6B) is a 96boards SoM-CB compute module
based on Rockchip RK3588J from Edgeble AI.

Edgeble Neural Compute Module 6B(Neu6B) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu6B needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 6B(Neu6B) IO platform.

This patch add dt-bindings for Edgeble Neu6 Model B SoM based IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ec141c937b8b..8a7fbcac87e6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -102,6 +102,12 @@ properties:
           - const: edgeble,neural-compute-module-6a     # Edgeble Neural Compute Module 6A SoM
           - const: rockchip,rk3588
 
+      - description: Edgeble Neural Compute Module 6(Neu6) Model B SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-6b-io  # Edgeble Neural Compute Module 6B IO Board
+          - const: edgeble,neural-compute-module-6b     # Edgeble Neural Compute Module 6B SoM
+          - const: rockchip,rk3588
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1

