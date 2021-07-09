Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D22263C28A8
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 19:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231458AbhGIRp4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 13:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbhGIRpz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 13:45:55 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8FABC0613E9
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 10:43:10 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id z18-20020a9d7a520000b02904b28bda1885so8771881otm.7
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 10:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BCvJd/ieXpAypnd/5yrCWa+DhY99O4QKRAeK4oMadQQ=;
        b=s96TPwzp9oVyFj6FCEu8/py8aKG9eSv+CAPwFO3qAYsfIeY5eBMOfcnKPZ8T1P9zB5
         qTlAVxjMRMb+poxLSy5u4sZV7n3RUTzDl9BjweTAs2g2SUXCux8Xr+RVRzKMsOjMYJg/
         miCxkpas9jSXMYsMXrcPDyEDULEV/4/jRqa7L5dartcEPOWvNXdykF1+1Y1F2chc992r
         9qr8SWnO8TyEHI/3ezIfMF48jajoZVQEQjQs0iFv3JfOveGF5pSbJwz+5aDFcjhnftfU
         x2Waa5aNii3PGPwVZ4/2PlhNiMHalp+eXlZPhn/8TyPajM9jAZB4ZbCHvt/GaKfEQDNj
         gQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BCvJd/ieXpAypnd/5yrCWa+DhY99O4QKRAeK4oMadQQ=;
        b=bJA+XIUrOic9DggOzrNQnECIebeZyJIW4Y5Ifepr/5URMD0KrP+q/PAEWg50BFajTu
         jQn15pHs9eo0VIKTuQAaMtIIqBz7N8vDWlGo0mBoNZYUtzHh2dpo2/IzHmu11vTo2dO6
         qjNp9N4omEA3Y6Aw6be8dZoJBUYiOkH4TK4yMQbYA1ZXDYjSnBEzhKfxboTT9n/mOOp+
         SFpyV28nkXBfyKw178RfqmwfACI2VGAWNMcMJf0UfK2y/IkUajd89LuaSr/nWihGKZ62
         LsOGgvX+51cViyC6wF75DyrszxFiZyih/HiJummYEaF3mfeB3V8yUwaBWTq6AcwtIOix
         uxvg==
X-Gm-Message-State: AOAM530XkKQLdsbyoH2ly9fVd5RrY3wJMT1NPqUGoVKaAeNAFZay/Y1k
        Gxlms1EFtk9yCYYZKMQLoxkIYg==
X-Google-Smtp-Source: ABdhPJz2KekfpD+5RpePEvAYKRv6iwAxoE4dfxBN64tebjGzuPGq9f4IeM0Ll1kf7KdLb0dx3UsmTA==
X-Received: by 2002:a9d:7102:: with SMTP id n2mr30121644otj.87.1625852589247;
        Fri, 09 Jul 2021 10:43:09 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 100sm1263446otv.32.2021.07.09.10.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 10:43:08 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sibi S <sibis@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] dt-bindings: soc: qcom: aoss: Support sc8180x and convert to YAML
Date:   Fri,  9 Jul 2021 10:41:39 -0700
Message-Id: <20210709174142.1274554-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce generic and sc8180x specific compatible for the aoss QMP binding and
add the generic to the implementation. Then convert the binding to YAML.

Bjorn Andersson (3):
  dt-bindings: soc: qcom: aoss: Add SC8180X and generic compatible
  dt-bindings: soc: qcom: aoss: Convert to YAML
  soc: qcom: aoss: Add generic compatible

 .../bindings/soc/qcom/qcom,aoss-qmp.txt       |  87 -------------
 .../bindings/soc/qcom/qcom,aoss-qmp.yaml      | 114 ++++++++++++++++++
 drivers/soc/qcom/qcom_aoss.c                  |   1 +
 3 files changed, 115 insertions(+), 87 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.txt
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml

-- 
2.29.2

