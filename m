Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B914745284F
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 04:14:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239426AbhKPDRE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Nov 2021 22:17:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238997AbhKPDQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Nov 2021 22:16:48 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86B4EC04A431
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 15:44:26 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id q25so32737905oiw.0
        for <devicetree@vger.kernel.org>; Mon, 15 Nov 2021 15:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=PaQ00ZGEy4Uu84RCOZUTfeFZWA/YaY1Ww6m8YLQkvhs=;
        b=W2VWXeSJ7wyysKLzDpvFz3g4Id+6kYVmETNy7ILgaFccZ0N8OZhsm0Q+E5PEBV9stG
         tTm2eidYTQXb9mwOs5kOYnf+CLNeGHi4OziOUAHeDMh+r66riOTbQ76CaCPh+btspJCX
         rt+DT5fyUGDvywAuuNIHdD6mIWWlFgscl1FyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=PaQ00ZGEy4Uu84RCOZUTfeFZWA/YaY1Ww6m8YLQkvhs=;
        b=eGZqgRvJ9rzGAGY/SA+L9Xrg1LBG2Ip39k9y8El+a0Uw19ktRP0KU3krhyjwFjszLP
         cjP/aBoedboUE+ZIdGP6hXFhRUUhjJSUf+H4jeqnNYcf/10iMTMFx9pTQ5aLrTvv++dO
         uiFj4K7BQyxypDrdSmNlQZmqLDQgpF+W9r+8DjZNi6a54iZJgpMwTIJ1HQMpVPw3bAej
         xhe7RR9dlXdW7lhRVriD8JAc+xT8id1BhelPJqbndmnkVehho53VOt8oyy+4B41s4EdQ
         6bUOdu+DcGYzCS51Lbuy0t6vTFqmtlR0camaQa7/b9cJs6+g2ez6eO2yaEnt8V6Fry4F
         2sbA==
X-Gm-Message-State: AOAM533KDw0jrKcCi4B1A8/FC1IgqfSK6/ZKrBgibiTY4sS905u/TzXP
        llVWvHreuWP4ef1YCQsCQltHtBaIAzWT5nMhmKY95A==
X-Google-Smtp-Source: ABdhPJxCjyQFH++dUTHe2DWuuQH++OcFJWe93JshD2AnAevt+Mu3F1DFIzPwztSodo1vFR26oriYaUigBSgSRnqGH88=
X-Received: by 2002:a54:4506:: with SMTP id l6mr49058489oil.32.1637019866000;
 Mon, 15 Nov 2021 15:44:26 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 15 Nov 2021 15:44:25 -0800
MIME-Version: 1.0
In-Reply-To: <20211112084302.2447931-1-yangcong5@huaqin.corp-partner.google.com>
References: <20211112084302.2447931-1-yangcong5@huaqin.corp-partner.google.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 15 Nov 2021 15:44:25 -0800
Message-ID: <CAE-0n53zMYmm2DxmptUWNzXvLQb+4bY1mDby1G78Jf1Hjdbadw@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: parade-ps8640: Fix additional suspend/resume
 at bootup
To:     Laurent.pinchart@ideasonboard.com, a.hajda@samsung.com,
        airlied@linux.ie, daniel@ffwll.ch, dianders@google.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, narmstrong@baylibre.com,
        philipchen@chromium.org, robert.foss@linaro.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting yangcong (2021-11-12 00:43:02)
> Through log and waveform, we can see that there will be additional
> suspend/resume when booting. This timing does not meet the ps8640 spec.
> It seems that the delay of 500ms does not satisfied drm_panel_get_modes.
> I increased it to 900ms and it seems that this problem can be solved.
> To be safe, I'd just round up to a full 1000.
>
> Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
