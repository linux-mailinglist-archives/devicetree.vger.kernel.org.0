Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BD4E41A6BD
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 06:45:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238895AbhI1Eq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 00:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238910AbhI1Eqz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 00:46:55 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 766BCC061765
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 21:45:16 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id q16so807141oiw.10
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 21:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jKrFYQbVmIe+dhzGAjc1VtNM8uE4C6GnX/epkEN2A2w=;
        b=mtcq60eptWxV634R2t+ONfOuSk3sV5WKjNRaRBnasymHVuxUlS02osiUxKMHS/GKQG
         LMR+K0TLil8QYlfufI6nhfe00nVHfoM6znSmkatnHN1EX2u8WOEZK+Iecszvh0dXmlIg
         F8KUXUT2yZdhv4RGsNwTPY+/Lxe80QYeBaLq3h8mIRf3sqfsNxbDt8Ax+gPnVCpYrCpF
         Xs3JB3u7fvTeUyGhYLdQLp1bkniE9JoPK1WlX/u1w96uf5+FqthQ9T/lSAhTaMKdE7XT
         AAJZmVa8p3ylIOmg0+M+MwF5j3acNx4CLk30NVaf9mxUZbrv5i8xoVxN+d0x6QBbFHYQ
         tFaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jKrFYQbVmIe+dhzGAjc1VtNM8uE4C6GnX/epkEN2A2w=;
        b=kp9vgt5wY+JcWU8BQzRogGfIg3RnLsBBAClPTpzwJvcz1qtzWYUtgfW2Ln02RyEM0V
         ihoIRxIvqEk6vGxHP+0u+h5qxxoyFRl91AuVy+FL5SKwuqLBM0nj1h5Fv/CATkH3yVNG
         6sRp/eo5OoE/qmU97LLMOzxaDVBM6kmkiGdRF33HW0tW2kBTxNl2Jf+60gaTiyPXZt0C
         ZadJjycgXoihXW3LUUjj7XXsDVLqTA4jpQGT8m6/B3BurWOd3ut6Z39NjkZe9JiPTC8t
         zUsxB8mDfJQm9L3RrHciGwVtq8n3WU885F/X3/D266F1WBTz0DL8ldAD1nFCmqWWkjK2
         LFyA==
X-Gm-Message-State: AOAM533XcOtpmAB5vZlbMV8mA4SrJg5ae+110vj3WS3GyKYp0IS19A1Z
        lgscaRkiXuvigKBGLJS6P8Tq0w==
X-Google-Smtp-Source: ABdhPJz/3hdsDNYQscFjm7jGLKZgf/J7BYyEvihJDaD+7+SAAJ6EC/wMmTlVr48xgAMqu4ANAzKlow==
X-Received: by 2002:a05:6808:11c8:: with SMTP id p8mr2155127oiv.72.1632804315874;
        Mon, 27 Sep 2021 21:45:15 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x29sm2553341oox.18.2021.09.27.21.45.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 21:45:15 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: sdm845: Drop standalone smem node
Date:   Mon, 27 Sep 2021 21:45:46 -0700
Message-Id: <20210928044546.4111223-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210928044546.4111223-1-bjorn.andersson@linaro.org>
References: <20210928044546.4111223-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the SMEM binding and driver allows the SMEM node to be
described in the reserved-memory region directly, move the compatible
and hwlock properties to the reserved-memory node and drop the
standadlone node.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index beee57087d05..2800eae61910 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -99,9 +99,11 @@ aop_cmd_db_mem: memory@85fe0000 {
 			no-map;
 		};
 
-		smem_mem: memory@86000000 {
+		memory@86000000 {
+			compatible = "qcom,smem";
 			reg = <0x0 0x86000000 0 0x200000>;
 			no-map;
+			hwlocks = <&tcsr_mutex 3>;
 		};
 
 		tz_mem: memory@86200000 {
@@ -941,12 +943,6 @@ tcsr_mutex: hwlock {
 		#hwlock-cells = <1>;
 	};
 
-	smem {
-		compatible = "qcom,smem";
-		memory-region = <&smem_mem>;
-		hwlocks = <&tcsr_mutex 3>;
-	};
-
 	smp2p-cdsp {
 		compatible = "qcom,smp2p";
 		qcom,smem = <94>, <432>;
-- 
2.29.2

