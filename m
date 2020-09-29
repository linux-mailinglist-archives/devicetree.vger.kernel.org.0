Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A030F27D91E
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 22:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729220AbgI2UmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 16:42:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728938AbgI2UmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 16:42:07 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BFB7C0613D0
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 13:42:06 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id c2so5140951ljj.12
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 13:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h3Ga+GXaHWqM1SSiAmGnTzDtW87dgB5SS1X2AtSoYXA=;
        b=w3/iDm2PFW3fbDKMGpQOBaH2T4oOcHIPglQUCvY49mVadEh7l3xX9LxvvAFVgEbOfx
         A/kw9hjH+4pwryFRBXDgHY4DXDO9nhVP5elFWl0TfKEeKKVDHGWDq8kbQKE5wljX+UAx
         6SfF5PQgc/mvTGmOBg91VkdgfSIbFeCaPJV4WqQsJx1gaCsghyMjXhgiZq7/eAyDdZhi
         qw/zGDx4zcThur7wlLxbfu6xPVryI3FdgeQJR27f+4K+jbdA2RozGLBwkWdTysKYFREg
         vD2SoT9tR2TqsDJ/6+fMt9Zq8drS387LO+OGB2nAifcaRoZs6Eps6nMM3Z15k92WetkA
         6siA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h3Ga+GXaHWqM1SSiAmGnTzDtW87dgB5SS1X2AtSoYXA=;
        b=WRgtiZM9bECKwfTlSSWyvZvgZGj5coHYOYb/KCF8vkwoxOi4VwNwaxLtPTbtqB3sVR
         reNG3dCQogU2XZye6IixYZ3arV6V2v5TRI2rDybRfYrFKUzQvxE7OR3vIT4zTANGuchN
         hyKmJMVNaqX3e06ubO5Xmjp7ukc/F7U3R54+Y6ceCGkVTl61TD9ZpwOkYPcXsgfgWRFK
         mYEPrVtXtSInYJRrNLHjOa/VNqBtqSnhmqLswxlBXTDwUMUbaHjCb0QOmxHJ7zRx5gqT
         CNHuBwZdFK8zqTL3OvPxofeIqMkuR+Y4/cBAs5FLsQMCXHiPKQ/0zlII2dXv5AYKea2K
         uOfw==
X-Gm-Message-State: AOAM533RqUhUVAk9YbO40YhQRGb5M/2QtYCqsIyS8xT6gLRApKdeL87U
        1kkH/2vak/Wz51DwgrJYOMTBugvV+ie59ECaRKNfIQ==
X-Google-Smtp-Source: ABdhPJxlHO8fgKKXLbQPn+RNsP1AA22vJBqXR27uo8CmPTrI41l9k6j6HehIx/C6LRgRROAFD9skpfhD5m7ty2v4URw=
X-Received: by 2002:a2e:9b15:: with SMTP id u21mr1839815lji.283.1601412124938;
 Tue, 29 Sep 2020 13:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200917131257.273882-1-eugen.hristev@microchip.com>
In-Reply-To: <20200917131257.273882-1-eugen.hristev@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 29 Sep 2020 22:41:53 +0200
Message-ID: <CACRpkdYuCtS-M3LXOL3u3T1faH0-G5gHyjHVbeXPrhvFYX6Y_A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: at91-pio4: add microchip,sama7g5
To:     Eugen Hristev <eugen.hristev@microchip.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 17, 2020 at 3:13 PM Eugen Hristev
<eugen.hristev@microchip.com> wrote:

> Add compatible string for microchip sama7g5 SoC.
>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Patch applied.

Yours,
Linus Walleij
