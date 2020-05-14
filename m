Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A4C81D361E
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2020 18:12:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727937AbgENQML (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 12:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727935AbgENQMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 May 2020 12:12:10 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB3DC061A0C
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 09:12:10 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id b12so1320721plz.13
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 09:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=siPOjsK0bfqvt9Fq4RN1wntvrens1V+rnit/PWCaq7M=;
        b=Xj8DKYSkjrwtQmsyJE7FFNnNlGzq2qWf5nU68d9GmIRpZQfcwn1lr0XVp3iTV30FCH
         W1jGWlgy6grJu8TOe66KCARtJ898Okr7jwvrQdKHnaajzs7NSz7VLa0WJMnd98B4fsTd
         /OLtLSpeMPe0liz1YkhKCMWcjy2sMh4swGnAv7LJwkPHsdHqnxIyunAAoSQrvbCY6IoA
         Am4Am0t3nD2LujW1cduYmmaQdFso6H03snd5gvCRx3MX9LYtC1ZA/z6kdT3ArRG+XitF
         4xNmbxMWiQwtHdnlVBrXd4fR3EvKKutrqfcjlxhs8jN5p1GDxGXsbvOXP+7QpR+Se5eH
         p15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=siPOjsK0bfqvt9Fq4RN1wntvrens1V+rnit/PWCaq7M=;
        b=spumG9CJNan/e46reKNYPsOAyL6gTCfeiDO/LU+6tCV+GjFc7Y48XLYBJjP4OlkmaC
         dxY54Qtk5qNEl8o6vQF6PKzfmzlcRCKSULksrEBwnPg+NjCgYM9HN/C0+/GZtbiVXHMU
         KGZTUo+9zFD2+Kin0k5lIVRZ06ByIGpZG98xU2A0XUMmQfcuZ/ak1fN1CWITSy+q+9N2
         jrdE6GDFOQHRvFYYlAR6e8p+ejWi5eo7l54pVpLk8pImWniDi3Se2q9f1tjfqcXBOLYJ
         6lvTIj8KloIpD91vBkZ9ml/Yv6BFoy+TjlmP2UgpsZYO+k5x6q9LB0jQko/CpQE0r1/x
         mZ/g==
X-Gm-Message-State: AOAM533sgXmA4SGYZ6blnebFXG/6VC0deQ6BHmZdEzOxc1c0CAACqNVA
        QbCTGkv5t9pDtMjor1UzWqtvmyytaPcFIg==
X-Google-Smtp-Source: ABdhPJzNVlwxe6QApmCD4rhZbpgHBetfVc7QbOiFm7CsmOexk92m/E9V9LIFoIO7epDQBmpG66EUEw==
X-Received: by 2002:a17:902:70c3:: with SMTP id l3mr4910447plt.147.1589472729540;
        Thu, 14 May 2020 09:12:09 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
        by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.12.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 09:12:08 -0700 (PDT)
From:   Amit Singh Tomar <amittomer25@gmail.com>
To:     andre.przywara@arm.com, afaerber@suse.de,
        manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
Cc:     cristian.ciocaltea@gmail.com, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v1 6/9] arm64: dts: actions: Add DMA Controller for S700
Date:   Thu, 14 May 2020 21:40:54 +0530
Message-Id: <1589472657-3930-7-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit adds DAM controller present on Actions S700, it differs from
S900 in terms of number of dma channels and requests.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since RFC:
	* No Change.
---
 arch/arm64/boot/dts/actions/s700.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 0397c5dd3dec..56f2f84812cb 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -245,5 +245,18 @@
 				     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 		};
+
+		dma: dma-controller@e0230000 {
+			compatible = "actions,s700-dma";
+			reg = <0x0 0xe0230000 0x0 0x1000>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			dma-channels = <10>;
+			dma-requests = <44>;
+			clocks = <&cmu CLK_DMAC>;
+		};
 	};
 };
-- 
2.7.4

