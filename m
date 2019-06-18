Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C742949AD0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 09:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726023AbfFRHlz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 03:41:55 -0400
Received: from mail-wr1-f99.google.com ([209.85.221.99]:42175 "EHLO
        mail-wr1-f99.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726912AbfFRHlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 03:41:55 -0400
Received: by mail-wr1-f99.google.com with SMTP id x17so12738682wrl.9
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 00:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=okoko.fi; s=okoko;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=77CACbLG8YOOXSUPh2HvtcwJqatz/ApGlIF/fbxQ6MM=;
        b=K4G1zQPJ6Avx1u05WN/I0mLZ1eldWEYzvqTshfQHtPvsMJpxkvHeOewu0QPh7/0vof
         fPUBYzsij0DMRALgWrkiW3fKmEX02BJDb8RMk2qMaScMXglntIKmv5+FfD9A79HrYk1g
         C6cKvPAC7l/9KumffEhWIiBTkYZKhPDz1pWwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=77CACbLG8YOOXSUPh2HvtcwJqatz/ApGlIF/fbxQ6MM=;
        b=SqHLZW5VG6Tr0Nl2QoM6zkLcjs/qSn6GRuZZudC3kPGKXahhx+WeIp7xTPweum7uTe
         0ZKGt61uiJXnAgcZ1zVV+ig9c2/guM+P/ObZsdcMhnEFmWiU9mlVcjS2jZMtfuBUPsLZ
         OEQ32/2YX18NP5USbcL6qgKhEo4K6bZ6UIddG7hIzWQh6RE+nI/U90X5XSmo2W90gc0V
         /oU/OgjLFL5osJ3C/645Lzio6cR4IdbRWsa4gs18G7o2FpIgH3N1Tw9vDmoHXRilaH0g
         bETIr5YwkK6Q0DLfL/hr7ZRdGeKtLBJSXWe/2DzYzTfFSNQ1D7wsNO696pFZzCu3p+4n
         IuBg==
X-Gm-Message-State: APjAAAVsRZSZrLR1OGqRjhA7+C/tVdzrJo5s7J8PGiocUZjJgu8Ey34y
        6HsESYmLJB02vQTVrSMgSbNgR9e9/OARE+rUSnqRdvNtVb3oyQ==
X-Google-Smtp-Source: APXvYqyGE/GgF3llWsrqocTXT6oGvv/+cbVnAi4GTQVeTr/DTh0qherzKRGe3g2B64lGDtKlirYWQdQUNe/k
X-Received: by 2002:adf:c506:: with SMTP id q6mr65175136wrf.219.1560843713168;
        Tue, 18 Jun 2019 00:41:53 -0700 (PDT)
Received: from localhost.localdomain (46-163-209-30.blcnet.fi. [46.163.209.30])
        by smtp-relay.gmail.com with ESMTPS id l18sm212063wrn.66.2019.06.18.00.41.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 00:41:53 -0700 (PDT)
X-Relaying-Domain: okoko.fi
From:   Marko Kohtala <marko.kohtala@okoko.fi>
To:     linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Cc:     Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        =?UTF-8?q?Michal=20Vok=C3=A1=C4=8D?= <michal.vokac@ysoft.com>,
        Marko Kohtala <marko.kohtala@okoko.fi>
Subject: [PATCH 3/6] video: ssd1307fb: Start page range at page_offset
Date:   Tue, 18 Jun 2019 10:41:08 +0300
Message-Id: <20190618074111.9309-4-marko.kohtala@okoko.fi>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618074111.9309-1-marko.kohtala@okoko.fi>
References: <20190618074111.9309-1-marko.kohtala@okoko.fi>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The page_offset was only applied to the end of the page range. This caused
the display updates to cause a scrolling effect on the display because the
amount of data written to the display did not match the range display
expected.

Fixes: 301bc0675b67 ("video: ssd1307fb: Make use of horizontal addressing mode")
Signed-off-by: Marko Kohtala <marko.kohtala@okoko.fi>
---
 drivers/video/fbdev/ssd1307fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/fbdev/ssd1307fb.c b/drivers/video/fbdev/ssd1307fb.c
index 9ab00e0dadc7..86f2b79f3ed5 100644
--- a/drivers/video/fbdev/ssd1307fb.c
+++ b/drivers/video/fbdev/ssd1307fb.c
@@ -433,7 +433,7 @@ static int ssd1307fb_init(struct ssd1307fb_par *par)
 	if (ret < 0)
 		return ret;
 
-	ret = ssd1307fb_write_cmd(par->client, 0x0);
+	ret = ssd1307fb_write_cmd(par->client, par->page_offset);
 	if (ret < 0)
 		return ret;
 
-- 
2.17.1

