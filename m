Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB30135A2C8
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 18:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233577AbhDIQPY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 12:15:24 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:44737 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233527AbhDIQPY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 12:15:24 -0400
Received: by mail-ot1-f43.google.com with SMTP id y19-20020a0568301d93b02901b9f88a238eso6163887oti.11
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 09:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P0YqXjiG5XlL0d3JhTX/lPRzYOHWj0/xwr5QmzvfrXk=;
        b=FpiNYotfGaSK3ZT64OdJyGK0RU70ey6qaTAxMPDDnXundb24p2BEc9NvU5C/UpCYVq
         T5r9aCDQe7uBggrYdBd7F/9dlXSnwZGl1+FaGibmW/donJJ+TIijm5FAMRubq8FYKQkW
         UOhvNRZ7ce2PtuNsKlj84mL2g0s+VUrMg4QDO7IUS5X7J+9GS6Fj2TZNy8KZ8T7Ay+gq
         dhYT+NChX7iLNdZexo5s37dnZGV0jxvuiOeDChbufMzYGveJyJMYj03lU4rZfDVaNWbe
         jCDiSd0uUMyMZjAIKRaZJFS2wybg0PCx4uUlQkpXWiKouebRgyzM2DKX3HJJIZYZ61hc
         U0YA==
X-Gm-Message-State: AOAM5305Gd0p31PLpGVYVfm0jNtvbjZI/ftxZ6hGXldzZptH+0V1mSGw
        QULMKIa2sVcXBOoaLt/MOg==
X-Google-Smtp-Source: ABdhPJxQAUJozP7dkE3TP4Ru1Wndxn5VXn5j0lIv7IW6cHFLR+sFshV5R3A5dQLyD6v3Ti1cKH5O+w==
X-Received: by 2002:a9d:68ce:: with SMTP id i14mr12368642oto.151.1617984911083;
        Fri, 09 Apr 2021 09:15:11 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j11sm601021ooo.45.2021.04.09.09.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 09:15:10 -0700 (PDT)
Received: (nullmailer pid 3745702 invoked by uid 1000);
        Fri, 09 Apr 2021 16:15:09 -0000
Date:   Fri, 9 Apr 2021 11:15:09 -0500
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 1/2] drm/panel: Add DT bindings for Samsung LMS397KF04
Message-ID: <20210409161509.GA3745656@robh.at.kernel.org>
References: <20210405234713.3190693-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210405234713.3190693-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Apr 2021 01:47:12 +0200, Linus Walleij wrote:
> This adds device tree bindings for the Samsung LMS397KF04
> RGB DPI display panel.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../display/panel/samsung,lms397kf04.yaml     | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,lms397kf04.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
