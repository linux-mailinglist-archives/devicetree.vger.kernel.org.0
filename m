Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 018CC31863
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 01:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726748AbfEaXrn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 19:47:43 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:34851 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726674AbfEaXrm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 19:47:42 -0400
Received: by mail-pg1-f195.google.com with SMTP id t1so1344505pgc.2
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 16:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ssV0Kpewe7V3chVlIn07ylhgai93WBPa5K6GWFW9pK0=;
        b=KJ5xKl0XkK8xfSoBs9VmPUFTbT54EICRlFJivsuzwebkNtDKFLpUJ33geHMGddH7UH
         w3/MSstmwv9OMEBmDvvAlz1PjL2KsWSQJHNz4YGtCW2XkY4w1BKyppCHkuVQueq27kZC
         YBk1ZnXq3eQ0jMl/xfEzp9CmLylDUKjriMFmFqHmtnsfsd5HGaG+99WRKOzoRk26ELoa
         ldQGi8ZpGKWb/FOJC5WK8Acwf7ncsDk5BGS/15OlF53A5pKJbzfCSJvmCT93tEgh4JU/
         F63DyhyYh74DbsKVd6VMOO2ByF1G6bzz4HfyClQ4JMt2gyIEZLlz7ofSUKYACjEHk5He
         BvPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ssV0Kpewe7V3chVlIn07ylhgai93WBPa5K6GWFW9pK0=;
        b=LwvW7pEUFqqzMPpt0ghD60ipe2g3h9OjXynIeCB6fGuPa+QbBTNnUVAxyacOEoK9qO
         G+WlWqqP33kTmFG6y05aoJqwI3PtpVgy4wY7OND89piswQR6+yPu8jO1CrQYlFj1Lb04
         C1syVvgGz2bSGzxmj4QEfwLRKZ0fHy2gryt9ovVuNuIBXfyF2Ev44/76FhguGZDv6x8Y
         zKQAbGiY3cmwkch8F1u8BcWnCXJBsBwiUc+dNio8sVVVjPS9BipD2CpP6VaiSwAwRbvI
         GSSeQPh5Fe+LlWxSlfwyC41LOdJ9WbeZ9r1yRQ5+JEZjeZklYqG6O1vwJ6mOZFqF4mFq
         bVJA==
X-Gm-Message-State: APjAAAUGjCJxuYvDwbT5ISNlA2lyLpdDaFlhnd/KEj9TzByXeoS40z2z
        +78HB96Sl96OOQ8f1DnIiXesig==
X-Google-Smtp-Source: APXvYqwtjTiDatBn5Vb3SL+i2YrV0hy4eHkglHMR/DHW3QZBNEZU4xtufJ4SoM5+3ahLS9OihXpixg==
X-Received: by 2002:a62:e90b:: with SMTP id j11mr13195158pfh.88.1559346462171;
        Fri, 31 May 2019 16:47:42 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id y191sm7056843pfb.179.2019.05.31.16.47.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 May 2019 16:47:41 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     John Stultz <john.stultz@linaro.org>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sebastian Reichel <sre@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RFC][PATCH 1/2] dt-bindings: power: reset: qcom: Add qcom,pm8998-pon compatability line
Date:   Fri, 31 May 2019 23:47:33 +0000
Message-Id: <20190531234734.102842-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update bindings to support for qcom,pm8998-pon which uses gen2 pon

Cc: Andy Gross <agross@kernel.org>
Cc: David Brown <david.brown@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Amit Pundir <amit.pundir@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Sebastian Reichel <sre@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 Documentation/devicetree/bindings/power/reset/qcom,pon.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.txt b/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
index 5705f575862d..0c0dc3a1e693 100644
--- a/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
+++ b/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
@@ -9,6 +9,7 @@ Required Properties:
 -compatible: Must be one of:
 	"qcom,pm8916-pon"
 	"qcom,pms405-pon"
+	"qcom,pm8998-pon"
 
 -reg: Specifies the physical address of the pon register
 
-- 
2.17.1

