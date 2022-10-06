Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 094965F64A5
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 12:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbiJFK6h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 06:58:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231388AbiJFK6e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 06:58:34 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D05198CAF
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 03:58:34 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id a5-20020a17090aa50500b002008eeb040eso4737765pjq.1
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 03:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjvc6KvX1lZgQ0h1CLOFlzzmfsAs3MjCO/T6JD8d9jU=;
        b=nnyh33Tw6QiA/+QgG+C7ZXp/zsqRgaVsurGHWgCZhHSklzVoTkFxNgjxWZDPiQKeEy
         XM3c5HtzjgWBcCsMlPFT6D6ncVqq8rlerNUqQRDPfPd8elLjvzboSo6hrkUx7o+qIDRy
         zf/GQr+IPaH3N5Xjei0qoAfTU6VsR3UmCOiR307G5W5OCq8bltvEXDzCW70DxLu6uxtt
         GBibhHYcVpqeygNiQe7JXkaPkbZNErc80YT7AXjhy81j/ty0Z/hYXqHFD8JsyRX44SYk
         cKB9oJvA5xFlZwPyrEtUUyyEY+BRh1j7DKHRSTOWNgXKGLe5s0jwt7L7UuL9UL1m9eyZ
         RSTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tjvc6KvX1lZgQ0h1CLOFlzzmfsAs3MjCO/T6JD8d9jU=;
        b=qS5HNb8KzmAWX52PgGg7L05WuOx3iKDIFpkJRqSBB8yY8Eg4NUIi85EqVZaYXhTtTi
         wT3LrWrLD4PtpoKT984zEK8Z9nmWPfnZCJ31wWFyZsREGZv1JxrcZZIcZsDczIFMfUQP
         LAWWV/BVeUjYrDJSgH0SaoMBV4FNG7YfD4s+DdBKe1RSOGn2rrDk29qXmnMznYbEWX8j
         ReYdWj5omhqC3c8bzv8UC6g5/5AH/w69wuaQhnl/oA0ZJ03+dypE9K6G6WXiyfjoQ8UW
         xoHOVvSFC0NKMYT7DCTuh8gvEPnWJrOzSiARtC/n6jRdv7mgD0D2Z/u4/5pp2iKde9B1
         3JJw==
X-Gm-Message-State: ACrzQf0csjViy89wVEMO7K0DyPFCaa3qVIFnIwkF/6QAD0gpHqxiKeFT
        XlJQJfLAGBuzlquPA81eVa4otA==
X-Google-Smtp-Source: AMsMyM5SA5sOyZ6DfeFrw2SlkaEKqEyPfliAkQ6r+5ItAGpIcSOt8cmGVvPjdDID5WIo7DfcDI+7UQ==
X-Received: by 2002:a17:902:ba95:b0:17f:9943:2dea with SMTP id k21-20020a170902ba9500b0017f99432deamr515092pls.81.1665053913502;
        Thu, 06 Oct 2022 03:58:33 -0700 (PDT)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id c13-20020a170903234d00b0017d12d86901sm10504297plh.187.2022.10.06.03.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 03:58:33 -0700 (PDT)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v7 1/4] dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
Date:   Thu,  6 Oct 2022 18:58:20 +0800
Message-Id: <20221006185333.v7.1.Ide53082044aac56877c4ff5725777769e377476a@changeid>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006105823.532336-1-sheng-liang.pan@quanta.corp-partner.google.com>
References: <20221006105823.532336-1-sheng-liang.pan@quanta.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

evoker will have WIFI/LTE SKU, separate it for each different setting.

Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---

(no changes since v4)

Changes in v4:
- fix typo in tittle and commit

 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 8060c35d003b4..c15a729a6852e 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -513,6 +513,11 @@ properties:
           - const: google,evoker
           - const: qcom,sc7280
 
+      - description: Google Evoker with LTE (newest rev)
+        items:
+          - const: google,evoker-sku512
+          - const: qcom,sc7280
+
       - description: Google Herobrine (newest rev)
         items:
           - const: google,herobrine
-- 
2.34.1

