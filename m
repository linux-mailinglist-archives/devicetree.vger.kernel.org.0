Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F8363F05F3
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 16:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239185AbhHRONA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 10:13:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238994AbhHROMo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 10:12:44 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAFD3C061796
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 07:12:09 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id g21so3388727edw.4
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 07:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eB91atCKNaWXZ4G9jJEBMaY5XPxe3TqKcsNVpOzbuIg=;
        b=DTpujLDvvVlnCM0pQBx0BGUvqOtWu8KBNz/CCnb7ZL5qIIyj7oaB3Y+4sG+KNhUGLW
         QODJIvfC/DH/QkIFP9RbwFPkJPfBFs6cRwVYwKnmsLfbvPwhM5XuQKyQMvEihdS7/h6a
         OliQ4yemaAPXBuf+QpGJZJSXwNRm2FepmDXyvB0z4o3M3N4/pSvlRBHUwQM4y8TYj31K
         xcA7guBOAdi/pbrejynrby1xf9Bq9kk5S2qRJ1gsLRTlU3LWDAxGLOU+yCb4SY9qZDqC
         H8sTkMkmtdJix9r6CICDC7d34EnN+F4Si5DBumcF8AzLxuik7TCkS+UPlSlqiAZLWKfv
         YiEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eB91atCKNaWXZ4G9jJEBMaY5XPxe3TqKcsNVpOzbuIg=;
        b=Im1wbNRCJoekxKXqjPHw72TCjgw6tjVkzmK6Qbe7P3XxD4Eg+USQVXmb5rQtkc3Gwu
         MlGi4CiXPB8sciYyuJ8mQSIQ2zsCznKO2cOoz4efnF5suhhj719vKZy7+4RIdEPTHPgk
         Q35BGAfHGORjbo+YZ20XDMIxczWdmvNlrtYZhKXFW9TQ3gEobbBaIRxD3r93NX5Qqb3b
         xNVnd79gYDiNh6gFWhS6IFec0BvKK89q4FFFZYiSsAGhXBu/9r5zQNipyGCLZmce9AT3
         KBtcK7+7MMx5mLnqR1Wjyxm3AMjIK7evWNsctNIODESsAYPjGjLbq3zJ0CYlztQptgTR
         dnxA==
X-Gm-Message-State: AOAM5317jFfdkXT+XkitgOLdlFDJ8FekFYlBcJTe1Mu/PRwqY1Hosvlx
        H2yPtlWSYTxDNVWwoZ3w+P9qFBpv3nPtvqyET5hUOQ==
X-Google-Smtp-Source: ABdhPJyCq8sH0IgDkVaL6YJK/HNWvHaqTzC1UOGz6EehLJOQW2PJ8Uo0EyT8gsWJU0/XrPvHBEQEwKmT97rUZZwiONY=
X-Received: by 2002:aa7:db8b:: with SMTP id u11mr10261665edt.362.1629295928412;
 Wed, 18 Aug 2021 07:12:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210811025801.21597-1-yunfei.dong@mediatek.com>
In-Reply-To: <20210811025801.21597-1-yunfei.dong@mediatek.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Wed, 18 Aug 2021 11:11:57 -0300
Message-ID: <CAAEAJfDWOzCJxZFNtxeT7Cvr2pWbYrfz-YnA81sVNs-rM=8n4Q@mail.gmail.com>
Subject: Re: [PATCH v5, 00/15] Using component framework to support multi
 hardware decode
To:     Yunfei Dong <yunfei.dong@mediatek.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Irui Wang <irui.wang@mediatek.com>,
        linux-media <linux-media@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        George Sun <george.sun@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+danvet

Hi,

On Tue, 10 Aug 2021 at 23:58, Yunfei Dong <yunfei.dong@mediatek.com> wrote:
>
> This series adds support for multi hardware decode into mtk-vcodec, by first
> adding component framework to manage each hardware information: interrupt,
> clock, register bases and power. Secondly add core thread to deal with core
> hardware message, at the same time, add msg queue for different hardware
> share messages. Lastly, the architecture of different specs are not the same,
> using specs type to separate them.
>

I don't think it's a good idea to introduce the component API in the
media subsystem. It doesn't seem to be maintained, IRC there's not even
a maintainer for it, and it has some issues that were never addressed.

It would be really important to avoid it. Is it really needed in the
first place?

Thanks,
Ezequiel
