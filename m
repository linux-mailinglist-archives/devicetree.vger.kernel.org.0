Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E695848115E
	for <lists+devicetree@lfdr.de>; Wed, 29 Dec 2021 10:44:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235198AbhL2Jom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Dec 2021 04:44:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235344AbhL2Jom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Dec 2021 04:44:42 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4BD0C06173F
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 01:44:41 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id k66-20020a1ca145000000b00345fa984108so5741783wme.2
        for <devicetree@vger.kernel.org>; Wed, 29 Dec 2021 01:44:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=A/fct5J4NPIx01cFbf+YndWM3TMLzEuJu/exKDLxHIY=;
        b=FkamQq8DHD1NfbFo1iACDDheaSqN7MjBKzQnjD/G8y+fsycOqqoeDFvCRCN8Redv/d
         n/8XLWSU7XfVx3NJ53TMo8QVpZ/owqJRFulRfIK/Ql7qbeom9t8/mf9haIE+6UJJxij7
         Qt8kr/1RBHyEoTdHRlAtWLfwZ7A0V3inD7fSyvjDmWCLLdM1FBVFvnf5mT5iRdhlH9mF
         g8B2VqvIdguXga3uqKByl5MKJV5e3bg+NaRSxJGXdByybEKujyqVpSCG50hazvoFzDA/
         WTKYzi34nUwDimB0r6xouAJqHOUEI3TSpQG7dS6EHE0XTOh1tJrmRg6rW8WM3YYB7tYD
         m4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=A/fct5J4NPIx01cFbf+YndWM3TMLzEuJu/exKDLxHIY=;
        b=1KQi7dSEU5AJBjUuGjvNr7kgLnovnlzCm8CdDynmrxa9ksTDZciyT0YWxDKizddVF4
         dqZuc7W9JIhtAX3X2LJDvCC8rOeakzLSCIWJbGr8YxTbAlpHAO5Whm2+YUZxY2eeyHz+
         k9lOStnFTKNJh0daJaBEGapqEUfmLUaGAw/Ap/UzI9MSLsV00mwI+uF/gk9Xof9yihjN
         rwPNVjX8Fz9ZWvxUr6ehUpJW6FJXallLDTb5HGhT4I6ofSPF0cBr2qUX6uqWl9vvxTwp
         ptgtnjSucoWgXPPtIl220FLoD+rgkbj8LCYS61s4UOC3Je6Gl6lMUe1fPFHKdPk+gguQ
         vPfw==
X-Gm-Message-State: AOAM533jQhI5982WBxEgNyvWzzpkxpcvX2uGKdNnS/1DCDi/FHp71zr7
        xjFx48eFqrpsnChyoulT6iZUQQ==
X-Google-Smtp-Source: ABdhPJx9p7zRq2s6zNo82cPfLCe7SHW5GHj9Ww1gEm8LftTQ8WL1ZtaVdkodJkxqXRGZJFbAWRTI+g==
X-Received: by 2002:a1c:c915:: with SMTP id f21mr20830715wmb.39.1640771080382;
        Wed, 29 Dec 2021 01:44:40 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id z6sm24736705wmp.9.2021.12.29.01.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Dec 2021 01:44:39 -0800 (PST)
Date:   Wed, 29 Dec 2021 09:44:37 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Justin Chen <justinpopo6@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mips@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V4 RESEND 2/2] dt-bindings: mfd: add Broadcom's
 Timer-Watchdog block
Message-ID: <YcwuBb0K7E4JfsTQ@google.com>
References: <20211115055354.6089-1-zajec5@gmail.com>
 <20211115055354.6089-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211115055354.6089-2-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 15 Nov 2021, Rafał Miłecki wrote:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's a block implementing few time related functions depending on a
> (SoC specific) variant. At this point there is ready binding for a
> watchdog only. Work on remaining subblocks (e.g. "reg" based reboot) is
> in progress.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Update $id, description, compatible, example & commit message
> V3: Drop "brcm,twd" from compatible list per Rob's review
> RESEND: Patchwork lost 1/2, marc.info lost 2/2
> ---
>  .../devicetree/bindings/mfd/brcm,twd.yaml     | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,twd.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
