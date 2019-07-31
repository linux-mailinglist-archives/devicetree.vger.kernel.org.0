Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE96D7BB79
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 10:24:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726824AbfGaIYS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 04:24:18 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35584 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726481AbfGaIYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 04:24:18 -0400
Received: by mail-wm1-f67.google.com with SMTP id l2so58939367wmg.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2019 01:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0irTfRWSZ70qNvhsiExUstYrNfb3pdmbXdiGXd5JhF8=;
        b=hw80V/InTiJxJH2AH3UWZZ4CUq7Pa/utyGT/q458WHSiUT2ppY7hAAw3/vbHpL2pzL
         K0BuME0L2K/rO30XimBliuprG32Q4+ZOf4s5RxXy0T+VJe5ykeJSwd2MS9ikYUYv9uAg
         YPnUxK1ctCQ5m0Q9iDqG/FMWHMg32KRn5i5hAwe3pg46DMGw+U1N/L0AJOlNEE+q1WBU
         muZlxc7aLEeWLAuGYeFCKYKWZQRK7cfze8F/Yaiu3vEDbdd4S/srnmdzYUV4oCfWLMib
         BIXuCS8AbzXqdNTb7jTfQk2XIiI3mNuPtp+cxw1FRgLlrqskcyfFM9JbohIGDBbKHj+i
         c9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0irTfRWSZ70qNvhsiExUstYrNfb3pdmbXdiGXd5JhF8=;
        b=sGRPv/eslCiYPkLNJTxs1cgOTSU1F02xnNBniyMBAm00EAmKi4EBiq6XozLDXPQvUq
         Tn2/bX8xDE75ukC3JrgERvsJc01jAYIdjDA53rZqx/oOIVQFJed24Nfr8caa2qb3B0aI
         pcXy/XSCglipsPI+OnIxsqEUfVa64JhgEPfCIP44F6D9G349lI45KEyk0UCdvw6PK+dj
         gH0DDVLPIRZOS5AMpYqs2IvAPS39VIISQIn3vZZQO/12kanuvXMmb4E7Al04kTpm/8b0
         YxGBSN7w1zMiP0WLy/Zy5A81oYqVQQ7odVfjJLrSd87OPNzAyglCquR5SvcvlAB3ySAg
         lLEg==
X-Gm-Message-State: APjAAAV7ljhi/O3ZB0xWxRlozx/Pm7W90W2P0BvTrGmkVgm3dHtscHCw
        BRpJS1XsClCE4e1jyhO9vnHKBg==
X-Google-Smtp-Source: APXvYqxwqKJLeF0A9W2Qb4n3Ft9qKIilrEwYAsvkxn4OL2mk5QQMea6ic1fnLlRUSXtJ0oMq56TBkw==
X-Received: by 2002:a1c:f90f:: with SMTP id x15mr32073741wmh.69.1564561456060;
        Wed, 31 Jul 2019 01:24:16 -0700 (PDT)
Received: from localhost.localdomain ([185.49.42.196])
        by smtp.gmail.com with ESMTPSA id o3sm54597664wrs.59.2019.07.31.01.24.15
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 31 Jul 2019 01:24:15 -0700 (PDT)
From:   Carlo Caione <ccaione@baylibre.com>
To:     srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: [PATCH v2 1/4] firmware: meson_sm: Mark chip struct as static const
Date:   Wed, 31 Jul 2019 09:23:36 +0100
Message-Id: <20190731082339.20163-2-ccaione@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731082339.20163-1-ccaione@baylibre.com>
References: <20190731082339.20163-1-ccaione@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

No need to be a global struct.

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Carlo Caione <ccaione@baylibre.com>
---
 drivers/firmware/meson/meson_sm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
index 8d908a8e0d20..772ca6726e7b 100644
--- a/drivers/firmware/meson/meson_sm.c
+++ b/drivers/firmware/meson/meson_sm.c
@@ -35,7 +35,7 @@ struct meson_sm_chip {
 	struct meson_sm_cmd cmd[];
 };
 
-struct meson_sm_chip gxbb_chip = {
+static const struct meson_sm_chip gxbb_chip = {
 	.shmem_size		= SZ_4K,
 	.cmd_shmem_in_base	= 0x82000020,
 	.cmd_shmem_out_base	= 0x82000021,
-- 
2.20.1

