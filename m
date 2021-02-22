Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28F783212AA
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 10:06:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbhBVJGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 04:06:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbhBVJFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 04:05:23 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 473B4C06178A
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 01:04:43 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id c7so1440944wru.8
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 01:04:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ibd7IrQ6fNOcWrwjYRZXsDAGOxYzONB2z6r0IEqUmQU=;
        b=yL7TzNgXytnTO6Go+i6klhnStgxH8xwdTDTXSlkHTZW3OM+XGilppMKuTdHTwqL+k7
         6PAJUBv7U86Kxu4+T0MGuOe7BctjORCj2iA8e9BK2rrkx/JsOQ7rhl+IWsO7EwzE5h9Z
         SdsRmTr38GYgbYvNXEmGmMvQwEeI7bPyW8B6irLr3ltRF8FvrZNpacs8KLLAlRmOF6lz
         Qd+bynAs7gR33jdNfKhpfQrnz7C8U+yw+RQ3EA71oM7VwFmv+H3crW17LurcXZnQ69Zh
         bUN6GevDuuY0JYwnQ1pV1pMsk9SPue+arcBYe36VlgItDmpjikMiLxwV3Goy29wbsDa6
         zh7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ibd7IrQ6fNOcWrwjYRZXsDAGOxYzONB2z6r0IEqUmQU=;
        b=cWyNRtu9XXNGE25WoMJJ6/mBlnkcqHDfqUyykNu4MgoyVmJWOPto/myDs+DTT/Eo32
         Wy31/nI93Tphuy1AtsgYn7S5HMaxZ61HpPXIyeg5kdVayP8xtmSA2bp2Q0SwDPO39/hc
         kLpC1izugY5FteCs8gaNWWBLdzM/4muMdXC2lz113PA+vEzwQHY99ByFDZnFDdm6/TFH
         KeXRyuDYG8ug5vuvFTT9OxvzPghZj3xvDhAqus8QIXHgbb1YtqZOUefy1EbJHncIyA3W
         Kxer+J2IuVJdLmUErt0z1CnJ3iump8RAxbDb4CjvoxY5OrH8GUKuV4GsXICIB7yLRmAW
         ptRw==
X-Gm-Message-State: AOAM533ELb28l+QzdqOPGXPmsi7glBpmgVlUZfbEWmrXK+jRRwr8VJZb
        vvOyy+YCkbD7f+9bYrjS5X9+Xg==
X-Google-Smtp-Source: ABdhPJwOHue/t3T/Gsj5IrX0E90nO1og7r9e8V4bXyiNtpeeZqzFVoqABJfZlXM2xJY6LhyUPWUd5w==
X-Received: by 2002:adf:ed41:: with SMTP id u1mr20403648wro.73.1613984681888;
        Mon, 22 Feb 2021 01:04:41 -0800 (PST)
Received: from dell ([91.110.221.155])
        by smtp.gmail.com with ESMTPSA id u12sm1410725wmq.38.2021.02.22.01.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 01:04:41 -0800 (PST)
Date:   Mon, 22 Feb 2021 09:04:39 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     openipmi-developer@lists.sourceforge.net, openbmc@lists.ozlabs.org,
        minyard@acm.org, "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
        robh+dt@kernel.org, joel@jms.id.au, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com,
        linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 01/19] dt-bindings: aspeed-lpc: Remove LPC partitioning
Message-ID: <20210222090439.GB376568@dell>
References: <20210219142523.3464540-1-andrew@aj.id.au>
 <20210219142523.3464540-2-andrew@aj.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210219142523.3464540-2-andrew@aj.id.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 20 Feb 2021, Andrew Jeffery wrote:

> From: "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
> 
> The LPC controller has no concept of the BMC and the Host partitions.
> This patch fixes the documentation by removing the description on LPC
> partitions. The register offsets illustrated in the DTS node examples
> are also fixed to adapt to the LPC DTS change.
> 
> Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/aspeed-lpc.txt    | 100 +++++-------------
>  1 file changed, 25 insertions(+), 75 deletions(-)

Acked-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
