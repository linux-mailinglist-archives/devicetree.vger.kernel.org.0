Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2BCC39DB81
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 13:39:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230219AbhFGLlF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 07:41:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230341AbhFGLlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 07:41:04 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA8ACC061787
        for <devicetree@vger.kernel.org>; Mon,  7 Jun 2021 04:39:13 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id ei4so9631641pjb.3
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 04:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jfeGYJOtKlcuIHOfL8nGiu8SwZWAHSC11095aJQL1jY=;
        b=JHIeh6i4kE/pt7r7xB6cVQFnOBlfdoMPUc9uaALbGoaDkRTvaO9dV8g3kLCTqJaMew
         PgQQTQN5faxzpFWEyvCApGxKzC3V0ye1fFTZ5nW8tRcfRUzQLqreV4vmcKYT9A58co9t
         O/PYB+6dFkL8h7oVN3/07N3mSFbXY/3Pa1ub5P2MaQTrgZtbqETDZkrRHQT0bDRU9pNx
         2uTldSGLqUVCLLGKxcxPEFUdXatG2thtO0BEn7iU2KhT4vkPq4RK0/BJr63W0ksyIbvp
         qRTFeZzAwdRfRiDpmskkukNJtFpyHJ6ltvMgSgqFyPtka4AaPoQ0NEHhE6nr8rHI6fza
         Ou2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jfeGYJOtKlcuIHOfL8nGiu8SwZWAHSC11095aJQL1jY=;
        b=DaYLcVQK7wCcGKiSkGGMU8zRRp5Ig5eqHumScXgotP3nwFCSgg23g09Ui3QvM8Pn0q
         +mcxFbUzzrWYff5N62wpx91wILWBUqy4QdyOR9YJ+AjS2KM25oABIbouOmPQgKJObMqE
         kfJ5KkFqguvs37OavXJxWUWN2SSP8i4tU8cYYFgKMA7kCrAdhk9rKgiypOGf9K1SfGnE
         xu8UPKO5jng0X9ZFkZPWkuglOOIyMexpr/S7P+CvZOJOqz/uS9jp1DBZGdV6LCyhhN8g
         8HgWfLKGTIQWeoFvXnCHnd2fVcl39RN0oA+qTGP1/OWhHjfKdVoIncBVzQQUaAtC5fLa
         Fpxg==
X-Gm-Message-State: AOAM530jovL8r2v9ykAXrgXgp2gfmvHgomme5jipaIiPf0KJaSkqZgEu
        OLq8mUA2hjcJOda1hF9MA2r5qw==
X-Google-Smtp-Source: ABdhPJxYaHxB0tXydPhuS9V12XDKPhoHPORk1mH4GYgbPCASYdKQq6J4FwMijmqQprfcbnYEGhgeww==
X-Received: by 2002:a17:90a:bd04:: with SMTP id y4mr16602615pjr.127.1623065953309;
        Mon, 07 Jun 2021 04:39:13 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.177.211])
        by smtp.gmail.com with ESMTPSA id j7sm7223939pjf.0.2021.06.07.04.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 04:39:13 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH 1/8] dt-bindings: qcom: rpmh-regulator: Add compatible for SA8155p-adp board pmics
Date:   Mon,  7 Jun 2021 17:08:33 +0530
Message-Id: <20210607113840.15435-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607113840.15435-1-bhupesh.sharma@linaro.org>
References: <20210607113840.15435-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible strings for pmm8155au_1 and pmm8155au_2 pmics
found on SA8155p-adp board.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-gpio@vger.kernel.org
Cc: bhupesh.linux@gmail.com
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
index e561a5b941e4..ea5cd71aa0c7 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.yaml
@@ -55,6 +55,8 @@ properties:
       - qcom,pm8009-1-rpmh-regulators
       - qcom,pm8150-rpmh-regulators
       - qcom,pm8150l-rpmh-regulators
+      - qcom,pmm8155au-1-rpmh-regulators
+      - qcom,pmm8155au-2-rpmh-regulators
       - qcom,pm8350-rpmh-regulators
       - qcom,pm8350c-rpmh-regulators
       - qcom,pm8998-rpmh-regulators
-- 
2.31.1

