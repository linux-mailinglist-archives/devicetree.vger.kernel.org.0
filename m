Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA2AB38C147
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 10:06:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbhEUIH1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 04:07:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229971AbhEUIH1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 04:07:27 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41A4C0613CE
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 01:06:04 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id n10so19292025ion.8
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 01:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nLgutOYMl1GMr2L+DWd3t+nM78vyp11ue7Ti9kGh5WY=;
        b=RLCkpSbUTDgmL0IUkNKkbmahQomlAqn9LVv4OjtlEGPKEwf/we89iYS8PkEh7NMqj3
         IAneffvJZrHAvht8if9QuBmdyHhvk2UDoSq1UvZpkI8SQDeMytix6Oq+ys82P4DA7qNd
         I3tazjWsnnIEfHimQYEFmcdmjmKEylDeeam+tOPNbq6OKawmBRtMkgc4/ai1bAA9Gmus
         Xe8Uj8dpmbD22hxVasY9Z+UH9ixx3pb0kr09WVsc5qI3+fYKN7JLXHncK4ZnUgmOonEb
         bWzKeZtQtZncb4z1KUPGbi/0rpc1JLKRSYLFNhFoV/XFQtYRwHp66ut8KjOGy/mVAgQk
         qJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nLgutOYMl1GMr2L+DWd3t+nM78vyp11ue7Ti9kGh5WY=;
        b=ko/d9UmV6gFPTXzdO+8u7FqZnphUJKJ25F1QtjYCHPD0Il/DMc4ZdBBw5L3DffKT+C
         PIKdiTTjMPlwfM9PGadeWqzRumQA3mG14i/R8rDQPbsbp2keWqV0KYL6PGcmKaNazeDl
         2c52S++P+Tn1xrCQlrm1vplTMtvgbx/Ue9gQNq2lO4oCOA8uuopMbzqpcctI9Bn3AL9T
         57ZU90m+CdMzo6qU6B225wcz5FkblPzibdN/zSi82XZBnaz2OwkZNsl/HdZG1unOuV2g
         q9Gb6YKyIJfzWg1TeYcTE8XZ/IW+a2IEdZbjZcZVbX/GfChfu5Lr2fCmjqfZ83FHxpsL
         XnKw==
X-Gm-Message-State: AOAM530RH+H0RD1RnRXOLNfwXNG+TdnjzO+SGhbnazulUHRySTFISyP+
        i60veJZ+bJYIpaqJGAXZ8SJ7Q18R4TsPcwMVZDHFBg==
X-Google-Smtp-Source: ABdhPJw8QQBmq3fEOwfOK/ErgYCCLNXidUnXXUKXQuBmy4OkSx4beXK+d27kBMvufIEEpLJJ2b2A29KuaUHg7Fqdpzg=
X-Received: by 2002:a6b:e00a:: with SMTP id z10mr10832250iog.109.1621584363791;
 Fri, 21 May 2021 01:06:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210521070139.20644-1-irui.wang@mediatek.com> <20210521070139.20644-2-irui.wang@mediatek.com>
In-Reply-To: <20210521070139.20644-2-irui.wang@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Fri, 21 May 2021 16:05:52 +0800
Message-ID: <CA+Px+wWzRHP1mdG57UDbT7_A61kT7Ef4JVVtjey4quFXq=PebQ@mail.gmail.com>
Subject: Re: [PATCH v4,1/6] media: mtk-vcodec: venc: remove redundant code
To:     Irui Wang <irui.wang@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Maoguang Meng <maoguang.meng@mediatek.com>,
        Longfei Wang <longfei.wang@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>,
        Yunfei Dong <yunfei.dong@mediatek.com>,
        Fritz Koenig <frkoenig@chromium.org>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        linux-media@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        srv_heupstream@mediatek.com,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 3:02 PM Irui Wang <irui.wang@mediatek.com> wrote:
>
> From: Alexandre Courbot <acourbot@chromium.org>
>
> vidioc_try_fmt() does clamp height and width when called on the OUTPUT
> queue, so clamping them prior to calling this function is redundant. Set
> the queue's parameters after calling vidioc_try_fmt() so we can use the
> values it computed.
>
> Signed-off-by: Alexandre Courbot <acourbot@chromium.org>

From the guideline[1]:
Notably, the last Signed-off-by: must always be that of the developer
submitting the patch

You should provide your signed-off.


[1]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#when-to-use-acked-by-cc-and-co-developed-by
