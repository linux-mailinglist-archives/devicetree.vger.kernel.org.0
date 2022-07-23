Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA8257F17A
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:45:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238679AbiGWUp1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238585AbiGWUp0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:45:26 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B97965D0
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:26 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id q41-20020a17090a1b2c00b001f2043c727aso6939235pjq.1
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DmKFb/vDMt19Sbfna2/3+U25r5gYc39kz41HAg/4dMQ=;
        b=5UN5LO1RtsnqeSWqyDZAhec1gN/rt2Q/I/sL8e79+tBIXNQIoKy33ZIFKeb1wd7Yrs
         O87aki/5YULMiGhfjCGqQ5bQcy/PCW7a0OtY1W+b7bPmRc24VUEOucavAqy7cxal0qTh
         ixZUb/7TsppHba35/11JABGd8KYG7wfRdzR5YW/EdxmBNZp1j5qu14OPVE29ZuKyqUpy
         +6MiwaiNwbCMH6cYPDOAPfi6JGrt7/h8D0Snyit56pm1o+5IC/NtpYEe6au4m7Gh3ZJ8
         z/NAYbJc+daTaek8wk5xlXopvsVW0oTc4WgKA6heXBWywwHkPopUnZP9MzXFSur3B+xf
         nAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DmKFb/vDMt19Sbfna2/3+U25r5gYc39kz41HAg/4dMQ=;
        b=2wvsO6eafL/svTeGttC5hnpm7LCfymI/2IYxEsL/Ht9Pje2LSrvFHeMknr1wn0Yqch
         jRA2hG5H/cC08bPJnmm/PWHS1KjFv/wpIuAZEr500khzIZdRuQ4TdtO3ywx6mcWX2TgX
         5bIbpndCUJ2CxSpJyU8bYrVT7EcgIcgcG/Pni4GfKyWm+R5fLRiBb13Wb8cacoKwf08E
         XZ3e6nI5tcraNBZPtjQzZy8Wei6FbUAYhKjKk65GyFivNqVCCnEZiGyRZKXjucwSzqA3
         rOs56tfLIt87RIHPBJBcUk1+T93eJi1/YdtAA+fRjQwtUs6PVXxen+NoFXYaqp4Yo2nU
         zc1Q==
X-Gm-Message-State: AJIora8Z0ovkQE1yEkP3DPDQ+JSkNsDzys9NqswDUN3g0iy5/1UMRzR7
        /DSUXKtsnR2h4cRXQfP5dJqPww==
X-Google-Smtp-Source: AGRyM1tOS5gXY6Wdcb/OlvTG3T6KCahHwsireSmsGLQsOcR9R7xdqqVx00aolT7vl7ntSpkHc8XqPg==
X-Received: by 2002:a17:903:189:b0:16c:375e:42b3 with SMTP id z9-20020a170903018900b0016c375e42b3mr5516831plg.91.1658609126147;
        Sat, 23 Jul 2022 13:45:26 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:25 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 18/22] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Sun, 24 Jul 2022 02:13:31 +0530
Message-Id: <20220723204335.750095-19-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edgeble AI is an Artificial Intelligence company with a focus
on deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 0496773a3c4d..d2b8ef2e1ea5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1

