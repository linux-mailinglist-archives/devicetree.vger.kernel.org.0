Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 085E048CFEE
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 02:03:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230030AbiAMBDC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 20:03:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230016AbiAMBDA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 20:03:00 -0500
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB98C06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 17:03:00 -0800 (PST)
Received: by mail-il1-x129.google.com with SMTP id g4so2634050ilq.9
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 17:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Tolh3fWC8TzEFvR0VYDqmge8PKhESkhvv8oEEP8Bf/E=;
        b=DUaImKW4iNccfk54IyZZJnpJecwSSeSobRWp8u89j4HUEsFQE8MsHVfuSlYkQSEhUI
         Z0j/sc4J9KiunrdW8P+yG3Q+mm9bMgK4yLACViPVZtGSV99RnleBTlWB8yWzzykNQFk6
         AuEfF63NVZ4XuNRXJYbIIVtNLLjjKpTtZBc4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Tolh3fWC8TzEFvR0VYDqmge8PKhESkhvv8oEEP8Bf/E=;
        b=oFgY3cw0IeOFLG9P7y2+8oB3ZBC+qYw8WIlPzaKC3hvOm1jcs+BGJCgu7zNBmjN7W4
         OxMl37ox8pf4OLNSUEbczb5Qu1d6i3K3itW8CuI297ggj26750RkCMqO38IZqxN+Ie3G
         bZ2JyRYqL5qpXl+4S/zKA+EF6GmdFAidoCnqCWrM5tt9SpcD0a0S/JItYtdn6bGsn7c5
         dqYG93e3ZXoLYxMbpDWYGzD8+8Zj1tB7810HV98HbjF18zqeOzE26Gmh7zhqnr7qpfpP
         cuemwnnOpwlV2XinVfRKwFa1J8BS1eXSdr9KXt8teg6Gmst6ZBuCHjX9c8/7klfV+riX
         YCmA==
X-Gm-Message-State: AOAM531USLDlG+GKmjR42DnX74aewxdo/T975QAID8O9IKPH7xHllN8Y
        MGJhFdyt8o33uEZ7wgmP0Cs4UpsJ5/CxHQ==
X-Google-Smtp-Source: ABdhPJzww9zUZrGzDI5H+z8+xXPq7FrPD0UPYe10PL9i3iOv8di8sPotBPERnhEHVIQTm8a06lZkkw==
X-Received: by 2002:a92:cb03:: with SMTP id s3mr1172043ilo.126.1642035779724;
        Wed, 12 Jan 2022 17:02:59 -0800 (PST)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com. [209.85.166.180])
        by smtp.gmail.com with ESMTPSA id c3sm1129343iow.28.2022.01.12.17.02.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jan 2022 17:02:59 -0800 (PST)
Received: by mail-il1-f180.google.com with SMTP id g4so2634018ilq.9
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 17:02:59 -0800 (PST)
X-Received: by 2002:a05:6e02:20e6:: with SMTP id q6mr1247332ilv.180.1642035779032;
 Wed, 12 Jan 2022 17:02:59 -0800 (PST)
MIME-Version: 1.0
References: <20220112191048.837236-1-mka@chromium.org> <20220112111028.v19.2.Ie1de382686d61909e17fa8def2b83899256e8f5d@changeid>
In-Reply-To: <20220112111028.v19.2.Ie1de382686d61909e17fa8def2b83899256e8f5d@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 12 Jan 2022 17:02:48 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xt79oe=wCOpBqE-Y6wKbOV+77-BXVnxb9itozcX0WjPQ@mail.gmail.com>
Message-ID: <CAD=FV=Xt79oe=wCOpBqE-Y6wKbOV+77-BXVnxb9itozcX0WjPQ@mail.gmail.com>
Subject: Re: [PATCH v19 2/5] driver core: Export device_is_bound()
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alan Stern <stern@rowland.harvard.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Felipe Balbi <balbi@kernel.org>,
        Bastien Nocera <hadess@hadess.net>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Peter Chen <peter.chen@kernel.org>,
        Ravi Chandra Sadineni <ravisadineni@chromium.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        Roger Quadros <rogerq@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jan 12, 2022 at 11:11 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Export device_is_bound() to enable its use by drivers that are
> built as modules.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v19:
> - none
>
> Changes in v18:
> - patch added to the series
>
>  drivers/base/dd.c | 1 +
>  1 file changed, 1 insertion(+)

Though it's probably above my pay grade to do so:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
