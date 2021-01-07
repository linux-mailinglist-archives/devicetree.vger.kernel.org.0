Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45A6B2ECC72
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 10:13:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726997AbhAGJNM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 04:13:12 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:60278 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727553AbhAGJNK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 04:13:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1610010732; x=1612602732;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Zjek5lOmHKL/5kKTzzKgDYeC/L6QAB2fT0com62CUD0=;
        b=XTpKwZ5I7IY0VGx5/Kot3ZhEX2RUaBy5lrm8R22H05Zxvytsa4QCM+xf6OkS5NiU
        bbLum5GH9z6u2XHUVKdASkAgvAwUAQynLo4I1fQuiPBKodPbL6UIBw956eiRc8Gt
        bw4JRch4miS9p6u86+41WDQs02qU9gTr6+53RiuoXhg=;
X-AuditID: c39127d2-0c7b670000001c86-0f-5ff6d06ccdce
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 98.B1.07302.C60D6FF5; Thu,  7 Jan 2021 10:12:12 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021010710121248-64472 ;
          Thu, 7 Jan 2021 10:12:12 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v4 2/4] arm64: defconfig: Enable PCA9532 support
Date:   Thu, 7 Jan 2021 10:12:09 +0100
Message-Id: <1610010731-44779-3-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
References: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:12,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:12,
        Serialize complete at 07.01.2021 10:12:12
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLLMWRmVeSWpSXmKPExsWyRoCBSzfnwrd4gxkHTC36DjJZvF/Ww2gx
        /8g5VouHV/0tzp/fwG6x6fE1VovWvUfYLf5u38Ri8WKLuAOnx5p5axg9ds66y+6xaVUnm8fm
        JfUe/X8NPNbNfc/u8XmTXAB7FJdNSmpOZllqkb5dAlfGqosPmQtmsVZsXTSXpYHxAEsXIyeH
        hICJxNoLU9hAbCGBrYwSczeodTFyAdlnGSVOfO9kBEmwCWhIPF1xmgnEFhFwkdg84RkTSBGz
        QAuTxM35i8G6hQUcJB72vgKzWQRUJA4efg9kc3DwCjhJ3FvBA7FMTuLmuU5mkDCngLPEqi8V
        EHudJA7cvMwOMlJCoJFJ4vrlv2wQ9UISpxefZZ7AyLeAkWEVo1BuZnJ2alFmtl5BRmVJarJe
        SuomRmAQHp6ofmkHY98cj0OMTByMhxglOJiVRHgtjn2JF+JNSaysSi3Kjy8qzUktPsQozcGi
        JM67gbckTEggPbEkNTs1tSC1CCbLxMEp1cC4RWEd38Lu6UGTzqikOjcYtmWvthWVqI1xfq/l
        GjFVvnfbavFQzpxZv2K2O23k4+TbtVpGZPnjjzerovd85X9tk7RN+I2YkqfW0YcruZvdf3lO
        2bXCeELg2WaO2odPb8scXLrRY/81B8OFOVVFPMcm3bsmetIgd+a0r3s2nHvoucxAhCu2mltK
        iaU4I9FQi7moOBEA4/2PKzACAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable i2c led expander PCA9532 module support populated on
phyBOARD-Pollux-i.MX8M Plus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2fc0a3bd40be..6121aaee3c0f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -828,6 +828,7 @@ CONFIG_MMC_OWL=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
 CONFIG_LEDS_LM3692X=m
+CONFIG_LEDS_PCA9532=m
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_PWM=y
 CONFIG_LEDS_SYSCON=y
-- 
2.7.4

