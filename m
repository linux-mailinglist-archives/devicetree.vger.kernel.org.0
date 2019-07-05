Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E7ECF603B4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2019 11:59:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727753AbfGEJ7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jul 2019 05:59:31 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:38529 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728399AbfGEJ6F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jul 2019 05:58:05 -0400
Received: by mail-lj1-f193.google.com with SMTP id r9so8689856ljg.5
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2019 02:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VUCWK2MsD9fKCW5H56U5T5vRzO2k7QDz1z157zPKgz4=;
        b=yF9Y4TXdbukUm95Tym+SSRRKXOgy30rcUTY/I/w2ob/pI2Xk6mM2EFws9z/z9Jy5cn
         5yH51ejAX7BSHtxlej6Sietfapi0cefT59q9jJN1ifMQjBqWA/apLst7ul9igPrQzDk2
         drpnxdar+aTtUDEWi3y8Cvaxy3V5c8w9TqANXQggoaL7EEGMCiDWenolNKnmfMlIz6hF
         LA7dy1MeKgwm/taneDq3mE/Cww1ynKWrGI+PksCPx8K3tIZOtjsxbHUhCVxP0us659eW
         TmBrcMnTRQnSIVFZY+/4qysi0crgRy02/xmt3FLPdAsn0bXiaXQyjMv1jXGLbzNsj4go
         eyAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VUCWK2MsD9fKCW5H56U5T5vRzO2k7QDz1z157zPKgz4=;
        b=Ztnnrd6Mzya01OBp/tPMMoH0Ykbmy4EXo2aY+rURpjLGdaEXewH5aH6U6utMionRUg
         OLg16eF7FpbFo4xvThRBv4ATRq53ZX9tmPI32mtrFXMzeWJF5J0GwROHajuc7yRCo0P/
         9nqZg9ujYqRu1Kc/zR9FA7VnPAWJowJiwMUiDmjRjJEFQ8zKczqB3EyXMnSV23GMPwaJ
         IaM4JREnX4VXmbsP+wrKWF0aIvshXZUW7JaYCXCVC0mKdZeVqcEGDKOAtbx1ClA0x9qu
         PBkbwQxmoHFFIoPcLJ94e3jzvyWXu7vjpWegDvjpfkJEaedh+22gWkjQggESw+jUV0vW
         lbAQ==
X-Gm-Message-State: APjAAAUBx+enoWxwyKwjeqs+2o/oERdyUvVQaDNf82qH+VC5qygRptJm
        hVuzBBVL6mkpYoxDLi/mIWuTIA==
X-Google-Smtp-Source: APXvYqx0ZiI7NUTcCSAcDJg+m43On7JBoo/yMllTvC1H2ViTfIYfM/r31p51tmof/TzmGg/DplB8aw==
X-Received: by 2002:a2e:9758:: with SMTP id f24mr1723330ljj.58.1562320683615;
        Fri, 05 Jul 2019 02:58:03 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-34-119.bbcust.telenor.se. [83.226.34.119])
        by smtp.gmail.com with ESMTPSA id 25sm1692704ljn.62.2019.07.05.02.58.02
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 05 Jul 2019 02:58:02 -0700 (PDT)
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Andy Gross <agross@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, jorge.ramirez-ortiz@linaro.org,
        bjorn.andersson@linaro.org, ulf.hansson@linaro.org,
        Niklas Cassel <niklas.cassel@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 03/13] dt-bindings: cpufreq: qcom-nvmem: Make speedbin related properties optional
Date:   Fri,  5 Jul 2019 11:57:14 +0200
Message-Id: <20190705095726.21433-4-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190705095726.21433-1-niklas.cassel@linaro.org>
References: <20190705095726.21433-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Not all Qualcomm platforms need to care about the speedbin efuse,
nor the value blown into the speedbin efuse.
Therefore, make the nvmem-cells and opp-supported-hw properties
optional.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
index 198441e80ba8..c5ea8b90e35d 100644
--- a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
+++ b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
@@ -20,6 +20,10 @@ In 'cpus' nodes:
 In 'operating-points-v2' table:
 - compatible: Should be
 	- 'operating-points-v2-kryo-cpu' for apq8096 and msm8996.
+
+Optional properties:
+--------------------
+In 'operating-points-v2' table:
 - nvmem-cells: A phandle pointing to a nvmem-cells node representing the
 		efuse registers that has information about the
 		speedbin that is used to select the right frequency/voltage
-- 
2.21.0

