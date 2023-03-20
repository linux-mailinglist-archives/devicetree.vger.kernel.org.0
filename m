Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8186B6C1A91
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 16:58:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233094AbjCTP6V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 11:58:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231996AbjCTP5l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 11:57:41 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10FC12581
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 08:49:06 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id l27so2501493wrb.2
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 08:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1679327336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdWVdTE/8Dyw4hqegkINdb1CQZwRDCkTAUWJC3MHmmA=;
        b=HbZIY2NdCdPKdS/eMgjJPDUChurWWyqnsYaZHbvocxmHV+SczCkGA6ipcEmv4BmFx/
         HovX1je2YpAh2yyHyxSXtwTtPlbYqFHKqwBYpUAkT/EP3ioZJAbRKTqJtJK+2B/oiuRH
         TBR7AH6zcZeNZ1wLYldKF/0oV0e0puF16U1k6+GB/tulJ6PDox/9oUi+6K40SiaV3ArN
         D9bIbyFGhJ6ASVrAYOslO78YfxlxwVAHmUOKDYyyjhpod7TG2dU3z4tT9DZ8iuRyAZO8
         LrtSEstcL2w+lvwzcNVDcpEOTExiC5Fe9dZcTXV/bPegCv9AD9RhJUNgbArW29mP+uo+
         VHiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679327336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdWVdTE/8Dyw4hqegkINdb1CQZwRDCkTAUWJC3MHmmA=;
        b=AVLZwu8hCsOjtcxnGIoNDiT7PKOyhO5IgjBFuK7iIYJx1zct7uMYyLyQ8f1KY/DegL
         VbQcMlCWtOnUmCUM87WpLY7wc9HRofHI58I3/RtOfyjsIqrmLkYdfLU2ADdAkkSznSyq
         AJwwR5Ov5Z5xh+Oz1k/1rlGAG6C73nABGMV+73LsAgFedVxkUM9p/2hSErYEKVhSept4
         6SlZa1rRqIhMOrHDWn+fgWkIdaNkmkwxJDrMFfMUo265LeIrezMzPcTpM8DGjqS/cy0K
         ChK9yJN/qdFzSV7oOzPuwh2eyJy+Xg5eupT1iZIoNuiRsPdbV9TfXiqPn1n4ppWZi1pi
         sjrA==
X-Gm-Message-State: AO0yUKVTISWaj05FF07N93Jd/SSVSvdpUfxoNEQSpni+esOkm6DInx0l
        Jv3qPiaUUPvz7h783aNfR5nwy7TQR6oFFu6C6CQ=
X-Google-Smtp-Source: AK7set9E67ofym2tdvwZKNWb7xackDONhnSE74H9a20p2Ud3bmZk/yDap+TexwNKGRarhLayPEkGxw==
X-Received: by 2002:a5d:448c:0:b0:2d0:bba8:3901 with SMTP id j12-20020a5d448c000000b002d0bba83901mr13538417wrq.62.1679327336593;
        Mon, 20 Mar 2023 08:48:56 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d7d9:4f38:38b4:82b4])
        by smtp.gmail.com with ESMTPSA id o6-20020adfeac6000000b002c71a32394dsm9202578wrn.64.2023.03.20.08.48.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 08:48:56 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 06/15] dt-bindings: mfd: qcom,spmi-pmic: add compatible for pmm8654au
Date:   Mon, 20 Mar 2023 16:48:32 +0100
Message-Id: <20230320154841.327908-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230320154841.327908-1-brgl@bgdev.pl>
References: <20230320154841.327908-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

PMM8654au is the SPMI PMIC variant used on sa8775p-ride. Add a compatible
for it.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Lee Jones <lee@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 975c30aad23c..0f7dd7ac9630 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -79,6 +79,7 @@ properties:
           - qcom,pmk8350
           - qcom,pmk8550
           - qcom,pmm8155au
+          - qcom,pmm8654au
           - qcom,pmp8074
           - qcom,pmr735a
           - qcom,pmr735b
-- 
2.37.2

