Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 282072F54E0
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 23:20:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729132AbhAMWTa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 17:19:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729283AbhAMWRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 17:17:24 -0500
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EEB9C0617A3
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:16:02 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id v126so4384142qkd.11
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 14:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cTq9BZuyc2JWWvpzIlfxUaiFdXiEl1WBgsmk8mSJEMM=;
        b=PWBTvEa5NbYEJopVdcXuVqQf/JjG5gACNCIYDMJBf9E0arp6TfC5oz66n3H0qWPk5Y
         eIFJiuMlFk4kkQDNxi4FbKZIBmN3DV9l7kKrgeNB7g19C34zVdKIAEakRSerhIZjMkpI
         MnK1rqQpnSHAYo7efBOciJbXp2r+lUNczmriQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cTq9BZuyc2JWWvpzIlfxUaiFdXiEl1WBgsmk8mSJEMM=;
        b=MfeYrz3qc+T6rMirE1lFXveikVElTCfmeBk5Wiiqx/VWrGQC+irhEPbHkzJQtYtVl/
         sLdSHbKFJ39U4NbNkJp+8lq2IzZ99q1UBu6Ukj9cOijN+aucX2M/UxstSef7BVNfRacE
         YjsXCgMQu4qjd+0/6uQ9GjfjHhm9xS8jIpylkdtf3dHGSSe/Vmcq2EbuK7j2WJdsA9QJ
         FJ6wpO05QtodCfHS46p4nE02MflE9BmWC4zCPR3HxRSR/6+hX9egkCvO7FZL8Nldm6YN
         J1GZliZ+yvvTV0glNpJXZGPRVO0mrH8kkOsorGnlHQnyCWspel20u1+8/ZoFQRjOFJ4l
         ksPg==
X-Gm-Message-State: AOAM530N7HMuadB3if3YXkZyL2QGkBvzfPuQ6GxTpf+B92GxH/7RO071
        AKmCfRQjDA4EEetQv/SSzsZBoeYp/z6yiYM/tifEPQ==
X-Google-Smtp-Source: ABdhPJzvis3PmTgmiOX/slOAg9ePoXvVTAv2KB7aJml+JJUsZOkm0hVZBZSipGRrgHGHDf7EXVffIzsQRCNvzhvzvVw=
X-Received: by 2002:a25:3d47:: with SMTP id k68mr6375160yba.415.1610576161387;
 Wed, 13 Jan 2021 14:16:01 -0800 (PST)
MIME-Version: 1.0
References: <20210108172316.v4.1.Iaa8a60cf2ed4b7ad5e2fbb4ad76a1c600ee36113@changeid>
 <20210108172316.v4.2.I9ec9c3c61eded22a5f7fbff838d23fc95ec7cfe0@changeid> <161041725044.3661239.4848052699046966461@swboyd.mtv.corp.google.com>
In-Reply-To: <161041725044.3661239.4848052699046966461@swboyd.mtv.corp.google.com>
From:   Philip Chen <philipchen@chromium.org>
Date:   Wed, 13 Jan 2021 14:15:50 -0800
Message-ID: <CA+cxXhk-CKC-GguQEyYA-8Fnhdo98D8wvRrJKXvjmuisC1knkw@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] ARM: dts: cros-ec-keyboard: Use keymap marcos
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 11, 2021 at 6:07 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> BTW, subject says 'marcos' when it should say 'macros'
Thanks - I fixed it in v5.
>
> Quoting Philip Chen (2021-01-08 17:23:32)
> > The common cros-ec keymap has been defined as macros. This patch uses
> > the macros to simply linux,keymap in cros-ec-keyboard.dtsi file.
> >
> > This patch also creates an alias for keyboard-controller to make it
> > easier to override the keymap in board-specific dts later.
> >
> > Signed-off-by: Philip Chen <philipchen@chromium.org>
> > ---
> >
