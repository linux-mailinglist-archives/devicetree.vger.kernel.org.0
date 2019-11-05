Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0D072EF5C0
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2019 07:50:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387734AbfKEGuP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Nov 2019 01:50:15 -0500
Received: from mail-pg1-f201.google.com ([209.85.215.201]:56612 "EHLO
        mail-pg1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387569AbfKEGuO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Nov 2019 01:50:14 -0500
Received: by mail-pg1-f201.google.com with SMTP id u4so14491461pgp.23
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2019 22:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=uOGehhWZgUVKoLCu9uPvy6GNYBcrgHwxU8kr8wE+agE=;
        b=kNXbtHFqBug+/oU8bSdHAs+qVLw4TxE9aiRKiowEJ21d0hfBCS6YHf/kqC5JAviop6
         ZELVuK1m500L8/nK08PErToeZYzfk4mHeZo5UvmKYPXkb9eLidNex7+SYhvOC953oNn3
         b+Kih+0HggJ4LjnpQwgSVisfSXxky5OPZuh/cz7u8F7X06dRI44sQVjACCIHmzada2gV
         9NIQUNHYW/HeRo6MIc5ur9zwHv/Ku4B0xkGa4k9vNz6JjEeJcDmet/pdaF28PEPRFNIu
         bNVKzrAMbpw4Kvgl0/yKVBxhLV9nzB7ZyMovUx3BILktQy4L+ADiidSYmMaGSKwlvqc3
         UEPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=uOGehhWZgUVKoLCu9uPvy6GNYBcrgHwxU8kr8wE+agE=;
        b=nAzSOVwN9q3gwIPBT+hZlk0v6FYAFKc3Kj2vSUhRtxZd99egg0rwdlCuFnYSMhbKey
         sGOMX9MFgS61RuUXYm4OWCfBKWWPHjrsuIlRivirdnmDwcwRlC4ZoTGElBR72LESZD3l
         vHa2Ql7CDyLjD8rc3VeXjaeXW0dD30jjUNyQuLJzhyr1vJ3Im3Eb6k7bM7cMZQcf/rH4
         0Xza8+fRz3a6q2FZbLtMgGl5NjWCZ8GJJ0lEbXbY3ztCR4hVEk4c+Bx1/Okn00VQwUM6
         Q2q+N/CWV7p1xCXErfaChnzjTUm11zdXOR6L+BZvR2rBu9WnIsxXuFDRCph/iqEz18/P
         GiJA==
X-Gm-Message-State: APjAAAU3LeV5rsXphxUGYtRsqxsre++eqgXaPeWjDv1qIddak1esQDU1
        Ju7pmkPjEaXNxj5mNmLrmsBgP6xPrLw+TS0=
X-Google-Smtp-Source: APXvYqxH7DTIrxXLzr6jLIklHMp5HeuCMdHVPfadC/hCVXWPxQo+eNZe9jARv5mXlPGzx8C3yGjcz4nA9zmOrU8=
X-Received: by 2002:a65:4c41:: with SMTP id l1mr35228412pgr.163.1572936613516;
 Mon, 04 Nov 2019 22:50:13 -0800 (PST)
Date:   Mon,  4 Nov 2019 22:50:00 -0800
In-Reply-To: <20191105065000.50407-1-saravanak@google.com>
Message-Id: <20191105065000.50407-4-saravanak@google.com>
Mime-Version: 1.0
References: <20191105065000.50407-1-saravanak@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v1 3/3] of: property: Add device link support for iommus,
 mboxes and io-channels
From:   Saravana Kannan <saravanak@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for creating device links out of more DT properties.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/of/property.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 812b69a029d1..0fa04692e3cc 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1185,11 +1185,17 @@ struct supplier_bindings {
 
 DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
 DEFINE_SIMPLE_PROP(interconnects, "interconnects", "#interconnect-cells")
+DEFINE_SIMPLE_PROP(iommus, "iommus", "#iommu-cells")
+DEFINE_SIMPLE_PROP(mboxes, "mboxes", "#mbox-cells")
+DEFINE_SIMPLE_PROP(io_channels, "io-channel", "#io-channel-cells")
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 
 static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_clocks, },
 	{ .parse_prop = parse_interconnects, },
+	{ .parse_prop = parse_iommus, },
+	{ .parse_prop = parse_mboxes, },
+	{ .parse_prop = parse_io_channels, },
 	{ .parse_prop = parse_regulators, },
 	{}
 };
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

