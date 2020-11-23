Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DA1A2C0DD1
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 15:41:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727107AbgKWOjd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 09:39:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728889AbgKWOjc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 09:39:32 -0500
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com [IPv6:2607:f8b0:4864:20::841])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D52EC061A4D
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:39:30 -0800 (PST)
Received: by mail-qt1-x841.google.com with SMTP id e60so4240940qtd.3
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R2SdgtE2B+dwbWVFOcym1RNE35Z/CmLXZjIKj8WvLNU=;
        b=EnGYdnX1J0CQtLy3M3CBzJE4B5x9GnoAZ9dkJCrNawogdmy7BHWz/ccRTrnCBQKKRN
         U5rK+7jkWgiT0mRoefwX9pjuZ7wOxpRyDfre9msD1xJkCaLCFVDeoj7VY/swE3/lwDOT
         r0op0sq6FNBVRbCP/TRftXrL5FbxOWxBwtqT1HCC1Qqcyx9WPE3dX8S0f/O16tCKXAHm
         S+uh9c80+0bGsTMnb8RATLghCPNbzP3wEMsgeX/aBrJt+s0rjO1QhmEdZR+KoPIgnq4P
         /Gu9YRy7m+2bSwRc76Q8BJKFgBGlq0uAgiePeRpZSqAG/ErpscKQnjSBvIB6p3YlNonr
         iR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R2SdgtE2B+dwbWVFOcym1RNE35Z/CmLXZjIKj8WvLNU=;
        b=OnkM2yQyQ8kljCsZUq/SkHTuroeKEBkrwZntcFBQ0TFk5DiKpFpNtMqefsu1r2lTTW
         WmNFsSUBMpx9daEp3RDsXAKPISAva1mm75RGpPBJI4mD0Q49+TopnrL7nuh5PQY+kqG9
         YRIjFmlZD5mmhkop1sKmPcJLp5PLg8TZwa55UfzsxjGneCY3igSwJco2nOpl9/jDeqBS
         wAtdsMNinlwYxiSZ/ZUqQlYIOSroDXtIP1mVR0xTKMgVfQL+y8R/22XioHjQ7d1dmNUQ
         uzJVeRwJAXo3Y9aUe4+imuytQ1ueboOPgw0eHMGBFgnf/HSc0EUSP2gTI5tf3NAibuk5
         uVaQ==
X-Gm-Message-State: AOAM531N+mqxnPadMiRXqsHo1jB7zY3Q9Un0Fc6IvT4EgaAmaVsnujJz
        X+KFcy0jSpss7BsFeY9gHM8TXw==
X-Google-Smtp-Source: ABdhPJzpHNnIknsKthpDWbITDjzamJXwQBXAkolTwAPLxE8lkdvsDz2/ZeDmrk2ORIzHbKpWS+iOWw==
X-Received: by 2002:ac8:588e:: with SMTP id t14mr5997167qta.375.1606142369782;
        Mon, 23 Nov 2020 06:39:29 -0800 (PST)
Received: from localhost.localdomain (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id i4sm9567180qtw.22.2020.11.23.06.39.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 06:39:29 -0800 (PST)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: qcom: fix serial output for sm8250-hdk
Date:   Mon, 23 Nov 2020 09:35:38 -0500
Message-Id: <20201123143538.14198-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The uart2 node has been renamed, apply the change to sm8250-hdk dts too so
that serial output works.

Fixes: 91ed0e90fc49 ("arm64: dts: qcom: add sm8250 hdk dts")

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 arch/arm64/boot/dts/qcom/sm8250-hdk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
index b5026e422aa6..c3a2c5aa6fe9 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
@@ -17,7 +17,7 @@ / {
 	compatible = "qcom,sm8250-hdk", "qcom,sm8250";
 
 	aliases {
-		serial0 = &uart2;
+		serial0 = &uart12;
 	};
 
 	chosen {
@@ -387,7 +387,7 @@ &tlmm {
 	gpio-reserved-ranges = <28 4>, <40 4>;
 };
 
-&uart2 {
+&uart12 {
 	status = "okay";
 };
 
-- 
2.26.1

