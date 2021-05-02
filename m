Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3297370DB3
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 17:51:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231130AbhEBPwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 11:52:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEBPwR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 11:52:17 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2892BC06174A
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 08:51:26 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id b27so2442486pfp.9
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 08:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ylfCeHsxzm7+qMIuG3CuLaOOFOQEFAr8G3uSsS9MSlM=;
        b=ZbPdzs1jPZqixay2NzE4uperwWyev4kMp6It1vtn1LNSKynZfDTMsX41KsziJqVDDf
         XglTnwYQeOQKq3le145Hzo5v/M4RZqAwA2vAukHVh6UwZx+PGgGlvPotSpGwcH20YMss
         KhyVYfZ0SJQjiqSwy1CeIuLrVb4jAaNyFAqVxCsYK8eS/5i+2AUoq6P81MD1NL5w2kEn
         kKZKjPBostzGGhr3Ej7NC5G0YLkEUPimkMt3GiAAKIse1ZDwnHBh6+qtTEYGI2xYLJcd
         gt00eeCc+z4KXgkBpcFTVYF3S8pMMqE00kkOzQUqWe0+FL+D354uIhqcFOVXckqX00Qy
         rGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ylfCeHsxzm7+qMIuG3CuLaOOFOQEFAr8G3uSsS9MSlM=;
        b=Mm2PMKK/s3QXhL01ZWALrMuO/zs0ARTc/oQQklqLKw24rmv+Age9Tu8M7Z9+JlmMLp
         euLkpfLwI7Q00dRKW+dBr0aPW2GeMOQMmqQxmV8W4tFKajepZFO/ycbrxNv3OOF/wULj
         k3CEWI8nX+kwMTOwusawSf5AyWBFfKQE81fg2N0OP7PxWaUG88O6vji8e+K0yYv/g0Ta
         xzLVWxnUsOqYOKqicUXLBnee3/Z/GZjeD6dIbjZQLJRUn/0UUwctSSoJ5IiVDlhLKZLJ
         ZEagYQnveC9KB3sJUUMdFyNw0tY4MEgaZgAbkiyMLCJnsxHkWz1xEQPeyTphhcZmJkPG
         3OGw==
X-Gm-Message-State: AOAM5308rYDp08fiERE9Ndb+FNSEr+oFI1jRbC2xzcJK3zsRfYTMO9m2
        YgRkKJha0tR4/hQxirE2ndM=
X-Google-Smtp-Source: ABdhPJxTEpqiHZtxGB22xno7IhXBafDpPwSscM/DreFZMSnlkp8IYT2YpSh+xUQxbBRFQKyRHTBc4w==
X-Received: by 2002:a62:63c7:0:b029:251:4c9a:5744 with SMTP id x190-20020a6263c70000b02902514c9a5744mr14692187pfb.39.1619970685747;
        Sun, 02 May 2021 08:51:25 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id e5sm7492858pgj.91.2021.05.02.08.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 08:51:25 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux 2/6] ARM: brcmstb: dts: fix NAND nodes names
Date:   Sun,  2 May 2021 08:51:23 -0700
Message-Id: <20210502155123.945275-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210416133753.32756-2-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com> <20210416133753.32756-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Apr 2021 15:37:49 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches nand-controller.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
