Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7338D40F027
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 05:05:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243659AbhIQDGX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 23:06:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243596AbhIQDGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 23:06:19 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF99DC061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:04:57 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id k23-20020a17090a591700b001976d2db364so6298480pji.2
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=x7aZTfIyIwGJxBeqjp2VS+8QxWVwQJBhJBrFL9IwQ/I=;
        b=TfH/UwihBn07N6B8SaiphNPVx6O91D902u9TQ/EbMLi02aRRf/JGhLsckQFVRKagqX
         nj+URvWiTuuPkzk5H1UH7HoHwe8d5kbH738tn5BQ89Bs2t8GKBygiRZOnMWB+xJZCS+D
         pyRK1oJ0eW7KIIATgqVaTQtK10QDQLDm4pnmkKvQDcaR7hU4JoSLufXXeExBIZBD0o6e
         kvB6yQoLhovrdcwVN07it/wHj5Qa2iGdSKzDZ6KKKLBJh5HZV27n3Pb8KYikgpF1JSoL
         28IUSnRqpyia+pd6cYjRqfG0qLYE7/7dYnc9ORPQdoW8/dmtq8rJ561E4ZXskyPuLCc2
         er1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=x7aZTfIyIwGJxBeqjp2VS+8QxWVwQJBhJBrFL9IwQ/I=;
        b=GcrahXb0bkmJyA6fcYiU0ALWWdaVFABu++fB7sujCSXGq5OWpPQI25P5Ad18B1cluM
         mB9fEnZhYAvTdt7laz7VRE2iAH8rbTXklH3tJ3YjPTGt8oqPcl39Hep8ndyDKi2FxTlZ
         d2gYJvioLXeARIJBBXD/SAGqmCj/+pC+1YqGTs9y/l4CAJdSXht/7EzJvEKqJLLawMTe
         m3/BHPwZLG8es5qnNpDsmUUfmvWrYbNSMY5twRa/0hHr9W1yovjE++0+nhRBrK8EOqCE
         a9P2McZkP8nA8XFyta0NKjA23puEZaKTfMgfBPPl6YN6ZXu/91foN/y0zX5u2INLXMXp
         x6Pg==
X-Gm-Message-State: AOAM531XsNWwP3jocOIf4uSEVNQobdPqmnNrCtx2/X8UhvW59UyofRGY
        OhnSn7fHbz26EyNZRZsy/2Tc3g==
X-Google-Smtp-Source: ABdhPJxW3k+400xVkw3brZ8+3L3VXOsWc6oWBCos9LEzYvlO/dzrhaf2VqwNivupm/FilZzgjd0nEA==
X-Received: by 2002:a17:90b:1a90:: with SMTP id ng16mr18682154pjb.116.1631847897462;
        Thu, 16 Sep 2021 20:04:57 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id q2sm9133930pjo.27.2021.09.16.20.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 20:04:56 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: clk: qcom,rpmcc: Document QCM2290 compatible
Date:   Fri, 17 Sep 2021 11:04:33 +0800
Message-Id: <20210917030434.19859-3-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210917030434.19859-1-shawn.guo@linaro.org>
References: <20210917030434.19859-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the RPM Clock Controller on the QCM2290 SoC.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmcc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmcc.txt b/Documentation/devicetree/bindings/clock/qcom,rpmcc.txt
index a4877881f1d8..da295c3c004b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmcc.txt
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmcc.txt
@@ -25,6 +25,7 @@ Required properties :
 			"qcom,rpmcc-msm8994",·"qcom,rpmcc"
 			"qcom,rpmcc-msm8996", "qcom,rpmcc"
 			"qcom,rpmcc-msm8998", "qcom,rpmcc"
+			"qcom,rpmcc-qcm2290", "qcom,rpmcc"
 			"qcom,rpmcc-qcs404", "qcom,rpmcc"
 			"qcom,rpmcc-sdm660", "qcom,rpmcc"
 			"qcom,rpmcc-sm6115", "qcom,rpmcc"
-- 
2.17.1

