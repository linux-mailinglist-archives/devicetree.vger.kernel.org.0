Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C352529A965
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 11:20:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2896097AbgJ0KUA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 06:20:00 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:50280 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2897797AbgJ0KTt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 06:19:49 -0400
Received: by mail-wm1-f66.google.com with SMTP id 13so816834wmf.0
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 03:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pZ4tF9Q35IB/PKnNsjsCcJxf1aDEpdznaVzDYuv50v0=;
        b=C/n8t7qiHHIkKH6qBlW/WOBQPU58wfsvqwRg3TcTxZVnfjMweZXACSUeQ2Yr0SJona
         bdgxQpS37set3XzGvi8D9HYTSw1RmWWModldxM0e+cGehXYXRU3K1mTjOK4kL6y6nXo5
         /axUIi8EVPPR1jt57T2cmyeoVG/atnjZdaO6/010kCwExM5C4qTg8Gv2OwtoRDRI/Wxn
         BmXfJXcLVV6OgliOWyqFM9J+HmGm+kg7QrCtLylTtWhX7bp2PpYVCEtkQbYr2pOTj/vX
         hOgbmlhiz1rrdO/0zg6f1qwltCzISSTi3Q6IV68wglD4tuMZOCdDa7vWfcS9uy2c4oGG
         wz9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pZ4tF9Q35IB/PKnNsjsCcJxf1aDEpdznaVzDYuv50v0=;
        b=N4VTjtNc3Vi93vHvjJVcO7lMhXQZKYFq6NaLG+NcBG9GwJeTa4GkOK/oe75Pzovql4
         GWO+gX3A6no4sqLpU1kBs6Xn8v30qF5L7+Q/FmOy7YeemJ7YMPdz6oX86OGbjQJtgM33
         Slj5lqPMPtQUPN7Ztpu8WNYUbYzUHXeRx9kSh3oCMUTY7BZoLVwvupgHGfI6AaTzmxKQ
         s1oOv41e49/VgsxBDfDlvq/UAn5TLaKhPsZp3k+D1bW42ssiv/EqlYd8Ze5xzuUbTRsN
         o6sgu+mcsmcZtHn80DUbKTISjj6uNkofNsMovJ2/BFyaMpvzXp0BheB/p5hjprs42waF
         wTUA==
X-Gm-Message-State: AOAM533pUjELOtUlb674xhIV2e/WEDN1xzqHlLRkCTj/5z0miD3T6SGc
        XzuAHlKrCePxzgr6MWp3LA3iBNFjLTAcbA==
X-Google-Smtp-Source: ABdhPJzce/1cq7vO5et/wMCpGxoUY58Gq/wHtjsAUhmiTgM1W35aRGvgZYGxLwfJWRUAVClAG3qCoA==
X-Received: by 2002:a7b:c8da:: with SMTP id f26mr1911316wml.178.1603793987905;
        Tue, 27 Oct 2020 03:19:47 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:6cbc:1a3:aabd:d451? ([2a01:e34:ed2f:f020:6cbc:1a3:aabd:d451])
        by smtp.googlemail.com with ESMTPSA id l16sm1472264wrx.5.2020.10.27.03.19.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 03:19:47 -0700 (PDT)
Subject: Re: [PATCH 1/3] dt-bindings: thermal: mediatek: make resets property
 optional
To:     Fabien Parent <fparent@baylibre.com>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, amitk@kernel.org,
        rui.zhang@intel.com
References: <20201021164231.3029956-1-fparent@baylibre.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <d8a5ce64-04da-7a4a-bcb9-1cc25cea42db@linaro.org>
Date:   Tue, 27 Oct 2020 11:19:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201021164231.3029956-1-fparent@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2020 18:42, Fabien Parent wrote:
> MT8516 Thermal IP does not support reset. Make the resets property
> optional in order to be able to support MT8516 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---

Applied, thanks




-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
