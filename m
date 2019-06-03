Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DFF7932C98
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 11:18:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728101AbfFCJKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 05:10:23 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34255 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728098AbfFCJKX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 05:10:23 -0400
Received: by mail-wm1-f67.google.com with SMTP id w9so3128560wmd.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 02:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=flCBkYYx+PdHsv3XsjTv06FvsWqxIYgVPOMABFKuON0=;
        b=SwuDnWbt+BrQnQbtSVGVqHEKRwhgpuaH9QN4iH7n58msM+doavax1lbAs5vFSK7Q0F
         oknUZcm8NJUzRm1eBmLB0P4JsyeqJiqifAZlHLp8KlL7dV0hZ3fP4aHWQ2UHc7yxpJHk
         deycQtVX+Cjn4UHcZBdcCfjg1AF8Bt7IOlGBHLgBa75Bm28PolHcvHtIfWefwgP8G7FX
         yYsu+rdKLV1bOVeRGXLWsPPnjAnn50Gy33bJHN3JBZt/ZANjDUXKFKg02g2jvjlv0OD0
         r9X3Lo/cYrfu5t26qEKi+uV/fbVb8HEcDMBHp6BoPGDjopy22Rhz1xtKLQVGPAf4nKIK
         f1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=flCBkYYx+PdHsv3XsjTv06FvsWqxIYgVPOMABFKuON0=;
        b=OGLKS4rqOaa80mBa+huf8ts/0p14z50aoMdzmq/SpJlUAtbMDFowsOgJWOc8zcVMQK
         XqNRFushBTOk8Sx6VtWEZNAsZmeigzm6mVxtafklVDFLEjLokz7bmWXtyQyG0VIdKSm7
         vupUFdcFN6oHvDCwh1htVohazUhXvtqQulyGYG2gb0QLsc1k6NEBaVl9/eQe7dBTkRez
         WwJRdG3jK4Ec+sfZ7lj7XR60BMCPlVeg0OJMy4w3knnWHiSWpHH/475jpNKh7Hi6fDEd
         3Q/WbjgCkEi7QYdRMfqIHS/EPhhZHZLiagyiGS2IICcS9b3mNx3YSxolCOnuYPAiPgw5
         /eKw==
X-Gm-Message-State: APjAAAXnA8bfnZP7SNMy8mfriz5IkzPgvyxIKjfwamOVdtazypm1uXx5
        xEq/RlhXO5JjnjZwlR9H4/D4OQ==
X-Google-Smtp-Source: APXvYqzcNF1uAs9S8hg0XUv2b9wOOsxIrr/vf886v2rk2wi9jg/PFMdqP6QfBdMc3j/0O8fBWS+JhA==
X-Received: by 2002:a1c:9a16:: with SMTP id c22mr1449423wme.39.1559553021966;
        Mon, 03 Jun 2019 02:10:21 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id e15sm10676809wme.0.2019.06.03.02.10.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 03 Jun 2019 02:10:20 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v5 1/3] dt-bindings: arm: amlogic: add G12B bindings
Date:   Mon,  3 Jun 2019 11:10:06 +0200
Message-Id: <20190603091008.2382-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603091008.2382-1-narmstrong@baylibre.com>
References: <20190603091008.2382-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Amlogic G12B SoC, sharing most of the
features and architecture with the G12A SoC.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 6d5bb493db03..28115dd49f96 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -137,4 +137,8 @@ properties:
               - amlogic,u200
           - const: amlogic,g12a
 
+      - description: Boards with the Amlogic Meson G12B S922X SoC
+        items:
+          - const: amlogic,g12b
+
 ...
-- 
2.21.0

