Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0FF3BBD87
	for <lists+devicetree@lfdr.de>; Mon,  5 Jul 2021 15:34:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230417AbhGENhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jul 2021 09:37:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230333AbhGENha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jul 2021 09:37:30 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF4DDC06175F
        for <devicetree@vger.kernel.org>; Mon,  5 Jul 2021 06:34:53 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id f30so32570926lfj.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jul 2021 06:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hTlomlxaU2sZDcUx321lrReHqUzaJljTL1EttP6LrNg=;
        b=wATVQJOBTwBPm0B91WkEXJvOkVJloSHXKQoNIvaLvL4299yOzDpUCRUthmaoiyz72P
         H8sOI5Tc18OtIml6K87TOhDCm1EruLas5coOZLshkz8uKpYlzZV1lyjo1CAoWb7R4+fb
         LD/OlwAOPPxF4xk95pnXK07/hsKD48j4IZ2MCVPa/h8fvZNAWN043plC6HtOXnWLfXQV
         oiAu9Y7RtnqpzfNZZeXHJC2+YDbLyfBX7MKDz7bWL21coatjiIrw1k+ShsaaTx7g4W6N
         nmgviV+ruMF6i8gmY3up+NzKg8h4NAMui1zVYCA4l92mckGAJQwofh2k510g0RSO6jyA
         AmRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hTlomlxaU2sZDcUx321lrReHqUzaJljTL1EttP6LrNg=;
        b=kJbTSr/DMGKuGcLEeQym8AIY8M+c3bGh2v3llxd6h6ogd7DMaOF+V94cOy61ze3eND
         QVwwC24J0QRKx6Sj777vSMHfrRUrwO9lhs91hyBOxLQciBDi9jwzmf46k+yRDlHXP8qY
         hin6ECcb2lswsQlDs9NImDKpnPeKuvoVVvZIgum6yP16yj8HcBgnPaGzO5quFNAHLMSm
         XOVrm5L3Tc9XeRgquAf0mxK+iizkKpP0wPWIdlf5qq/c8TywqCCJwI2+nuidVOWPF4Xh
         pNVzZfdZDsTMI7Qv248t7OQvR4j75oUHWbrYls6B5SQl7sQ07ajIz8TqMzXUVOxhehdb
         rueQ==
X-Gm-Message-State: AOAM530bpgaEPfoSf7c+ws7D24hNVq+n8m0FAOp3TWU2qNsFe+JEdyHS
        CPRvk8E4UTJmtcrfSUL0DoNHxg==
X-Google-Smtp-Source: ABdhPJyGviPHrfmMtlEwyrVqsKtlbk8XSe4QwRB8Mq7TXi+VXzE3hHehjkoeOXMewOH+58O+KB7YMw==
X-Received: by 2002:a19:f104:: with SMTP id p4mr10381901lfh.630.1625492091905;
        Mon, 05 Jul 2021 06:34:51 -0700 (PDT)
Received: from localhost.localdomain (81-227-43-49-no2784.tbcn.telia.com. [81.227.43.49])
        by smtp.gmail.com with ESMTPSA id a5sm1167860lfj.190.2021.07.05.06.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jul 2021 06:34:50 -0700 (PDT)
From:   Ulf Hansson <ulf.hansson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] regulator: fixed: Mark regulator-fixed-domain as deprecated
Date:   Mon,  5 Jul 2021 15:34:41 +0200
Message-Id: <20210705133441.11344-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A power domain should not be modelled as a regulator, not even for the
simplest case as recent discussions have concluded around the existing
regulator-fixed-domain DT binding.

Fortunately, there is only one user of the binding that was recently added.
Therefore, let's mark the binding as deprecated to prevent it from being
further used.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 .../devicetree/bindings/regulator/fixed-regulator.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
index 8850c01bd470..9b131c6facbc 100644
--- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
@@ -57,12 +57,14 @@ properties:
     maxItems: 1
 
   power-domains:
+    deprecated: true
     description:
       Power domain to use for enable control. This binding is only
       available if the compatible is chosen to regulator-fixed-domain.
     maxItems: 1
 
   required-opps:
+    deprecated: true
     description:
       Performance state to use for enable control. This binding is only
       available if the compatible is chosen to regulator-fixed-domain. The
-- 
2.25.1

