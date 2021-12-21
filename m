Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C108F47BD10
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 10:42:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236478AbhLUJmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 04:42:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231185AbhLUJmM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 04:42:12 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED974C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 01:42:11 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o19-20020a1c7513000000b0033a93202467so1654627wmc.2
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 01:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=z1TZscSTdfeoTN+rbE+EnIAa34sPklQbO0+nPYIjMM8=;
        b=Hk3Wc2CRMeXhPNMDBnLbb/9dUz3lTwWfPb6+PiVpEmYbKOTov+GQ/pc9B+Zww+q7Xu
         eaJnd65ZO/SL9wxPSosiYL1zo/SIoahyAuXaBttG/VtNYIwXC32jEgn34PInJ6nsKILo
         BS+snXU1YeOkfn0AGJNsUy6tpjIac/J+cUvygd9ci7QNRLtgUA5HD+UojzPPvGxtp7ea
         UAAWpDlVkpO8YaFu4v4lt70LxK/TljvHpyuROsIap0i076mYe4hlhJizaB36CSE4Z8pV
         RhdzE9U2ilD+fx1gHVEBknRoLkwQcCm67Wb6VnYO6N997Pd7Oe2oAbaL/XPCxTjFFt5+
         DW0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=z1TZscSTdfeoTN+rbE+EnIAa34sPklQbO0+nPYIjMM8=;
        b=aPWEkFDxNHv9qmhhRIQ2ACKYzVxLPfIGGcPWMrsG1fmes8NqJxOqXAUxFdzv6hUNYM
         fq5hH4m68hEkeNIbXXBFT4a//bAmspDAL5NtdnS+n4ZHfrFvE58UeaPFGjWOi4jI3168
         LGdgun2yg0Rsa47vsgYgGxasBHOF/xEJTr9Yte8oiaRS7+vhfBrlEl64KkHvIHbVq9h6
         GQ6Wp4zYBKfs3QpWPG6jGU7DIU+0XLD3h6AU+mNpYlCyH+gBTBSAQOqsEZYiDll34MRK
         5lQypcUEUcWMGGWMj5zbhoOgEFsRQp4D+uQMF2VpuvGNTX+B9BWujkIF//l1kiUQH827
         Ly3A==
X-Gm-Message-State: AOAM531dmKHzqbpjKnzwAgH3NZlt4hH2pZqaJwCYpoR4i8sNb4bLzBzI
        G+SEtMu2qWXRkqVyahLRq6N6SQ==
X-Google-Smtp-Source: ABdhPJxd8LBIzc0eEi6wUlWNN88/9JlZAIVMnYbN95LRErIhZmO5I9REj+rrEnLArVOYVrJ8Jb6U+A==
X-Received: by 2002:a05:600c:2295:: with SMTP id 21mr1903119wmf.187.1640079730614;
        Tue, 21 Dec 2021 01:42:10 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id 9sm417923wrz.90.2021.12.21.01.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 01:42:10 -0800 (PST)
Date:   Tue, 21 Dec 2021 09:42:08 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: Add Freecom system controller
Message-ID: <YcGhcImIRV2Ylmz3@google.com>
References: <20211122102210.3137559-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211122102210.3137559-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Nov 2021, Linus Walleij wrote:

> This adds a DT binding for the Freecom FSG3 system controller
> found at CS2 in the Freecom FSG3 Intel IXP42x-based router.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
