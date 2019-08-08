Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C5128649F
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 16:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732906AbfHHOp2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 10:45:28 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:36709 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732862AbfHHOp0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 10:45:26 -0400
Received: by mail-wm1-f68.google.com with SMTP id g67so2713331wme.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 07:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cdCXxiJkZwv+z5nIdjZ1AKoaP38PZYsnJaBif7OuI/w=;
        b=lplD0g3mm2VDvN4ZziBK53kO4dWPlXrDd+bIfvsd9Q/afBYVz3TbQIgbfVvh6CyFrB
         KgKT+8WNETIsbVlqEO3riSawg/fvGWgkQxR9ZRXykPLUfH7Z7YlFTvgj0nOLewJ80gHY
         QWGem+5rrNBDL/MkNhYGhbETd6tgFRanlojOa+X4CKUngQDU5gI6ZjDJu1pjKqD/qXIW
         vybdtVeWFf7Fq627Jd58d0inlRXE2k+HLR4oQUEGr+IKP9H9Y1AjVavwDV2ji+/2RvBK
         OMnGQOvqqUdZU7xrisepFW3DhOpGwuEvhzZuW74SJeqV792IPUOKBxgV2dG57wP/XCEl
         rMZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cdCXxiJkZwv+z5nIdjZ1AKoaP38PZYsnJaBif7OuI/w=;
        b=PfI8oBTHx0C6XRiwSO0gZ/Jh+g/XCJ0ojCtK0oVDRDifK8n4skgKHnoASiet9nNnpn
         E5MdaCFrrUSzuvFKKV7hplQfwpmSlllz56eJ6tPLzt/Vs9Gv7wDEjdG1YHiqsZlKAu+5
         AHHcCgHT9+CXH0CwShNoNfIpmjeo8gvHnMN7Qv85Ha3LUSLtRRfjd//ir1eIsz+2nvcw
         xPuseB2YnrLsn1GGhwdgMWryYg4VVJ8if0BSx78hGsJL6jcrMAEiE556UKvLGmd19CMI
         azE5fZnLbc3Rrx0n/6noQVWm2wZJR13jwrEVBMDZBe9qZcPGlddfiiGL2mkCtIXWtWXd
         95NQ==
X-Gm-Message-State: APjAAAVuYre8ENhf6+BCK9e4PRj6yEC1xVAU5+iCKvdbgEsxmMEE5TeG
        5pumTFs3mfqTmwuWRHp+5rYM2Q==
X-Google-Smtp-Source: APXvYqyySBvQDtGOAbhZvwKWDq+6U8mjD9rtieI80XujmHaIyhwAVfgGvszj3f2Jrs1j1a/mhV/y/g==
X-Received: by 2002:a1c:6c14:: with SMTP id h20mr5098118wmc.168.1565275525435;
        Thu, 08 Aug 2019 07:45:25 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id g15sm2009060wrp.29.2019.08.08.07.45.24
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 07:45:24 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 1/4] dt-bindings: soundwire: add slave bindings
Date:   Thu,  8 Aug 2019 15:45:01 +0100
Message-Id: <20190808144504.24823-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
References: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for Soundwire Slave devices which includes how
SoundWire enumeration address is represented in SoundWire slave device
tree nodes.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../devicetree/bindings/soundwire/slave.txt   | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soundwire/slave.txt

diff --git a/Documentation/devicetree/bindings/soundwire/slave.txt b/Documentation/devicetree/bindings/soundwire/slave.txt
new file mode 100644
index 000000000000..b8e8d34bbc92
--- /dev/null
+++ b/Documentation/devicetree/bindings/soundwire/slave.txt
@@ -0,0 +1,46 @@
+SoundWire slave device bindings.
+
+SoundWire is a 2-pin multi-drop interface with data and clock line.
+It facilitates development of low cost, efficient, high performance systems.
+
+SoundWire slave devices:
+Every SoundWire controller node can contain zero or more child nodes
+representing slave devices on the bus. Every SoundWire slave device is
+uniquely determined by the enumeration address containing 5 fields:
+SoundWire Version, Instance ID, Manufacturer ID, Part ID and Class ID
+for a device. Addition to below required properties, child nodes can
+have device specific bindings.
+
+Required property for SoundWire child node if it is present:
+- compatible:	 "sdwVER,MFD,PID,CID". The textual representation of
+		  SoundWire Enumeration address comprising SoundWire
+		  Version, Manufacturer ID, Part ID and Class ID,
+		  shall be in lower-case hexadecimal with leading
+		  zeroes suppressed.
+		  Version number '0x10' represents SoundWire 1.0
+		  Version number '0x11' represents SoundWire 1.1
+		  ex: "sdw10,0217,2010,0"
+
+- sdw-instance-id: Should be ('Instance ID') from SoundWire
+		  Enumeration Address. Instance ID is for the cases
+		  where multiple Devices of the same type or Class
+		  are attached to the bus.
+
+SoundWire example for Qualcomm's SoundWire controller:
+
+soundwire@c2d0000 {
+	compatible = "qcom,soundwire-v1.5.0"
+	reg = <0x0c2d0000 0x2000>;
+
+	spkr_left:wsa8810-left{
+		compatible = "sdw10,0217,2010,0";
+		sdw-instance-id = <1>;
+		...
+	};
+
+	spkr_right:wsa8810-right{
+		compatible = "sdw10,0217,2010,0";
+		sdw-instance-id = <2>;
+		...
+	};
+};
-- 
2.21.0

