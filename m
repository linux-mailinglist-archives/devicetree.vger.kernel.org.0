Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EC4D705407
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:36:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230296AbjEPQga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbjEPQg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:36:27 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8970FD04B
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:00 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-52079a12451so10357311a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1684254959; x=1686846959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FL6w8myWjgtb/S1SAOMcs3r/GDgQ5wlYAe3BUk1YfiA=;
        b=xo2Pq9Dm6YX6qO5b/3CxpSD12kZaq2lWSCY9+3BZuJ10elTQOYqHSNRFp9DSBUcz9f
         0ZznACPcsw8VuISCw9aoV9QoDhIJNvsL3NZ560SvvYl9qLRHiZlYnENELIaCpiGzfpon
         n4ue6OevuZDmPuoxeveSHjRFabsCUvAQ8W+v9w6vWX5/Dg71LxNYr0jA2MjI7waCFx21
         Km+/sVKX377ajnW7/3rF7BBcx4Q1XPm8d9s5DiL4xylCb+vLvClwMDxbGnaThyi1yV9Y
         ID1dnI8FFOOKs53mKkx2atGkomlEyXlVZl7hGUygINDfsO4hrlmNoqcWZnM1ddxnsDiy
         Qz0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254959; x=1686846959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FL6w8myWjgtb/S1SAOMcs3r/GDgQ5wlYAe3BUk1YfiA=;
        b=E3xE/eY24qR+2y77ftTot+5wO4q31/X3rkpfDYtUud0NxbSNjoLp4EReYXPTZeJv7i
         lzExsVr7pOsoEnsibIDMSCM33q629NgWlo2ALB+z29Iw05CpJbcCnL5DLGRhhmM5XCoP
         FGic2fZcTLJsL+d0IAWdDUJq32RkvXYVCQ9stYj6OzXMXQeFETJPFLQlEswsMFspFAki
         Lr169FxDco5LrX8zh+0ncoKbcubVGmtHkIYKUjqXa/5hZFB5USJzgKPxhObgY2xs7gip
         L7/wxkJS0jtzNRzzcUZlmEDg+/K4iKRsQ2KIkXtoZ0taWAjAKlijKQrOtpbo6fIIa6PO
         gzjA==
X-Gm-Message-State: AC+VfDy3Bq4srBsSgmtCAo14LnvN+Va0ByD75+/u3mr7/Apyxv6s7/UN
        22zlu36tWp3EjP8KkzZHz0Ltfw==
X-Google-Smtp-Source: ACHHUZ50CQ0KnsPob+V8BU0toQR5qpD2NM0Wp0w0TtlQvoiLtQGIvMUuuh0spaA/rYLyvGVP14aegA==
X-Received: by 2002:a05:6a20:3943:b0:106:5915:e888 with SMTP id r3-20020a056a20394300b001065915e888mr8161656pzg.43.1684254959242;
        Tue, 16 May 2023 09:35:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a181:890:d993:6673:2242])
        by smtp.gmail.com with ESMTPSA id u19-20020aa78393000000b00642f527cd28sm13686983pfm.33.2023.05.16.09.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:35:59 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/4] arm64: dts: rockchip: Add Rockchip RK3588J
Date:   Tue, 16 May 2023 22:04:52 +0530
Message-Id: <20230516163454.997736-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230516163454.997736-1-jagan@edgeble.ai>
References: <20230516163454.997736-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rockchip RK3588J is the industrial-grade version of RK3588 SoC and
is operated with -40 °C to +85 °C temparature.

Add rk3588j specific dtsi for adding rk3588j specific operating points
and other changes to be add in future.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588j.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588j.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3588j.dtsi b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
new file mode 100644
index 000000000000..38b9dbf38a21
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588j.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ *
+ */
+
+#include "rk3588.dtsi"
-- 
2.25.1

