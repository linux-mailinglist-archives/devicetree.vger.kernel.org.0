Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AB232F77E8
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 12:46:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728593AbhAOLqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 06:46:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726137AbhAOLqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 06:46:31 -0500
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50BCFC0613D3
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 03:45:51 -0800 (PST)
Received: by mail-qt1-x849.google.com with SMTP id b24so7008464qtt.22
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 03:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=Rz2b+XEvx25E0d7OPlpAzQcwuev8Qgbux4h+dak74dg=;
        b=sIFw66fH47WMRfKdYPomiYUnm03OJCKfEvISckqLpB2W5No42YW8N3BsxiahD/JLuh
         dSkzcXtK3CsvZjnjv/d+QicPOyE9bNeT42/EcF+6xasp1ylCtruksdkwZSRp4Q0jNSv1
         ekbpNY1HRjggYzxqxVHmYCMMAEExxPDfpLgD0X3BW4mk0TO6/tVNYL3ZYCdyRZwbqOZl
         spiou8LekqUnBVsLRsTZg3CuAR/TAo5ORjd0+LCakWbvVgc5Dy5/98DhqZztuNQo8riw
         w90cQulHlK1qBU5V7cGFOTvOf9uiiIgPSMAEBee4C+ibJ2JLQrp6LhMeAxxLUI/zGzMD
         +AVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Rz2b+XEvx25E0d7OPlpAzQcwuev8Qgbux4h+dak74dg=;
        b=NiSG5ZZtvLwuouGxsz/1GnPIqnZ94sh+lFD5VGb/dQ5Mq8GNmc5PSvFvihstEJWrsS
         9e6ttUHS96BkLzys9X3WJozVrIC9cHRkHUW2xerWfMq0KfqF43ch95FVrlB5337TXStS
         HYRRZ4fT+UI3GDpimGvINvh3lHwaGTDWnLT47WUG4b4HegbZuyG3HIXiTYqsY2lJp+EB
         QFlLuY/Lm4zynoJVXWjTdovAX8q8AR6dVuJKS/zFnHgjj4TEQrIoFLJds/KdwVojggET
         Nrqf8OSrBukzh1IvOIxKihUkeaQq+QVXa1llGL9JM41dCwsIqzddI/3zD56oM8I+4qBu
         3hAg==
X-Gm-Message-State: AOAM533Pg0Rt7b0ld0jO/cSXgWNyBtJgIudkVn8zOEe2RiMHhzmOfhrs
        6Rbq6TgGm1qX5nz8rxEUKdkLmIJK0onb
X-Google-Smtp-Source: ABdhPJwphIAmMLFWWoitWR5YhAGbWyj24kH7lzmC4hmsSiOHBm/Jebxz9uyGGb+mXmbPoZWjIKvVBHJaKcu7
Sender: "qperret via sendgmr" <qperret@r2d2-qp.c.googlers.com>
X-Received: from r2d2-qp.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:1652])
 (user=qperret job=sendgmr) by 2002:ad4:5491:: with SMTP id
 q17mr11657655qvy.62.1610711150448; Fri, 15 Jan 2021 03:45:50 -0800 (PST)
Date:   Fri, 15 Jan 2021 11:45:43 +0000
In-Reply-To: <20210115114544.1830068-1-qperret@google.com>
Message-Id: <20210115114544.1830068-2-qperret@google.com>
Mime-Version: 1.0
References: <20210115114544.1830068-1-qperret@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 1/2] fdt: Properly handle "no-map" field in the memory region
From:   Quentin Perret <qperret@google.com>
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        drinkcat@chromium.org, swboyd@chromium.org, f.fainelli@gmail.com,
        karahmed@amazon.de, kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: KarimAllah Ahmed <karahmed@amazon.de>

Mark the memory region with NOMAP flag instead of completely removing it
from the memory blocks. That makes the FDT handling consistent with the EFI
memory map handling.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: KarimAllah Ahmed <karahmed@amazon.de>
Signed-off-by: Quentin Perret <qperret@google.com>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index feb0f2d67fc5..427b534d60d2 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -1147,7 +1147,7 @@ int __init __weak early_init_dt_reserve_memory_arch(phys_addr_t base,
 					phys_addr_t size, bool nomap)
 {
 	if (nomap)
-		return memblock_remove(base, size);
+		return memblock_mark_nomap(base, size);
 	return memblock_reserve(base, size);
 }
 
-- 
2.30.0.284.gd98b1dd5eaa7-goog

