Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77B46377043
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 09:09:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229752AbhEHHKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 03:10:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhEHHKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 May 2021 03:10:37 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE605C061574
        for <devicetree@vger.kernel.org>; Sat,  8 May 2021 00:09:34 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n205so6393286wmf.1
        for <devicetree@vger.kernel.org>; Sat, 08 May 2021 00:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=;
        b=KD6hEPXs3SiHAtFucQrMWstIwnPMlliFvZ+psgoH92t4UwNZk4SD3w2uW4x4mj9P+9
         Gfafckp4z/odwwCgWLWjerD3ZaLb3e20nbiln50ezdGz1ac3PCGkQflMCZuFCWUXkE9V
         vzVVUk1BTonqDveH8BnR9sUgXQx7HAuw+GGYfjTPwmcdQC7ynkbktpspFb6H8XK7GeXm
         jik+lpush9BCPw+AjWjVognoElO38vOB+H5yKXoIaPIU2RH+qD99GwXRb/utq8jrLWSK
         +XyPmZfF2SZyNNIt9he9JU3GzoHLI+XPTIlOiYxeRmfubX59hzRpxCZItWlbfxNcyEvF
         CXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FOVnFr/nj3QWdNJlIgekW/kswIF2a4pE9kCJghjF1wk=;
        b=HIuU3OXdGuXtdMqZHK4BWqKXcaWupwGw52WRNRv4Xs7jcw+WnHCB+8fc5cZWBMKMMp
         ulOYr5ABZtMALP7fMp0d9b4xHSeFfQl2FEMs1yrgWClO2YTr/UGMh1wmyB96hisR0hHR
         Y2mFvVLM7bpteJ9q5mHnDkDuyi4tZ/4uzefrOzAtTCmhDFmxUcCWpbIC0xDSx24sVDzx
         I9x/aXtFzvzjjweQwOP3rhMGNFZDNPJ6bLwfHwc9nZEm8HMo5ATPrtnk8XkhqjueyNE/
         8G0pVMJZyg3OFsOylz8pnTrIFlte200MTcXfgaIQ/G1WQqeaaXKbkk9e4YOFsMf0p47d
         ne4w==
X-Gm-Message-State: AOAM530epSeF+mLylcxJjXN5L5E2CeBLU0vexJSTIpPXguLRETJjFu9G
        nQvnQXYeFv02KvcQgB1Jc3c=
X-Google-Smtp-Source: ABdhPJy/DIm2VbViVvEjtPiiZspbv60TIWMsgF6WkvgzjInz1GQL+I1YsOm/xug6DjWda8PWEVcYdQ==
X-Received: by 2002:a1c:6606:: with SMTP id a6mr24959455wmc.160.1620457773780;
        Sat, 08 May 2021 00:09:33 -0700 (PDT)
Received: from localhost.localdomain (231.red-83-51-243.dynamicip.rima-tde.net. [83.51.243.231])
        by smtp.gmail.com with ESMTPSA id s18sm11740345wro.95.2021.05.08.00.09.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 May 2021 00:09:33 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     vkoul@kernel.org
Cc:     kishon@ti.com, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org,
        linux-staging@lists.linux.dev, gregkh@linuxfoundation.org,
        neil@brown.name, ilya.lipnitskiy@gmail.com
Subject: [PATCH RESEND v2 1/6] staging: mt7621-dts: use clock in pci phy nodes
Date:   Sat,  8 May 2021 09:09:25 +0200
Message-Id: <20210508070930.5290-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MT7621 SoC clock driver has already mainlined in
'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
Hence we can use the clock in pcie phy nodes to
be able to get it from there in driver code.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 9ee11adefa79..840ba0c3ffed 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -548,12 +548,14 @@ pcie@2,0 {
 	pcie0_phy: pcie-phy@1e149000 {
 		compatible = "mediatek,mt7621-pci-phy";
 		reg = <0x1e149000 0x0700>;
+		clocks = <&sysc MT7621_CLK_XTAL>;
 		#phy-cells = <1>;
 	};
 
 	pcie2_phy: pcie-phy@1e14a000 {
 		compatible = "mediatek,mt7621-pci-phy";
 		reg = <0x1e14a000 0x0700>;
+		clocks = <&sysc MT7621_CLK_XTAL>;
 		#phy-cells = <1>;
 	};
 };
-- 
2.25.1

