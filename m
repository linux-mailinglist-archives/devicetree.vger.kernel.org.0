Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11681D86BB
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 05:35:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403854AbfJPDdy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 23:33:54 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:41440 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403848AbfJPDdx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 23:33:53 -0400
Received: by mail-pl1-f196.google.com with SMTP id t10so10568935plr.8
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 20:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XYmCRZgf8b2IcaP7U8709/cAdbizYn9CNcdmOHw1lAQ=;
        b=M+j3OSTd6OWlEcLeVpxIyqrceKfn8UXv80YolW6qvBqb5QXn0w1KjA3liz7wZvvEPE
         2jK1cjfZbCKO8KDuKnvDQSgiagX/xGJbc7M3TJeUvCEhRvnvCmaM3oJ+CzoqDax+5nDM
         QhYddsNAxjU+dLqhpM1jwvYZ8hXoy1hMpKir6wed8XX+ayBTHSnLwfyIamo33p9a1xp2
         PAFkXAZ1JRCrng+9VkPVr1NmtmNHaKLd8mlCKTBqHOgBYVb6XVr8pEhba5xWk52mw9+8
         cSsq/uXaMZ29Xuo+Uq8QcmxDRCg2hc4P7CPQKjNqb4foAoUmOCclW3wtYJbBM6L5tf0X
         OSTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XYmCRZgf8b2IcaP7U8709/cAdbizYn9CNcdmOHw1lAQ=;
        b=D4r8rg1JEgevoy/xqGvXxlMxmeOFulwn2WoVgtcf9q7rPT14uU65RGFuTavl/Bj0J5
         k4HUpoQzR6CbdELIGh+2DdSJ9Noi7lp6PXmAPwRYQPdj3bSZeEtff+aWpSc6iKzrEF4B
         lMMxGezdaiVj7CBXr2e+hZFo/3mqdDBWVI5igXdAPkI/Vsm9hAN8C0R5jiFsMfkZonJl
         5Beh9K9hehM2FT0LdAWxrmgKDSUl/jW7BPZv81qWtcJokxoA2/qjGKSP1Av2wTqmaMaw
         kENURS5SpnRnWtLhdKwnlFTpQnHUlEhe5pLaMAfLgqeScRhY+su2UV95Os0mH/A+zudW
         HBEg==
X-Gm-Message-State: APjAAAWEIK+V2g1FnVuSbKSsFiuI+zZ0hsd8PKq8TPoTyTsJ/39B4NOt
        GqvllQX9x4fdJBzG2vWfBguqrA==
X-Google-Smtp-Source: APXvYqwtJMHOOIbFTp5wm3D/o0iQ0CChhCx+w+5i1GrQwEE/EFW7imOCSKYWaKsUoO/zz8QDQxMKfA==
X-Received: by 2002:a17:902:a605:: with SMTP id u5mr37825346plq.140.1571196832574;
        Tue, 15 Oct 2019 20:33:52 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id l23sm748356pjy.12.2019.10.15.20.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 20:33:51 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     John Stultz <john.stultz@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        ShuFan Lee <shufan_lee@richtek.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Yu Chen <chenyu56@huawei.com>, Felipe Balbi <balbi@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Jack Pham <jackp@codeaurora.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [RFC][PATCH v3 06/11] usb: dwc3: Rework resets initialization to be more flexible
Date:   Wed, 16 Oct 2019 03:33:35 +0000
Message-Id: <20191016033340.1288-7-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191016033340.1288-1-john.stultz@linaro.org>
References: <20191016033340.1288-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The dwc3 core binding specifies one reset.

However some variants of the hardware my not have more.

So this patch reworks the reading of the resets to fetch all the
resets specified in the dts together.

This patch was reccomended by Rob Herring <Rob.Herring@arm.com>
as an alternative to creating multiple bindings for each variant
of hardware when the only unique bits were clocks and resets.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
CC: ShuFan Lee <shufan_lee@richtek.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Yu Chen <chenyu56@huawei.com>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jun Li <lijun.kernel@gmail.com>
Cc: Valentin Schneider <valentin.schneider@arm.com>
Cc: Jack Pham <jackp@codeaurora.org>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Suggested-by: Rob Herring <Rob.Herring@arm.com>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
v3: Rework dwc3 core rather then adding another dwc-of-simple
    binding.
---
 drivers/usb/dwc3/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index 4d4f1836b62c..ef52ffa5d6cb 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -1442,7 +1442,7 @@ static int dwc3_probe(struct platform_device *pdev)
 
 	dwc3_get_properties(dwc);
 
-	dwc->reset = devm_reset_control_get_optional_shared(dev, NULL);
+	dwc->reset = devm_reset_control_array_get(dev, true, true);
 	if (IS_ERR(dwc->reset))
 		return PTR_ERR(dwc->reset);
 
-- 
2.17.1

