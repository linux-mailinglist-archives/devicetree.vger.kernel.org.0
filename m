Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 68DD933B16
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 00:23:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726336AbfFCWXX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 18:23:23 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:36893 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbfFCWXX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 18:23:23 -0400
Received: by mail-pf1-f193.google.com with SMTP id a23so11418393pff.4
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 15:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=6niAwzcPpAohPvJt4Jc8GtfUU8V0u7v0Rg+78LYun9M=;
        b=tpyrIN3pOhJIjlxgLadTRT5CufA7IzK4ux2DtTFgG7teYRUtUh06+WAmNriOTkh6u2
         2MPJhiEQjvyIIwN3TyUAgw4GPxAti8x9g4fIBmWMYaB5QSONi8/JJhBj05BA4+Wy5vRz
         PAHvFaONYBe6dGZblkI7awqz3xqSW6y6G4S4tWzElGh0XE0tJtHQDwjqisHNfdW4Veia
         rG7L5JGJzGKf+TeJNB1m+5C9cQ/Ew9nkrSOZyfz2akaUDuDwO6I8Q4/G8Z5J1jl4fLUi
         vvldAc/78m23v283dpNjp3mCpC3lLQc/hHp6cUFSWuh7a/kACawIPOMRZJAIJ9cIHIFd
         FxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6niAwzcPpAohPvJt4Jc8GtfUU8V0u7v0Rg+78LYun9M=;
        b=ohuPxCapJN56OZICWjVahOG+Fy0o1hWuvGCFsYzJHQMnmPEPf/oxOwkMFLWrNNszSJ
         JEerSxMvA1r0qUgSaeBhOlHmsSnJ35xa+XZ2xOlKeu3tKiKvlkgW82hGND6wR7R2M4ax
         RjEFM/YberfNRUO2srP5YBW/ccM0+gKlUMKMKvAzLH7ae5WflkatuWFHWPIwFbF5+1sM
         dOOLM4C5t7ysaFIbcv/q5iW+PTQe9AY0aDT5dpIIThBh/7RS0LeifFtBJk09kX24apcT
         jAcTG40HAy6jGtZWPlNlsjhuJIVBBQJ7ralbLw28P9rNBdffrxb97z/QY9xDuQ5akXbr
         7BIw==
X-Gm-Message-State: APjAAAVH+M42XMXciREEnKMPqcZyqRdjTosdbjfd2kZv7GAnJSgpWlzq
        m6xJGFjg/71TvwU/6irjC7BkZA==
X-Google-Smtp-Source: APXvYqyW9fNJIYUZyJi9V5wJYk9SdgROr34PF8/DcyWJQ0PKLOKb9vtvUgdQ2NiVawrNdsXoeyOSuw==
X-Received: by 2002:a17:90a:37e9:: with SMTP id v96mr18652976pjb.10.1559600602567;
        Mon, 03 Jun 2019 15:23:22 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id g8sm14320588pjp.17.2019.06.03.15.23.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Jun 2019 15:23:21 -0700 (PDT)
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
Subject: [PATCH 1/3 v2] dt-bindings: power: reset: qcom: Add qcom,pm8998-pon compatability line
Date:   Mon,  3 Jun 2019 22:23:17 +0000
Message-Id: <20190603222319.62842-1-john.stultz@linaro.org>
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 Documentation/devicetree/bindings/power/reset/qcom,pon.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.txt b/Documentation/devicetree/bindings/power/reset/qcom,pon.txt
index 5705f575862df..0c0dc3a1e693e 100644
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

