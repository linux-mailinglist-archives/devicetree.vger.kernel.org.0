Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 028E031B5B1
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 08:43:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbhBOHmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 02:42:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbhBOHmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 02:42:51 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA12EC061756
        for <devicetree@vger.kernel.org>; Sun, 14 Feb 2021 23:42:10 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id t11so3744576pgu.8
        for <devicetree@vger.kernel.org>; Sun, 14 Feb 2021 23:42:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V5YYk6/rar/i52FpC9KWHNpAlVpOp2WPO0stU2wdP1s=;
        b=rLVQQnntLpVGDR+Wg9ire97NwxE6+omRiztTB8P3B0leyg4z41wrzPAyD+UOLaIRJ/
         KCfX0IDsnZWpoLTppZDVvzbD0XJehRDkpBqvscvGen+M3lIrQy52c9kqBkaWNgXtPDVm
         pJaYY037Qa3EZfUzjKlWh0UzkEeOfX6mRIA4cb6CWUwdWhGLCNhvzCgdygveiGR8ktct
         eyn1KNceFpZ5eu/N2pkSkh/Mbex/7xPrTdmR2J/4m/SBTEfCcKeZhTB1JwAKkJtWw7MZ
         EVuJH0lANe9HJbS+XckL0DPk0l3sLJjIXVLi5yxt49H+KaT8MobOGcEfsuTJpYyOBKOO
         ID3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V5YYk6/rar/i52FpC9KWHNpAlVpOp2WPO0stU2wdP1s=;
        b=DQ3D6rRQRQFKT9YcM3i/TIpwtbJS6LsQCHjApc0Kao4paSj2eezxrNP+0kDwQ1iK4m
         cObCgR+ZxSDaN99LrI2o6vHAXhUtVQYgNrewax1KX4ivPtnwe91aRALuFYA5rrrcP+5c
         100Pll25isnu4jmrCAp5iEBBHFI7e+HBKxLFmy7hmKn+W7P+7B0qdksbsH9aWbH0D9tT
         kxfJjmDUgL9gUadWIoix6lzxYPTNnJKeNhvYG7JpEMIJvaT3y+Im++RHvKdX8OyjXAve
         /IeLv3lPagPOv4hBpK79tVMTKieCZ2zbSjYrY4Aw5zarHKl6Kb4aesGbgt+61/cZb5M/
         qlyw==
X-Gm-Message-State: AOAM531J9t3owZ4BtBfwBw8emgWkdQafl1q+Im/XLzJAu/4KseAEwd3u
        JhgMQxMKLIh6dcYyo5SNU4G6ug==
X-Google-Smtp-Source: ABdhPJxZ/Ed0CV1jGdMreGg3wHJp8CE5r5SzzcTRS8oniGz4uE15dyi/XTtZGhytdYXgTwfGv8UOmg==
X-Received: by 2002:a63:4d4e:: with SMTP id n14mr13880846pgl.37.1613374930251;
        Sun, 14 Feb 2021 23:42:10 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id b12sm18005965pfr.178.2021.02.14.23.42.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2021 23:42:09 -0800 (PST)
Date:   Mon, 15 Feb 2021 13:12:07 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     David Gibson <david@gibson.dropbear.id.au>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Bill Mills <bill.mills@linaro.org>, devicetree@vger.kernel.org,
        Jon Loeliger <loeliger@gmail.com>,
        Devicetree Compiler <devicetree-compiler@vger.kernel.org>
Subject: Re: [DTC][RFC] dtc: Allow better error reporting
Message-ID: <20210215074207.sok4c7lipjewdckx@vireshk-i7>
References: <3950d7da35130a850ba9217ac7bfef781fa850b2.1613042485.git.viresh.kumar@linaro.org>
 <CAL_JsqLfLQe7bxcGYeoSWsBnS+JoagLcOZ-RGS0hbdwjRhfBqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqLfLQe7bxcGYeoSWsBnS+JoagLcOZ-RGS0hbdwjRhfBqA@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11-02-21, 08:22, Rob Herring wrote:
> This needs to go in libfdt.
> 
> The executables can always print, it's the libfdt library that may or
> may not be able to.

Sure, Will add this delta to the patch..

$ gd 3950d7da35130a850ba9217ac7bfef781fa850b2..
diff --git a/dtc.h b/dtc.h
index b8ffec155263..d3e82fb8e3db 100644
--- a/dtc.h
+++ b/dtc.h
@@ -29,12 +29,6 @@
 #define debug(...)
 #endif
 
-#ifdef VERBOSE
-#define dtc_err(fmt, ...)      fprintf(stderr, "DTC: %s: %d: " fmt, __func__, __LINE__, ##__VA_ARGS__)
-#else
-#define dtc_err(fmt, ...)
-#endif
-
 #define DEFAULT_FDT_VERSION    17
 
 /*
diff --git a/fdtoverlay.c b/fdtoverlay.c
index 5f60ce4e4cea..5350af65679f 100644
--- a/fdtoverlay.c
+++ b/fdtoverlay.c
@@ -16,7 +16,6 @@
 
 #include <libfdt.h>
 
-#include "dtc.h"
 #include "util.h"
 
 #define BUF_INCREMENT  65536
diff --git a/libfdt/fdt_overlay.c b/libfdt/fdt_overlay.c
index b24286ac8c6c..17fc6075412f 100644
--- a/libfdt/fdt_overlay.c
+++ b/libfdt/fdt_overlay.c
@@ -10,7 +10,6 @@
 #include <libfdt.h>
 
 #include "libfdt_internal.h"
-#include "../dtc.h"
 
 /**
  * overlay_get_target_phandle - retrieves the target phandle of a fragment
diff --git a/libfdt/libfdt_internal.h b/libfdt/libfdt_internal.h
index 16bda1906a7b..fc7b3fa2eb2a 100644
--- a/libfdt/libfdt_internal.h
+++ b/libfdt/libfdt_internal.h
@@ -7,6 +7,12 @@
  */
 #include <fdt.h>
 
+#ifdef VERBOSE
+#define dtc_err(fmt, ...)      fprintf(stderr, "DTC: %s: %d: " fmt, __func__, __LINE__, ##__VA_ARGS__)
+#else
+#define dtc_err(fmt, ...)
+#endif
+
 #define FDT_ALIGN(x, a)                (((x) + (a) - 1) & ~((a) - 1))
 #define FDT_TAGALIGN(x)                (FDT_ALIGN((x), FDT_TAGSIZE))
 
-- 
viresh
