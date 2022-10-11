Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F33CC5FBA55
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 20:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbiJKS1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 14:27:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbiJKS0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 14:26:41 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D17F4371BB
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 11:26:26 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id l1-20020a17090a72c100b0020a6949a66aso14047582pjk.1
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 11:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c8sL+MerUYidxnSLjWpY0ZCdMNuifAN05957kJj9x0A=;
        b=ULGyIZLbSjxVwypxtPJF1gRHQwfJVPrnlaOQYdEay6O5PBnm2C677ZzW3LXKJkqayg
         EJtGWJ1ewB8ej+pzcjogGStKWpsCR/o0Ym2fmnh2MyIf8wryRjbkf4JI3Q1J/QYbLWEL
         c4kwcOx80OtgQ1rFAVfsg+D7HChoxR6EGsjrhW0xKt1dVOi4hjGBTMUalVwBlCM2pFTJ
         zs0cktqbvpfDUJeotufzpJ9TieF2Aq52vN8uoWU7vKv0BaTsDyxJyzttCwa/qy6ph4x5
         s6r64FriwrEkcT4cmYdLuRLlXngheBK4HOeherbVEYZ1NO5Hb8aPehN7b94ZVoZApx0e
         razQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c8sL+MerUYidxnSLjWpY0ZCdMNuifAN05957kJj9x0A=;
        b=wPWHUmlaAJHXlxZQl5GsIRtaHn6wGrNXC/uetGHy1p2qhH7v8uQw0L8AAAP997VOnu
         Msb8nAZPqP0zU8QTgcPJU8W2EiGz9wvfvTt2NlVXL7sfKwEBrJJQaye+PRsgXCg+tiTl
         qPUQRkuCvO2DNupXXsZel5hlVly8+8EMigEItUBCDMgo9CCTW2vYKtOYHFTcB0hzs4Xq
         z0DQj/ZIvrYXP89j68oRihard4s4NnqDCKHlzpYc7WBT6Fqf4cQl1xrf+qxNH550xvQq
         uBWMoTDjUc7Ao1UhHf8xm9qj4Otw2wAE0lt/luBcsSmMBWecF47oPZPGYBmY6hnBaP58
         lkDA==
X-Gm-Message-State: ACrzQf06Tyq3BAXAwoqkrcAjuyIbao/rxKfJIsB79MyBU64q0RMIfuLM
        fpghemrzfhU47j1ImPCQ+yOs4w==
X-Google-Smtp-Source: AMsMyM6LsdtE5L76qGdtLBXKLu1kIvjdl1AE29tw6TF996akmzrmomeMQwXndHU/TL87VfIXrnigSA==
X-Received: by 2002:a17:90b:3ecc:b0:205:e177:fa2b with SMTP id rm12-20020a17090b3ecc00b00205e177fa2bmr505913pjb.124.1665512785365;
        Tue, 11 Oct 2022 11:26:25 -0700 (PDT)
Received: from desktop.hsd1.or.comcast.net ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id t8-20020a655548000000b0045ffd1dc622sm6313643pgr.30.2022.10.11.11.26.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 11:26:25 -0700 (PDT)
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
        Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: [PATCH v2 1/2] libfdt: add fdt_get_property_by_offset_w helper
Date:   Tue, 11 Oct 2022 11:26:10 -0700
Message-Id: <20221011182611.116011-1-tadeusz.struk@linaro.org>
X-Mailer: git-send-email 2.37.3
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

Add a new fdt_get_property_by_offset_w helper function.
It is a wrapper on fdt_get_property_by_offset that returns
a writable pointer to a property at a given offset.

Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>
---
v2: Remove const from the first param (fdt).
---
 libfdt/libfdt.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/libfdt/libfdt.h b/libfdt/libfdt.h
index a7f432c..d0a2ed2 100644
--- a/libfdt/libfdt.h
+++ b/libfdt/libfdt.h
@@ -660,6 +660,13 @@ int fdt_next_property_offset(const void *fdt, int offset);
 const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
 						      int offset,
 						      int *lenp);
+static inline struct fdt_property *fdt_get_property_by_offset_w(void *fdt,
+								int offset,
+								int *lenp)
+{
+	return (struct fdt_property *)(uintptr_t)
+		fdt_get_property_by_offset(fdt, offset, lenp);
+}
 
 /**
  * fdt_get_property_namelen - find a property based on substring
-- 
2.37.3
