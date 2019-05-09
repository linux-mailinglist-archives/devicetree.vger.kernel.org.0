Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 30D21194F9
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 23:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726964AbfEIVzl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 17:55:41 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:40563 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726882AbfEIVzk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 17:55:40 -0400
Received: by mail-pf1-f193.google.com with SMTP id u17so2005244pfn.7
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 14:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZUfa8VfplcVybbgYX3pUwGODgqQ87P5srjgcZzGd6CU=;
        b=K3U7+e+IKVuUTjJHq/Hov2QZBkFVimUxfcd14NjisQEhDHLqgayikNFnkVnjQFmnXl
         /akCC0oFq2uVmtztdlUipA36q4u9QJfYf75qsjWND/6HiRZcVErmUPX+QsOykovmBvTh
         Lu2s8dtMLypq/bbf3+foNDTOvVxlYMWmy2P98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUfa8VfplcVybbgYX3pUwGODgqQ87P5srjgcZzGd6CU=;
        b=HK2Mv+UPbeI/zGmXQnS2y6cRPeqQsonyf3HTC/ScfVu+N5w43bd6JboIKVRSHXA3Sr
         m0QJmnOOiVLUNpq0CtFvAK+ZDv+DNLwv843VpceBtFMzIxLgVD8yfiwICmCLRHl2ketR
         rW7D44ne/hRKVe8QsdTucVvduOPR923PMg1imv3/S09SvRQlJ8B4iikGzITZwcm7lKQS
         lxgRE6kc/Z69PTr/Pl0omP/XrS1S1/aEoJr+2c46qg82koZXVHt6Xw1rjUBJeuV/5B7T
         TxMMhyfOOMdxBUrlSfNnjAw6oQo724w1ON677zpMGVMcD5fcFBe4BB5BNjR8HgqmLWBQ
         AoSA==
X-Gm-Message-State: APjAAAWhfzxyXm7zGI7UM6UUEaoRuzvXnPD6OaA6fgHWqIJDwO89CS/f
        kc5Y7p2Qc5/oX41+ymjW1qU08SeCWbeyew==
X-Google-Smtp-Source: APXvYqxoApZySaqgSVyIo//iSGJtRJzMW561OSbWhIZRPwED1AvUlJTAWkwaaDTGuwNbjF0kj4ZKXQ==
X-Received: by 2002:a62:544:: with SMTP id 65mr8679299pff.46.1557438940386;
        Thu, 09 May 2019 14:55:40 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id l65sm7934163pfb.7.2019.05.09.14.55.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 14:55:39 -0700 (PDT)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Hsin-Yi Wang <hsinyi@chromium.org>
Subject: [PATCH 2/2] of/fdt: Mark initial_boot_params as __ro_after_init
Date:   Thu,  9 May 2019 14:55:38 -0700
Message-Id: <20190509215538.93346-2-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190509215538.93346-1-swboyd@chromium.org>
References: <20190509215538.93346-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The FDT pointer, i.e. initial_boot_params, shouldn't be changed after
init. It's only set by boot code and then the only user of the FDT is
the raw sysfs reading API. Mark this pointer with __ro_after_init so
that the pointer can't be changed after init.

Cc: Hsin-Yi Wang <hsinyi@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 918098c9f72a..3d36b5afd9bd 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -516,7 +516,7 @@ EXPORT_SYMBOL_GPL(of_fdt_unflatten_tree);
 int __initdata dt_root_addr_cells;
 int __initdata dt_root_size_cells;
 
-void *initial_boot_params;
+void *initial_boot_params __ro_after_init;
 
 #ifdef CONFIG_OF_EARLY_FLATTREE
 
-- 
Sent by a computer through tubes

