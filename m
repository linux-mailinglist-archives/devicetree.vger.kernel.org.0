Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 557DC5E459
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:48:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727423AbfGCMsC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:48:02 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:44113 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727420AbfGCMsC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:48:02 -0400
Received: by mail-pf1-f195.google.com with SMTP id t16so1223405pfe.11
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FMQphdJ64iQsEVpyBusVHfTIMxMniBqKY4+0bLvkoAA=;
        b=UA7UGlHR6Hwn5bSUrmKs5QLv1R4SRkBFGqJtRsXcsIgSbUXFU/nEYw0wNDyrExxOXQ
         hF/+GNW+Qmwky7+rUXr9jNc0cfpqOsh9Yg39dQ3L/PUXEoSMb/8pLkbw5oCNeGYgpvZT
         UO73nWHPua3f/JHaqule0B4IiwgqIZ42g62MY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FMQphdJ64iQsEVpyBusVHfTIMxMniBqKY4+0bLvkoAA=;
        b=ZC8E5s8+NLDudTq2zI/8GfV7iX4sAEJDHx5P4/ZQbrAebbFnuLI2INyCBCp+Gb9dXm
         0Mjws4zRBZnXThC8qB/MxawmKXyaZkE/lo8kLkB8R6YTHzmd+lQbe8m5BH/IAV5Exzba
         SBFHvCBbd928QCewgMZtL+R/kmvLeVsDrcuPl2VTdg7wW46l/JIAmYdK5hgTrXDf+3El
         CsUdpaR48/DoQzBIp5kRaRNavs1weW9C5AjDKJGY4ZwdT/JCuK9ts/4SWUaIKkCQMQjG
         bCgxfO5PhtmlBseWxQwuj12Cj3OoPWD1vwkRifUhZ4g95ERZX/S0CYths0gpLgWA+weO
         A/jw==
X-Gm-Message-State: APjAAAVWgxwG7ffiGE3/E3jdBqLuay4nwsAtHTUVI6x+VPQHLWVEo2qD
        9Rb3dnq/haH8TmQLROXWoxnoyA==
X-Google-Smtp-Source: APXvYqxLiEYgPyMNbx3XxrQIXXIjt/6A59kyKAqEgoW99PXOWerG4iymshDm9C2zM0qOpwr1vHlo1Q==
X-Received: by 2002:a65:6454:: with SMTP id s20mr35365529pgv.15.1562158081276;
        Wed, 03 Jul 2019 05:48:01 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
        by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.47.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 05:48:00 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 23/25] ARM: dts: axp22x: Switch to use SPDX identifier
Date:   Wed,  3 Jul 2019 18:16:07 +0530
Message-Id: <20190703124609.21435-24-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190703124609.21435-1-jagan@amarulasolutions.com>
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adopt the SPDX license identifier headers to ease license
compliance management on axp22x.dtsi.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/axp22x.dtsi | 39 +----------------------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm/boot/dts/axp22x.dtsi b/arch/arm/boot/dts/axp22x.dtsi
index 65a07a67aca9..900317df05ff 100644
--- a/arch/arm/boot/dts/axp22x.dtsi
+++ b/arch/arm/boot/dts/axp22x.dtsi
@@ -1,45 +1,8 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2015 Chen-Yu Tsai
  *
  * Chen-Yu Tsai <wens@csie.org>
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This file is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This file is distributed in the hope that it will be useful,
- *     but WITHOUT ANY WARRANTY; without even the implied warranty of
- *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *     GNU General Public License for more details.
- *
- * Or, alternatively,
- *
- *  b) Permission is hereby granted, free of charge, to any person
- *     obtaining a copy of this software and associated documentation
- *     files (the "Software"), to deal in the Software without
- *     restriction, including without limitation the rights to use,
- *     copy, modify, merge, publish, distribute, sublicense, and/or
- *     sell copies of the Software, and to permit persons to whom the
- *     Software is furnished to do so, subject to the following
- *     conditions:
- *
- *     The above copyright notice and this permission notice shall be
- *     included in all copies or substantial portions of the Software.
- *
- *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
- *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
- *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
- *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
- *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
- *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
- *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
- *     OTHER DEALINGS IN THE SOFTWARE.
  */
 
 /*
-- 
2.18.0.321.gffc6fa0e3

