Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A97974BEF
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 12:42:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388201AbfGYKmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 06:42:51 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:37271 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389377AbfGYKmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 06:42:51 -0400
Received: by mail-lf1-f67.google.com with SMTP id c9so34133130lfh.4
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 03:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CCZt3kPOpetUJel0mQo8gQ4T9AKw5U16SpvhhYzlabk=;
        b=dPjlq6A2lvWvgrMNJdWXllzHpmLL0eSjAKl3p11X8gAO1Yvl99cnY+xirJks9vbb13
         6nCvLEzGEA+2Mg8BA/VSM4x4lPIC4J3FPTKrWy/NmUUST4mSkbSrrw4h/Htc1lt3k9wG
         c2E2gKHIQKGr6YPf5me3iOR9WO3A3pxO2gOPg7kQqbJpotHyCEZ065jJ9upAazCdKAa+
         Hkv6dhJkQvDN6NIXUh+c8CnF1I9EDZW0xg4Y1ThnQCMHCW7nXjOdeN8YAjOSI7FDKZyz
         HwGJ+jvUU2QgFbEP+6Kxw6TmQYkwHxlRRLRuwVPtdM5ifpOujExT0iq02CSofXx4/moQ
         SRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CCZt3kPOpetUJel0mQo8gQ4T9AKw5U16SpvhhYzlabk=;
        b=X6MOaMvhdazdvuJsCt4f22P5F+efv8JDjoCM/8/DrkVmsKwUzUIL42V8Cj+6HXVdwa
         aE6YXueDDcr7rKDAlFU2Feyr+3CGJI7TfzmR2AvPQ+YEjj1YJ8EmyWRPmQ+V+NQm/sI9
         FgO03WETw3IoXT3OmdEbc87RQEK0f+qQf8wQN83u5/XbZlFh0B4zblQI2P89MWnD/zJJ
         hbTy4FUpddk0iqHUnpb8EWc6wDzCw2QG2s0pxfp20D7OwmqsbInVQN1ANL3wSd4V6fbj
         ciJEWjd59C05LQFpvS5NGYpg4tdhmMohNGqvW2Qecb5O80XPmQFutPkwpncYU36lyUBh
         5Z1g==
X-Gm-Message-State: APjAAAXhuQPdx5eFVWtoVdqZKK68/Vj40tJBgJz80eXA3zL058fCNiUf
        u9E1YvuptIp1sF6dciBCvtsK3cL+bAw=
X-Google-Smtp-Source: APXvYqyHYEAnKCQigACGznav4uCxvOKhm8HycAN3Cp3gSen5Bex3GSkUOUEJni/ors317BJHT6r5Mw==
X-Received: by 2002:ac2:59c6:: with SMTP id x6mr5914293lfn.169.1564051369379;
        Thu, 25 Jul 2019 03:42:49 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-44-230.bbcust.telenor.se. [83.226.44.230])
        by smtp.gmail.com with ESMTPSA id e62sm9035045ljf.82.2019.07.25.03.42.48
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 03:42:48 -0700 (PDT)
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Andy Gross <agross@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, jorge.ramirez-ortiz@linaro.org,
        bjorn.andersson@linaro.org, ulf.hansson@linaro.org,
        Niklas Cassel <niklas.cassel@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/14] dt-bindings: opp: Add qcom-opp bindings with properties needed for CPR
Date:   Thu, 25 Jul 2019 12:41:37 +0200
Message-Id: <20190725104144.22924-10-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725104144.22924-1-niklas.cassel@linaro.org>
References: <20190725104144.22924-1-niklas.cassel@linaro.org>
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

