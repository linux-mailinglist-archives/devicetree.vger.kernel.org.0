Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28FD8232132
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 17:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726857AbgG2PII (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jul 2020 11:08:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726806AbgG2PIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jul 2020 11:08:07 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 542C7C061794
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 08:08:07 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id k18so5843986pfp.7
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 08:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c4vnIQdazwv0RnAO3xap/+yfl/5PtuE2gJfge3l6agU=;
        b=iDXM1/8SawXZ5E83U80On87e5K4aZufAnhJ2GwdylXS1tgKwkzY2zqreO4WDQE5w7J
         eXRSbMf8FgJNXTH0aB7mwA2cVJMbWJjE16zDLhhwz5Q4/Ofed/JiHF6OD7M/Uv0Yg3pP
         iBQlFniCRithPNU26p9ZA5Mdd/qRwvkOnNm5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c4vnIQdazwv0RnAO3xap/+yfl/5PtuE2gJfge3l6agU=;
        b=NYP8VAA0ITS/Av/mrXgX8k+RxgOhX73MNM+TVOnpbfhONIuhIdnhdMYlvv/TZg0iaz
         1HxQDUF8ngj53YkhdrqitZ/ULez5vaNRFlRsk6NnkTS6bDVUyjz/qybD6fIdh/uH0yuQ
         KBrz8Glj7kBY60X80pUmLEsU10Hia3q73jhYVeWHq6bD4A4udFbKfmmCS/4DyHGor7Yi
         t50c0jDoEzirnGax/XQv183qwmJg5UfLwDk7RYxMcSInfta22oNBNSFkJsW1RzaD4zaX
         0nmRX/H0j5xlzuN+66TvBvuS5y7HVOMP/Pa9Rmhsz4mrPnhJA0hp5ER2csXkq1LYAS3Y
         tyVw==
X-Gm-Message-State: AOAM532PfEvwG4I0E7IgIwwYhKW7s7JRewJpD2jZAUmpJyKB4Rb2Txfe
        mNHm0Tk2FvBso2jqaoTZnGuN3g==
X-Google-Smtp-Source: ABdhPJzqnctBQjLflJW7XAfkHJZ7HeS4kd6WtFxf8/eUYhk1P3OYbgfPq6TBFkRp/sbmurW6dnlnnA==
X-Received: by 2002:a63:5a60:: with SMTP id k32mr29215121pgm.73.1596035286619;
        Wed, 29 Jul 2020 08:08:06 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id q11sm2688058pgr.69.2020.07.29.08.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 08:08:05 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 3/3] ARM: mstar: Correct the compatible string for pmsleep
Date:   Thu, 30 Jul 2020 00:07:48 +0900
Message-Id: <20200729150748.1945589-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200729150748.1945589-1-daniel@0x0f.com>
References: <20200729150748.1945589-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The compatible string for the pmsleep region has changed.
Update the MStar/Sigmastar v7 base dtsi with the new string.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index c7458c67c4df..3b7b9b793736 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -74,7 +74,7 @@ riu: bus@1f000000 {
 			ranges = <0x0 0x1f000000 0x00400000>;
 
 			pmsleep: syscon@1c00 {
-				compatible = "mstar,pmsleep", "syscon";
+				compatible = "mstar,msc313-pmsleep", "syscon";
 				reg = <0x1c00 0x100>;
 			};
 
-- 
2.27.0

