Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED1786038D
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2019 11:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728511AbfGEJ61 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jul 2019 05:58:27 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:40621 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728505AbfGEJ60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jul 2019 05:58:26 -0400
Received: by mail-lf1-f67.google.com with SMTP id b17so2342414lff.7
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2019 02:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T9WpS+HVMWD8ur8SuhCnKoutTiVOWrWJ89RfcZ9PQgs=;
        b=quRGeLJjnlYqiflrezgM9kTuvWWmR1zElFnf5iYvD6ljqXJwm3FmkqeRkRI8tu9o55
         pxGzSYze1Z/rEWljHvZYqpXsWpx0qSEKUk12LrEB7Dorbpjf/PwlfpvkyEy2KxeCXbgF
         xAnbDlYHPjDVY9wr1ilAS6D1dP/LI6zC06Idbk+lP67Giqvc/CZ1Oj+40YW484PcRmQl
         FMV4k0tkNpGw5VEtUwmeq5FghK2vS5XB7cIrrenYBqeOjWPjuZ6tZ9LnfRtRn0QTnFXD
         1db1A99zKgpkWI/fh8808GVMPvpVu64sB7wCPFfXjDKzA0vIO7cWiSzMlfzeZZhuk8oN
         tMzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T9WpS+HVMWD8ur8SuhCnKoutTiVOWrWJ89RfcZ9PQgs=;
        b=Jc+yZCuYbPXW+2CBtOft9uLv1OMLoWARk+LP1SMLDBTgbH9ekqoUgHiklenYGfO/zk
         wAQAok1Xz0aDiM5YJklEUbYRz2xhdMR2zkmo5P3QYfo3XvEfc6jVB5/tzNh+eyDk8zZB
         mMk69RcfKGno0p42fqUMz84OQkqRHf4IL2/UPbgxFFkUV1BwKG20gRh+3WwKg12Q+Z+y
         oDqFZY7lJdK68Ob6ALmFFUPbEw9G8p71i8L2lWGlOLe2CfZK92isgeMJqTjkzoLDeFqg
         /Mq08B1jHty7MEAgQtzpT6hRPm//g8DB2h+3aThLThfZ8htXu3fA2Os04thQt3qIK1f2
         0MAw==
X-Gm-Message-State: APjAAAXi4A+UNx60G1r+sVcDD3MXmLF6HWv7EERDprVbkBzW02aickKG
        QTOg7iJEx7pe2SQOMzL29XQLSw==
X-Google-Smtp-Source: APXvYqzGZq9cBAG/9YdbDllNDNna+6azYgs4EKNX4aNr+IHo7Lltk3lagnCn4o+pTRCRoswpV++XEw==
X-Received: by 2002:a05:6512:288:: with SMTP id j8mr1701505lfp.181.1562320704609;
        Fri, 05 Jul 2019 02:58:24 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-34-119.bbcust.telenor.se. [83.226.34.119])
        by smtp.gmail.com with ESMTPSA id o24sm1674955ljg.6.2019.07.05.02.58.23
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 05 Jul 2019 02:58:23 -0700 (PDT)
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Andy Gross <agross@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, jorge.ramirez-ortiz@linaro.org,
        bjorn.andersson@linaro.org, ulf.hansson@linaro.org,
        Niklas Cassel <niklas.cassel@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 08/13] dt-bindings: opp: Add qcom-opp bindings with properties needed for CPR
Date:   Fri,  5 Jul 2019 11:57:19 +0200
Message-Id: <20190705095726.21433-9-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190705095726.21433-1-niklas.cassel@linaro.org>
References: <20190705095726.21433-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add qcom-opp bindings with properties needed for Core Power Reduction
(CPR).

CPR is included in a great variety of Qualcomm SoCs, e.g. msm8916 and
msm8996. CPR was first introduced in msm8974.

Changes since RFC:
-Removed opp-hz. It is already an optional property in opp.txt
so no need to specify it with the same definition here.

Co-developed-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 .../devicetree/bindings/opp/qcom-opp.txt      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/opp/qcom-opp.txt

diff --git a/Documentation/devicetree/bindings/opp/qcom-opp.txt b/Documentation/devicetree/bindings/opp/qcom-opp.txt
new file mode 100644
index 000000000000..f204685d029c
--- /dev/null
+++ b/Documentation/devicetree/bindings/opp/qcom-opp.txt
@@ -0,0 +1,19 @@
+Qualcomm OPP bindings to describe OPP nodes
+
+The bindings are based on top of the operating-points-v2 bindings
+described in Documentation/devicetree/bindings/opp/opp.txt
+Additional properties are described below.
+
+* OPP Table Node
+
+Required properties:
+- compatible: Allow OPPs to express their compatibility. It should be:
+  "operating-points-v2-qcom-level"
+
+* OPP Node
+
+Optional properties:
+- qcom,opp-fuse-level: A positive value representing the fuse corner/level
+  associated with this OPP node. Sometimes several corners/levels shares
+  a certain fuse corner/level. A fuse corner/level contains e.g. ref uV,
+  min uV, and max uV.
-- 
2.21.0

