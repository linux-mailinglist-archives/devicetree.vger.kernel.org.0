Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB60F338B11
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:08:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233897AbhCLLIP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:08:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233761AbhCLLIE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:08:04 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 051CFC061761
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:04 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id k8so1538598wrc.3
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=h5iCVi3kGcdP7GfFug+7AAOmAXys2cxySqnBTCX8/Wo=;
        b=MiZ/wksgjgzrYq05xxSVqsr6IYVhuJu6Ohdsuz+m4EwHwmcD8iTbvBFUhbGR1MJDpd
         rCOvFEoVBZNa8258gbc16/z8Ol1lcno9gqt6HkgXSE9wVlZbwWJgV17ZGIaJD5RLLoxP
         8O4QdSH8bMzq6LyiF9Fu2q9zFeZt45BWnu1kzkq6U2luPrTVN3s0U228i+uxOjkUEMqf
         M1PQ7YcNY93XjjJM7a+FLbZshl2JBoZcKp9QwfaU/4zlHyIj/fZNsway0u43AoncVEKW
         N2DGEiJh1hBznIIbsbtWUz234sT6sHlWsCAzAZilKG6hBkRt/HESoBkDMlwURgst+dF0
         RqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=h5iCVi3kGcdP7GfFug+7AAOmAXys2cxySqnBTCX8/Wo=;
        b=kY/fqH8FjgRjQwT1guAIP/t8loLx84jeJ0Q5AnR/13T4w4IFB4nL5vt5xgZrPKLtRH
         NUSkut5zB24h+QNTmjBH+MV+OlnM7HpKMVAN/uDEuoL8IOQH9auE8Z71djTSvHL+1wRA
         MqcH6S4Y21eWGrZcOsqx/4pTa7gwQK74mHUnrWMcavi+ygv0Z0iJb1+mWGUBp9+aZxLo
         sLNcckUTZyg1B1eGrp0V7sj5WnocgwYh/emHlsy1441aMm7AsmoS/0BvOW9Qb+HIFKbv
         OAXpcpbgwq/TYmPyCRRY9OmCd1Heevz3bpzaEoeDCVKdzO+CmDxCNpR5lABJyOU1aYT9
         xqCQ==
X-Gm-Message-State: AOAM5311Lpidd9FdFt1C2owtGpE7V5fnXDRuq7SwQIZSricrZlJLOALr
        3NJan1ZYoCCZPw68sDLB++uTWg==
X-Google-Smtp-Source: ABdhPJyLrT0yt2V3kPdOO37ujSRBFuKzmwGxle82fAsDNMKaDO4t8bLD5P0bwCRJ4Mhz2jFCkpgCBQ==
X-Received: by 2002:adf:ef4a:: with SMTP id c10mr13109500wrp.427.1615547282654;
        Fri, 12 Mar 2021 03:08:02 -0800 (PST)
Received: from dell.default ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id f126sm1813003wmf.17.2021.03.12.03.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:08:02 -0800 (PST)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 01/10] of: device: Fix function name in header and demote kernel-doc abuse
Date:   Fri, 12 Mar 2021 11:07:49 +0000
Message-Id: <20210312110758.2220959-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210312110758.2220959-1-lee.jones@linaro.org>
References: <20210312110758.2220959-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/device.c:72: warning: expecting prototype for of_dma_configure(). Prototype was for of_dma_configure_id() instead
 drivers/of/device.c:263: warning: Function parameter or member 'dev' not described in 'of_device_modalias'
 drivers/of/device.c:263: warning: Function parameter or member 'str' not described in 'of_device_modalias'
 drivers/of/device.c:263: warning: Function parameter or member 'len' not described in 'of_device_modalias'
 drivers/of/device.c:280: warning: Function parameter or member 'dev' not described in 'of_device_uevent'
 drivers/of/device.c:280: warning: Function parameter or member 'env' not described in 'of_device_uevent'

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/device.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/device.c b/drivers/of/device.c
index 6cb86de404f1c..64ee363abde24 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -53,7 +53,7 @@ int of_device_add(struct platform_device *ofdev)
 }
 
 /**
- * of_dma_configure - Setup DMA configuration
+ * of_dma_configure_id - Setup DMA configuration
  * @dev:	Device to apply DMA configuration
  * @np:		Pointer to OF node having DMA configuration
  * @force_dma:  Whether device is to be set up by of_dma_configure() even if
@@ -256,7 +256,7 @@ int of_device_request_module(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(of_device_request_module);
 
-/**
+/*
  * of_device_modalias - Fill buffer with newline terminated modalias string
  */
 ssize_t of_device_modalias(struct device *dev, char *str, ssize_t len)
@@ -273,7 +273,7 @@ ssize_t of_device_modalias(struct device *dev, char *str, ssize_t len)
 }
 EXPORT_SYMBOL_GPL(of_device_modalias);
 
-/**
+/*
  * of_device_uevent - Display OF related uevent information
  */
 void of_device_uevent(struct device *dev, struct kobj_uevent_env *env)
-- 
2.27.0

