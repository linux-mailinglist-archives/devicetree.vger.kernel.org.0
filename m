Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10F8147504E
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 02:13:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239127AbhLOBGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 20:06:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238948AbhLOBGE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 20:06:04 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6BFBC061757
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:06:03 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id w6-20020a9d77c6000000b0055e804fa524so22957505otl.3
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 17:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=EV9VNit3Ie6/js7xF+Gy1n5TkhbZ0vT+OvSfp69j0fA=;
        b=JhjQvFEspDQho4syOWl5+LoAayzRGMWh+dxYGiE/9ZQGmtCXD1939lqWlnypqAPoW1
         LJ6NEvKw27lj2CEzpAL50l2nqTKXKvf7PEVmeGfVZ1SV32yWE/t8JGCKrdzCFDyA3c5q
         50SLeNo8GerTtU8pvx/LgZmcLBMaZTq2ZTfes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=EV9VNit3Ie6/js7xF+Gy1n5TkhbZ0vT+OvSfp69j0fA=;
        b=Q9j0V4XRxgMPx0M8YtbCelaK6E/O5CcAtBz9+PuXdj8bHMSNtgwD4PM4b5p4vdtZkc
         lPHhWzpNi9e7YYVMl/uKT5vRGatxDnD7G90oCaWHbv90f9Vumm7LaER+bw2v8CWXa5ee
         mOXQgw3Vt7Qb9Kv2aJFlvwmX4/MwMXyBeeefNybKeg7QzvMUWQ7vZBiBbz8XBv7c5s5e
         /CBjrTvapoZ50Al/LGK45mRTZAyqi0hieJHZfeS+on1XiX1slWjXXLZVt14PPLsqh+rf
         xqGKGBWuq/+G/Pw2YWjEOwoeZEknzdcbhjH+5Sav0zzt/D83DV3yedZ3WzAVw5VEixZP
         zw7Q==
X-Gm-Message-State: AOAM531vV7Tn5gTuRdhCz8eLxfUmXBzgDWOsX8cXD0s1+jztuY2nLDl5
        RFrnqT7y0pZjturx4ZeYLksey3vNduS0NWjZ6ZkGUQ==
X-Google-Smtp-Source: ABdhPJwR3ToiA9ofDQfo27y8cz61kcGq6dekDuLMjoMisWOzzadIBfIK2gv/xrshhYhKB+OWP2e+L5xEu8S4Tdu2X3A=
X-Received: by 2002:a05:6830:30b7:: with SMTP id g23mr6743583ots.159.1639530363272;
 Tue, 14 Dec 2021 17:06:03 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 15 Dec 2021 02:06:02 +0100
MIME-Version: 1.0
In-Reply-To: <20211210192328.2844060-2-gwendal@chromium.org>
References: <20211210192328.2844060-1-gwendal@chromium.org> <20211210192328.2844060-2-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 15 Dec 2021 02:06:02 +0100
Message-ID: <CAE-0n50z5MN-pJoCbnKkF-KWxCg+E--rudKo5bJgd+aXPd12+A@mail.gmail.com>
Subject: Re: [PATCH v7 1/5] iio: sx9310: Add frequency in read_avail
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org
Cc:     andy.shevchenko@gmail.com, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2021-12-10 11:23:24)
> Instead of using IIO_DEV_ATTR_SAMP_FREQ_AVAIL sysfs attribute,
> add a _FREQ case in read_avail() to display the frequency table.
> No change to |sampling_frequency_available| was observed.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
