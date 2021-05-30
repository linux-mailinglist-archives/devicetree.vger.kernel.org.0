Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DED763950D1
	for <lists+devicetree@lfdr.de>; Sun, 30 May 2021 14:18:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbhE3MUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 May 2021 08:20:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhE3MUH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 May 2021 08:20:07 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82ED1C061760
        for <devicetree@vger.kernel.org>; Sun, 30 May 2021 05:18:29 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id y7so10207699eda.2
        for <devicetree@vger.kernel.org>; Sun, 30 May 2021 05:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8rN9+/NbxDFN7EMKi+Z7DRElm+PgvMbUeIui3UQMR6I=;
        b=qJVdOhQHtMcg+2nPv/vNFy9Ol2s/2fBDvHkxS7qc23ky5Z6sptF7e04BeGQYo/NTT+
         qkiIyDllxMUYjCO9SL1WEKvB12Y/2p7P+vpMY4QiPvZqZP08OPIEXpG2P2TVlKBdrx3L
         EFhWuG17/6RH1lPyGAWdczyjCBW9xoJQqFRw6lhj0obtJODReqvIBhdsBXEw9GYhkO5R
         UB5lGWsxYuIV6H64CmiwF2W5CbadHXDxfDstquirPIeHk9JbNjS0xDVsEYtA4VUv5Vl6
         9VAIGL+pzv0qe3xmLjBQ3VPPd6Ev91AmbomwGHQ+i5KiNrePupsYQW8DjVug3zFlB3sQ
         A14Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8rN9+/NbxDFN7EMKi+Z7DRElm+PgvMbUeIui3UQMR6I=;
        b=tCASgYpBejLcp5FdQ1ZZEiPLrQaAlqSeXc8vRIIurW+jXSBNvixIqx4ax3nVXokZzW
         cn5ERkY/CpDA8AuwHMeOb1a2uSY7QEoXtnLf3v4eUS35u/1LaaukXBNvFG8WgrOK9MjY
         0IkNx8rZEC/F86Jfm0YdXnTW9m4mAJV5Ffet2dPVMwe7xBER+IbC3/jVaNNQMYD3FWEQ
         O3+JiSP/cVv1HBJotk+aaqRbI92spTiuRsGMqOd8tODCuSMN0uM4SqSeBzBKgHgTeU+g
         /W84ki2Mc4R/v0oAMcTMaMtRAtw8BsoDOmgdFGradW0eobvbKDiZAFiRnuGTUca1Hypo
         2dYA==
X-Gm-Message-State: AOAM530Oj/yzkBnFfPoVsYKDpbF8xXqGNWq0Hr2XUlAGcMQt1Pn8BHEI
        x0sdmL6BMIxK2Ke0Ai3cdsvddhtTT6LLH813Ieg=
X-Google-Smtp-Source: ABdhPJwrJfzJgeBzJf2MVs93d/Iy62JjyA7TMenbRkTwpJ1DnrPw+H/3Q3hUuR/WmKdoiWA8bPmovw==
X-Received: by 2002:aa7:cb84:: with SMTP id r4mr20012910edt.187.1622377108156;
        Sun, 30 May 2021 05:18:28 -0700 (PDT)
Received: from PackardBell (192038129069.mbb.telenor.dk. [192.38.129.69])
        by smtp.googlemail.com with ESMTPSA id jx16sm1311662ejc.49.2021.05.30.05.18.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 05:18:27 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id bda84510;
        Sun, 30 May 2021 12:18:22 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
        Bartosz Dudziak <bartosz.dudziak@snejp.pl>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Kumar Gala <galak@codeaurora.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 2/2] cpuidle: qcom: Add SPM register data for MSM8226
Date:   Sun, 30 May 2021 14:18:03 +0200
Message-Id: <20210530121803.13102-3-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210530121803.13102-1-bartosz.dudziak@snejp.pl>
References: <20210530121803.13102-1-bartosz.dudziak@snejp.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MSM8226 register data to SPM AVS Wrapper 2 (SAW2) power controller
driver.

Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
---
 drivers/cpuidle/cpuidle-qcom-spm.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/cpuidle/cpuidle-qcom-spm.c b/drivers/cpuidle/cpuidle-qcom-spm.c
index adf91a6e4d..c0e7971da2 100644
--- a/drivers/cpuidle/cpuidle-qcom-spm.c
+++ b/drivers/cpuidle/cpuidle-qcom-spm.c
@@ -87,6 +87,18 @@ static const struct spm_reg_data spm_reg_8974_8084_cpu  = {
 	.start_index[PM_SLEEP_MODE_SPC] = 3,
 };
 
+/* SPM register data for 8226 */
+static const struct spm_reg_data spm_reg_8226_cpu  = {
+	.reg_offset = spm_reg_offset_v2_1,
+	.spm_cfg = 0x0,
+	.spm_dly = 0x3C102800,
+	.seq = { 0x60, 0x03, 0x60, 0x0B, 0x0F, 0x20, 0x10, 0x80, 0x30, 0x90,
+		0x5B, 0x60, 0x03, 0x60, 0x3B, 0x76, 0x76, 0x0B, 0x94, 0x5B,
+		0x80, 0x10, 0x26, 0x30, 0x0F },
+	.start_index[PM_SLEEP_MODE_STBY] = 0,
+	.start_index[PM_SLEEP_MODE_SPC] = 5,
+};
+
 static const u8 spm_reg_offset_v1_1[SPM_REG_NR] = {
 	[SPM_REG_CFG]		= 0x08,
 	[SPM_REG_SPM_CTL]	= 0x20,
@@ -259,6 +271,8 @@ static struct spm_driver_data *spm_get_drv(struct platform_device *pdev,
 }
 
 static const struct of_device_id spm_match_table[] = {
+	{ .compatible = "qcom,msm8226-saw2-v2.1-cpu",
+	  .data = &spm_reg_8226_cpu },
 	{ .compatible = "qcom,msm8974-saw2-v2.1-cpu",
 	  .data = &spm_reg_8974_8084_cpu },
 	{ .compatible = "qcom,apq8084-saw2-v2.1-cpu",
-- 
2.25.1

