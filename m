Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE5AC564B10
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 03:07:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbiGDBHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 21:07:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232659AbiGDBHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 21:07:07 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 551C06248
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 18:07:06 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id dn9so8821758ejc.7
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 18:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G/bqD9DptglTuAZs59OGcJQuiZNV/SrxBsiDp4Edirk=;
        b=WhryRuQP6bPMv5a9lBjK7SUU1vgvVRxYTaOJffDmJ95zjyGFKYIUHLcHU/5CT/oYTB
         Bz7bxTzmEnnk9JLouwBFt3E4qH7an+PUpM9lFuhEQPhDIrdRn2gKpPUGrBsMEdubtxSX
         8WC97C1UDy4QQQ3pjuK8zOgWxT7ZI4+/ySgd5/+66adrLZJX/CWqHrj0qnAwMOAUlB7Z
         yLvSvkjXoaRJc5UZzPvvbYPx8FJ2BaUy2KmhDok1rQKHggImvoKW5caoag8SKRASXzbL
         1+rtdGcqovvbdP0lbN5eAOZb9XDHF5wJncM4zh5KBxTgBUMfkSt7MV7dYuPxS+K/ntnw
         0RSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G/bqD9DptglTuAZs59OGcJQuiZNV/SrxBsiDp4Edirk=;
        b=FECMk5psKXbjTffk5oy9YYk3NaW6s7UudBwfsYf1pGt3XVzL9lchAXHWIAwoyR4zzS
         t3gS15YgtjFHoliaOCKUjygAB0FErpwj+EVGvQM7WtLg51pcu6+522FVXrvyIlOJujd+
         GLW1jeBGdRH/VrGy6ArwmpkV8kSLsQ1BVMtDnOoe+hTnFB5mKqIFmGJUj286lcjqpVw1
         3q4+oJlh3Rtq2XcbcOEcHGPNfMm/QJlk92Iqnl7ghbFevUp+VKj1/kQwBU9mmwixo5vr
         GvH3wVsTnlOCjfV802d48n8SfpCxJj/4nP18+l9BGxeTvDr1sgIEh1EOkMXF2WeFC7C7
         pfKQ==
X-Gm-Message-State: AJIora99490TJ3ksIFr71CgYHiuHj1tjhvVSyi6cBq0nPY8AqvRSsH0J
        oPmbO1L7zt5ncQbGLasuVVHWUg==
X-Google-Smtp-Source: AGRyM1tl00JOCXNicf0jeQFyqMNmof/9JE1Mi4RJzEIZQrvzCRRq090vxDql0X6Ffvvrf04y4xda/w==
X-Received: by 2002:a17:907:1c09:b0:726:b834:1a21 with SMTP id nc9-20020a1709071c0900b00726b8341a21mr26118658ejc.518.1656896824989;
        Sun, 03 Jul 2022 18:07:04 -0700 (PDT)
Received: from localhost.localdomain ([146.70.96.66])
        by smtp.gmail.com with ESMTPSA id lu4-20020a170906fac400b006fec69696a0sm13466082ejb.220.2022.07.03.18.07.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Jul 2022 18:07:04 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        myungjoo.ham@samsung.com, cw00.choi@samsung.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        stephan@gerhold.net, marijn.suijten@somainline.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        bryan.odonoghue@linaro.org
Subject: [PATCH v3 2/2] extcon: qcom-spmi: Switch to platform_get_irq_byname_optional
Date:   Mon,  4 Jul 2022 02:06:59 +0100
Message-Id: <20220704010659.223596-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220704010659.223596-1-bryan.odonoghue@linaro.org>
References: <20220704010659.223596-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Valid configurations for the extcon interrupt declarations are

- usb_id
- usb_vbus
- (usb_id | usb_vbus)

In the case of a standalone usb_id or usb_vbus failure to find one of the
interrupts shouldn't generate a warning message.

Switch to using platform_get_irq_byname_optional() in order to facilitate
this behaviour.

Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/extcon/extcon-qcom-spmi-misc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/extcon/extcon-qcom-spmi-misc.c b/drivers/extcon/extcon-qcom-spmi-misc.c
index eb02cb962b5e1..f72e90ceca53d 100644
--- a/drivers/extcon/extcon-qcom-spmi-misc.c
+++ b/drivers/extcon/extcon-qcom-spmi-misc.c
@@ -123,7 +123,7 @@ static int qcom_usb_extcon_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	info->id_irq = platform_get_irq_byname(pdev, "usb_id");
+	info->id_irq = platform_get_irq_byname_optional(pdev, "usb_id");
 	if (info->id_irq > 0) {
 		ret = devm_request_threaded_irq(dev, info->id_irq, NULL,
 					qcom_usb_irq_handler,
@@ -136,7 +136,7 @@ static int qcom_usb_extcon_probe(struct platform_device *pdev)
 		}
 	}
 
-	info->vbus_irq = platform_get_irq_byname(pdev, "usb_vbus");
+	info->vbus_irq = platform_get_irq_byname_optional(pdev, "usb_vbus");
 	if (info->vbus_irq > 0) {
 		ret = devm_request_threaded_irq(dev, info->vbus_irq, NULL,
 					qcom_usb_irq_handler,
-- 
2.36.1

