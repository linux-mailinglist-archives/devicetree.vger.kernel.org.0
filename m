Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0C9E52EB90
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 14:08:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245294AbiETMIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 08:08:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243021AbiETMIf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 08:08:35 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE69514674E
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:08:33 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h14so11249731wrc.6
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=o5HF6tE0A9hZV5uqp555c3BroFMC/aJ+EGKuqyLJpVg=;
        b=RY49bW4Sen7bZq2QSxrLSm7Lbm/m83AjvjOEzzs00aqp7l+TPSpteivwevfzd1Z7ze
         FrXWzoCG5EJYG4O0HaCXfe8eBpWcyDpnMkMRLhmPMPNQdQOi4yUB5uoRlH+NQPBfEDyW
         3jeFXA+3vtwOGImVbAL7A9tiaplg/RSISgj3FCqNwOphy5uSwGdP3/FlFFE/qsh5LLXx
         VidKM8TzLdWax1sulYH3Q0YFAtpJGpiXERcnu4IsOcY9ftsvFAc3lRIOC5HbfIdMtFds
         HQ/bbLH/gHBYvKzVqUXQEPjIcUFDKX4MYQ8VmwS3jEHsZB2HC2ysFHBGOJQqqxt77Ssv
         5EyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=o5HF6tE0A9hZV5uqp555c3BroFMC/aJ+EGKuqyLJpVg=;
        b=13syU0YHSQCS0TiSaaYLoHFM8UjoBWZLIayKOXZK0gS9YgSe0JHEo6jxhDyAkQDYU4
         dpPBqdbDE8fjzXQoAAKmP+RqZIbfuaw/CcfztNz0bo/UxvIYZ4jKbGv+jkuiipi+W2LP
         15BVYIT3lmzTg33J5Oe7rqN2+ZoNHWTlPqapMlRkbfGNFBUyuBxCQH2adBEpxwoCP+cf
         r+iFwa48l2trNlbuSqWlrA52+SEJy3wzs1ynzrNQ2s2UIxV7kB/JcYr3aweoEPQAPITn
         MctFGE1dsfYBo96xIktkExupWuqee81eqFjlrCFikYpNA/NcPNgd6juPadOtPnIg1hPW
         ayIA==
X-Gm-Message-State: AOAM531CjnLp4iC6j8NdVz4t6VewPgjcjB3AO+vruhBoU0UsfbwNwKkY
        KpmVn1O0YmcQel0UpIH+vPTD6Q==
X-Google-Smtp-Source: ABdhPJy1M3oBig5dhhlUe5LElOMWhZRzXErep0V49RbUgzjhLti0/RzqULL8Y5RK9eC3JHc/Scb2bw==
X-Received: by 2002:adf:e386:0:b0:20d:12c3:dfdb with SMTP id e6-20020adfe386000000b0020d12c3dfdbmr8203268wrm.570.1653048512317;
        Fri, 20 May 2022 05:08:32 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id u6-20020adfc646000000b0020d0c48d135sm2428599wrg.15.2022.05.20.05.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 05:08:31 -0700 (PDT)
Date:   Fri, 20 May 2022 13:08:29 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, zyw@rock-chips.com, zhangqing@rock-chips.com,
        devicetree@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] [RESEND, v5] dt-bindings: mfd: rk808: Convert bindings
 to yaml
Message-ID: <YoeEve6GwzcSF5vH@google.com>
References: <20220519161731.1168-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220519161731.1168-1-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 May 2022, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Convert the rk808 bindings into yaml format. clock-output-names varies
> in maxItems depending on whether or not the clock-cells is 0 or 1. For
> the rk805, rk809, and rk817. This preserves behavior with the existing
> driver handling setting the clock for these specific PMICs. When this
> driver is corrected and the devicetrees updated this logic can be
> removed (since the rk805, rk808, and rk817 only have one actual clock).
> 
> Note this patch was previously sent as a series, all of the patches in
> the series except this one have been committed to mainline.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
>  6 files changed, 1372 insertions(+), 465 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
