Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E56D57B1DA
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 09:38:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237815AbiGTHiZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 03:38:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbiGTHiZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 03:38:25 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5954751406
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:38:24 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id w185so15824632pfb.4
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ecs-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=Xc6fgEvmDOLfBjoXIj0m1oyh4sYver0cQuxKyhaoxJM=;
        b=EM3raoSZqNAjsRgHvZ0SU1ze7cgNCDQhvSAlUHFHiki6V7TymxfB2xJX21OA1+Dx/N
         TK5N2I5Qg8gPZcRkasQk66SAnwHpOGwa5ZOEijnsNUM69PHPe0mmIwScg2W4w+1L3zT8
         pGLqqxZAKYEMtdtSFE1A90nk+eGvlfx7TMV/ruIq4581zOjb8n0+oZjQ1XZwoq5mcRRm
         Ke1OU9leiWGyo5ndLh7Nooco2Uu1nNxK+K+YmsWgRRWmDLPi4rwSAj0TrsJibxYwulRi
         vbeI/8O10trz90ZnzunPmJ5UNasNuScp+N9rbKI3IiorRjLpHNymd3x61gThDUGqpgYH
         WnzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Xc6fgEvmDOLfBjoXIj0m1oyh4sYver0cQuxKyhaoxJM=;
        b=oBSJRtBXbctnSeEThswOPm7367hgV0uy3M9fZRwBBJkt7GUSggisBdTFvzGZFhT2O/
         F9WBeyiVYIjuZKpSOBUMp3gg5e0v/QvIYd495PRVt/5Fd+OXmHWHsqEIQTiczGo9rHKt
         FMaK6LTcYYtco5lY/HMk9wCD3+jaWTbfKVqMsJ3qwl5+NOeqVS3eSlAfA6q8xVN+BFwE
         S7NXEJtDOCNE1GhZho2/Vf8xNIPhqb/BYssxU9P2EA41XDoFyygEr8GTc5scTHj75X4p
         8invzCMygdYD1Klifn3ll9BX6OD0XZp/2PwvvIgdECgEZ1AVh2CVHOpgmPyEBtmsubrG
         lMlg==
X-Gm-Message-State: AJIora9S1qtTVf7wDbfGXkDav2Eq9bVT/pJGOt4iNUATzG7RijMpQXKf
        UkyBrNS39ldDffGYyWVUpO5hgg==
X-Google-Smtp-Source: AGRyM1uit8I0cHYFIviOVNQ8VWwD3Ep/WPdp05cI6kC1jOq2rPP7+nZ99LB3y8C760QG7rY0ucwQEw==
X-Received: by 2002:a05:6a00:1745:b0:52a:f0d3:ae7 with SMTP id j5-20020a056a00174500b0052af0d30ae7mr38283892pfc.72.1658302703844;
        Wed, 20 Jul 2022 00:38:23 -0700 (PDT)
Received: from localhost.localdomain ([103.104.171.43])
        by smtp.gmail.com with ESMTPSA id u5-20020a655c05000000b0041296135280sm11216243pgr.88.2022.07.20.00.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 00:38:23 -0700 (PDT)
From:   Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     Henry Sun <henrysun@google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Bob Moragues <moragues@chromium.org>,
        Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: qcom: Document additional sku6 for sc7180 pazquel
Date:   Wed, 20 Jul 2022 07:38:16 +0000
Message-Id: <20220720073755.1.Ifab936517646b3876dd31b6e9b1b58a858529e57@changeid>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The difference between sku6 and sku4 is that there is no esim

Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
---

 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 4dd18fbf20b6..aebeefdab27f 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -410,6 +410,7 @@ properties:
       - description: Google Pazquel with LTE and Parade (newest rev)
         items:
           - const: google,pazquel-sku4
+          - const: google,pazquel-sku6
           - const: qcom,sc7180
 
       - description: Google Pazquel with LTE and TI (newest rev)
-- 
2.17.1

