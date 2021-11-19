Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FBC74576EB
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 20:15:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231620AbhKSTSR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 14:18:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbhKSTSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 14:18:16 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0628C061574
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:14 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id bu18so48012488lfb.0
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 11:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iD461cMCR3D8128ew9tBkbAfCtFZzMKZMMxb7s46+RU=;
        b=gTjpKdaYWkhNkovaew5KGcNpMaISQDibEo6/XSTeggSsuFuF4TALOGgFjYA08qftUx
         EQF4+9DrPyA5iSQymFEC0JRO+4QdcCNy2j3roDH5P8fp6w38V2F6ax/9GuUO1I0Mc8Fr
         jcWdgVtkZGxXhckJ7lS/q7ceObBZOVWbrbq2/NFVaIsnzoIFXqsosTEEWyk550fMlTZy
         AB3krfKlw/tURAzP0fLf0v/IuOIFctX9KsWuOGWPoAFq6sGMxl7h26787JyLoN07cBwS
         PzuLFHaUEBExq272OIA6viFLsW3GapunK87eXUBsKxJ2WFjKTAflNPQJoAYQ8Mqc6+No
         ihvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iD461cMCR3D8128ew9tBkbAfCtFZzMKZMMxb7s46+RU=;
        b=dRTM9mLv6o2n98qXquG3Bl+nz6Zr3ZtnyHS27N6gc3jyD+e4+nL1eXL7egFXJEonX9
         a3NCtFXxTrtP+/qmIs83ym+c2FVHjKxyPWC/fsfh9571/wyGT2ZCjTNPcBg/PjVfhhCo
         LYSOZqgoIhbLNydkD5A5DkLZKs6JLK8khBDoxvXtmrqF0NSwhaxL7TCfugIcQlqnH+1c
         b3AOCrjj5wT7w2TR63qfxmuF0q2JQprXTZ+T4PvTXwNx6Bfr6DsSdQ7GvbmzaO4FxQgd
         0PqbX+L2fzItNgfuJGMMBXhRMfd6pW5dHJayjLVqAeEMNj3H8v5PAh91ApOn68FSUSMb
         FvoQ==
X-Gm-Message-State: AOAM5331YeBw/Fe3ZWMGGOXmgh5Mc2RbS+h2WPVPTSXfar1td8aBkr5i
        1sRs/Ei/+o/mhPGh8yF169741A==
X-Google-Smtp-Source: ABdhPJxzHbyZ1+gjb1fbFkVsotlhbZUWvYxneo2G6p3Uka26R9gliZ8WhF6Uwus5kxwjh1rV5IBXVQ==
X-Received: by 2002:a19:ad0d:: with SMTP id t13mr35570063lfc.161.1637349313159;
        Fri, 19 Nov 2021 11:15:13 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.121.dhcp.mipt-telecom.ru. [81.5.99.121])
        by smtp.gmail.com with ESMTPSA id d4sm67676lfg.153.2021.11.19.11.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Nov 2021 11:15:12 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        Maxime Ripard <mripard@kernel.org>
Cc:     Evgeny Boger <boger@wirenboard.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: iio: adc: new compatible for Allwinner R40 RTP controller
Date:   Fri, 19 Nov 2021 22:14:55 +0300
Message-Id: <20211119191456.510435-3-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119191456.510435-1-boger@wirenboard.com>
References: <20211119191456.510435-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 SoC has touchscreen controller also serving as general-purpose ADC.
The hardware is very similar to A31, except that R40 has separate
calibrated thermal sensor IP, so temperature sensing channel in RTP is
not documented and is not to be used.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 .../devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml b/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
index f591332fc462..6214477465b8 100644
--- a/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
+++ b/Documentation/devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml
@@ -19,6 +19,7 @@ properties:
       - allwinner,sun4i-a10-ts
       - allwinner,sun5i-a13-ts
       - allwinner,sun6i-a31-ts
+      - allwinner,sun8i-r40-ts
 
   reg:
     maxItems: 1
-- 
2.25.1

