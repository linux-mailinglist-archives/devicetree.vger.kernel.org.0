Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE3054393C4
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 12:33:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232891AbhJYKf5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 06:35:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232887AbhJYKf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 06:35:57 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9A5C061348
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 03:33:34 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id r12so8735911edt.6
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 03:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gtXEbVNAEMP2fIX0FN1mTXTkNu2gxV03Z7XtTW5qZGI=;
        b=lud7xTvvv7SSrJ4ZVXj4n3sTCtB3XgEGe/pZjUgBinjzWS0BK3cVapFx5YDEAOqYdy
         OMa5Cswx0p19NFK5dFDY8h/nfxMLZKPq+LncN10pzMOoxAvrgPjr0+Mfkdrznsl+LTGL
         Tj2t99Iarp1TbcuSis/PKVBrMlZFmdBPkXKPdbRzq0rGGB1ZqRQIKhk90sE6k72oQNEw
         CLV8p+aKFkVG0+RQAUuW+XhO6iM8GH2ElYoJsuYq5pmxXbbz1h5YtjqjMabev06tPD+6
         JVPxw/g9j/9yZ4EmPTdFkZiByNfACqahmBxslZPO7SVk88NKbs52svQAMHcxu4eQcPMO
         nFFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gtXEbVNAEMP2fIX0FN1mTXTkNu2gxV03Z7XtTW5qZGI=;
        b=Y4DGHXUnmhcPVcNhxwJYN6AozUmI48vybpdkX4y4y/IUHdo8qN9a/nt11D78f82lpm
         9Al+3S4XauT+uSsaSahoMqziEO88tpeS1dZrJSnKfgiNP8mDUiPDPWTye1ENy/vjWhy3
         XuZkixFrcqIqwsdgt8ZCwauou5JtwhYG86nE3KfzQrj0+1n136vbGNFIoJzNpVWH3j1n
         pFQDMk+R89izxK8qtP3uC2gmkHbJQ3ys0HJ0xUpSbNcQfsmDeLLhu50Gurd4ItRhERlr
         82G2qlt2hoyhmLlT96kYubBjFOT0t50s9hM/uNs3hXHz6iQ1Nx0yxVHqREAkti6J+lOZ
         3i6Q==
X-Gm-Message-State: AOAM531+i/OzycGbwFXlKfxk2nPnkgH0UQfl63iHLr+8q8dVYAKUEh00
        Tbz0bKFMutq5oOuAKPg5YGngIw==
X-Google-Smtp-Source: ABdhPJxyz8wed5e9lJ191A1Sw4zknkZdq0E6LTsECxkZVJ5Wcllj8LVVRVx/s+8UcU0o7+aWqpzimw==
X-Received: by 2002:a17:907:7b9e:: with SMTP id ne30mr5200109ejc.531.1635158013466;
        Mon, 25 Oct 2021 03:33:33 -0700 (PDT)
Received: from localhost.localdomain (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id k23sm8562822edv.22.2021.10.25.03.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 03:33:33 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org, mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: [PATCH v1 1/2] media: dt-bindings: media: camss: sdm845: Make clock-lanes property const
Date:   Mon, 25 Oct 2021 12:33:21 +0200
Message-Id: <20211025103322.160913-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mistakenly only one out of four CSI ports had the clock-lane marked as
const.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 .../devicetree/bindings/media/qcom,sdm845-camss.yaml     | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
index 9ca5dfa7f226..d8fb6ce1d7f9 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
@@ -106,7 +106,8 @@ properties:
 
             properties:
               clock-lanes:
-                maxItems: 1
+                items:
+                  - const: 7
 
               data-lanes:
                 minItems: 1
@@ -153,7 +154,8 @@ properties:
 
             properties:
               clock-lanes:
-                maxItems: 1
+                items:
+                  - const: 7
 
               data-lanes:
                 minItems: 1
@@ -176,7 +178,8 @@ properties:
 
             properties:
               clock-lanes:
-                maxItems: 1
+                items:
+                  - const: 7
 
               data-lanes:
                 minItems: 1
-- 
2.30.2

