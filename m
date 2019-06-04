Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5791E34A90
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 16:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727515AbfFDOi4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 10:38:56 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:35091 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727470AbfFDOi4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 10:38:56 -0400
Received: by mail-wm1-f68.google.com with SMTP id c6so352528wml.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 07:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=8yVp8LW/5tvDYIdw2ZjGi4ruSvPsT4gaU3KQr2PELI4=;
        b=A7Kqt8FA/PZlIOCWpIHikU1GTW15SgXKBI4w+GU2YVXQrsV5zxKoLF/CNIHmi/wveq
         JjUw4ZVMXLxXu0efAKQUqxDpWj6q6qWrZx3Ti20klLgsB/Rv8hNLgRL1R23KwIhPM0Vz
         hQvfg8kFzMZ2Gm6kl74A7T/JIsM55Jy6eBAGX3dVxxuv3o7b4fvenKXHlAzfic5292ip
         LSSA9xjv4P2N+g4wXhCwkoP1NYwvmzrsuKWHDOf3UGYqFuBqHc2pKg787buWRZi+hXsO
         HNkPeJ/Q41f4bF4uDFj4XYlrQuEuuvtI7SePznEdEu5Mnx/cFCyyBa8GskLwLc/FFQtr
         zgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=8yVp8LW/5tvDYIdw2ZjGi4ruSvPsT4gaU3KQr2PELI4=;
        b=dclRfkkW8jhbunWL7Wfs8Q0xM9HNTNSEivEJkRpTaex42d15jCCkD4jbFSq0+n119Q
         CiCMpk/MkgfJwoWrHIFQcL/DMRZEGDUnKGX99ThZHBdjJW5gl5r3NyUSjGE9mWPgtLr8
         2TVFIMiNY5PQvblLbUFSa8xlKUv+ikY/PpA6ENcxTVpGaZjt65xsynvBdYNn13WxMb43
         TnEV9diUJZdQuv+VMPTn6h4RFaBe4g5f3gGsukD6IPIbrtxTLdbmc/38FYlS/P7m3sRM
         biCX4bsh5jQbSKk1WwMAOt2ZkGJaTT3c/c994REQyKf0WCbnznlDWFsnIufmNdp4ua+Y
         lCBw==
X-Gm-Message-State: APjAAAVUKpABcRzaptf9L250frFi+diKrW5IAfMRiM7nHFvHgQ8VRtsO
        8DKjc3/UHJnin3s1RKhRUZuNjA==
X-Google-Smtp-Source: APXvYqxRW4nwf4GpDLyd87BakAfZ89olYzNbTVRR1tlK/pY6mlbd9mILPL7WAvRnQL8m2ze14qkPFg==
X-Received: by 2002:a7b:ce01:: with SMTP id m1mr8827610wmc.1.1559659134003;
        Tue, 04 Jun 2019 07:38:54 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id s14sm15595662wrw.10.2019.06.04.07.38.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jun 2019 07:38:53 -0700 (PDT)
From:   Loys Ollivier <lollivier@baylibre.com>
To:     Paul Walmsley <paul.walmsley@sifive.com>,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Paul Walmsley <paul@pwsan.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Palmer Dabbelt <palmer@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        ShihPo Hung <shihpo.hung@sifive.com>
Subject: Re: [PATCH v3 4/5] riscv: dts: add initial support for the SiFive FU540-C000 SoC
In-Reply-To: <20190602080500.31700-5-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com> <20190602080500.31700-5-paul.walmsley@sifive.com>
Date:   Tue, 04 Jun 2019 16:38:51 +0200
Message-ID: <86sgsph0uc.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 02 Jun 2019 at 01:04, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Add initial support for the SiFive FU540-C000 SoC.  This is a 28nm SoC
> based around the SiFive U54-MC core complex and a TileLink
> interconnect.
>
> This file is expected to grow as more device drivers are added to the
> kernel.
>
> This patch includes a fix to the QSPI memory map due to a
> documentation bug, found by ShihPo Hung <shihpo.hung@sifive.com>, adds
> entries for the I2C controller, and merges all DT changes that
> formerly were made dynamically by the riscv-pk BBL proxy kernel.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
Tested-by: Loys Ollivier <lollivier@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: ShihPo Hung <shihpo.hung@sifive.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
