Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27FBA22375E
	for <lists+devicetree@lfdr.de>; Fri, 17 Jul 2020 10:50:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726293AbgGQIuX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jul 2020 04:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726234AbgGQIuW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jul 2020 04:50:22 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA32AC08C5C0
        for <devicetree@vger.kernel.org>; Fri, 17 Jul 2020 01:50:22 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id t11so5066639pfq.11
        for <devicetree@vger.kernel.org>; Fri, 17 Jul 2020 01:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PD2ZLQCvLaWVcoV1PzZsr55F59ipm51nH9LfNuI1BWE=;
        b=lRtQzivEf2cCiMyei1lVXETGj3wO+frDXypbkG9dastQNt9ukpIkiW1uHKa96n7L1m
         9aQxIP3dbyq33eF2GJ+iNrBMDKd5HwIdJ8W1/lzafOBHQXzpqxN0CQrglNxsrkk9IaMT
         CpB9WBuu7qJGza5D5lxMmfdhxPmqrvFJlMqBZsZe1aFDJ9uTCgV04YaedAyLcrZ3viUy
         tT91uJD7nyMJ+AY6we1LzwkroN1cK43LBwYex/fypAfMErA0yOrmETET80xy0LT72Hlw
         7v536I49sOzpqQJwr+7hOl7JM4xeQ4NMbm1BN5YrJY+vfoN+VZlClYgN5nM7I8T6DQjQ
         vJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PD2ZLQCvLaWVcoV1PzZsr55F59ipm51nH9LfNuI1BWE=;
        b=W92bXAthrk6OsUQn0mRLo7N2XOMGRbxVw9/YdpWBsPTg28cBBJ2cdQyCFFF+RNECae
         /Q8aIlGaz0c826T4uQCdaGwzUY9N0PhCywbtKzGlLs/zllW+M4GyH4BN44B3aNLhjvp6
         rfjJuE0Plu8X8VXqMVfZbpyG9vOy5luhDpHi4Bj2K9gFyeucbflZ14CVSIZxZu8naEBI
         NKTS6WxVfu/cZhyG9rnPwPGT68CZpxUBenSuXB9e6VKIsGT4C/U0XRFU1rYO8uCRB2O4
         StbwNSkMf1X2h1P2BE4Ar4gQ5ZSVNoacmypcI8ykw5YiVANcY2ifMbQGKO6is+ZgCTaR
         7Fcw==
X-Gm-Message-State: AOAM533qJ8SUvUJ8YxOoCmAlKVse8oMQbAtK0Q7tPoiITHZ6e1G25Lfy
        xTcM7M+0RID/3lHqFQ0zAcQzEA==
X-Google-Smtp-Source: ABdhPJxwbnGcCA+Ao1mGz9LcqCtufhcCqaj6FVUTjWwdjDgxuXUXyF61QXObtW678H1QzTjA0jJ+GA==
X-Received: by 2002:a63:125a:: with SMTP id 26mr8055436pgs.340.1594975822468;
        Fri, 17 Jul 2020 01:50:22 -0700 (PDT)
Received: from debian.flets-east.jp ([2400:2411:502:a100:c84b:19e2:9b53:48bb])
        by smtp.gmail.com with ESMTPSA id f207sm7309364pfa.107.2020.07.17.01.50.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Jul 2020 01:50:21 -0700 (PDT)
From:   Masahisa Kojima <masahisa.kojima@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     masahisa.kojima@linaro.org, jarkko.sakkinen@linux.intel.com,
        linux-arm-kernel@lists.infradead.org, ardb@kernel.org,
        devicetree@vger.kernel.org, linux-integrity@vger.kernel.org,
        peterhuewe@gmx.de, jgg@ziepe.ca, Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 2/2] dt-bindings: Add SynQucer TPM MMIO as a trivial device
Date:   Fri, 17 Jul 2020 17:49:32 +0900
Message-Id: <20200717084932.3449-3-masahisa.kojima@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200717084932.3449-1-masahisa.kojima@linaro.org>
References: <20200717084932.3449-1-masahisa.kojima@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible string for the SynQuacer TPM to the binding for a
TPM exposed via a memory mapped TIS frame. The MMIO window behaves
slightly differently on this hardware, so it requires its own
identifier.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Masahisa Kojima <masahisa.kojima@linaro.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 4165352a590a..814148939e5a 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -328,6 +328,8 @@ properties:
           - silabs,si7020
             # Skyworks SKY81452: Six-Channel White LED Driver with Touch Panel Bias Supply
           - skyworks,sky81452
+            # Socionext SynQuacer TPM MMIO module
+          - socionext,synquacer-tpm-mmio
             # i2c serial eeprom  (24cxx)
           - st,24c256
             # Ambient Light Sensor with SMBUS/Two Wire Serial Interface
-- 
2.20.1

