Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A05AEC2145
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2019 15:04:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731190AbfI3NET (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Sep 2019 09:04:19 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:42963 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731178AbfI3NET (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Sep 2019 09:04:19 -0400
Received: by mail-lj1-f195.google.com with SMTP id y23so9357359lje.9
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2019 06:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=antmicro-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wAmsq1ZRjAy0Dy4hMBe94TXzxJb/3I02Gi7CAmHEC18=;
        b=GJHOt5ZJCob5AOYOFNDmBvLuTGz/01PKndvnW99jFT5LG3Mu4ZEwEvy1cY+IH2VlYn
         1fmK9jIFvISsCbyqjM+faIdSgGrvb7pkaX0f3NWmkvy0BPTadP2fXoq5Yh+BmEUZZmHj
         RnFNykhxCz2HcEuxOGjC/KKnM2cmU/jPE6JPbsUiiP6N3X5FnMw0bLK5ww/mSrEfR2X5
         IildYAvxuvySKj1xNFidFzuUZ1YuZuFkUKuBxq7PBJzahHh/OMUwRkpcEfNgcnotXOKR
         dfQkBKh5jXoS/t0Vni55ey+QO7Pvbj5lu7HI5aFX+1jRC5XuP6zn9Vmr8oX/sSRC/lsK
         1qzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wAmsq1ZRjAy0Dy4hMBe94TXzxJb/3I02Gi7CAmHEC18=;
        b=odldtet2V8Pbwx6q0h1mPgtFn7PgvHE9+p3p2Hy9YLFyeKyzlHVlb7Jysl/rN3LXgK
         Etksekvng6ogCP3cyhtjDWqDQ3h/ZlevOFZz/+3DqY7Dn1ZdPl0Cj1Fw5/7kuBZFoqcv
         DwJo5jESbo2deKp2T/hy183XeVEpJfcjhz1HUggLobnGMCsj87Zud5OgKxf8Xk8JRMFf
         4guEhf5usR4HdMnvQLbp/Dnd4b9yQCMIxJgiFiafC1fM+84x1f9kpPx+0TBlz/sL8Afm
         HlovfFtQxOMmZSCCRnbB1HfL6HXsdfGFneVBcnDKCJeWZmqopOzqsRqepwpYOnE8/54g
         xCIw==
X-Gm-Message-State: APjAAAXxAmu50I8xT8kKbMsHUZ+Xg6xP+M9WxL5qlfEYlqTu9GWc8N+B
        PfjD2+XkbVUGx9xgLC7NJDJiQkhHk4XtNh6J
X-Google-Smtp-Source: APXvYqw0uKUhs9OxqzC42P/Kf2Rn9e00fau/7D2/YvGAN+Wkv+FMrYaUf5TyMdwJRcNlVDlswQdmtg==
X-Received: by 2002:a2e:a0cd:: with SMTP id f13mr11973026ljm.93.1569848657561;
        Mon, 30 Sep 2019 06:04:17 -0700 (PDT)
Received: from localhost.localdomain (d79-196.icpnet.pl. [77.65.79.196])
        by smtp.gmail.com with ESMTPSA id s26sm3060394lfc.60.2019.09.30.06.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2019 06:04:16 -0700 (PDT)
Date:   Mon, 30 Sep 2019 15:04:11 +0200
From:   Mateusz Holenko <mholenko@antmicro.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Karol Gugala <kgugala@antmicro.com>,
        Mateusz Holenko <mholenko@antmicro.com>,
        Jiri Slaby <jslaby@suse.com>, linux-kernel@vger.kernel.org,
        Maxime Ripard <mripard@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        "Paul E. McKenney" <paulmck@linux.ibm.com>
Subject: [PATCH 1/3] dt-bindings: vendor: add vendor prefix for LiteX
Message-ID: <20190930130411.GA8312@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Filip Kokosinski <fkokosinski@internships.antmicro.com>

Add vendor prefix for LiteX SoC builder.

Signed-off-by: Filip Kokosinski <fkokosinski@internships.antmicro.com>
Signed-off-by: Mateusz Holenko <mholenko@antmicro.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 329b668da..4143c52a8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -533,6 +533,8 @@ patternProperties:
     description: Linux-specific binding
   "^linx,.*":
     description: Linx Technologies
+  "^litex,.*":
+    description: LiteX SoC builder
   "^lltc,.*":
     description: Linear Technology Corporation
   "^logicpd,.*":
-- 
2.23.0

