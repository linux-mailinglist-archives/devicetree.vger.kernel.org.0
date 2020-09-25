Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD63B278FE8
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 19:50:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729651AbgIYRuo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 13:50:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726368AbgIYRun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 13:50:43 -0400
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B831C0613CE
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 10:50:43 -0700 (PDT)
Received: by mail-vs1-xe42.google.com with SMTP id p24so1877550vsf.8
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 10:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XTu8OyKxLxDq7oVeW0UHiIi1xzAS6hi7NHVEBbA27eE=;
        b=BLbLfT7hWjeXq5fNCkVJGX5rULzdOlLfE+9OFb235c1LHq7Ah6oU+MQR+GGjx2gJNL
         KBf9yjX5DU+uhnYYUZQX9ar9XeXoy6MMsGKsate9XSc1JRAaPBrs5raF422OzDvirxCj
         zG7VP1HOqFxqaMe4JuS4vpZmioJt0xjJRMsuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XTu8OyKxLxDq7oVeW0UHiIi1xzAS6hi7NHVEBbA27eE=;
        b=c7VTUiYuV9IjHqVNoAorySGinPIKLHuyuQ/m1LjSoSMr9TX9EJPv/wgM5jbpWgmtzC
         qBdlmct5c6bdMeWJEeA721Gn+tRSdTjlKQQcvFYIFPP7Yi+9xwpMKYqmeI4r5nNKkGZV
         SZcH1VJX9PTZeyr368rvSfe0JEy3UrEF8ug81BBH3VDZ1VauTNsi7CM3QAxOF4/OnwW9
         Oq+kUaQGGq1hOkQhSVuzDtS0fIqfMA0YwxXhcYplaXEjMUAFP/iMvQzL/gdDzbqGu9TH
         Pe4uCK0h9ZyH7KZV2wM+MC072h2j7KfNUTyayjJhuRnafSydcsiLxPClkruzus6imD4h
         pBjw==
X-Gm-Message-State: AOAM533zBmKPbCjjC4zzpDyJed0cCf33OrB4gw+m1Fx3yEMOp0Gmc/mi
        n5Bu2EWRb7QLw9/ckzv7qicyr0Y/VEOWIg==
X-Google-Smtp-Source: ABdhPJygDkBpjCaxFD+FUV0oXJbs4Gw5r3A/bG6ehvDN4wZvDlDGZzK64xPe41DOOYyoc451zdIvVA==
X-Received: by 2002:a67:8b45:: with SMTP id n66mr447752vsd.45.1601056242178;
        Fri, 25 Sep 2020 10:50:42 -0700 (PDT)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com. [209.85.221.173])
        by smtp.gmail.com with ESMTPSA id b197sm192061vkb.52.2020.09.25.10.50.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 10:50:41 -0700 (PDT)
Received: by mail-vk1-f173.google.com with SMTP id d2so837992vkd.13
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 10:50:41 -0700 (PDT)
X-Received: by 2002:ac5:c297:: with SMTP id h23mr525690vkk.21.1601056240705;
 Fri, 25 Sep 2020 10:50:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200925162604.2311841-1-swboyd@chromium.org>
In-Reply-To: <20200925162604.2311841-1-swboyd@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 25 Sep 2020 10:50:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xq5PmKnzLwb3b6scigBhsx5vz6sXAztZSFSVYW8Vr80A@mail.gmail.com>
Message-ID: <CAD=FV=Xq5PmKnzLwb3b6scigBhsx5vz6sXAztZSFSVYW8Vr80A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: cros-ec-keyboard: Add alternate keymap for KEY_LEFTMETA
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 25, 2020 at 9:26 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> On newer keyboards this key is in a different place. Add both options to
> the keymap so that both new and old keyboards work.
>
> Cc: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  arch/arm/boot/dts/cros-ec-keyboard.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
