Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 192723F8B05
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 17:28:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242979AbhHZP3T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 11:29:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242951AbhHZP3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 11:29:14 -0400
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E606EC061757
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 08:28:26 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id b10so4234196ioq.9
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 08:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mipq3pfFW3pvFFZMO/fj0f+8W+eyXMtuOTC9xSNUupY=;
        b=hjDLqcmcoxMrVZNaQzZ7DRr6kff2rilVixwd0QPZaJ6r5hycBaY9WUNxwMfmO5ikdF
         lOYcgTVAAP+GZYVxSyNs2FqJ3oBk/6dbTXmkiPbcQYqALxb7D+ptJ2bN8/7x/1w2e+IE
         XInqrRHoVv6V/ylVkOQx4+oHqLVtdkovxtd3cptYUep3x6djZbKlZ4wgh2mIAeSY4+pn
         8Es1I66oiYvVGAKX644XG2P2HkL8a2WIxVn++FTY4nNy2uHaC8rbWfAeUxBF6ZnYrcYD
         fUAtnjMRHHGyqO6ZxSSmLSMNFlZwuERzdjfTTqfbcIqzZosghYuPo33ZU4bKf+DVA8Yk
         TaIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mipq3pfFW3pvFFZMO/fj0f+8W+eyXMtuOTC9xSNUupY=;
        b=i4WPPe/ObDVCrb3/2z6h462JnQSMj/NPIDMQSuiFXgqC8Yur+0tbT+aNRo5meLSfct
         oSO+lY33gs6L5dtXCknbKLlzluzMrZHA4F+rVWzpUnm0bVIxBXrY1KA4gCn8hONQbOhh
         WKSjWisykX+vsZpIzX0fb4Lj6z5Nr1znspdJ3RH7PH5wcl4eMvGEEBoPbXSDoZZRWKY0
         k0phRZLbKUQGkfBZbmCnVL9D68KAhUT/STaulXOMcMhscCPGcY7nolxubPsuvygB/5JU
         rw+osFjMl0lCY6BJeWraGBjoaOQwJC193km18lG/6xe+q7Ml3rSfS2VIYDYwLfDijIbF
         bGHA==
X-Gm-Message-State: AOAM53071+fjlAEFWwaXfytuIEQDXVXxceyLT7m6g71RAukx4/OaKZDO
        GB7DZNPacgAeb9HpfjEGFjR3ytZr8IJgRpUJsvXqKA==
X-Google-Smtp-Source: ABdhPJwlzY1MlK+7fpGYd2DHBc0ZWGLZDHVnc9K6uMkSfehD7RGnPhVUJobtfGP9MzUt7W84ftTlI6qlWAT5K7Qm3XU=
X-Received: by 2002:a05:6602:2219:: with SMTP id n25mr3410411ion.185.1629991705985;
 Thu, 26 Aug 2021 08:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210826141314.3720975-1-tzungbi@google.com> <YSevGntb3mmYlZGE@sirena.org.uk>
In-Reply-To: <YSevGntb3mmYlZGE@sirena.org.uk>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Thu, 26 Aug 2021 23:28:15 +0800
Message-ID: <CA+Px+wWr99PxEz6qROhj7H8LXFiRZ1sxrn-BcB7ZODJA1Suh+A@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
To:     Mark Brown <broonie@kernel.org>
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        Jiaxin.Yu@mediatek.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 26, 2021 at 11:19 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Aug 26, 2021 at 10:13:14PM +0800, Tzung-Bi Shih wrote:
>
> > The dependency has merged.  Re-adds back the document.
>
> What is the dependency and where wsa it merged?
The context is in the original email after "---".  Do you think it
needs to be part of the commit message?
