Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C854276CBD
	for <lists+devicetree@lfdr.de>; Thu, 24 Sep 2020 11:06:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727336AbgIXJGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Sep 2020 05:06:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727268AbgIXJGA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Sep 2020 05:06:00 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44156C0613D3
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 02:06:00 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so2918052wrx.7
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 02:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z3FXRHD+7V1wT09baJ3ICccJ8+q4V8cGXtkLSL+Zhpc=;
        b=PDTCeYDFFkNWafMTZeZm2Q52u41w+WLFguM5lu44RoLuu0K+k2TR9flRk9/tx+5hPv
         8lW8iVhU8eHllOjZaiEERXW7tT+Q7hvJrhrgt7c7dpPr5lunRYtNkXmud9Ws+VwoqiiR
         Ocqvhg7jDk9eMUw8+6SAoNeRL8UoDAW2MTXJ+/fBmpsRQkyy0i9wwLdfouZxKyBqV3/k
         IOeuQHp2OtSIFJT8+Sl+tBFhq7Q6CsXK83n4GjkrktURelRdmlf7rVOBJ0wgouJZDfxt
         Ey0e7sDPJUsqJVreWvRRKKcF1OKb1h+YH4FkLVLUBC7iddpE9m6UqxYyhkQLQQUCq+3N
         9jTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z3FXRHD+7V1wT09baJ3ICccJ8+q4V8cGXtkLSL+Zhpc=;
        b=CPxK0oC/wlaalzELTwPAWb4SlAM8wMZzhxUYe8biF57JndDnTwmUxiUsAfOtbQrO9z
         DJbHBn6kR6u/YfJ6MuLGV0JVgJKq2J2rlzaJXYIF/u4w0BiAfgv846RoHFU/GvyZcDgf
         7FFS1SuTZku/y1qZ2msZsaNNxWYHdlSlaUnJanKNUdSehKpiYiyC1Dim4Doy8Ccfx+xY
         C5IanlIgvcLpXIgz7083enlbpwz9ZZ5QM2lySFhPtdJsn4LGaZxHhSuT111e9dsSQ0hF
         lfDto33NyvacvtnhA8o6J+56lDmG9BrLQ5pfIhsNoimkE7KAx3M+u7kSGLaySyguylfS
         PAFw==
X-Gm-Message-State: AOAM533joID4qAhVXguR2jf2BW4MjpESrhGwszt3+oHEPCPaY6f4EQCL
        5xD3m0Mq1Q7cYrxPE3Ykb6o0UQ==
X-Google-Smtp-Source: ABdhPJyTGZJc1mHaSHoAo/1B95+yrvV/Jx4/aUfqUKUBQIpha/oK4T10sPdml+PC8RbyJNeAP51lZg==
X-Received: by 2002:adf:e4cc:: with SMTP id v12mr3927610wrm.216.1600938358787;
        Thu, 24 Sep 2020 02:05:58 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:11e1:db8b:493b:54f4])
        by smtp.gmail.com with ESMTPSA id h2sm2861461wrp.69.2020.09.24.02.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 02:05:58 -0700 (PDT)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     tglx@linutronix.de
Cc:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org (open list:CLOCKSOURCE, CLOCKEVENT DRIVERS),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS)
Subject: [PATCH 02/10] dt-bindings: timer: renesas,cmt: Document r8a774e1 CMT support
Date:   Thu, 24 Sep 2020 11:05:26 +0200
Message-Id: <20200924090534.2004630-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200924090534.2004630-1-daniel.lezcano@linaro.org>
References: <1f4f3f8f-2472-44af-0536-6bc76741d276@linaro.org>
 <20200924090534.2004630-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Document SoC specific bindings for RZ/G2H (r8a774e1) SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/1594811350-14066-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com
---
 Documentation/devicetree/bindings/timer/renesas,cmt.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
index 762b65094292..428db3a21bb9 100644
--- a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
@@ -71,6 +71,7 @@ properties:
               - renesas,r8a774a1-cmt0     # 32-bit CMT0 on RZ/G2M
               - renesas,r8a774b1-cmt0     # 32-bit CMT0 on RZ/G2N
               - renesas,r8a774c0-cmt0     # 32-bit CMT0 on RZ/G2E
+              - renesas,r8a774e1-cmt0     # 32-bit CMT0 on RZ/G2H
               - renesas,r8a7795-cmt0      # 32-bit CMT0 on R-Car H3
               - renesas,r8a7796-cmt0      # 32-bit CMT0 on R-Car M3-W
               - renesas,r8a77965-cmt0     # 32-bit CMT0 on R-Car M3-N
@@ -85,6 +86,7 @@ properties:
               - renesas,r8a774a1-cmt1     # 48-bit CMT on RZ/G2M
               - renesas,r8a774b1-cmt1     # 48-bit CMT on RZ/G2N
               - renesas,r8a774c0-cmt1     # 48-bit CMT on RZ/G2E
+              - renesas,r8a774e1-cmt1     # 48-bit CMT on RZ/G2H
               - renesas,r8a7795-cmt1      # 48-bit CMT on R-Car H3
               - renesas,r8a7796-cmt1      # 48-bit CMT on R-Car M3-W
               - renesas,r8a77965-cmt1     # 48-bit CMT on R-Car M3-N
-- 
2.25.1

