Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0695D3FAB0A
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 13:18:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235177AbhH2LSx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 07:18:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235139AbhH2LSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 07:18:52 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC59C061756
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:18:01 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id s11so10490973pgr.11
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 04:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SAoDhMJcJw/JNrAyWJntSqtxMB6xb1NpJmbv5t83Gjg=;
        b=oWox1U7kHqQx2Aeo6rJHDWwXkAfKWCvDJZIWwstFLkOLqoFHIocMnTKG/g62KuDI+W
         9qQfpekszP5RnyZkvi3HedKo1UMMIIpoyXenq5WE/q26wv8N0OEiG437h40+vf8eOBi0
         guJTfHGRu9D7dU5O+CPsWHvAz0cJR5FAlkhpN2nN0H56w4XLmGcUct7CAMJ68uzbhOpq
         ln8eAP4ihzlo8ABlA2ADV08QBC0snpS8fMFjIhjkfk0IicvsPFjVS5eV3RjgPM3Ptht9
         i9seNq4YDWaxCJlh1VQ9+EZHFAsfWpLNN7eCD2qxWGaPzq5jwLLNMuon1x3aiEAAc9YU
         n6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SAoDhMJcJw/JNrAyWJntSqtxMB6xb1NpJmbv5t83Gjg=;
        b=nf32lX+O+Cqz77TSf3Oq0CLElSQUhQp4eutLABMZwcqBBIN4qPsLClBIvt00dAwBdC
         rDD/YKOoHWZC9KGfvOmLYaTIrT0SBTmB2uYuBMJtpjuCcLt3G5YFAbe5X+9v/qMGgdXs
         yNTWXn6qj9b2r5UPA4o2ywVPXVN7UQalnr+DknvQF+7woqDTVXgvz/cm4CuOi0Dct8vF
         zEPqiyLRbbb4F5OqIvYxlpMEc8pbYiVRw+gkhJYNuthRX3ANQ+Urtg1ti+k615D0ocaz
         rcc0RW+L5LErO+8Qr4PGD8rbudbusiZ/qAx1r1fzE9iUKi9br68DL8NDyfq3PUfGK2VS
         O0ZQ==
X-Gm-Message-State: AOAM532z2iGp92zY1DIcE6fTe2kt7BsRqL6F47BKlai/S1+gEf+1U5/P
        WqLKszqyc74UrInkxzQ6LxgzwQ==
X-Google-Smtp-Source: ABdhPJyhUyFXSYML+bpfW4jltSp/RI9ithgvWY2mhrvG5YIR2LuiQKt68udLrYkEl3iUnjWsVZ1L6w==
X-Received: by 2002:a63:fc0a:: with SMTP id j10mr16417786pgi.136.1630235880666;
        Sun, 29 Aug 2021 04:18:00 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id gn12sm16857115pjb.26.2021.08.29.04.17.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 04:18:00 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/3] arm64: dts: qcom: ipq6018: Fix qcom,controlled-remotely property
Date:   Sun, 29 Aug 2021 19:16:26 +0800
Message-Id: <20210829111628.5543-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210829111628.5543-1-shawn.guo@linaro.org>
References: <20210829111628.5543-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Property qcom,controlled-remotely should be boolean.  Fix it.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index d2fe58e0eb7a..7b6205c180df 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -200,7 +200,7 @@
 			clock-names = "bam_clk";
 			#dma-cells = <1>;
 			qcom,ee = <1>;
-			qcom,controlled-remotely = <1>;
+			qcom,controlled-remotely;
 			qcom,config-pipe-trust-reg = <0>;
 		};
 
-- 
2.17.1

