Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DED94F1B50
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358791AbiDDVUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:20:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380002AbiDDShn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 14:37:43 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4B0131376
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 11:35:46 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id m12-20020a17090b068c00b001cabe30a98dso114140pjz.4
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 11:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SCp4mVrGK9ZsWCmLJkrdOvupR6arWpkjuqC9IZpMSRA=;
        b=O5KayaPJRb1qekALNpHwj4xw3kDXJCoYHwtoOZYyw2Jkv2HrqkD+WmwTQA3SNYtyWC
         qcUHpyEOeLBw6PNSLGl4qqYzLIILHNiHJS7wNcW9mQhEc786ed313YfUcm22I3AXSogG
         VpfIrwK605CM6Sd9Ulvfn6YzPuMRKS/X74HOvAGgK4jd0j2cObag5m4DTfQIn29UyopY
         woer1YkBaI6tvSwrd49n3Zw4TJRXw7PJeLO/TZ262TqxSfqUklsN+KHxbKQDoDF1nouZ
         Q3CP9rJd4a5KrGd6TIONbNO/5Qi1xnhoz21yYvAqsKdB85sFtR5XKX0ZfWJFvedNuoH4
         eRvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SCp4mVrGK9ZsWCmLJkrdOvupR6arWpkjuqC9IZpMSRA=;
        b=HxYI8mavDLp6PA29zFpx/937yfWZlfBz2f+zd5e6AkD+u1S9zRWUlqdzvru4rFEIAG
         5Wp8heGAyUHp4gnlSbmWtAC4OobG2XtIH4DhMBP2tt8bWo5LnpPOYriXmyp5oRD1GzcC
         qjg0Ef1VT5ROeODYbRrVSmdCpgAC/oYSmXHMjVC/wHv3jlEGMSZ2jQFuFS6CJXi6HuDL
         CHHBjucZUGC6Si0hTqoyVDlofjV/fS2eJCLUHo1dLS3w3HnKAqUfo62K6H5tWJZSn7T/
         P+s0lqIv+d7yQb1V3zZM6HM9JKIxNJI2L7DoQGIld6rsgxbGEwh/VheFoaP6/YgYfGgn
         IgUg==
X-Gm-Message-State: AOAM531XHssYETIohRmGoUEKotOE5URIvo5y/DGUactOUMd7CnuFuRKl
        XQUWTXUPul9tlaaHN8oglCvy2h16PGk=
X-Google-Smtp-Source: ABdhPJw8TFbtASFQecyffCfnFq946JFKzqFE9NjmBx4zS1Q5PkyTTyRDDur+8PVDn2ZugPd6vNsYvA==
X-Received: by 2002:a17:90b:4a47:b0:1c6:42c6:fef2 with SMTP id lb7-20020a17090b4a4700b001c642c6fef2mr517699pjb.147.1649097346435;
        Mon, 04 Apr 2022 11:35:46 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id i128-20020a639d86000000b00381f29d87aasm11112219pgd.92.2022.04.04.11.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 11:35:45 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] ARM: dts: BCM5301X: Fix DTC warning for NAND node
Date:   Mon,  4 Apr 2022 11:35:43 -0700
Message-Id: <20220404183543.2316681-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401102002.15765-1-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri,  1 Apr 2022 13:19:58 +0300, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> Remove the unnecessary #address-cells and #size-cells properties on the
> nand@0 node to fix the warning below.
> 
> Warning (avoid_unnecessary_addr_size): /nand-controller@18028000/nand@0: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
