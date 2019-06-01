Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25D86319FB
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 09:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726089AbfFAHHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Jun 2019 03:07:31 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33102 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725928AbfFAHHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Jun 2019 03:07:31 -0400
Received: by mail-wr1-f68.google.com with SMTP id d9so7902293wrx.0
        for <devicetree@vger.kernel.org>; Sat, 01 Jun 2019 00:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K0CSuChjUZ2dt5vxKaxZLuqnfriivl17ufNwPPlIjqU=;
        b=mFcOgLijA/T2qQ9lKLfEvyIJMWjvmtP+ojGIqAt3gFFOuA6O1wf8bdZNjH1J/Xq5pQ
         EHgHiCDyjLrnRX0nthUcHhKhT5ugBDaV6Svt0qXc6kzWs7IB3NPqfNHhoCgvo5Pni+xN
         MxpWou0qpCWO5wPUTocShVh0RSzEka+qOHp50k5a20zHqbPfAalfz2ARbK1rxNb/SiY4
         UXxeM5V2B04kOCWPM3Z0xcaomwAN15VVMQAh6MQ9ztK5/Z6T6HALCcr4qnzhxYw0qR6m
         HUrKy2scg5LHj2MXhlxBw8eWyDzfAyCkOW/Juf0zavFIVXMvUO/L5Wb8m4hZKRxT8p+/
         /YAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K0CSuChjUZ2dt5vxKaxZLuqnfriivl17ufNwPPlIjqU=;
        b=lYsTft8kW1poRbPMMYYWKXUl/6pMMIrhlbqVSj7MNrAkjTPPkpH46o1pwpoGq3LUTk
         PCkHlynu+3N7Wi0iKQOyNfyk7M1oqgLC7qkBetWcLXJ+YW6O5O9AyBzH2tBZq9nzv2sL
         UnJc+FYqA3TxAqSm90VQu4h8FQk+CfhvyMmK3qg+jV7VbLDtDItLE7I8iXSvCApHpvD+
         OwPHOGEdGInCpTjfenbLrbksyM7xH1Vxy8QiwM9eElXmtDRgwWFGxZjzgQtjN1mga59M
         oyzKFS7R0Cm1hNV5rTljvbC6dPRNDlASoVG+wufxqKWk8fF8vmspgbICaGd3IUnolaHM
         tyeg==
X-Gm-Message-State: APjAAAXPJXu4UBMqXKS23hojPH46TOgicfHhiMjgIwxGbTxjTZ7A2bhx
        cbE+qFxx45SYRg8kR731aLs=
X-Google-Smtp-Source: APXvYqykAVBSDvAGzBbYBaAVXBT2T31urQMO2nwOW+KwGhkdT7S/27ni+Z6LhFgQ+5RZbC4DUmiq+A==
X-Received: by 2002:adf:f6c4:: with SMTP id y4mr9073889wrp.37.1559372848519;
        Sat, 01 Jun 2019 00:07:28 -0700 (PDT)
Received: from morpheus.roving-it.com.com (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
        by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.27
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 01 Jun 2019 00:07:27 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX License Identifier
Date:   Sat,  1 Jun 2019 08:07:16 +0100
Message-Id: <20190601070718.26971-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601070718.26971-1-pbrobinson@gmail.com>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the SPDX License Identifier for GPL-2.0+ OR X11

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts   | 39 +------------------
 .../arm/boot/dts/imx6sx-udoo-neo-extended.dts | 39 +------------------
 arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    | 39 +------------------
 arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 39 +------------------
 4 files changed, 4 insertions(+), 152 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
index db0feb9b9f5d..b6fbceaf6889 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR X11)
 /*
  * Copyright (c) 2016 Andreas Färber
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
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
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
index 5c7a2bb9141c..c6005cd284be 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR X11)
 /*
  * Copyright (c) 2016 Andreas Färber
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
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
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
index 13dfe2afaba5..ad8b8a663a70 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR X11)
 /*
  * Copyright (c) 2016 Andreas Färber
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
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
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
index 53b3eac94f0d..386707c1bfe0 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
@@ -1,43 +1,6 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR X11)
 /*
  * Copyright (c) 2016 Andreas Färber
- *
- * This file is dual-licensed: you can use it either under the terms
- * of the GPL or the X11 license, at your option. Note that this dual
- * licensing only applies to this file, and not this project as a
- * whole.
- *
- *  a) This library is free software; you can redistribute it and/or
- *     modify it under the terms of the GNU General Public License as
- *     published by the Free Software Foundation; either version 2 of the
- *     License, or (at your option) any later version.
- *
- *     This library is distributed in the hope that it will be useful,
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
 
 #include "imx6sx.dtsi"
-- 
2.21.0

