Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD4365F7DA6
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 21:11:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbiJGTLr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 15:11:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbiJGTLq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 15:11:46 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA278DEB0
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 12:11:45 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id i6so5722767pfb.2
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 12:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X33KFnbOehc32ARH7cR80ekLDQpypni50VNhotuRRFg=;
        b=IvqidsxBiaz+vky6OVpa9iKOLZmMUiMGeo2lVRQhLdlV9DUkgGp4RcoGELOaUz/nnK
         Mji3h65SYUswQ7N6fFyZIQPjXHA5IsN8Omdj5TV4q8yGPJZpc2hvPT+9W2Z9NaHTDQze
         EtMAFP+7rVL5yrd7GlIH8vPETfaGzHNuLzE7zXO9f5964dqx9CIObapSsccp6SuPWO03
         DzwVzfPEgizmR8GGPNU9CmES5OD3BKCxAw4Y+TCNZQq1jJvRaG1G//9JS+wof5HgY2XP
         i6z3jFnsbmJ5G4O43L92WhwEqpQQwjx/hsOoKu7UfDaceuUyFgMVq5pRuouXhzsSX939
         pLNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X33KFnbOehc32ARH7cR80ekLDQpypni50VNhotuRRFg=;
        b=4Pww0tCrkQrgpqAXy4pkaoltSldnXRRVhL0nMcvw2Ps8nUixW9J2KTXg2/Wcp5qNhq
         5CH2UYcN/xCEo0D/QHo+573j/DBwzSkJiGAK409UUKU9nY+oS/MxGc/k4FZ64QVOt6up
         y7iKxzWQGRnmeXFZt2LY6Ej8mhQFG1gG0cc9K4vhWVV/WMfJePhdwv90Y07WFLJecw4t
         OQxXLpiNygRyhy/CncTGAjNowAeYYnwylKP82o/jObAMVyCCFLlzctHa+2nfH71gtg/p
         pav71Ad1+eQ6lonPci4nP5tIl5wlci6Kugk6IduTV0zSj6gA6udKg10W1XTnqCmkuUbT
         j7Iw==
X-Gm-Message-State: ACrzQf3sQjcD9ZLG2rqHe25JL8xBBgErKwzigpW9O0o7hGM5F+HY1Po1
        jhdMMiEoBsgZnGPhYGWxTo8uaQ==
X-Google-Smtp-Source: AMsMyM780EJ8vUByNvj1Fyl6j04b/TM9vitn4lnAs1BvlFQNSgrhMX6tFf8sZgiVtfGTRdSXmo8wOA==
X-Received: by 2002:a62:164d:0:b0:562:bc4e:253 with SMTP id 74-20020a62164d000000b00562bc4e0253mr4416576pfw.26.1665169905284;
        Fri, 07 Oct 2022 12:11:45 -0700 (PDT)
Received: from desktop.hsd1.or.comcast.net ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id s1-20020a6550c1000000b0043a09d5c32bsm1971571pgp.74.2022.10.07.12.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Oct 2022 12:11:44 -0700 (PDT)
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>,
        Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
        Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: [PATCH 1/2] libfdt: add fdt_get_property_by_offset_w helper
Date:   Fri,  7 Oct 2022 12:11:15 -0700
Message-Id: <20221007191116.161426-1-tadeusz.struk@linaro.org>
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
It is a wrapper on the fdt_get_property_by_offset() cuntion
that returns a writable pointer to a property at a given offset.

Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>
---
 libfdt/libfdt.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/libfdt/libfdt.h b/libfdt/libfdt.h
index a7f432c..cddc2d6 100644
--- a/libfdt/libfdt.h
+++ b/libfdt/libfdt.h
@@ -660,6 +660,13 @@ int fdt_next_property_offset(const void *fdt, int offset);
 const struct fdt_property *fdt_get_property_by_offset(const void *fdt,
 						      int offset,
 						      int *lenp);
+static inline struct fdt_property *fdt_get_property_by_offset_w(const void *fdt,
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

