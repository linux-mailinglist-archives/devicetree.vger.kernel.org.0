Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9302EEAF9
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 02:37:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729466AbhAHBhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 20:37:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728105AbhAHBhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 20:37:00 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2528C0612F6
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 17:36:19 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id 4so4834530plk.5
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 17:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=Y1J3DUdWcOQx0bVUfuDnHN7QMPqvsEtCtXv4CCI/gFU=;
        b=We21GKe5c5ppvnQ5+V38BX7N59HJaXyZsmnSGyVb9vsePRAy0GYDEpFLfzJV2P/64U
         G1LQ4IfjlcpaNkahgKsq/VBl8dJvlvTT9W55gtIhXSDT1SlLL6ULEs/6Xb9ifjQVfmZ3
         W+XsaM+OCL/DBmLRMvmvn8hJSLGSZj4fi9b91Q6CHepgQn+dpF98gLfBykCvZNA5aByP
         lhDkvbNxaYcTQgnBJdE3HHi2jHDSdXnYfR9mNdTfIKBHwSI3ypZFvvtFFzK0k/XDsq9r
         V+auQg9QfQtpGJ4Rb5m2mMZFWFDMVqaPUgerlEf7WLVzZ3NUTIVkrgCc1CayrVy/lpVJ
         fcwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=Y1J3DUdWcOQx0bVUfuDnHN7QMPqvsEtCtXv4CCI/gFU=;
        b=gLRGchnCo09AYGN9/mlzPNNnJu9T1nhNQiq8iDw8CTuf3uMVdLcAhVMrCUGqK5KwYy
         KDg9DDh8tG6ur6FYLUPnePRFrNnpHcESNFUAkfLnJksAjDo3Y12AWPyFpVl6Th98C7Tm
         tvKR3ziS1kk94grqUKqZr7hUFuivBiyBBKWBhnNRiJu0DGT5tnFkkgt0opegYoQCl8hY
         d3axrgrUD24OIYt973AL6/T3t6p6QRM68IPN/R9pb+FZu6hfwuIIMR4kVd2rrKI32sfJ
         LTIvbnAxjMl4SioTpToORpkohhjcrmuK5HoRNSCQhZVcfWJlE0MkwsYHs32lL8RcYMtI
         A6oA==
X-Gm-Message-State: AOAM530ZOzxnKUQn2XvL3do3UKNnIzJyyNfqVe/WepaxZjeV4N31U3Ye
        awOWiXrb6q10iidKiDYoiek4Ig==
X-Google-Smtp-Source: ABdhPJwTQMFJXBOd42SE6blUoubNT5H3NxGBzcRFMuHBbDHQRNAJzbKlAUEqkL9CnagoK8T0LCnxRA==
X-Received: by 2002:a17:90a:5793:: with SMTP id g19mr1274178pji.32.1610069779086;
        Thu, 07 Jan 2021 17:36:19 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id c18sm6735984pfj.200.2021.01.07.17.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 17:36:18 -0800 (PST)
Date:   Thu, 07 Jan 2021 17:36:18 -0800 (PST)
X-Google-Original-Date: Thu, 07 Jan 2021 17:28:44 PST (-0800)
Subject:     Re: [PATCH v3 0/2] riscv: sifive_l2_cache: Add support for SiFive FU740 SoC
In-Reply-To: <1607596083-81480-1-git-send-email-yash.shah@sifive.com>
CC:     linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, bp@suse.de, anup@brainfault.org,
        Jonathan.Cameron@huawei.com, wsa@kernel.org, sam@ravnborg.org,
        aou@eecs.berkeley.edu, Paul Walmsley <paul.walmsley@sifive.com>,
        robh+dt@kernel.org, sagar.kadam@sifive.com,
        sachin.ghadi@sifive.com, yash.shah@sifive.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     yash.shah@sifive.com
Message-ID: <mhng-18249e76-3632-4347-b9f1-73e1cc39683a@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Dec 2020 02:28:01 PST (-0800), yash.shah@sifive.com wrote:
> Add support for additional interrupt present in SiFive FU740 chip.
>
> Changes:
> v3:
> - Rename the subject line of dt-binding patch
> - Add the additional interrupt "DirFail" as the last entry so as to keep
>   the order of all previous index same.
>
> v2:
> - Changes as per Rob Herring's request on v1
>
> Yash Shah (2):
>   dt-bindings: riscv: Update l2 cache DT documentation to add support
>     for SiFive FU740
>   RISC-V: sifive_l2_cache: Update L2 cache driver to support SiFive
>     FU740
>
>  .../devicetree/bindings/riscv/sifive-l2-cache.yaml | 34 +++++++++++++++++++---
>  drivers/soc/sifive/sifive_l2_cache.c               | 27 +++++++++++++++--
>  2 files changed, 54 insertions(+), 7 deletions(-)

Thanks, these are on for-next.
