Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF4C226B2E7
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 00:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726500AbgIOWzg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 18:55:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727450AbgIOPY6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 11:24:58 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B2ADC06178B
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 08:24:43 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id a17so3781497wrn.6
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 08:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9zNnAQ2MkHt7BqXHGEYF86S9SXA/6MmyU+PgjnLUZE8=;
        b=xWTKaYx6VbfPz+qYm5gEn7+7VTFsbHwYSGr5nKz6BsWbkc8ps12ulnqThuBlKniQE7
         gjHHg4hmV5luZGDXtL50DXjU+wug6jtuOWW+k5m+HKRPbb+NfCg+re9m5sCozrB/k9c5
         ow53zqmIaehL8m+GiWBJVNdHeh/IWOMzHnf+eWH967qz/Y7cf6n5OMiSvU3O/fvqoQbb
         G/CrXqvOPA3WDn3cpzxjxZ+jXWdyI8V6gDSdnVxTJUOpCI2OoPY3EK3HT/vls5MIM4ku
         LU9rSgcfUmNZYJIN5TJTBUDNjTvqCVSfK8EFt8WkjI8GsxJ8HhgwcNFBtNA83JCOaXi3
         Hstg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9zNnAQ2MkHt7BqXHGEYF86S9SXA/6MmyU+PgjnLUZE8=;
        b=NBMp07ElmRU69DDxI0f+66HtXooXGFSah02wAjd6lBD9GOwEEOtZ1xqhfX2s6I8WmC
         ZROl18j584uhNWS++VaYeHGnkey6oqBjGSksM1yUwFI3Aa7vWBbmEza0Mq9O10MVij9L
         Go3U/AdNLgC3f+6kLYy/3YJAVrBDZwwe9KfbMMUXxbFpDJ94mWBcFxJ3ldFa1pphH9De
         urz+OuDnM6wngwPFhz9dDQXHhYj7MjyyE4X4JAhNjoG0Zq12PyxjSrj+tlDDbtEJbX3h
         +bxeE24f+Mrr4sMdoFLGETio78V9KSvEnJ6SpT2nhAkWdheMu787VbtgD0TfFEJkUvu/
         dH0w==
X-Gm-Message-State: AOAM530EmR03yYXdYSFZgwpJgqvn5yLnu8eMiDLeWFt9cUWSQX2ahDuW
        psE4+BDYWNMVgf/hS7SgkQx+jQ==
X-Google-Smtp-Source: ABdhPJy7gz3lErEQQ2j7aNm6vcpF8nabCqJUs/aUyAH2cTBwZcv7mWvyCHSt7Uc17yTTbhIsmttrnQ==
X-Received: by 2002:a5d:5261:: with SMTP id l1mr21709707wrc.193.1600183481866;
        Tue, 15 Sep 2020 08:24:41 -0700 (PDT)
Received: from bender.baylibre.local (home.beaume.starnux.net. [82.236.8.43])
        by smtp.gmail.com with ESMTPSA id 189sm25984960wmb.3.2020.09.15.08.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 08:24:40 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Christian Hewitt <christianshewitt@gmail.com>,
        tobetter@hardkernel.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 2/3] dt-bindings: arm: amlogic: add support for the ODROID-N2+
Date:   Tue, 15 Sep 2020 17:24:31 +0200
Message-Id: <20200915152432.30616-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200915152432.30616-1-narmstrong@baylibre.com>
References: <20200915152432.30616-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Christian Hewitt <christianshewitt@gmail.com>

HardKernel ODROID-N2+ uses a revised Amlogic S922X v2 chip that supports
higher cpu clock speeds than the original ODROID-N2.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 5eba9f48823e..12ba8d074370 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -153,6 +153,7 @@ properties:
               - azw,gtking
               - azw,gtking-pro
               - hardkernel,odroid-n2
+              - hardkernel,odroid-n2-plus
               - khadas,vim3
               - ugoos,am6
           - const: amlogic,s922x
-- 
2.22.0

