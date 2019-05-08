Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D16218262
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 00:43:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726945AbfEHWnR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 18:43:17 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:44597 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726986AbfEHWnP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 18:43:15 -0400
Received: by mail-pf1-f194.google.com with SMTP id g9so184530pfo.11
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 15:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5q9dsjY3DBzndr7wkuvZRTHnczHf4Q/fpKRsCx+qJwI=;
        b=N7Vx7SQnonpq06ayiMuPXO0+ovJ9IYasbzcwhbTme1cqt6g2l9EAJqV0qhEcQK1LXZ
         8RsHpt092gP2klW+DYNIce8SMCQbCIbM2mAaR/ePnQcJby/DDVcuFak875Y4u9bTLuCY
         ZF4KHTOQnu5/Y00nHE9tsG4FY4ZC9vyUPgEylDJ+iqA34If3nZZP23+P8+WcOnk90U6Z
         GCB5qzKAGTplbpCxsI2zSlBk1z63A99GOru/9uItbbTCs3V7fRcMgbjRDswQ4CLZV5mn
         9I9yvTxeEwUs9yr0dEmFXyJrdPlhs5VBxj/lOiIlznABbisQ3pZ2hLvUfQbZ18G0j1Du
         UAvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5q9dsjY3DBzndr7wkuvZRTHnczHf4Q/fpKRsCx+qJwI=;
        b=qvF9IhJUd0YKIrcZlcHI7jqlD7vkitjbP3oAiQ4E/9ZtCo7dIdczLEWjWY9NAoHZyQ
         FAI/swPxMHmd03x3kx3KTvnDTkh2GlPAywwimvGWq7BJyBDdugzl6nahpwfUreCP8yHG
         /t+tSI4E/7KKrLyeEu8Whx5VrKpEF/Xu2/BWOx5gfEy9X4JWTQzScbjMBfuDoSGd3UeK
         3ShxqAGO5VoTHABj0kdTHcaAjkgehqtPpNSAEVpIK3T7wdt9efutGm9mxfSMwAR3pvnj
         xPBLiU2W/U3g7UQfzWEufYusaRlwP5g1wIJUi2aOCLYN4w4z56ZXqYFYFdu9QtqxBhcp
         bztw==
X-Gm-Message-State: APjAAAX1kuZx7VYkS1hYl6SwEZWSwHa7SX/Vj5PqDMX+PBQ0pW9iGOh3
        JVXHnij9t1dtZmot2137biFmQw==
X-Google-Smtp-Source: APXvYqzOx+Ty15Ki0fJrGT+TPqPGOflDSOwh2gjGYsH4NMh4u336RZkfTJHnFY5wiuyJ+fbYEByX3Q==
X-Received: by 2002:a65:48ca:: with SMTP id o10mr900894pgs.136.1557355394400;
        Wed, 08 May 2019 15:43:14 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 25sm320494pfo.145.2019.05.08.15.43.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 May 2019 15:43:13 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] arm64: dts: qcom: qcs404: Make gcc as reset-controller
Date:   Wed,  8 May 2019 15:43:07 -0700
Message-Id: <20190508224309.5744-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190508224309.5744-1-bjorn.andersson@linaro.org>
References: <20190508224309.5744-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

GCC is a reset-controller, so define #reset-cells.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- Split single patch, no functional change

 arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index ffedf9640af7..65a2cbeb28be 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -383,6 +383,7 @@
 			compatible = "qcom,gcc-qcs404";
 			reg = <0x01800000 0x80000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 
 			assigned-clocks = <&gcc GCC_APSS_AHB_CLK_SRC>;
 			assigned-clock-rates = <19200000>;
-- 
2.18.0

