Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EB41571668
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 12:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232636AbiGLKB2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 06:01:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232670AbiGLKBZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 06:01:25 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 476F5A9E73
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:01:22 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d16so10405028wrv.10
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fNgP14MAtLj1mkNOkCSavVhxwnDVj9LKGVrRGWXTHqg=;
        b=GObBu8Br3TyNkEjFsGP8ZvMKVaSsDv1DBLlx9KrtsaRdweH8X3QnI/Id8vbt01om9x
         GIKWi4Fy/2XLTziQ6IkWK2T72dr5iKIwkgasJN16p5Ud/s4LrY/p4ljhBkPcpnM3o15E
         +Yer5SImBBG7s1WRMiq8/zxZcZo98V4zolVSXBCAcOrn0gt55mgneq4Yufx1HIpYqSbZ
         esYXfxJ5GIAZErrG6++Ya4QkJAcqLiDOhDay6DhWD8pZlpvAZMz1rBu5oisO08uTD7zl
         CqyYQtW+KDFafYPvdlgI+FNI5s8pfO4BhnHKYo6iaommrbP28GFDLQZZ40xIk5Wz85JH
         ioYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fNgP14MAtLj1mkNOkCSavVhxwnDVj9LKGVrRGWXTHqg=;
        b=fPeCgv3ahn717wZ5opVOV9Uu7fgbFMG+CuwPCC4baeuNNFx+mkPoRs3XLN4XEfmArT
         van2c/LJ/jxUpPmExzSiCb/+m7vE66RWEi8TUieJzT8vte2PQZgux55+hgxUs0KRYB9M
         U92PzSwpy3j7aFfHuV+flbuCWOEgabW1/h2ILY9rVBrC8nIxaqXQiD4YVDjYPXQGl0Am
         +3LSQRYsROsT//ektiD5AASGOe3DDFcm5ZfytuqDJgqdlW/X0KgOkVkjAwljth/3w2i/
         mUewRZgjcIDB390phJWUsk4eJHVtVMev5KZwgkDbms9SE+vf75lesDM6egK1PO5pNtOQ
         QCuA==
X-Gm-Message-State: AJIora/Ov4apur3XmebWWqCaZdHxWmU3ucbbaLbyUut+LcyKDCJMa+Wx
        ILmwC3pFt6wF0S2cjngHTrmPzg==
X-Google-Smtp-Source: AGRyM1tDf0TulvefmWPqg6e8ewgCNOGbNQvHvRkXvRP4sLZaZsOw3xNrUIQPWyetN0PANpvbInpVsw==
X-Received: by 2002:a5d:6d46:0:b0:21b:933d:7950 with SMTP id k6-20020a5d6d46000000b0021b933d7950mr21023621wri.679.1657620081684;
        Tue, 12 Jul 2022 03:01:21 -0700 (PDT)
Received: from rainbowdash.office.codethink.co.uk ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id u9-20020a7bc049000000b0039747cf8354sm8895314wmc.39.2022.07.12.03.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 03:01:21 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>,
        William Salmon <william.salmon@sifive.com>,
        Adnan Chowdhury <adnan.chowdhury@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>
Subject: [PATCH 7/7] pwm: dwc: add snps,pwm-number to limit pwm count
Date:   Tue, 12 Jul 2022 11:01:13 +0100
Message-Id: <20220712100113.569042-8-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220712100113.569042-1-ben.dooks@sifive.com>
References: <20220712100113.569042-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add snps,pwm-number property to indicate if the block does not have
all 8 of the PWM blocks.

Not sure if this should be a general PWM property consider optional
for all PWM types, so have added a specific one here (there is only
one other controller with a property for PWM count at the moment)

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
 Documentation/devicetree/bindings/pwm/pwm-synposys.yaml | 5 +++++
 drivers/pwm/pwm-dwc.c                                   | 8 ++++++++
 2 files changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-synposys.yaml b/Documentation/devicetree/bindings/pwm/pwm-synposys.yaml
index 38ac0da75272..15bdf764b46a 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-synposys.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-synposys.yaml
@@ -30,11 +30,16 @@ properties:
       - items:
         - const: snps,pwm
 
+  snps,pwm-number:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description: u32 value representing the number of PWM devices
+
 required:
   - "#pwm-cells"
   - compatible
   - reg
   - clocks
   - clock-names
+  - snps,pwm-number
 
 additionalProperties: false
diff --git a/drivers/pwm/pwm-dwc.c b/drivers/pwm/pwm-dwc.c
index 6a4364a5d137..abdde83452ad 100644
--- a/drivers/pwm/pwm-dwc.c
+++ b/drivers/pwm/pwm-dwc.c
@@ -328,12 +328,20 @@ static int dwc_pwm_plat_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct dwc_pwm *dwc;
+	u32 nr_pwm;
 	int ret;
 
 	dwc = dwc_pwm_alloc(dev);
 	if (!dwc)
 		return -ENOMEM;
 
+	if (!device_property_read_u32(dev, "snps,pwm-number", &nr_pwm)) {
+		if (nr_pwm > DWC_TIMERS_TOTAL)
+			dev_err(dev, "too many PWMs specified (%d)\n", nr_pwm);
+		else
+			dwc->chip.npwm = nr_pwm;
+	}
+
 	dwc->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(dwc->base))
 		return dev_err_probe(dev, PTR_ERR(dwc->base),
-- 
2.35.1

