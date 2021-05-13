Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 594E137FCFC
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 19:56:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231589AbhEMR53 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 13:57:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231494AbhEMR5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 13:57:09 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A877C061763
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 10:55:56 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id i67so26334643qkc.4
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 10:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G6cunyyCAgFMO8WDuEbxdeQNabsoZvGD6x3wsqvioTQ=;
        b=HyrbNR3fsh4EG0A55QAyn5sRwI6IQPua85FUNamY/gY5lzI3leCTQdkonmPO4sKNU+
         8UO2l2vGtUzqXLr9fLE1v8TzWIfz1LAvbwOx+AkisxDO/lji5ddjM42rniKHuX8FBZp1
         Rx4cdtnAExzCBkW27jbPXOgL/08YTu+BjwqL9FFtme+tio5w5eW7ftpbe2TDEdAQdNIo
         onhRYs0spK2w66UpW4ggUJuUyjRLctLRKOcM/dZ2XjjhBsXo8dfQwm5AOsZSTF1C7VK+
         pG66ub4+spOoZ2YyQuXCH8X00s6SERuaT/5xFOdkaRUkVA9T6YAoQ75ABB7SVpWU4qks
         KBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=G6cunyyCAgFMO8WDuEbxdeQNabsoZvGD6x3wsqvioTQ=;
        b=RTm11HI4YNwxhsaGkE1jhZAFxxgsakyYPr9HeLQIVOisHG3KRpKRm/A3oKMKUU4fO9
         54IOxMr4PiojE0TlOCeAsn6i53SjDT+NR0R/FrdF8/umEcdUIFTsRzVv1lmkroZ0y2FO
         KYFNmHtfEZtvpXOt8LHobDQBhNf5r/AjSj1H81iVnogF5vvUTvB9hQuSRcBdypdWC2Zg
         jrVv8jQlQ/OmlC796MAnozNLD6YwX1oOWnWetf7C29F0OphG95UwksYbYPjVBD/PnI6c
         yRjEcETgeOLeO8OXNT6Cs+VtLd4BOTl2/Njn3aunDD4HVwedM9Xroye0qph5Z89ffd3d
         iFCQ==
X-Gm-Message-State: AOAM532NcdpET1iVenGQDrioBUS0TjbMr02av7aYK1m+Uv4C7ZUmbbIu
        tRysVO+PDJVe9la3RpmQ4ccbcQ==
X-Google-Smtp-Source: ABdhPJzHv12G0x5hOV8M/Sof7AYXqEPgmkJQppEK1BFjto9Iyv6o8I7Jg25n8IpHNG3aiGWE2BmxWg==
X-Received: by 2002:a37:9707:: with SMTP id z7mr39366330qkd.407.1620928555624;
        Thu, 13 May 2021 10:55:55 -0700 (PDT)
Received: from localhost.localdomain (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id 44sm2899114qtb.45.2021.05.13.10.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 10:55:55 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     robert.foss@linaro.org, andrey.konovalov@linaro.org,
        Loic Poulain <loic.poulain@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-i2c@vger.kernel.org (open list:QUALCOMM I2C CCI DRIVER),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] i2c: qcom-cci: add sm8250 compatible
Date:   Thu, 13 May 2021 13:55:17 -0400
Message-Id: <20210513175518.6023-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SM8250 CCI is the same as SDM845, add an equivalent compatible for SM8250.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 Documentation/devicetree/bindings/i2c/i2c-qcom-cci.txt | 5 +++--
 drivers/i2c/busses/i2c-qcom-cci.c                      | 1 +
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-qcom-cci.txt b/Documentation/devicetree/bindings/i2c/i2c-qcom-cci.txt
index c6668b7c66e6..7b9fc0c22eaf 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-qcom-cci.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-qcom-cci.txt
@@ -9,6 +9,7 @@ PROPERTIES:
 		"qcom,msm8916-cci"
 		"qcom,msm8996-cci"
 		"qcom,sdm845-cci"
+		"qcom,sm8250-cci"
 
 - reg
 	Usage: required
@@ -41,8 +42,8 @@ PROPERTIES:
 
 SUBNODES:
 
-The CCI provides I2C masters for one (msm8916) or two i2c busses (msm8996 and
-sdm845), described as subdevices named "i2c-bus@0" and "i2c-bus@1".
+The CCI provides I2C masters for one (msm8916) or two i2c busses (msm8996,
+sdm845 and sm8250), described as subdevices named "i2c-bus@0" and "i2c-bus@1".
 
 PROPERTIES:
 
diff --git a/drivers/i2c/busses/i2c-qcom-cci.c b/drivers/i2c/busses/i2c-qcom-cci.c
index c63d5545fc2a..c1de8eb66169 100644
--- a/drivers/i2c/busses/i2c-qcom-cci.c
+++ b/drivers/i2c/busses/i2c-qcom-cci.c
@@ -769,6 +769,7 @@ static const struct of_device_id cci_dt_match[] = {
 	{ .compatible = "qcom,msm8916-cci", .data = &cci_v1_data},
 	{ .compatible = "qcom,msm8996-cci", .data = &cci_v2_data},
 	{ .compatible = "qcom,sdm845-cci", .data = &cci_v2_data},
+	{ .compatible = "qcom,sm8250-cci", .data = &cci_v2_data},
 	{}
 };
 MODULE_DEVICE_TABLE(of, cci_dt_match);
-- 
2.26.1

