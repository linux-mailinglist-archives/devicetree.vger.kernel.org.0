Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41F16752555
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 16:40:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230484AbjGMOkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 10:40:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbjGMOkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 10:40:09 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 674382702
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:40:08 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-668730696a4so512193b3a.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259208; x=1691851208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K5vZ1vv0N6K8LaB+S//93BMQdabNI48ulO78d3KhNAs=;
        b=ViUr4yqzbp/7T1fHL1dSLBxZ5canTK9h+yFzNEtiMTgBVeXe/XRCSjtU8Ys6/nxdVC
         hG0ythVN0K8XferSdjJdJCB1jugLF/mHAFmdqxx99/crMOQJXOsg/pw87UENZCYePGuo
         j/Mll1JQmB3xSa/IQ6wOWCeRsTtbqqtTXiU6TAJjw5rviSJXqh2KzjLkLSTFxxBAsfKH
         jJaIyb4jeYgYElpXMGeRcWr0ski9x88Dvuk9pDjKT7yIDHqZp1ISSuWYDILxTyhLeHTQ
         aDy3wz+5ehBKBHI+F6tXdK4D+BwAb6AyAy4o/hmjhUD5bxtAYhKnDtTa0BZavaYkm7fh
         Vbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259208; x=1691851208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K5vZ1vv0N6K8LaB+S//93BMQdabNI48ulO78d3KhNAs=;
        b=L5veWds6Q/phmAVdQ1S1yamsB3IlPiUtiMSY2kJJbUVVNV/pBeaBppb2JYSuegcNRh
         BH2at6CROWXjafQ7liDICY5mwD1z50I2GxAfngRSDRcZE5RdHKThNbUt46WEXUA56M42
         ej9ltGD6ZHsrm3/acdgPjfglGImvDe3SjDLevV0Y7X73UMw1R4A1Y4DINOEajwrzPRbI
         Lo9IIXD7xOGOQ+MeivG61YYueOzJwb/FZXJjPCv/MEjv9DwNClBGbFE415DQ2LFa0bJR
         8vm+Mu1N12qGimIy6EqNpHxhg8JXnzXKN/NsnP2Q6r3RXRJsZdicq/ocbRhf1Ieq9v2F
         YkfA==
X-Gm-Message-State: ABy/qLbKc2RYUzZtYnZckAA5xxCQ0lbCsSnvEZLzC2iI9auFU5x6xvUl
        QsxAt3EsgWwOmlgAF4gALbj0Ng==
X-Google-Smtp-Source: APBJJlHaB4XRsF1iruppO3ErGKHoxLxsp5GZ23w3i5jBtiochO2BfLPG5L2raB1yLQjo/ijQpc7KXA==
X-Received: by 2002:a05:6a00:3a1d:b0:680:f6fe:8908 with SMTP id fj29-20020a056a003a1d00b00680f6fe8908mr1431203pfb.9.1689259207857;
        Thu, 13 Jul 2023 07:40:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:40:07 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 8/8] arm64: dts: rockchip: Enable RS485 for edgeble-neu6b
Date:   Thu, 13 Jul 2023 20:09:41 +0530
Message-Id: <20230713143941.1756849-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
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

Add RS485 support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 1bcd64680ff0..72b0e5150155 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -84,3 +84,10 @@ &uart6 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+/* RS485 */
+&uart7 {
+	pinctrl-0 = <&uart7m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.25.1

