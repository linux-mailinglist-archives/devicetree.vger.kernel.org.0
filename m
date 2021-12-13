Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 544C0472286
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 09:27:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231603AbhLMI1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 03:27:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231618AbhLMI1S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 03:27:18 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25594C061370
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:27:15 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id x15so50189740edv.1
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 00:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XJRdC0yjBFixHgLfgHpK0QkgYqSbqgXhEhFiYj/UWmM=;
        b=4IFAqnvDAaIo5tSfp2ZczPVqUrV17/KtPbbAsne3ET+GUx9nZ1X1f0C1YUx0svfRBs
         ECvooUpFSiddxErIVtf/5dNLnLnu+XJTs6LMYkMeBsosIDcuFexBraetWKMp5vnwB1Sc
         TtXqzhctyQhPQXOjCIBFRt2S9s9ouhRTFzHt9yFUTsk9O+9yEm9Q32tjkv6YGL5pilA+
         8huA24F1mm7PFpGY8wbjKaw5KaR2YO4FqtSCNkGnmUQ0w/dZQB+CnzjfFcMp1+fOZCPM
         gcT15q+jRI3U+GIiFLHIcKaRcZ2b0dnpjG8HEVBAZRQKMgGd24mYOWuYh8kDptR9XHXn
         z4+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XJRdC0yjBFixHgLfgHpK0QkgYqSbqgXhEhFiYj/UWmM=;
        b=TkAosLhfKSRFwYOvr+jTD1SUvuqsR+GOAUFJA2j1GVjcIvwIPxCvTyHZniKJ00SdOx
         aiUkZoIcAiyZIRvF8VL/uE+iMLNwhESoy3z/Ys6ongW2Cj3Wop7Qkcz8JtSjKpQMY/ie
         WB2VPAWEachcDqodL6tlSAuSwv1aRqcVADbD7e1YI6lpw27nGe1gJ+rpMEWGRBE7i4ih
         gveNtOsRmpQYcjeGvWch0gGlVS8nJYMD6dXeNktv0aRYXl7fRsL6v6rH1VNcCQ8b6etf
         OEzx8HlAU7E2Bw9L+2Aae27T+xycq8BV+lwX7okkGJT9d8Z4VPAa6/p6jt8pHEU9eMZG
         Zjzw==
X-Gm-Message-State: AOAM531BR8R0e1SrmttmOZovYSgp7UQvot4lB5Tg9GgV1X46NWFNHe7l
        IXSj/M4FFc6cgkrkVCzUcCT5PQ==
X-Google-Smtp-Source: ABdhPJw4uNIAzEmJTEL6rnMtJpBxod1EerfVhHlrjQAw/mLDSAdcYPnkUY8fXsi+Y8QrzX+ai8bvlA==
X-Received: by 2002:a05:6402:405:: with SMTP id q5mr62424290edv.62.1639384033721;
        Mon, 13 Dec 2021 00:27:13 -0800 (PST)
Received: from localhost.localdomain ([2a02:a210:20c5:8c80:7d0a:cd68:c339:f426])
        by smtp.gmail.com with ESMTPSA id b11sm6062432ede.62.2021.12.13.00.27.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 00:27:13 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 03/10] dt-bindings: qcom,pdc: Add SM6350 compatible
Date:   Mon, 13 Dec 2021 09:26:04 +0100
Message-Id: <20211213082614.22651-4-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211213082614.22651-1-luca.weiss@fairphone.com>
References: <20211213082614.22651-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree compatible for pdc on SM6350 SoC.

Also correct the compatibles for sm8250 and sm8350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
I do have the .txt -> .yaml conversion ready for this but will send
as a separate patch.

 .../devicetree/bindings/interrupt-controller/qcom,pdc.txt    | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt
index 98d89e53013d..3b7b1134dea9 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.txt
@@ -21,8 +21,9 @@ Properties:
 		    - "qcom,sc7180-pdc": For SC7180
 		    - "qcom,sc7280-pdc": For SC7280
 		    - "qcom,sdm845-pdc": For SDM845
-		    - "qcom,sdm8250-pdc": For SM8250
-		    - "qcom,sdm8350-pdc": For SM8350
+		    - "qcom,sm6350-pdc": For SM6350
+		    - "qcom,sm8250-pdc": For SM8250
+		    - "qcom,sm8350-pdc": For SM8350
 
 - reg:
 	Usage: required
-- 
2.34.1

