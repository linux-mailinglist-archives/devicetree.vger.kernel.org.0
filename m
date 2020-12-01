Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39B242CA42A
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:47:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391156AbgLANpA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:45:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387932AbgLANpA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:45:00 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02839C061A54
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:44:01 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id o5so917250pgm.10
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QhVjwYmrLBjTere/8qkNqVKV4ikj/p2zvRp7BGZNQtM=;
        b=ZKQNqj4kph80u620UibIsXqnoxPNGtFGOt3TTEBC1XaRy09V888raF64Bhtgz6sOrk
         /xsiR+FATTTTccnyGAELk8Rpj6AtHWRWuMh2AfHFqkq5kWkU+ulQ/TWjrrDD6s7tRalu
         qw2CkzHrvL83jj/ehKW3ddp347z7u5c7ZQH80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QhVjwYmrLBjTere/8qkNqVKV4ikj/p2zvRp7BGZNQtM=;
        b=TQPBrIJeow+Br+PEYpJbd4GpBTs0mSdxKbHTst8JCn52LsubFp/zZ5tsXHHOoYa1vW
         CvNhMIrmnwQIvkrYx9P0dhcNCjdGsvbZ1vOfgs6ELaeuzHjxW57y+4be+Yn9z7N5oI8G
         xV1kAFdW15Q6lipzV3lFGzqGHLu6ZZg+nT7L7tcxGblP3v56VApU3gN9wVyMa3eDBVCg
         dam5TUakYjEWuXlm8Wjo51vh7UsjGFSTAtU9kX8NwIGOOQSi1Jx7/lBI97DalBD3ZHuQ
         g2i2FfjlIweb9qBqke5QHmjVrSAPMdGWyEDK1LOVRT6MsypAef7x7NWl/NmbyjPY0a4k
         JpQw==
X-Gm-Message-State: AOAM531j26eBfRft7LqlTD3TFv7dTSSspmneL9UPPdwJEF9zxPHhEGL9
        dE2u4L2MF5g4sR3RfcfshvXBxCubtJCxtw==
X-Google-Smtp-Source: ABdhPJzSqLPkSH7u9yo7acIkChjMg0tnTuSVTqrelaL8V1sTewnWOzC6QPFtGj395NrAKbryp/7J/A==
X-Received: by 2002:aa7:8055:0:b029:19b:694:34b2 with SMTP id y21-20020aa780550000b029019b069434b2mr2601424pfm.2.1606830240351;
        Tue, 01 Dec 2020 05:44:00 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id g14sm2839248pji.32.2020.12.01.05.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 05:43:59 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        robh@kernel.org, w@1wt.eu, daniel@0x0f.com
Subject: [PATCH v2 08/10] ARM: mstar: Add smp ctrl registers to infinity2m dtsi
Date:   Tue,  1 Dec 2020 22:43:28 +0900
Message-Id: <20201201134330.3037007-9-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201134330.3037007-1-daniel@0x0f.com>
References: <20201201134330.3037007-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the smpctrl registers to the infinity2m dtsi so that the
second CPU can be enabled on chips in this family.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m.dtsi b/arch/arm/boot/dts/mstar-infinity2m.dtsi
index 02adb9fe9d3c..6d4d1d224e96 100644
--- a/arch/arm/boot/dts/mstar-infinity2m.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity2m.dtsi
@@ -13,3 +13,10 @@ cpu1: cpu@1 {
 		reg = <0x1>;
 	};
 };
+
+&riu {
+	smpctrl: smpctrl@204000 {
+		reg = <0x204000 0x200>;
+		status = "disabled";
+	};
+};
-- 
2.29.2

