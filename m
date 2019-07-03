Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 953415E438
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:47:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726991AbfGCMqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:46:52 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:40678 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726955AbfGCMqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:46:52 -0400
Received: by mail-pg1-f194.google.com with SMTP id w10so1198136pgj.7
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4IQQWCmkLROZhu9uZNL11MzkjLpNKNIxkfZppatgNNs=;
        b=cOAlHlt6s8+guXql8HjafA78GaLkzRxPk4aKjd5XZqKJ8a2TrfTMxVcmCtLLg4y2Nv
         9cF+OhGDNQrFhQrgEt5IrKQ5lXTRPdqmLpbnAz9L/1pYYFOV5JMky6RxSqVWsoq0s8Mq
         4B4N2/wqHfNkFj5EkDr723q4O2FnvEl92cUsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4IQQWCmkLROZhu9uZNL11MzkjLpNKNIxkfZppatgNNs=;
        b=UUi8ZEgHLna7S7LMam/LMTxJdfRh/k+7E5AwKIj6RjyswgInfBXdAUepc+ckRhco4C
         Kp99RA4uNkCxZ5Mbs2VOEQDg/XdiWWuwt+B62+G+YkFSc2mtbvqF/8rCc8suHho42mIf
         HRC8lB1zYL6ZMtYKu3ThQbsRjDpYesNgwLjZdMGAms/UMsnSc7JZGExMTd2jmjgskkGn
         NpsIQ14+C/7yunEQ6UjQJ8e5s+1CyyGNeL+vYT5h1NLP6clA0sjLgwZeiYsARA6Qbod3
         lS7n5Q1wNH5/J0cNPRlVNL9HnCqd4Ke07zyIwahm+yVUiUPm+DEBUEBh4Ec2Og7l25xA
         c0hg==
X-Gm-Message-State: APjAAAUXij/smafnN0n5WyRBMf7WblXcQt5q8btgcqzbvOXF7BuLwZix
        5Z69IAGHmDuNFl432fmpIUlL6Q==
X-Google-Smtp-Source: APXvYqxoa0Q4LPLaTnsQkldchXDEIbfhSyq/gmPWc2c93rQgBTfcrvo/LWj7onkt9pPYGBgae2TPiA==
X-Received: by 2002:a17:90a:21ac:: with SMTP id q41mr12852787pjc.31.1562158011391;
        Wed, 03 Jul 2019 05:46:51 -0700 (PDT)
Received: from localhost.localdomain ([183.82.231.32])
        by smtp.gmail.com with ESMTPSA id q1sm3735890pfn.178.2019.07.03.05.46.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 05:46:51 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 02/25] arm64: dts: allwinner: axp803: Switch to use SPDX identifier
Date:   Wed,  3 Jul 2019 18:15:46 +0530
Message-Id: <20190703124609.21435-3-jagan@amarulasolutions.com>
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
compliance management on axp803.dtsi.

While the text specifies "of the GPL or the X11 license"
but the actual license text matches the MIT license as
specified at [0]

[0] https://spdx.org/licenses/MIT.html

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/allwinner/axp803.dtsi | 39 +----------------------
 1 file changed, 1 insertion(+), 38 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/axp803.dtsi b/arch/arm64/boot/dts/allwinner/axp803.dtsi
index f0349ef4bfdd..1c976bc295d1 100644
--- a/arch/arm64/boot/dts/allwinner/axp803.dtsi
+++ b/arch/arm64/boot/dts/allwinner/axp803.dtsi
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
 /*
  * Copyright 2017 Icenowy Zheng <icenowy@aosc.xyz>
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

