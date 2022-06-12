Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9497E547BCB
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:31:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234335AbiFLTbS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:31:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234975AbiFLTaQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:16 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0E4B41FB9
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:15 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id y187so3829484pgd.3
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jNiHb2zf4hIUtj3fRs5Cp05qIaOZgGR33OERisEw3bQ=;
        b=Kra1q9GS4FRu7pOyXngoZt0PIXUuGrrSybyjnq9ZWOJYF/IslGrzjkpsV3T0uT9SDY
         xsLXryJfZQ7DNxBI6YUBIXS9BY/9YtAHy0PQfFbq+mSmi5msHai94Klhyxo4QMq4e5Fb
         hKhRDAc8kkE4Mcev2jDw+Z8YFaNLrxDTh/X0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jNiHb2zf4hIUtj3fRs5Cp05qIaOZgGR33OERisEw3bQ=;
        b=aAj9V0rQFB9hoR0WZ7uHxsD4gxNk16w7aeCfLJKCMGBFa6gpnug4P7O8icRuepAYfr
         CVjM00z8iedefWtjZwGeZWXr5tfSGULij7iiI2S5uXnRgGIN8h4MPcPQVvmquUnxb4sq
         2q4JkLOdsSXF5NPf2eMt3NtREJmS2zPRFGwk8jLOLZCcujBmcvTnWetKa4lCHy+AUtEz
         YZYLaaQRXm5LCxaUQRcVaQLIcCXocEYfmVNnAom0PjaPvQZ/DD/cu4WMjSsPTv7XwxdI
         4jPB5IVoofW0PP+4iEgmAhEJVwViu8Nc9XoU9255Jsk/XScf08e4J/kpZYvPiy7KaKSo
         8O6w==
X-Gm-Message-State: AOAM530BgYyZnZhtq3r5AkUwO7lQAHkZyXPKflXAgXSrcPKG1wSql5Ya
        pAyAjZcSk7Yi1/5YqGLFO4dp4QmCUl+DJSD7ossbng==
X-Google-Smtp-Source: ABdhPJzVWoPA6NX35buSBu4zo18+BuUgE90Uzf3Dy9SLl8yMhf9+8qVt2b7M0XX2GJ1hZknuE7XhEg==
X-Received: by 2002:a62:d40c:0:b0:51b:bc02:703b with SMTP id a12-20020a62d40c000000b0051bbc02703bmr56023545pfh.65.1655062214999;
        Sun, 12 Jun 2022 12:30:14 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:14 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 09/12] dt-bindings: marvell,pxa168: add clock id for SDH3
Date:   Sun, 12 Jun 2022 12:29:34 -0700
Message-Id: <20220612192937.162952-10-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220612192937.162952-1-doug@schmorgal.com>
References: <20220612192937.162952-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are four SDHC peripherals on the PXA168, but only three of them
were present in the DT bindings. This commit adds the fourth.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 include/dt-bindings/clock/marvell,pxa168.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/clock/marvell,pxa168.h b/include/dt-bindings/clock/marvell,pxa168.h
index 8686bc7bf7b6..b1cd4f20d175 100644
--- a/include/dt-bindings/clock/marvell,pxa168.h
+++ b/include/dt-bindings/clock/marvell,pxa168.h
@@ -59,6 +59,7 @@
 #define PXA168_CLK_CCIC0		107
 #define PXA168_CLK_CCIC0_PHY		108
 #define PXA168_CLK_CCIC0_SPHY		109
+#define PXA168_CLK_SDH3			110
 
 #define PXA168_NR_CLKS			200
 #endif
-- 
2.25.1

