Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78DF6414C4D
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 16:45:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232257AbhIVOrL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 10:47:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230356AbhIVOrK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 10:47:10 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE2C4C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:45:40 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id w29so7539860wra.8
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=vBtJFE+lofow65KkthlKBCy0zY8p2r2WeZxJ4tazkWI=;
        b=XlWRxcZKczZ6MNWmAJ6uzfftNpBFTtj2u6tlchvACgOocDNUd5vnx3674guNB1p3iB
         1rtvroB0yiiHcAULxT4Clmacv6TJT56G91i0b9DF70mZKUnst5czv6K8qr5plEEO8GaB
         FNToCMwSpS0ds+dH0/pWnZNJc6BDYVYLH+yuJ+DmMIOevRKRm1wiz/xenEvA1YzK50F4
         N7Y0WiQrGWq9Zsd7AqbzvEos0jU8+2hCkhQyDt1K6qxJnOOYEzCpd3IN7yCR5AQLOZRa
         9gqoFktAiAVy+y/7Rd0neQkZR8xiWbSxg9fw/wOni8K+mTec8UHVvyFSkzIgmNp+Q+yX
         Ckhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=vBtJFE+lofow65KkthlKBCy0zY8p2r2WeZxJ4tazkWI=;
        b=sGEMeOhdNvjv1mr3y7ONbQKa4rdVnHV3um+2S2NkL/x9+dydOrCOLuavz1TNo9M3v8
         42FqBdUfgzPNaJrT1B+0sY/U5dD1ROaEgNV5D+NCzmiLeb2xC/gvWJvN5fcg5O0wah+l
         MHTw0/fDKtSkqWMAUngZJQSxwfPoj6HKiFpLvjju/MX/DNuxcHyg6TkfWXMxmiSLmfAQ
         wva5d5309l4uSBXpz+kCmWUouI4PvyBnrlvarF7HuX03tr9v+ZYc+mkb+lXQK7a1KJ8S
         LURWdC4mPn66UWPjttMe+qpShPJAEsRDTY0rOE+eBE6fdaY8XTRl5AOJ2Ygfi+8TrKJA
         4Z2w==
X-Gm-Message-State: AOAM532e9t8ao3ntl3ifR3ubi7xaozBJ8Up6koLIM7Cr3prqSbXqPBkm
        UG9MChTs0kf9Ocpl4FmHo5zIiA==
X-Google-Smtp-Source: ABdhPJw8riDRCc+8hErOFvP4SgnMWnSaRjwppkdDu9v3Rwgwoehg8PNJNDJ3cM4zJ6telHppmPbZrA==
X-Received: by 2002:a7b:c4c2:: with SMTP id g2mr11052165wmk.134.1632321939185;
        Wed, 22 Sep 2021 07:45:39 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id d2sm2441774wrc.32.2021.09.22.07.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 07:45:38 -0700 (PDT)
Date:   Wed, 22 Sep 2021 15:45:36 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v9 2/4] dt-bindings: mfd: logicvc: Add patternProperties
 for the display
Message-ID: <YUtBkOFeQWnteG5L@google.com>
References: <20210914200539.732093-1-paul.kocialkowski@bootlin.com>
 <20210914200539.732093-3-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210914200539.732093-3-paul.kocialkowski@bootlin.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Sep 2021, Paul Kocialkowski wrote:

> The LogiCVC multi-function device has a display part which is now
> described in its binding. Add a patternProperties match for it.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mfd/xylon,logicvc.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
