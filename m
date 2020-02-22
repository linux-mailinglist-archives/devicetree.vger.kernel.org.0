Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CA5DE168BB8
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2020 02:41:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727984AbgBVBk6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 20:40:58 -0500
Received: from mail-pj1-f73.google.com ([209.85.216.73]:39352 "EHLO
        mail-pj1-f73.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727994AbgBVBk5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 20:40:57 -0500
Received: by mail-pj1-f73.google.com with SMTP id kx17so2018006pjb.4
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2020 17:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=dLJUCpK8J7QSv9pjJWTn5rjODL1aEvnJG2mu5Q6XKZg=;
        b=e/G2izCtRWiEex8vSlfihQZwWbRD38v38ILG4l4r0PBFW4nViuSsYy2XUvAta7Lg+H
         iwqAKMJhoSdeJvTXWCRNXcpv/oibXCTVqKiCZAtcZ/10EL22JqVpY311ZGjdWeCZ6TWl
         8dyvPrRs3TcgxxUs+km0ytcbrL8LP1G4CqJEc+oX/d3UX0nhbrwIbgTzLHjrUY9Qv0iT
         vMKmD8aus0eCRycaqJkgLLOPimbsn9TPbDIsjZfKcyaWKw7f7WfeukqDuKNG4mncrK8V
         XMYT45YusmnMzgHTM21b3xNOrzprNYN46RRF/MK+TTqfmcgndJlUtph86LKTOtFenFaQ
         uNyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=dLJUCpK8J7QSv9pjJWTn5rjODL1aEvnJG2mu5Q6XKZg=;
        b=I8Rsa5VpgINpAgYyhp2k09Gw7CCF0jGfHJZWarIe8UsllAYkIn/UDdoNEfXjudhj0w
         uqvbu1oC5J6FNhYqQKquwWnThNCVTqH6SYEIy4CHN8Qq0IPtWQwPcZCuVxcEsAG/k7Jt
         FbblE4u9Ku1zd4oOMZh5W7nlV1bVxm660r6AW2kIOu+aQhjo/fRtRZCZdeSloMDmIZrf
         7tNW1+WLrDxFgRCIcWDY5d6nTq2LK418h+hW34e+SGuBMDwtZVF5jGTPddo0btiNrWPX
         dR+jQi9JTW3sZVD2z2BFFXvAAK/VzzwQ9xIub7gOU7mYGqf454AeTwcsuUfUxybTVAtu
         vw9w==
X-Gm-Message-State: APjAAAVWz+9cxMn66Ie9a5YliIy1ag6qhtuSXLBst82Vg2iXG2bb5ilI
        rDfV5s+pdygucTEYm34nwlGJFul/TwdygQs=
X-Google-Smtp-Source: APXvYqzesfXR7lGxs6e5jxSQUmuI+4SNQj8u282WnFoEoOOntmofH4HAOCXHvIB2dz4XXYHvKMvIdKicGMtW4q8=
X-Received: by 2002:a63:be48:: with SMTP id g8mr42416014pgo.23.1582335655195;
 Fri, 21 Feb 2020 17:40:55 -0800 (PST)
Date:   Fri, 21 Feb 2020 17:40:37 -0800
In-Reply-To: <20200222014038.180923-1-saravanak@google.com>
Message-Id: <20200222014038.180923-5-saravanak@google.com>
Mime-Version: 1.0
References: <20200222014038.180923-1-saravanak@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v1 4/5] of: property: Start using fw_devlink_get_flags()
From:   Saravana Kannan <saravanak@google.com>
To:     Jonathan Corbet <corbet@lwn.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-efi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fw_devlink_get_flags() provides the right flags to use when creating
mandatory device links derived from information provided by the
firmware. So, use that.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index e851c57a15b0..15fc9315f1a7 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1262,7 +1262,7 @@ static int of_link_property(struct device *dev, struct device_node *con_np,
 	u32 dl_flags;
 
 	if (dev->of_node == con_np)
-		dl_flags = DL_FLAG_AUTOPROBE_CONSUMER;
+		dl_flags = fw_devlink_get_flags();
 	else
 		dl_flags = DL_FLAG_SYNC_STATE_ONLY;
 
-- 
2.25.0.265.gbab2e86ba0-goog

