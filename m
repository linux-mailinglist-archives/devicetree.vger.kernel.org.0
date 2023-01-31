Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAE22682359
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 05:39:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjAaEjS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 23:39:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229934AbjAaEi6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 23:38:58 -0500
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23B683B0C7
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 20:38:21 -0800 (PST)
Received: by mail-oi1-x232.google.com with SMTP id bj22so2814278oib.11
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 20:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXzzK5FVdbfjHsKczaF+d6bF7UcG4AwVnTFb17KpdMo=;
        b=DPHIeeG9Qe9vZAwktVaCedN0BzLtD2Z2DSdlJW2dkkvtyoMJDr/asztI4JA/x2VJ2F
         yvql4TTLDepezfWIGYDPI9Pyw4kATNQmcuU2ZfZHIAXHaQFJsbhlzp7r834T/0i7ajaZ
         eWoGSwmH/ONGpWW7rsGMZW4mxqrmmgj8fCB8jG9beTanzODbaMsh01KpPOCQsfRVRB/P
         8GqdIqlKRclU1qvQa0y1PTMg/7vAKRSJuYHMf4G4VPdOlSYSbbn77ZzQOg0Nikj0HsuL
         sTln9p4hrOb6UCYsJSppQ+LPTDKpKnNRs5BgzDzJ0IaF9+NbYkBqngTFCpk0y/0T+UUE
         VdMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXzzK5FVdbfjHsKczaF+d6bF7UcG4AwVnTFb17KpdMo=;
        b=x4W9iQuOXQkBkS5CGmbkUXVHgDLBpORfWZKT3KsQ7rCJm0x9uXs1wwACj+IYONwiUa
         W1Uy3Zu5u9QhvksXNCNJYyZSXFUEFWs/bLFMXfqvOqWi52HO2spSv8Ao4r0MQ0E8v8Vh
         ZHz3dZKco6+aiT4DtbBVor3M14jsul890PRGaLTJ+nDKyCA/CSvBaYEtvHjs/hLDtgCt
         CgBBOiql7FNcacB2mNTitkHfGCJW567b+HbgdnRhFKdETQXI7YCjNkoRRlZopNF3l3H2
         Tq1lVQyp/u8M/Y0mZXHtfvfUuS3L1/5nhO0tV0tx009I1euml48JklErzGoq34fzpAOs
         LvIw==
X-Gm-Message-State: AO0yUKU96187SCw3sdKYAMLcaGlsir1I8iLUmHWfp98gUWp4iiJyZXgG
        h1A9vWXWNF8LFVNFHRBIGDGOBQ==
X-Google-Smtp-Source: AK7set+0SX5l6OqA15wmfLibMyvjJLh+/cHpE/VbiBm1eq26fmxp8x6bMw7gKOpfZA/YEQJO5hKi0A==
X-Received: by 2002:a05:6808:1987:b0:378:6ebe:a98b with SMTP id bj7-20020a056808198700b003786ebea98bmr2054601oib.37.1675139900468;
        Mon, 30 Jan 2023 20:38:20 -0800 (PST)
Received: from localhost (23-118-233-243.lightspeed.snantx.sbcglobal.net. [23.118.233.243])
        by smtp.gmail.com with ESMTPSA id s1-20020a056808208100b0037841fb9a65sm2049736oiw.5.2023.01.30.20.38.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 20:38:19 -0800 (PST)
From:   Steev Klimaszewski <steev@kali.org>
To:     Steev Klimaszewski <steev@kali.org>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Sven Peter <sven@svenpeter.dev>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        Mark Pearson <markpearson@lenovo.com>
Subject: [PATCH v2 1/4] dt-bindings: net: Add WCN6855 Bluetooth
Date:   Mon, 30 Jan 2023 22:38:13 -0600
Message-Id: <20230131043816.4525-2-steev@kali.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230131043816.4525-1-steev@kali.org>
References: <20230131043816.4525-1-steev@kali.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the QTI WCN6855 chipset, based on the WCN6750.

Signed-off-by: Steev Klimaszewski <steev@kali.org>
---
Changes since v1:
* drop second binding in subject line
---
 .../devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index a6a6b0e4df7a..64e278561ba8 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -23,6 +23,7 @@ properties:
       - qcom,wcn3998-bt
       - qcom,qca6390-bt
       - qcom,wcn6750-bt
+      - qcom,wcn6855-bt
 
   enable-gpios:
     maxItems: 1
@@ -121,6 +122,7 @@ allOf:
           contains:
             enum:
               - qcom,wcn6750-bt
+              - qcom,wcn6855-bt
     then:
       required:
         - enable-gpios
-- 
2.39.0

