Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6171ACEB37
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 19:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729445AbfJGR4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 13:56:07 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:34139 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729440AbfJGR4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 13:56:05 -0400
Received: by mail-pf1-f193.google.com with SMTP id b128so9157315pfa.1
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 10:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oFS6SaDoQ5fogHAHlhUMYfV/B7rrjNj6XYxhAXSXdHY=;
        b=x1nWDenY+0OgbS5Si4sl4DdYea+ca+L0YaFIzXKakFAoV8rokW8Wv4O9U4fSg4XRT3
         C36yiu+wbHF79WBypFf0D+jFIoGAugRVQALrQvA4zgQpwlAKaFe18wS0DG4ys81258Xg
         wgVcnDbTcYXFQ5a8ynD7RjXxF6GJRLeReKA3BBb1Pledy4pQNOgHWFZE4HNvX4cuLe2Y
         AnKZ+FLYTAUg3PJjrc2pUo26D4LnXuAiz8pV5Z9XiIjb7C+LtjsvwGCKtkfwh7TF0mNW
         tcEOos93Wrae9VkosnEAjX2oowhtK4u159OFqQL2v1Hlwc9MHeD5i9FPvfFkifEd8ISf
         lhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oFS6SaDoQ5fogHAHlhUMYfV/B7rrjNj6XYxhAXSXdHY=;
        b=d5zmZxPpIKZfQC8wBfFCu+NaY5VxqGHGkmTz0cnW4WQzVro1941OJ3ogF1I0l5u9Mw
         oXXrSv5Mg9hnuJih2kPjIid2naMYgICmq3L8H2vYE9pJKIUId/V/0eBnImYBPdrBWx9P
         +7lAbsXxglvS+hFEBWLVHKoiJOcMDFR82sYfNwMCS4J0MaKZ4BdDRqea3I3HkfpbXTHW
         LT3TxfE4XKsFn2wKOWNfpYdI8ghF3pz6A45AvyaUVDtW0VFWF8JsWM570VWRvKgg7jhv
         i9TpTuhSet/rHUhRzFXZbqUKGPyjgK/JahnGksRTPuLWU8Li7vPjhYRvqF/Yn/XufprX
         q2kg==
X-Gm-Message-State: APjAAAVyM609+gHzuz+xVXHV+oV2dwY7vnWAX3fCdxNaiWwe2I1EkPWD
        FxfJO9yIDV2QGMiM52xcPDZdgA==
X-Google-Smtp-Source: APXvYqwMP8ygmDxBtrmpiUIThUb/AoKHCnnSdgO0txYlKecbRvRqSCa7T55269OWxjGj1A/VvCtLzg==
X-Received: by 2002:a62:ab04:: with SMTP id p4mr34552992pff.227.1570470965054;
        Mon, 07 Oct 2019 10:56:05 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id k15sm3820096pgt.25.2019.10.07.10.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 10:56:04 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     Yu Chen <chenyu56@huawei.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        John Stultz <john.stultz@linaro.org>
Subject: [RFC][PATCH v2 3/5] usb: dwc3: Increase timeout for CmdAct cleared by device controller
Date:   Mon,  7 Oct 2019 17:55:51 +0000
Message-Id: <20191007175553.66940-4-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007175553.66940-1-john.stultz@linaro.org>
References: <20191007175553.66940-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yu Chen <chenyu56@huawei.com>

It needs more time for the device controller to clear the CmdAct of
DEPCMD on Hisilicon Kirin Soc.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Yu Chen <chenyu56@huawei.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Yu Chen <chenyu56@huawei.com>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 drivers/usb/dwc3/gadget.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
index 8adb59f8e4f1..81907e163252 100644
--- a/drivers/usb/dwc3/gadget.c
+++ b/drivers/usb/dwc3/gadget.c
@@ -270,7 +270,7 @@ int dwc3_send_gadget_ep_cmd(struct dwc3_ep *dep, unsigned cmd,
 {
 	const struct usb_endpoint_descriptor *desc = dep->endpoint.desc;
 	struct dwc3		*dwc = dep->dwc;
-	u32			timeout = 1000;
+	u32			timeout = 5000;
 	u32			saved_config = 0;
 	u32			reg;
 
-- 
2.17.1

