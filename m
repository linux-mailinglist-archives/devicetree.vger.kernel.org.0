Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F20F93044B4
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 18:17:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390238AbhAZRH5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:07:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390407AbhAZInt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 03:43:49 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2E26C061756
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 00:43:08 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id bx12so18722938edb.8
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 00:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t2z1NGbSv+92Iq3y3cHfX8r3rHSgzWMGOLngnUuImF8=;
        b=HqvMQYpbjsMs5FO0qw8p+bYpP7RjH7vBlf6l0HF5VNPGglgnOsbLVfBqJljbCsIasF
         NaYGE3B0ARKF9zXOk8iR5t9vxzgRRMOUE7jeQ4cqURu19xi64IpFfjsjuzIBdl51A+hC
         kmyXKCuwFkg/seQLV8IzyJL2tsx1vEJpZJMh5o2b5n2r1ko4f3p5zXbHSOPZiwd68r+Y
         EuLylY5VI4sLkTuc+4qAJhM/6vvPKW0T8NjQmIhBfqQ8EzuNyprvsXrov4AKw2qPm1ZO
         eWgrDM2jc3tKXYPKcV11SGdwMUuRoBXLTR/iSN8Xl6lBGJSYDPLMJUv6bQ+lcwKpb08+
         VXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t2z1NGbSv+92Iq3y3cHfX8r3rHSgzWMGOLngnUuImF8=;
        b=j1+KFcaZ/BnK1iBFaaEr2rzw1E0bumarSTqQx2/ClKhm8Fhe1LAb2ZdpBZcQa99OHs
         5qnK17nwlZAKF8NVivV/l0A3H9i0KNp8/+agiqWXasa1BoXnRdcz4/Lc7dsZVtuPu3dC
         Fc49QaTVTCTYHhlGEFjlV2NqXjUjny6zeOl2u0cqCPQbiHHSiSxgdHDaInHIXrXkrUOx
         Zp/4xd3iO4v6d7jgQrPKkmbGuR9K+jm2bBTmakBpRZqgI1I+b4UvG+4wZ78tN7XVGXam
         LXpX735E29dFEyZk/xHoWo7FtVgFoNqr+Lwwmw1+SNNh/BMhzWpCG/jRxkHXofHx9cHk
         FQLw==
X-Gm-Message-State: AOAM530yhDee7/w7SnXgy4LSYj1Sxf4io/Jpotuy6LpSKYDnNfy64NwA
        /Rr8buGgGZkNK4SwIJMwexchzw==
X-Google-Smtp-Source: ABdhPJwXmN0+EIt8RzL3ueMP/CCxmZVMUAxRmK9RWZ7CZYPhgMXX2MhPsEKA8AQcrWMlG54ahj8c1Q==
X-Received: by 2002:aa7:cc98:: with SMTP id p24mr3854242edt.126.1611650587275;
        Tue, 26 Jan 2021 00:43:07 -0800 (PST)
Received: from localhost.localdomain (hst-221-9.medicom.bg. [84.238.221.9])
        by smtp.gmail.com with ESMTPSA id i4sm9511524eje.90.2021.01.26.00.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 00:43:06 -0800 (PST)
From:   Stanimir Varbanov <stanimir.varbanov@linaro.org>
To:     linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: [PATCH] venus: core: Parse firmware-name DT property
Date:   Tue, 26 Jan 2021 10:42:52 +0200
Message-Id: <20210126084252.238078-1-stanimir.varbanov@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On production devices the firmware could be located on different
places, this path could be provided by special firmware-name DT
property.

Here we check for existence of such DT property and if it exist
take the firmware path from there. Otherwise, if the property
is missing we fallback to the predefined path from driver resource
structure.

Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
---
 drivers/media/platform/qcom/venus/firmware.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/qcom/venus/firmware.c b/drivers/media/platform/qcom/venus/firmware.c
index d03e2dd5808c..56c8fb5a019b 100644
--- a/drivers/media/platform/qcom/venus/firmware.c
+++ b/drivers/media/platform/qcom/venus/firmware.c
@@ -187,6 +187,7 @@ int venus_boot(struct venus_core *core)
 {
 	struct device *dev = core->dev;
 	const struct venus_resources *res = core->res;
+	const char *fwpath = NULL;
 	phys_addr_t mem_phys;
 	size_t mem_size;
 	int ret;
@@ -195,7 +196,12 @@ int venus_boot(struct venus_core *core)
 	    (core->use_tz && !qcom_scm_is_available()))
 		return -EPROBE_DEFER;
 
-	ret = venus_load_fw(core, core->res->fwname, &mem_phys, &mem_size);
+	ret = of_property_read_string_index(dev->of_node, "firmware-name", 0,
+					    &fwpath);
+	if (ret)
+		fwpath = core->res->fwname;
+
+	ret = venus_load_fw(core, fwpath, &mem_phys, &mem_size);
 	if (ret) {
 		dev_err(dev, "fail to load video firmware\n");
 		return -EINVAL;
-- 
2.25.1

