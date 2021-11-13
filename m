Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78FE444F0B9
	for <lists+devicetree@lfdr.de>; Sat, 13 Nov 2021 03:02:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235168AbhKMCFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 21:05:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233303AbhKMCFj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 21:05:39 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5916C061767
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 18:02:47 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id 207so21899852ljf.10
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 18:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2iGO71on63/LBV4+V6rXPmECeBXzrpOVOk0VbOEmQkM=;
        b=Z+XMlXS8tibXv5AQJYE37X01NbN8LVqtLnu8NxqopAXH7wUSGRnHAUjMk/Xl66gLt0
         /4jxMigxQtDyCVEOHH+HqwzaxyapiU+VGgc7NXp4YQmtqaXh00Vyvr8WBPmSoSoS8Xn+
         DDmavL9kUdukD2R7d2MQhi3wTaCU9KSaely3QUIJilekR75TbdC2DjbM8XeF5NAS3GpZ
         rJ1nUW0CWsMX+ht+J3K9KuPqWAzaiqAjSfv+rn1n3uMeDtl4ovCIuSnHQVjNwL1WC6EA
         Hxbu5oPds02nsoq0/gAqZWyUPzzDtcOrbatyHRh48RZ1AbDd9WWpehOip0flDNsLzcoD
         6dEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2iGO71on63/LBV4+V6rXPmECeBXzrpOVOk0VbOEmQkM=;
        b=bu0ZtdWhM0KkXsWp1tTzmTYNhy8IqN/wLuDqu2Qim6sTrkeB6HGb6bzE1DUJF9Kh7I
         gHBvAaT1mveSpx25YaV6ocjOb69ry/iZE/wm0MbCU54T+6y6cYERrfHlwfwM/7lX6ADd
         ee0xraFU44QobDpabglHyGtkbOEg/tc5cgD/VW11/9e5zYO7h0QGi2O/iCKIordlHWwu
         N2if34NsZ2g1Ap7XK3U8KDGQCfzgrPLcmo765GotbA5YzHylN6rLU1Whpkdx7Na66rlP
         /hHbYLFAYCP5jQN4o1SMplD79R1Y2dxkViAksgs8et1scMsa/faiDyDNhpo8hv30WEdW
         TcNg==
X-Gm-Message-State: AOAM53229UUzTU2eZB2QkZEy0nyrTX90Gl3vT/ilvs7MPx0xIyK5V/EG
        JlNVGQXH03zQy/eLu/8mhntypS1M/zLj07jF
X-Google-Smtp-Source: ABdhPJztdtW06NfPhsVRQ0uv0GsFyBFCTeBNWfpaGQudrt/u1Ud/EW1oLbH0ge7kHcdlsOlmMgsiag==
X-Received: by 2002:a05:651c:1543:: with SMTP id y3mr20179876ljp.436.1636768965984;
        Fri, 12 Nov 2021 18:02:45 -0800 (PST)
Received: from PackardBell ([82.160.139.10])
        by smtp.googlemail.com with ESMTPSA id j20sm686185ljg.104.2021.11.12.18.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 18:02:45 -0800 (PST)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id 66928ea7;
        Sat, 13 Nov 2021 02:02:43 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jeffrey Hugo <jhugo@codeaurora.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     Bartosz Dudziak <bartosz.dudziak@snejp.pl>
Subject: [PATCH 1/2] dt-bindings: clock: Add support for the MSM8226 mmcc
Date:   Sat, 13 Nov 2021 02:58:43 +0100
Message-Id: <20211113015844.92762-1-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the multimedia clock controller found on MSM8226.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 Documentation/devicetree/bindings/clock/qcom,mmcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
index 68fdc3d49..4b79e89fd 100644
--- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,mmcc-apq8064
       - qcom,mmcc-apq8084
+      - qcom,mmcc-msm8226
       - qcom,mmcc-msm8660
       - qcom,mmcc-msm8960
       - qcom,mmcc-msm8974
-- 
2.25.1

