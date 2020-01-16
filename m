Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3AAF513D377
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2020 06:12:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726899AbgAPFMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jan 2020 00:12:21 -0500
Received: from mail-pj1-f65.google.com ([209.85.216.65]:34892 "EHLO
        mail-pj1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726898AbgAPFMV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jan 2020 00:12:21 -0500
Received: by mail-pj1-f65.google.com with SMTP id s7so998683pjc.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 21:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5t137Hgr25MSwppHZChMACb9jtzyL71KI0BNnXvPh60=;
        b=SlAEl8CCKwgk2pji8uvv1hGfQcI6PJDUxs9aUvQwZ4wbz3FxpnRNbdItJGljwTH9St
         X1vIOo4Je0wi019hxRim/DPOCMhcWop4I+Qd1spj0buvLJuzta/aohHVXvCIPxIwLUT8
         SjL1n9SXeTVfpR0O36cgyvyp1clc5sdcfFDT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5t137Hgr25MSwppHZChMACb9jtzyL71KI0BNnXvPh60=;
        b=aeFVheSUo6tG7LP5jntwIHuDofA1eRHtIY5BoCPmetzS+3amDBeW5KWckGycXZsD0D
         XTdgHHrsV0UOjzYg362pvKD8X3fSjBpJh6qPE4/eLdf0QdbWfwWkPKe3TuehrxRzsRnW
         LjKbZT+ttIBASJlJn7w5f80wcHYaYlAYHF77X9rL0SUUJJPIIjGPotnKvRVLP09j/Ikr
         DFzZ6j/9pD4ZCly5PbJ+NPWNirQdrLunXZqWIoLWBFTzPdaPJxsnkouSzbxD/xQJMieb
         /SS7GssjzysiY1HKDLKAzzn4XhPkgGHojqz6OkFvMgY8Omxx0X1FlmHcJ9R/eOLuPcbP
         6Q2Q==
X-Gm-Message-State: APjAAAV5rxmO2JIKR/DtizRtYVd1AhuTGy54dZRFILLt8jqYdeG3NnPa
        Tx7/uslB5HjCiw30oK3DguaG6Q==
X-Google-Smtp-Source: APXvYqwdOjdtFD1Iu7QVZbgDqB198xvL/e/t6J9kYjvjNo8/BuXY1Mw5Y9I4lFqL129beGOoLQukoQ==
X-Received: by 2002:a17:902:a614:: with SMTP id u20mr30227332plq.107.1579151541051;
        Wed, 15 Jan 2020 21:12:21 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id l9sm21540217pgh.34.2020.01.15.21.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 21:12:20 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Daniel Kurtz <djkurtz@chromium.org>
Subject: [PATCH v3 1/3] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
Date:   Thu, 16 Jan 2020 13:12:07 +0800
Message-Id: <20200116051209.37970-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200116051209.37970-1-hsinyi@chromium.org>
References: <20200116051209.37970-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/mediatek.yaml     | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4043c5046441..abc544dde692 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,28 @@ properties:
           - enum:
               - mediatek,mt8135-evbp1
           - const: mediatek,mt8135
+      - description: Google Elm (Acer Chromebook R13)
+        items:
+          - const: google,elm-rev8
+          - const: google,elm-rev7
+          - const: google,elm-rev6
+          - const: google,elm-rev5
+          - const: google,elm-rev4
+          - const: google,elm-rev3
+          - const: google,elm
+          - const: mediatek,mt8173
+      - description: Google Hana (Lenovo Chromebook N23 Yoga, C330, 300e,...)
+        items:
+          - const: google,hana-rev6
+          - const: google,hana-rev5
+          - const: google,hana-rev4
+          - const: google,hana-rev3
+          - const: google,hana
+          - const: mediatek,mt8173
+      - description: Google Hana rev7 (Poin2 Chromebook 11C)
+        items:
+          - const: google,hana-rev7
+          - const: mediatek,mt8173
       - items:
           - enum:
               - mediatek,mt8173-evb
-- 
2.25.0.rc1.283.g88dfdc4193-goog

