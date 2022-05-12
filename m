Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 038BC52520A
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 18:06:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356243AbiELQFS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 12:05:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356247AbiELQFO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 12:05:14 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E787062A29
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 09:05:12 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id l7-20020a17090aaa8700b001dd1a5b9965so5314153pjq.2
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 09:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wl6H6/ZeYYFL+udhozFko8xO2rpE47Y82z32+dXEgkU=;
        b=m7OSpe1tZ/cyPq27UV0tY1eL/crWhI78b9PzFapLWaB+gxOFWFRUetg2jbulMEhqt3
         5Kp0ifj0Mh/4bStbSENrHUothijQnISCFdIQeSMy+OCg+5QLtdgf8TXPLOCanYorYF0a
         /FLEK8gPDbHnk5jj7awz6FmLWXLSe/5rptUX4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wl6H6/ZeYYFL+udhozFko8xO2rpE47Y82z32+dXEgkU=;
        b=TLUGy45cSvLSWhc71jzdKsRzDkjkfr5TqLLt5l6/BqlWbUWsZYBCzgWnl+FXVM+nLf
         g67glXgvSnUNXB1It9Hp7QosskZEJgyrJebSiMVtkI5QicFlzh4rh2j8ePs1cMLMviiR
         Xf9xZ9vXaZojF4sqRac8YOg6IYTN6oNVumtHnv0oSr6YBnkQY4sJA+5julJQ99zVX2xr
         B8M0muTBzRi65o4acKIRaGkYEpbf4zRVd7gTWdeZgl+umOz8KUKyIi8jcuiOFFaBd1jM
         7HdZcayzveROylq+u/MNzOq+Ua5ehfhSw1foSvDGxd3jJegQk8lQDXs2bJAu3exLpzUG
         uMuw==
X-Gm-Message-State: AOAM532+IpK/8wXVhE2M4NkdomWTVf3/OSJNQbmlTg2nLCVRn4ESHJc8
        HN6bs13nycv/mOX1pUFoHOt04w==
X-Google-Smtp-Source: ABdhPJwQurYXyEcyUiofx57PFK80uo9DFEvuuSj3LhQA5PscmC4dWtlFvBkLqMyIUtSyQcjuTueBWw==
X-Received: by 2002:a17:902:70c9:b0:15f:a78:fd15 with SMTP id l9-20020a17090270c900b0015f0a78fd15mr464592plt.12.1652371512360;
        Thu, 12 May 2022 09:05:12 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:504e:720d:de58:4f66])
        by smtp.gmail.com with ESMTPSA id b15-20020a62a10f000000b0050dc762817esm21381pff.88.2022.05.12.09.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 09:05:12 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: arm: qcom: Add more sc7180 Chromebook board bindings
Date:   Thu, 12 May 2022 09:04:47 -0700
Message-Id: <20220512090429.3.Ie8713bc0377672ed8dd71189e66fc0b77226fb85@changeid>
X-Mailer: git-send-email 2.36.0.550.gb090851708-goog
In-Reply-To: <20220512090429.1.I9804fcd5d6c8552ab25f598dd7a3ea71b15b55f0@changeid>
References: <20220512090429.1.I9804fcd5d6c8552ab25f598dd7a3ea71b15b55f0@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds board bindings for boards that are downstream but not quite
upstream yet.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../devicetree/bindings/arm/qcom.yaml         | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index c7ab028d54a0..98ff98e9d0bb 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -258,6 +258,16 @@ properties:
           - const: google,homestar
           - const: qcom,sc7180
 
+      # Google Kingoftown (rev0)
+      - items:
+          - const: google,kingoftown-rev0
+          - const: qcom,sc7180
+
+      # Google Kingoftown (newest rev)
+      - items:
+          - const: google,kingoftown
+          - const: qcom,sc7180
+
       # Google Lazor (rev0)
       - items:
           - const: google,lazor-rev0
@@ -359,6 +369,48 @@ properties:
           - const: google,lazor-sku6
           - const: qcom,sc7180
 
+      # Google Mrbland with AUO panel (rev0)
+      - items:
+          - const: google,mrbland-rev0-sku0
+          - const: qcom,sc7180
+
+      # Google Mrbland with AUO panel (newest rev)
+      - items:
+          - const: google,mrbland-sku1536
+          - const: qcom,sc7180
+
+      # Google Mrbland with BOE panel (rev0)
+      - items:
+          - const: google,mrbland-rev0-sku16
+          - const: qcom,sc7180
+
+      # Google Mrbland with BOE panel (newest rev)
+      - items:
+          - const: google,mrbland-sku1024
+          - const: google,mrbland-sku768
+          - const: qcom,sc7180
+
+      # Google Pazquel with Parade (newest rev)
+      - items:
+          - const: google,pazquel-sku5
+          - const: qcom,sc7180
+
+      # Google Pazquel with TI (newest rev)
+      - items:
+          - const: google,pazquel-sku1
+          - const: qcom,sc7180
+
+      # Google Pazquel with LTE and Parade (newest rev)
+      - items:
+          - const: google,pazquel-sku4
+          - const: qcom,sc7180
+
+      # Google Pazquel with LTE and TI (newest rev)
+      - items:
+          - const: google,pazquel-sku0
+          - const: google,pazquel-sku2
+          - const: qcom,sc7180
+
       # Google Pompom (rev1)
       - items:
           - const: google,pompom-rev1
@@ -389,6 +441,16 @@ properties:
           - const: google,pompom-sku0
           - const: qcom,sc7180
 
+      # Google Quackingstick (newest rev)
+      - items:
+          - const: google,quackingstick-sku1537
+          - const: qcom,sc7180
+
+      # Google Quackingstick with LTE (newest rev)
+      - items:
+          - const: google,quackingstick-sku1536
+          - const: qcom,sc7180
+
       # Google Trogdor (newest rev)
       - items:
           - const: google,trogdor
@@ -399,6 +461,36 @@ properties:
           - const: google,trogdor-sku0
           - const: qcom,sc7180
 
+      # Google Wormdingler with BOE panel (rev0)
+      - items:
+          - const: google,wormdingler-rev0-sku16
+          - const: qcom,sc7180
+
+      # Google Wormdingler with BOE panel (newest rev)
+      - items:
+          - const: google,wormdingler-sku1024
+          - const: qcom,sc7180
+
+      # Google Wormdingler with BOE panel and rt5682s (newest rev)
+      - items:
+          - const: google,wormdingler-sku1025
+          - const: qcom,sc7180
+
+      # Google Wormdingler with INX panel (rev0)
+      - items:
+          - const: google,wormdingler-rev0-sku0
+          - const: qcom,sc7180
+
+      # Google Wormdingler with INX panel (newest rev)
+      - items:
+          - const: google,wormdingler-sku0
+          - const: qcom,sc7180
+
+      # Google Wormdingler with INX panel and rt5682s (newest rev)
+      - items:
+          - const: google,wormdingler-sku1
+          - const: qcom,sc7180
+
       # Qualcomm Technologies, Inc. sc7280 CRD platform (rev3 - 4)
       - items:
           - const: qcom,sc7280-crd
-- 
2.36.0.550.gb090851708-goog

