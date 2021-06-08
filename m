Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED8EF3A0593
	for <lists+devicetree@lfdr.de>; Tue,  8 Jun 2021 23:11:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233788AbhFHVNi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Jun 2021 17:13:38 -0400
Received: from mail-qv1-f45.google.com ([209.85.219.45]:35752 "EHLO
        mail-qv1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbhFHVNi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Jun 2021 17:13:38 -0400
Received: by mail-qv1-f45.google.com with SMTP id if15so801399qvb.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 14:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tI5apJy6qAcGNcp49inXli13iJ5zzU/EHf7L81CBh78=;
        b=JMUKNYQ/Uorm1mPfiretBAqd1KKOje4jcX9qzjAaDdhKuzgxVOlRkeNXNuGVt9waek
         lVUvoKhsvypiE9mSDAbMSjUU6ys+QrVwF10LQw+K/iw41mnZ5/fonFLU+LzFfeaqRfju
         m5Xk+XBo/o2olnwXRL/YUwjnu9PT4U7LZ9xkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tI5apJy6qAcGNcp49inXli13iJ5zzU/EHf7L81CBh78=;
        b=DtJX07S8eiRSw5GyOR5CcE7G0HwTIuQ2W07vyUs+TdcwtbptcTM4SQrlw54vOP2Y98
         AuVR75Dmttg5W4436IDqh1KjAjAaW5AJ2zFmvM0ptXnLAMtPU3+WDluiYhzdOPs8gZYS
         vI5uSMJumaNqCQ+5FGodYTyAYEJppSZ0KtYOkSBSO29T0S7qgMaP/MsGM6jIO5HeEEMH
         u3BW7rAOH7wBMIWuCRBhHhpAcQ+FWW28eqAkTOFRatLLK6iq1FuI/bsDHutqW+gyLYB5
         S/QozecgAxQLhJHrh3HhinPYlr7Aqg9G2DXYH2YomgiLB+fgNyoH/1BWLysnaXfQKt6A
         0C2g==
X-Gm-Message-State: AOAM533R0vJr1M6AYxsaSNO6Txrp04+IkIzKOKj9BmrqTgLHdP3O+IZ2
        52irmlQDZt9eK5eaYHpGA0SfehvCqwMbWA==
X-Google-Smtp-Source: ABdhPJyhNSy+sN0omEc2qM1autR6Z4TjysfqAe0HC8Rc2SwHKk3uYjL1Q7axqwlGmeG1MBNHylqVMw==
X-Received: by 2002:a0c:9e68:: with SMTP id z40mr1944399qve.17.1623186644794;
        Tue, 08 Jun 2021 14:10:44 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id j65sm1434221qke.21.2021.06.08.14.10.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jun 2021 14:10:44 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id h15so2428469ybm.13
        for <devicetree@vger.kernel.org>; Tue, 08 Jun 2021 14:10:44 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr34051315ybp.476.1623186173429;
 Tue, 08 Jun 2021 14:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <1621927831-29471-1-git-send-email-rajeevny@codeaurora.org>
 <1621927831-29471-2-git-send-email-rajeevny@codeaurora.org> <4df7dcddd5aca799361642ea91c37fa94e8a4fef.camel@redhat.com>
In-Reply-To: <4df7dcddd5aca799361642ea91c37fa94e8a4fef.camel@redhat.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 8 Jun 2021 14:02:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wy-a_rCrx-mjDwr07CN=281ZyomVX7dcFiWrzFExcTTQ@mail.gmail.com>
Message-ID: <CAD=FV=Wy-a_rCrx-mjDwr07CN=281ZyomVX7dcFiWrzFExcTTQ@mail.gmail.com>
Subject: Re: [v4 1/4] drm/panel-simple: Add basic DPCD backlight support
To:     Lyude Paul <lyude@redhat.com>
Cc:     Rajeev Nandan <rajeevny@codeaurora.org>, y@qualcomm.com,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@gmail.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rob Herring <robh@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Sean Paul <seanpaul@chromium.org>,
        Kalyan Thota <kalyan_t@codeaurora.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Lyude,

On Tue, Jun 1, 2021 at 3:20 PM Lyude Paul <lyude@redhat.com> wrote:
>
> oh-looks like my patches just got reviewed, so hopefully I should get a chance
> to get a look at this in the next day or two :)

I'm going to assume that means that you don't need extra eyes on your
backlight patches. If you do, please shout and I'll try to find some
cycles for it. I've always got more things to do than there are hours
in the day, but many folks from the DRM community have helped me out
with numerous reviews over the last year or two and I'm happy to pay
some of that back by giving reviews if it'll help move things forward.
:-)

-Doug
