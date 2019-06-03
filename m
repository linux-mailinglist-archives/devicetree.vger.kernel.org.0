Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DEF6032CFD
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 11:37:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727697AbfFCJhX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 05:37:23 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:55457 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726341AbfFCJhX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 05:37:23 -0400
Received: by mail-wm1-f66.google.com with SMTP id 16so5979426wmg.5
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 02:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=FH8JY4qDdnuY/nkK+8zanlK0WEZXZ9PGux3V1jYWA74=;
        b=u7hHGQ1KPja0igPZ1tQ98KrQncJ3i/kWVJBQMj5wioahCD2F6NNSGXVa6KEe8UAz6Z
         gJQqqSLxLtpuqyJ2//fNfZAl2IPP8Up+FNSoAuOYYbGydJFZwu5Qn7tMmyYEy3PSlDUZ
         SgaP+9CWWIPqZcI+0kXQVzcMv/t0BLomvbmfKtvGE+XdkcY5gQbGk0JxbHH7fUGHaGsq
         UTPwzOBeLs08FKCm/+UhAA7NtHJare8rDbWaYyBpdLvLtmB0NVCj6oyc4I1xWtXXxMtD
         bJtM77uyXBGUbwBE2XKsZAHUssodxR2VHgiE9zICnhQyzLcc84TyZs7gWcmCp/Cbg9TL
         uo8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=FH8JY4qDdnuY/nkK+8zanlK0WEZXZ9PGux3V1jYWA74=;
        b=AIgOuBk2DWk25x/x18eJS64BuzNXZngHl+qnerpb4HiL0wefnqGV01tsKfAceZTG/n
         QBxQE7cisBlJn7Xx7p2HreKyPAKYkEPlmIPYraYSOm0/vz1vQOWATuE528w2d8mc+gfP
         Fbc/uI3S1qhmzhAGZv6aFImUEakom0YieKbkfI2nRSqOWl8cnCns5aCsBaV2snekxzfS
         iwdIshKgkOtZXhZVG9rwKa2poYgk1t1QtHV6Nxi952v9AF2dYbvj1z54T8r1DH4DBJax
         QpuC9+WjsXvCGmN60a0q1ZGLYC9zsl2QMWybEWHSVMDkVV1vmheSps87KFGTJ4DPgYvY
         Rj9A==
X-Gm-Message-State: APjAAAWAX3K+Lv6e00nQAmX6GURLvGS1H78f8wm+h25g6SLKP61fon/1
        B6RaqAHFtGJk4d2UVxcOMotZT5RlNQ4=
X-Google-Smtp-Source: APXvYqygOO4Xq5aGTdEvmHkgjQC2ck/mOA4BrLfs9cgwsIQoR6QldAKRhoLObHom678jS81nbgIypA==
X-Received: by 2002:a1c:5546:: with SMTP id j67mr1759767wmb.80.1559554641286;
        Mon, 03 Jun 2019 02:37:21 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id b17sm6309777wmj.26.2019.06.03.02.37.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 03 Jun 2019 02:37:20 -0700 (PDT)
Date:   Mon, 3 Jun 2019 10:37:19 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Fabien Parent <fparent@baylibre.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 3/5] dt-bindings: mfd: mt6397: Add bindings for MT6392
 PMIC
Message-ID: <20190603093719.GK4797@dell>
References: <20190515131741.17294-1-fparent@baylibre.com>
 <20190515131741.17294-4-fparent@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190515131741.17294-4-fparent@baylibre.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 May 2019, Fabien Parent wrote:

> Add the currently supported bindings for the MT6392 PMIC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> 
> V3:
> 	* No change
> 
> V2:
> 	* New patch
> 
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
