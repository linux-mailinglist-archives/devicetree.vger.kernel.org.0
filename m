Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5050327BF5
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 11:24:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234186AbhCAKXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 05:23:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234093AbhCAKX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 05:23:29 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E0C5C061786
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 02:22:00 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id h98so15480701wrh.11
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 02:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=fO30ApwIwTZ6ViBN1Ge+IoLrpzbpt+XR3EbBXQz0Ao4=;
        b=OCOdfFrla8ehIgwoRPFmxKWVA5obG0UC2lRwXNbMWzvuKfpxOkp5Bro5tWT0cE/w9w
         x+bA+Czlt57JU6a42SkfptvC3JuGPA6StIHjWCY+RTvYQTW026gTUD5O4rbJHxolcIvX
         6oZ09xRd0HxZxSSov7dwBlVVhAQExMpyZNo1z/MlMXkzP1CodP7I6cY+mJeBwcH/Aw89
         6BG7KC7nt66322RaxL+SjLPIeBY8BWEPKjxGKwxkSugDprrUBSDKLLls5QlL9n84JSga
         6PvlPLDGTxOh21g88Zkz772Y4umW317CuFDEnDR9obAYTK2Mcgbf9/9ACljkOOJc9MRf
         iXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=fO30ApwIwTZ6ViBN1Ge+IoLrpzbpt+XR3EbBXQz0Ao4=;
        b=CgfkQnUknIcTaS0ZmvLHs9gsHwxOtu30rRlp2UKpDoW/7s0URtWjxryhBH404eJUh8
         wUYHofPZvCnhf4maPtCJwdE3Lv6B3eHWdZqgS10Nu0l3E47Zhv7xnPgYC/p1Z0TUWWDR
         u668tu6MdrngaMpDC3RELSFoGMXvsAhD/awHFJwhaulaVr5/Fc4ecU0SSiJ+QafbdtaE
         GlAUZZ38iopUH8s0rMMMok5fIgUGKQ75nMrtQ5h4oEMd3X+3l53Lu7FYQIF151h08wzh
         1Ptt/5vj2rBMjqfp3yBinSbyji1PXTnZLi6T0jg79IvuGOwtMa3pwtVPf7EE3jedY5m9
         l+Fg==
X-Gm-Message-State: AOAM532US/yZAjVMQZ6s9BPn1PHIOBywsi0NRGeF3AxnZtmV3uY7RD51
        /JTJFamx0AaBxpFsKJHbFG6yqw==
X-Google-Smtp-Source: ABdhPJxAXiZUsHcR0Rc2xEpcKrMkbJ4gJn1n7JbYEm1p5PO/WxOTQnHJpHjB0WesA4oRThRvN58PLw==
X-Received: by 2002:adf:d217:: with SMTP id j23mr2045527wrh.113.1614594118833;
        Mon, 01 Mar 2021 02:21:58 -0800 (PST)
Received: from dell ([91.110.221.155])
        by smtp.gmail.com with ESMTPSA id m3sm7999205wmc.48.2021.03.01.02.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 02:21:58 -0800 (PST)
Date:   Mon, 1 Mar 2021 10:21:56 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Fei Shao <fshao@chromium.org>,
        Eddie Huang <eddie.huang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Yuchen Huang <yuchen.huang@mediatek.com>,
        Ran Bi <ran.bi@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rtc@vger.kernel.org, srv_heupstream@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH RESEND v5 7/8] regulator: mt6359: Add support for MT6359P
 regulator
Message-ID: <20210301102156.GJ641347@dell>
References: <1611913781-23460-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1611913781-23460-8-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1611913781-23460-8-git-send-email-hsin-hsiung.wang@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Jan 2021, Hsin-Hsiung Wang wrote:

> The MT6359P is a eco version for MT6359 regulator.
> We add support based on MT6359 regulator driver.
> 
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
> changes since v4:
> - add the regulators_node support.
> ---
>  drivers/regulator/mt6359-regulator.c       | 379 ++++++++++++++++++++-

>  include/linux/mfd/mt6359p/registers.h      | 249 ++++++++++++++

Although the code is fine, just be aware that Linus can get grumpy
having 100s and 100s of unused register defines in the kernel.

>  include/linux/regulator/mt6359-regulator.h |   1 +
>  3 files changed, 623 insertions(+), 6 deletions(-)
>  create mode 100644 include/linux/mfd/mt6359p/registers.h

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
