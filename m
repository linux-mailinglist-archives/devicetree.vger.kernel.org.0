Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF136346E73
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 02:05:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234091AbhCXBEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 21:04:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234071AbhCXBEZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 21:04:25 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DABB7C061765
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 18:04:24 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id e14so7035901plj.2
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 18:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GOFzQ2jCakOgU1pwAYyIIEpEFP9m6Nt53S4tZwFxe7s=;
        b=egZM3rXGWFC4HFLhXb5KdcFzUaaq1rUskREM9ziQJuX5c26cL3x8aLBtbVIm3Suc/H
         AsSKzUkFDLvvC+ScPNldH+lf8i551ZLIeomM4SAw5GZNewzJM76I2VJeLvWhl+2K4tzt
         wmzQwRL/RvyAn22ULNdiP8X0wCdh4OG+Q5fug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GOFzQ2jCakOgU1pwAYyIIEpEFP9m6Nt53S4tZwFxe7s=;
        b=a7WU7emI3hXCzS4KoJYa67nbQChQ6810TsZ0Zccl/q0RM+O0HdogvasPu3Bu4jwous
         crIDsaRudtT9Oo4QU9pGiljoDzD5h/dOBA8feeNMBDECtYFp9Gc3ZOkvCcyC5HjIUt9J
         stVGwrtog0xjVdve58/n7igy1k9Sty9q7il2FtDrgL/WiFD0zc231HRRgCqM4bEtJajc
         wz3TctYUKjOjHAEOyTRX1QGlZ7hfZdq3K0jNBI7XpHYXyHR0GxkaCWDYY1NZRCsE0utC
         QTlh4cn07mLGaU9B9y+heyIyhwgDeDNEh5WLIUwhludUP5c+iMD+PG3yjaticvHAYQej
         30kA==
X-Gm-Message-State: AOAM532XVNObRSTNUW2G+2A9t+ViMzRMwPOLMRSdIKHkKy6hWku9Gwn4
        cC4MDkNQD4dnMm9B1eQfL5+IYQ==
X-Google-Smtp-Source: ABdhPJwKSSYOOg2WMJ9Ov+4FIPkCVtwmcB3n1NL0u8y7XvB6KA4b/ELp3Mww4J+tZXeSPtYY0sj5Tg==
X-Received: by 2002:a17:90a:987:: with SMTP id 7mr751037pjo.61.1616547864216;
        Tue, 23 Mar 2021 18:04:24 -0700 (PDT)
Received: from jwerner-p920.mtv.corp.google.com ([2620:15c:202:201:cc81:ff03:bd16:9643])
        by smtp.gmail.com with ESMTPSA id j20sm4167217pji.3.2021.03.23.18.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 18:04:23 -0700 (PDT)
From:   Julius Werner <jwerner@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lukasz Luba <l.luba@partner.samsung.com>,
        Doug Anderson <dianders@chromium.org>,
        Julius Werner <jwerner@chromium.org>
Subject: [PATCH] dt-bindings: ddr: Add optional manufacturer and revision ID to LPDDR3
Date:   Tue, 23 Mar 2021 18:04:05 -0700
Message-Id: <20210324010405.1917577-1-jwerner@chromium.org>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On some platforms, DDR parts are multi-sourced and the exact part number
used is not know to either kernel or firmware at build time. Firmware
can read identifying information from DDR mode registers at boot time
but needs a way to communicate this information to kernel and/or
userspace. This patch adds optional properties for this information to
the existing "jedec,lpddr3" device tree binding to be used for that
purpose.

Signed-off-by: Julius Werner <jwerner@chromium.org>
---
 Documentation/devicetree/bindings/ddr/lpddr3.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/ddr/lpddr3.txt b/Documentation/devicetree/bindings/ddr/lpddr3.txt
index a0eda35a86eef9..b221e653d3845e 100644
--- a/Documentation/devicetree/bindings/ddr/lpddr3.txt
+++ b/Documentation/devicetree/bindings/ddr/lpddr3.txt
@@ -12,6 +12,9 @@ Required properties:
 
 Optional properties:
 
+- manufacturer-id : <u32>     Manufacturer ID value read from Mode Register 5
+- revision-id     : <u32 u32> Revision IDs read from Mode Registers 6 and 7
+
 The following optional properties represent the minimum value of some AC
 timing parameters of the DDR device in terms of number of clock cycles.
 These values shall be obtained from the device data-sheet.
@@ -49,6 +52,8 @@ samsung_K3QF2F20DB: lpddr3 {
 	compatible	= "samsung,K3QF2F20DB", "jedec,lpddr3";
 	density		= <16384>;
 	io-width	= <32>;
+	manufacturer-id = <1>;
+	revision-id     = <123 234>;
 	#address-cells	= <1>;
 	#size-cells	= <0>;
 
-- 
2.29.2

