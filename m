Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F9966B9E6F
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 19:31:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230318AbjCNSbO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 14:31:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230373AbjCNSbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 14:31:10 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38CEF22796
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:30:59 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso13838178wmq.1
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678818657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kIxBA2zlxML9hOs0dvz6DfCwg7oJrI83UIUnR1uCeBs=;
        b=EmK746apIdSh2XdjgbFudbJUw7DZowe3fkKEnVOTcm+/waCIPVsMPo5l9XVIZqhEIO
         QFNPofrD2Wt/8/WEmFgMPOfKG46WUG6a1AgapIsGwUjKpOt/KBWtPBR4QlqpwpZbFzZg
         915V6WTJzBBU9t6rcmlxJaWbjy1PC6Z8GY8HtgmGoxQMMRtEumaRbig0x1hYgs9KzMJm
         zgiEOQC394GKZ+hYtmQ77I4zJ480N9DANqlT9JUtwxGU3AHw2ooJMdDhgIR79U1vQ9Lh
         GaAb6R+5HZaGdjcacVzUNkE695LrM+TKoXodjCh3ZgioY0UgxFcux1eeH0k15P1H/DFc
         Myeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678818657;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kIxBA2zlxML9hOs0dvz6DfCwg7oJrI83UIUnR1uCeBs=;
        b=3Z29LcLU97hm/pK8mdP5gprq4cJw5onJaRndQQPJXzQ1sUrtt9nf5JpjPwiQc1CGfD
         GSH6sFxJGjB0dQwR0ADi22CuoRUdgxDeWb0bCHPVmBULvs9DD4yqbQPzT/SXgCq+xckA
         Ys9ojTWG86UoV1Sl2sItJVO5vIk7O0pJu9UeHjhhhtv5QKUy+9StYfdjVOwXiUsi5kAW
         vw8I1C0nevhNwRLjaa8szKeh6pCcEUHb89FQoZcIPVZh1d3qMJ7Ph+nqqOq/W0kFrhhk
         5xOG+6jCllvWO+ZJXHLsP2lFHygbmEyUm24Rwizn4nBLdoWbSU07bVFGWRiqzBo+KcLA
         0mNg==
X-Gm-Message-State: AO0yUKUffHYiI3zBNnEJEBqpHJL/LVSE5Pd6v3VdbFt8CP+L7o+2TBxy
        l9w4CLn/8FtevvLd8XIoa+JURQ==
X-Google-Smtp-Source: AK7set84D2+qEChnMMW7hzfFJ0HZv09T5dJ/RFfHz5KNaLX2ov7ZL0fOGx3WxVO4zS+Y8j7bQGU+1w==
X-Received: by 2002:a05:600c:4746:b0:3ed:25c4:9 with SMTP id w6-20020a05600c474600b003ed25c40009mr3150753wmo.15.1678818657622;
        Tue, 14 Mar 2023 11:30:57 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:fd14:bd52:b53b:d94c])
        by smtp.gmail.com with ESMTPSA id k28-20020a05600c1c9c00b003e209b45f6bsm4083938wms.29.2023.03.14.11.30.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 11:30:57 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Lee Jones <lee@kernel.org>
Subject: [PATCH 04/14] dt-bindings: mfd: qcom,spmi-pmic: add compatible for pmm8654au
Date:   Tue, 14 Mar 2023 19:30:33 +0100
Message-Id: <20230314183043.619997-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230314183043.619997-1-brgl@bgdev.pl>
References: <20230314183043.619997-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
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
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 8f076bb622b1..078d47a6ac83 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -78,6 +78,7 @@ properties:
           - qcom,pmk8350
           - qcom,pmk8550
           - qcom,pmm8155au
+          - qcom,pmm8654au
           - qcom,pmp8074
           - qcom,pmr735a
           - qcom,pmr735b
-- 
2.37.2

