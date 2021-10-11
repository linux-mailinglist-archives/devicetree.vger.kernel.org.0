Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEA17428A3A
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 11:55:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235672AbhJKJ5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 05:57:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235602AbhJKJ5j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 05:57:39 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55278C06161C
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:55:39 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t9so70166825lfd.1
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 02:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kBarjcZyLGiMmFvfK+amIgyffwqYFHfGdnIAQ0ZFp2o=;
        b=rYeD11KIuoPJThVYkeB5rzUzibSLWoGNxT+6aTE0groDYRXL/JHFEJTXZHsFinPxuy
         JtFSeAXGAxJiH3Wm7yokhzb3VISE8ZkIWckcS1ufXs/Yu/5ncUZH9MzDT44hTKLGkg4c
         jiRyTxToJ1KftcIOdA/PcRftLDtnqlbEQu6g5KqpFyX9FamMBo+WJC2GlJIRZ9NCFY6d
         vV8JhEAV9Vvxtd7J1PkmnVl0eqkY6RyBKL1967TORxSTG1PdmSe3Dejx7jtHSvNCZrar
         srph6nOHMugapsLaeym+1BFPkmv9Gxe6Ult/8v2s2noLZ+RYbvCEzXlgWR6wUA5Hi9/K
         zZ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kBarjcZyLGiMmFvfK+amIgyffwqYFHfGdnIAQ0ZFp2o=;
        b=GetyC3CxHWFjaHRi1FUunJndlEw/9Aq2uoUE4lLqvPlDoz7BdIi2XnzCrYTo3DYGGe
         b2JF0vJgGy0rb7rQeyS4q0iaJadVF9Puhwu4IdZj+ppC2mqWBbGvJRKpE1JMrmpOqC0Q
         bV26mKHlsgJ/YXD5Ll+JZqcTwVTyv1HQ/zLCFnd6AP+UdxeQVDelNA/R4qi/qgQpAio2
         y5gsL3hRT7XLjZAQQDC7rTVbXJAGkM0N001WWPzLr5CL3Xlzbs86WMw+da8m/T4gqghX
         02/uirb5CvUIMEBSODuRELq/Nl635Fc1y9rpqrx0W5B+K3ROHzzI75jiepLVnSLPdJWX
         bB7A==
X-Gm-Message-State: AOAM532nj53Na/ohq6RH4Agv3b4sOBUxbNBVo2hkFvg/tmtI96IOJyuC
        SzIO9If45DR5Np/epNoOBKTIdbu5p/ua9A==
X-Google-Smtp-Source: ABdhPJziEqkbBzWOz4Rl56dfiWZg5Pw8RIf2s/vb0RdTbZVPffhDLHLq3/+7CcK+kz0XxuhNGkihGA==
X-Received: by 2002:a2e:b053:: with SMTP id d19mr12536957ljl.290.1633946137602;
        Mon, 11 Oct 2021 02:55:37 -0700 (PDT)
Received: from localhost.localdomain (62-248-207-242.elisa-laajakaista.fi. [62.248.207.242])
        by smtp.gmail.com with ESMTPSA id h4sm689183lft.184.2021.10.11.02.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 02:55:37 -0700 (PDT)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: sdm845: Fix Qualcomm crypto engine bus clock
Date:   Mon, 11 Oct 2021 12:55:34 +0300
Message-Id: <20211011095534.1580406-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The change corrects the described bus clock of the QCE.

Fixes: 3e482859f1ef ("dts: qcom: sdm845: Add dt entries to support crypto engine.")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index b051adfed4a9..79a87eeee090 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2376,7 +2376,7 @@ crypto: crypto@1dfa000 {
 			compatible = "qcom,crypto-v5.4";
 			reg = <0 0x01dfa000 0 0x6000>;
 			clocks = <&gcc GCC_CE1_AHB_CLK>,
-				 <&gcc GCC_CE1_AHB_CLK>,
+				 <&gcc GCC_CE1_AXI_CLK>,
 				 <&rpmhcc 15>;
 			clock-names = "iface", "bus", "core";
 			dmas = <&cryptobam 6>, <&cryptobam 7>;
-- 
2.33.0

