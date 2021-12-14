Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D73A4474E45
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 23:58:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235041AbhLNW67 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 17:58:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233727AbhLNW66 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 17:58:58 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21F85C06173E
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 14:58:58 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id k2so30577295lji.4
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 14:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
        b=Z3VWMAewwvLv+zL0H226NTFNhnnM4GNVE5NoZlH+wpu4OPMo10OiKy1gcgQjntJoUU
         SuJVl1qRWnKBI3ODoChCoLWwT3UQAQZOVvDTKIKtJGWGadCX3Tg44S0WFxObpzdMXMSl
         vYpRETIGN6mz0PD5p3bn38aQj3UuXOWWtK4e53HBYzlLIdNUDamZ1SeGRYV1b8g691of
         9ikCHKiDgYBOv9sNov5jdC5lGLLuFHw083XLP65mDUsv+INJC8U/IngDRMV4fuHiSyBk
         hpmuBFVnNRa5ER9GHZNW8q2XQeHu9tT/HhO8xQqcGmTHvnbgQQ929rF7dKsD39/u0RSA
         76ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2Gomy4ei7qSbDbo9NwD3wFRtHE34eVnEHILbspr7bME=;
        b=7j4tcJ3opW+ndDGesjf3S2OkBW8QWKAxLRu6mq4ntPMnqv0fZkKMG+Ob2/yUyywadl
         6Oogy6xmYOlj57EM7Nu5kwiOyjxh5Fw+ZTblWjBoWGOSQdjgL5fhG5X/Lf/Wf65atGOW
         mIl0uIFK/qvlscSZJDEUMDAkB8FD0rh/TYgSfH7AYHL9pPPAwplgmJ2b0ndLO7/LvGrt
         bayh3reU0ozZOaybc/TSj8FGBrsA1dGHvZ6nF5Ile4s1yXJrceioKBuiORIqHFwcvv4v
         jSd5RsUdDRG4RdBsr0iZgPFmqmTkdbdHNZU8yqx5evrl66exAZBQ/GlrxLWy8XnB9c/Q
         iV+Q==
X-Gm-Message-State: AOAM53094ZpPXhX0BGCe+XEfbztIZHyAXbHR57repGj2ATG7H2Zpvldd
        Hmr8YIyqbHoyJTFMIkzfIV2bKA==
X-Google-Smtp-Source: ABdhPJzkX8S9auCejbfr9NolWxTiJ0jAaRfO+D1Ny8lCmFVFFuJBF7RlJtrhw/4VH+8ubGp9JMRbsQ==
X-Received: by 2002:a2e:80c3:: with SMTP id r3mr7603572ljg.8.1639522736348;
        Tue, 14 Dec 2021 14:58:56 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Dec 2021 14:58:55 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v4 02/10] dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY bindings
Date:   Wed, 15 Dec 2021 01:58:38 +0300
Message-Id: <20211214225846.2043361-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are two different PCIe PHYs on SM8450, one having one lane and
another with two lanes. Add DT bindings for the first one. Support for
second PCIe host and PHY will be submitted separately.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index c59bbca9a900..d18075cb2b5d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -50,6 +50,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,sm8450-qmp-gen3x1-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
@@ -333,6 +334,7 @@ allOf:
               - qcom,sm8250-qmp-gen3x1-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
     then:
       properties:
         clocks:
-- 
2.33.0

