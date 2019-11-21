Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DC5D1057EC
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2019 18:06:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726792AbfKURFn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Nov 2019 12:05:43 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33409 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726546AbfKURFl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Nov 2019 12:05:41 -0500
Received: by mail-wm1-f67.google.com with SMTP id t26so4266049wmi.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2019 09:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ni1slmKblcP7bhdBCafwyoLiq6dGHkojE+w33IiAhYs=;
        b=Us9Hd7aEldRuCy/GB17vScL/hwvyN4isjOgJHPcWinn31uhbMPzHXFhDjC7SVEAP+0
         cQi+kAIZd/0Y9fqZqp+uQLgld9UZ0l6evS/20UL5ykJfyPuwboBoTBDUxmdEMdh+XGtw
         EvdfubsYSRgsh4ZgjTbh52RBaj556kYOZnZfioWkBupX1U8q3DbxEsRI7UvlOkcnVA89
         nvrVpkoj7b5LImBkAfPiUlRar7kcoQrEyAH8qliA+Fj+YQrGYUIbatzJ3Nziq6gH9EFz
         jCgVPD/wXWOp3EUyd88pO4rW1Gsw5MI5ZEldL99KIdrr1efzN0G4+PlRHFsDF0PPb9gU
         zNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ni1slmKblcP7bhdBCafwyoLiq6dGHkojE+w33IiAhYs=;
        b=JTcGsSb/Ann38/j62K32/PAdbCMu0UjKnzDIEbQdzBOzGQGJOiw04T4wT3S5B/xcSc
         b2265lUBe1INM3BeiYpnDbPj9CBQbazziC6YDlkP9y4jWAnSAz/oW1JxG+4Nlwp+c+ke
         bqNg1ik6h6P8tjiLh6NU/OFOnbVBJYtNqv+z3zYiWgO4oiMp/bhDx4mdHgGwHIeqMAES
         x97P0tFDpe+O7gTieYIndLBExjsC7g77sWxn4PqjTlZ1ntBgu6xf6/E2Jkh7Q8J2TX5I
         nyd+Fqnkp8s9Tml8g4iv2B9Ae9/2DADJXumV8CI9o/W8agH8qgUvu+1/lhrNzg9iL+UY
         4msA==
X-Gm-Message-State: APjAAAVVH8bT3rcFXU1Kghkp/WR9Jj13zFHDYNUpKiZPmulIybuy2YOm
        cJudsdmRWYlwt4x6rHctuFyPcQ==
X-Google-Smtp-Source: APXvYqyFBwhhDzfAVf2MIn4g4BX1O/RFfrBJPwqTyqZDbSVj0e/yeO40DOWs3aWJpcE87bhq6Pr9gA==
X-Received: by 2002:a1c:544e:: with SMTP id p14mr10890566wmi.17.1574355939461;
        Thu, 21 Nov 2019 09:05:39 -0800 (PST)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id i71sm4423731wri.68.2019.11.21.09.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2019 09:05:38 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh@kernel.org, broonie@kernel.org, lee.jones@linaro.org,
        linus.walleij@linaro.org
Cc:     vinod.koul@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        spapothi@codeaurora.org, bgoswami@codeaurora.org,
        linux-gpio@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 01/12] dt-bindings: SLIMBus: add slim devices optional properties
Date:   Thu, 21 Nov 2019 17:04:58 +0000
Message-Id: <20191121170509.10579-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191121170509.10579-1-srinivas.kandagatla@linaro.org>
References: <20191121170509.10579-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds an optional SLIMBus Interface device phandle property
that could be used by some of the SLIMBus devices.

Interface device is mostly used with devices that are dealing
with streaming.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/slimbus/bus.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/slimbus/bus.txt b/Documentation/devicetree/bindings/slimbus/bus.txt
index 52fa6426388c..bbe871f82a8b 100644
--- a/Documentation/devicetree/bindings/slimbus/bus.txt
+++ b/Documentation/devicetree/bindings/slimbus/bus.txt
@@ -32,6 +32,10 @@ Required property for SLIMbus child node if it is present:
 	 	  Product Code, shall be in lower case hexadecimal with leading
 		  zeroes suppressed
 
+Optional property for SLIMbus child node if it is present:
+- slim-ifc-dev	- Should be phandle to SLIMBus Interface device.
+		  Required for devices which deal with streams.
+
 SLIMbus example for Qualcomm's slimbus manager component:
 
 	slim@28080000 {
@@ -43,8 +47,14 @@ SLIMbus example for Qualcomm's slimbus manager component:
 		#address-cells = <2>;
 		#size-cell = <0>;
 
+		codec_ifd: ifd@0,0{
+			compatible = "slim217,60";
+			reg = <0 0>;
+		};
+
 		codec: wcd9310@1,0{
 			compatible = "slim217,60";
 			reg = <1 0>;
+			slim-ifc-dev  = <&codec_ifd>;
 		};
 	};
-- 
2.21.0

