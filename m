Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C24054A5697
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:23:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233981AbiBAFXK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:23:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234082AbiBAFU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:59 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 324D0C0617AA
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:52 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id g15-20020a9d6b0f000000b005a062b0dc12so15162615otp.4
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QCCppAscP/KIGwl1JCLJN5liCcMT30u1TqUecRLuuZk=;
        b=ICVa3ObG2poOxz2N8URYem+JfD02Eg4WelUkOiUAbodduvFbvIxPp3WAemXDKMNwJu
         aO0ea+0TBaq4itnPydmKaNU/YmzwjGXZaQq7XowAlX4jvJ2hSLB9QAl/Fk2r2oADjPnU
         5yAQ0uKlaSvxM0JgsYOZIymJn32lrz/5ug2Qtox/NrADlOXLZ94Hb6KDKRgl6q9SJFxR
         EjzLOeWYpSUBdz/voXZUAlMq+l2nTO6gEJ4Spm6Wy3Em/1cDL62Fov0gmhXZcUb4f2gQ
         7HIY7XcOK9RUCVOkIEYNACckDEBuCJNP5NNyWeKat0DoN5D3IwC3DMgjr1KqYM+vkCEa
         dTZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QCCppAscP/KIGwl1JCLJN5liCcMT30u1TqUecRLuuZk=;
        b=TrzaWjBkAd+ksUTmpghNE9+F0/jbX2ocXrmxUA2/ith3+YWbSj4pLTlnKvu7C4QLD9
         j6K2uCAcU9qjB5x2TvphqPDAKcSGNRqmJ+12FmYCe42mW9w2m2x+F+SK9XEmH/E8EW8A
         EN6VvEmLQtlUdqDThymQ4oHLFYYerXnbkk7Po7iaG+tOeOvyvlekhoeHY3cKKv006lDe
         kbs+st95TjGPMXhxVag0atTenJXC7Bhv+WerTAyDScwFswuToTDjTrgQNZkGPKLDzvVi
         gJQAG+efhzwL/Kn6Z3IgGHZO3h4JYhkQ8uNYiHPkVCuyRa4Qb0z6bfifK1urFv4Ndllf
         krfQ==
X-Gm-Message-State: AOAM530N1cSOcVzOomZaJEHfhOsoI+DJnjRyhQ6FZwnSqkFcuO9z42Ob
        EKYEfQn/7doIbqrhOz2sr2NzFw==
X-Google-Smtp-Source: ABdhPJx+TBtU7wXSTDxavLIS3+39W1LCovnJUUwk64VK0Zthdm4jh6mS5bTZwW6JIiQDUCvfhDDX7Q==
X-Received: by 2002:a9d:6f11:: with SMTP id n17mr5920242otq.228.1643692851587;
        Mon, 31 Jan 2022 21:20:51 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:51 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: qcom: Fix msm8998 cache nodes
Date:   Mon, 31 Jan 2022 23:20:01 -0600
Message-Id: <164369277343.3095904.13862409515453016955.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217211136.3536443-1-robh@kernel.org>
References: <20211217211136.3536443-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Dec 2021 15:11:36 -0600, Rob Herring wrote:
> The msm8998 cache nodes have some issues. First, L1 caches are described
> within cpu nodes, not as separate nodes. The 'next-level-cache' property
> is of course in the correct location, otherwise the cache hierarchy
> walking would not work. Remove all the L1 cache nodes.
> 
> Second, 'arm,arch-cache' is not a documented compatible string. "cache"
> is a sufficient compatible string for the Arm architected caches.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: qcom: Fix msm8998 cache nodes
      commit: fad35efa75a22050bb4b7cace8c1c9dd4fc70d16

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
