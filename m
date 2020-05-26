Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45F141C0EEB
	for <lists+devicetree@lfdr.de>; Fri,  1 May 2020 09:40:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728333AbgEAHkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 May 2020 03:40:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728293AbgEAHkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 May 2020 03:40:04 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF77DC035494
        for <devicetree@vger.kernel.org>; Fri,  1 May 2020 00:40:03 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id t16so3403804plo.7
        for <devicetree@vger.kernel.org>; Fri, 01 May 2020 00:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NSH9BerjJoV88xjF7QVK1SklBZqxZKa42SGy8GT/SY0=;
        b=gMfRkU6y7H6ig9SB1voFB4Yprbz40Y65m2Mu8m2ApDv+jlMCQ2E6B9PMumov1+nGbF
         45e9GP/a2A50GpZUNhd4HGTouy7LlSl5VzwQlUCMs1AXhJXwuMJcLarUGrUkRjxNS0+s
         CyzTAHjlmacCveMfha1bTwwkBCOPfUE7uuSPucD0Z+vxu1J/f4pWD34fBtGcMp6CN5j0
         WMzgYCWeYRnk5hwW12qNNwjCMvrO4G4QzAW5V1SgWMWdDrFL1f6Szn68URsUfcJpdrLj
         vJQtM0xsiQq2qKPoVohGRHexTuBl0Itj2tNgGnXC3UD9PZdIeoJ518WZvDOK9dLvUKuk
         HzRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NSH9BerjJoV88xjF7QVK1SklBZqxZKa42SGy8GT/SY0=;
        b=UR62PaTWFuPwgjpKGe2Iv3QD+h/B/7QkWh4ySiZ4GuMzZbFfK+0kNDx8Mt1dpdpask
         pOUXRkMAL7fc0IAtYwDdjDrSo+yUyOtz2N0WruyZ4ukB2XtsAGTnvzVcexOKtXCNl6C+
         /boXiC5YRqKr6h5xrpMnshwyz0CYMljuNVLYSQtLGojNNAGOoJ7uFjwpdypDBZcOHhTC
         Ej7SK48eDeVXcHR4FI6w+vcxJR4CAHMpQAr4i/do+jmCyLtFpDLMTVjigJHwBBR/Ljfw
         EYEKzWvnG4LqMTUTrV+h0EQ3E0BppSk6F2R/fHirRllxEwfoES4hf8iv9DEEFQ5XBfbx
         eX5Q==
X-Gm-Message-State: AGi0PubA7H1zDuGS9Sl6ekgx1D4oDdQvKvXE4VtMAUiubAgE9DFGxwE7
        y7w8oqpTNTQA+inDElP2oh/tdw==
X-Google-Smtp-Source: APiQypJx7E4+GSzc/77OGnxoI4XuIbUstaIsftZ+TRzVjzHs+hgtNb6KovPmKD4Pj3wjrWGJONPmuw==
X-Received: by 2002:a17:90a:734b:: with SMTP id j11mr3082377pjs.108.1588318803469;
        Fri, 01 May 2020 00:40:03 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id w12sm1557841pfq.133.2020.05.01.00.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2020 00:40:03 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     John Stultz <john.stultz@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        "Andrew F. Davis" <afd@ti.com>,
        Benjamin Gaignard <benjamin.gaignard@linaro.org>,
        Liam Mark <lmark@codeaurora.org>,
        Pratik Patel <pratikp@codeaurora.org>,
        Laura Abbott <labbott@redhat.com>,
        Brian Starkey <Brian.Starkey@arm.com>,
        Chenbo Feng <fengc@google.com>,
        Alistair Strachan <astrachan@google.com>,
        Sandeep Patil <sspatil@google.com>,
        Hridya Valsaraju <hridya@google.com>,
        Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-mm@kvack.org
Subject: [RFC][PATCH 1/4] devicetree: bindings: Add linux,cma-heap tag for reserved memory
Date:   Fri,  1 May 2020 07:39:46 +0000
Message-Id: <20200501073949.120396-2-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501073949.120396-1-john.stultz@linaro.org>
References: <20200501073949.120396-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds a linux,cma-heap property for CMA reserved memory
regions, which will be used to allow the region to be exposed via
the DMA-BUF Heaps interface

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: "Andrew F. Davis" <afd@ti.com>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Liam Mark <lmark@codeaurora.org>
Cc: Pratik Patel <pratikp@codeaurora.org>
Cc: Laura Abbott <labbott@redhat.com>
Cc: Brian Starkey <Brian.Starkey@arm.com>
Cc: Chenbo Feng <fengc@google.com>
Cc: Alistair Strachan <astrachan@google.com>
Cc: Sandeep Patil <sspatil@google.com>
Cc: Hridya Valsaraju <hridya@google.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: linux-mm@kvack.org
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 .../devicetree/bindings/reserved-memory/reserved-memory.txt    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
index bac4afa3b197..e97b6a4c3bc0 100644
--- a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
+++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
@@ -68,6 +68,9 @@ Linux implementation note:
 - If a "linux,cma-default" property is present, then Linux will use the
   region for the default pool of the contiguous memory allocator.
 
+- If a "linux,cma-heap" property is present, then Linux will expose the
+  the CMA region via the DMA-BUF Heaps interface.
+
 - If a "linux,dma-default" property is present, then Linux will use the
   region for the default pool of the consistent DMA allocator.
 
-- 
2.17.1

