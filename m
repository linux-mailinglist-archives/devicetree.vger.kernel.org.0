Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B241705989
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 23:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231132AbjEPVdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 17:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230512AbjEPVd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 17:33:29 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E36CB6EB1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 14:33:22 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1ae4c5e12edso1123485ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 14:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684272802; x=1686864802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fcm7rdxyr0xQGgW24k3dhsiALIquYRobfBwbbRtNKtU=;
        b=m3gRccPpzdD1H9i2KDuHDv8HqzdRasCUi6O3ztffhNI30urEr4XcoVyZhRJGDq1ljW
         ARzXVfRYvvbGBKgQlD3ZQfybIChLBbsLVfrOYjaFH83gfRDXbJOa6+hAKBEmIAlj/GMX
         IrXkQ1Povc0GNP9oJ9dS3m19xqak2dv/AyxqBkD1qcgke1ye0b8A0J3YecKjSFcMUGQn
         yhZh57JWMMOs68RZF5t5AvXabd0/YfELc9gMmFPUtd86Rpn6LNKAeA+1Ad2AzIge2GPZ
         SHZTaeA5wTBVGk05XG5spWhgk5MQBc8hh445ezBEhqBsxxhPGGJGlMn9SkhRjgnwd5UL
         fQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684272802; x=1686864802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fcm7rdxyr0xQGgW24k3dhsiALIquYRobfBwbbRtNKtU=;
        b=hTfyVJJ3ITX5XbJhv8vK75n5DNWhXRClipHZY9JZSPOftsZt6hd/ANl4htgfCscngZ
         YS1wNOtU5LlhCBcXfV1fX9tNZEXOzv9nAO8rm7I0JSmBzrlCRd8CwjE+3bsYgCzRWMgn
         RpjHww+pKPaL2wWLztYdXRZ1Z33h1+5N7U5SdHGhnBM8h9Cag3AO9dOfzow7YAiQkmK6
         gPY+D0Bp8ptkA84EsNXG/mUWjHYj3nYAQCus/ToIHwMopEKuWyz4MN/jvAbYSYg5PuFa
         CLQFJ7t9nJeEAhwXBF1/8jRp+iMGzjsfEqTeN/Nh1Jr9ix0ODiE7DJ1eMqdNkPVouh0G
         bttA==
X-Gm-Message-State: AC+VfDx0oyJTZsKOQOeCMgvkPDHJt/9kED6s5SMdHp0hjSc3O3t6Wj4U
        /HRCtkmt55644o1aBSsoLqpwUw==
X-Google-Smtp-Source: ACHHUZ6Tfq02iqowHYvw8wmwSAkE0dw4yL2jaThXrzO3sdK8Mx7Qmp8sW9eKaYI9qUeaq8RSGbFwgg==
X-Received: by 2002:a17:902:b197:b0:1aa:f446:d518 with SMTP id s23-20020a170902b19700b001aaf446d518mr36579051plr.16.1684272802399;
        Tue, 16 May 2023 14:33:22 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:7a51:340a:a439:1b87])
        by smtp.gmail.com with ESMTPSA id jh19-20020a170903329300b001ac7af57fd4sm16027676plb.86.2023.05.16.14.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 14:33:22 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org
Subject: [PATCH v5 1/5] usb: misc: eud: Fix eud sysfs path (use 'qcom_eud')
Date:   Wed, 17 May 2023 03:03:04 +0530
Message-Id: <20230516213308.2432018-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230516213308.2432018-1-bhupesh.sharma@linaro.org>
References: <20230516213308.2432018-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The eud sysfs enablement path is currently mentioned in the
Documentation as:
  /sys/bus/platform/drivers/eud/.../enable

Instead it should be:
  /sys/bus/platform/drivers/qcom_eud/.../enable

Fix the same.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/ABI/testing/sysfs-driver-eud | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-eud b/Documentation/ABI/testing/sysfs-driver-eud
index 83f3872182a4..2bab0db2d2f0 100644
--- a/Documentation/ABI/testing/sysfs-driver-eud
+++ b/Documentation/ABI/testing/sysfs-driver-eud
@@ -1,4 +1,4 @@
-What:		/sys/bus/platform/drivers/eud/.../enable
+What:		/sys/bus/platform/drivers/qcom_eud/.../enable
 Date:           February 2022
 Contact:        Souradeep Chowdhury <quic_schowdhu@quicinc.com>
 Description:
-- 
2.38.1

