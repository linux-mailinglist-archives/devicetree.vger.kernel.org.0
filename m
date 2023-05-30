Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6425C716B1D
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 19:31:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233482AbjE3RbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 13:31:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233468AbjE3RbF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 13:31:05 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE0D10C
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:30:50 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f6d01d390bso49262785e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 10:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1685467849; x=1688059849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ur+XfWhDDUp4MmWin+/GXdhhvV3YzjyhUErQF6DqfuM=;
        b=T6GTerzQDiqp2ipMpYi+DNT9+tMaABR4+bpRh7d3p6DNcSASkEkQJbr0ZNxfDzNXuw
         a+D+AH7QUCXVeKxeB2IRpKq6gJrnfYWXlWTZu4ZfZYhZFN6p0yyPQrFKekA7eNb7KGvl
         D3bC+Jxa7RDQsGPfNu/eK8XPJMSEsIke7zdZkrkHCmV+CN9HMtOFvSHMGmhS2XKiD/5M
         aMOwPVU6uYOBYtAWHTn8TeIFVKeXrdr/DpW5Mh0LJFMTqOqxPIM7WcT7/SOLEz41bglT
         52IFSFtDHY8NcWsfIRudLH+cAfHB/4sq79+4RRhq5f6YOi36A6QArECp0sNiiGuBt08E
         tPAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685467849; x=1688059849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ur+XfWhDDUp4MmWin+/GXdhhvV3YzjyhUErQF6DqfuM=;
        b=fqSEhzaPI/X7uQ//Cnp4+fMusvsLn2WJIitgG4rBNkPe+Gvu22UIhriYdHOjQ95Fs/
         xArUIJaXsVTTbLVPfvd6cALtFb2121cidNwLg1V+svNvmd+/8ty+lmrmxZ/e4vzdK1cm
         0mjVK+aGZnciprNKN1QrepehyAfffRK+4w0CaKEN4rTZ4qfLLyCEKhMxOGm4I1z4gW+b
         34jhO8ex+syFcChG/RV0RrmpJyFtFHEqMn9A20sts/4377H9JNQQP4F8Cs9i7wV6sQJj
         nWfEV/YKn8xxS7nKoif/BJg/ThYQYcQ59Rouu0870hcuCdPGXwBjctENXd4dAo6Br414
         4jyg==
X-Gm-Message-State: AC+VfDyXMhXf4FyGdrGgGlcqLGiGA5H9YHZl+00b+O/QOKYtwWr0f+2v
        cr6ePwq+2KzkMH2LtC4LMpcz4w==
X-Google-Smtp-Source: ACHHUZ4qyXdoRL+mf9Zz6fea/PbwDq0CxE2fYdhxfVSOSi3ooTC7nXbcExNV5oNL89a/jSeLFCdPVw==
X-Received: by 2002:a5d:54c2:0:b0:306:343a:aede with SMTP id x2-20020a5d54c2000000b00306343aaedemr2618269wrv.65.1685467848905;
        Tue, 30 May 2023 10:30:48 -0700 (PDT)
Received: from dave-Ubuntu2204.pitowers.org ([93.93.133.154])
        by smtp.googlemail.com with ESMTPSA id h14-20020a056000000e00b0030ae901bc54sm3964823wrx.62.2023.05.30.10.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 10:30:48 -0700 (PDT)
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
To:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: [PATCH 19/21] dt-bindings: media: imx258: Add alternate compatible strings
Date:   Tue, 30 May 2023 18:29:58 +0100
Message-Id: <20230530173000.3060865-20-dave.stevenson@raspberrypi.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
References: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are a number of variants of the imx258 modules that can not
be differentiated at runtime, so add compatible strings for them.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 .../devicetree/bindings/media/i2c/sony,imx258.yaml         | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
index bee61a443b23..3415b26b5991 100644
--- a/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/sony,imx258.yaml
@@ -14,10 +14,15 @@ description: |-
   type stacked image sensor with a square pixel array of size 4208 x 3120. It
   is programmable through I2C interface.  Image data is sent through MIPI
   CSI-2.
+  There are a number of variants of the sensor which cannot be detected at
+  runtime, so multiple compatible strings are required to differentiate these.
 
 properties:
   compatible:
-    const: sony,imx258
+    oneOf:
+      - enum:
+          - sony,imx258
+          - sony,imx258-pdaf
 
   assigned-clocks: true
   assigned-clock-parents: true
-- 
2.25.1

