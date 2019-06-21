Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 12A0F4EDDA
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 19:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726059AbfFURcE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 13:32:04 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:33914 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726032AbfFURcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 13:32:03 -0400
Received: by mail-io1-f65.google.com with SMTP id k8so51706iot.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 10:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=x0w0cICqmKMHbqMi3TqTJo/d6Opn22c9DRuCkjr5CKM=;
        b=l8HMkD1dRulhfDkq5w4c4pNGnTo2f0drZAn2TA7/ulWSn4SEEVCjvhfjE9a7s0Q8mG
         XVoeWrkG8EwD94uhco+flGFOYkoAU+M8dU8wSqv4+EuwT9LfetuuhKL1dAoGUecN+3fL
         jUwadaN55cnpbP8X8g9D/RSzSMel66BWTgc9DfQHImMzMiE6hnm2x3G+PBwU2vN4kS8V
         COSml29XhDuV5Qqh/PAC9T+Eup5CnbND93l3iOjASRwlaW9Pfgm42Cb8TKd32l3bkAXO
         QZaOTeFXicL4Ml4zygN8ndvJToZAGXvAzIYvTKB7La/y/JmVwov9ySUMFcPOwjIvEVcN
         XTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=x0w0cICqmKMHbqMi3TqTJo/d6Opn22c9DRuCkjr5CKM=;
        b=pSyVdJRQeLLDjjhIid8BUk1PtlWm4jBvbG9ICZgqqCGoWdmvjNmaulrZB/epSt0YUS
         l3s3rAqDy1f0yN1HlZRAHwkzR4uVFR9nx6JX8QPfnKNLl1JD6qan6BaBwW7dx6mR/Nxs
         upAQp66arBqfnCECO0CgzdHH+NtGnsIxs4Yf6/2SgUhNsTGkno9FkL2YcWK9GY9q3uvs
         xUXi38UI9vPnj3CHb1BOknvzZ+C8zROM3TzwVTXt0Rq8IBAxs8uq1crdYMSFhM+8kCeb
         M5ljaJFTVAZFMAeawEVBgKJ+ArPtrzUyhp5Yv22Uv9ZK9Orz1kA8HGl0NekNyPu0DEyv
         CWdA==
X-Gm-Message-State: APjAAAVn1yuwMkKyB2lsLOW9TSTpIeg5z0ergj62OA/fi51rh7SdzDSo
        gXJLB29YQXcm3SZCiuR5rYQT5CPhqy6GYUVX4QA=
X-Received: by 2002:a02:b10b:: with SMTP id r11mt884597jah.140.1561138323173;
 Fri, 21 Jun 2019 10:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190614185547.34518-1-jeffrey.l.hugo@gmail.com>
In-Reply-To: <20190614185547.34518-1-jeffrey.l.hugo@gmail.com>
From:   Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date:   Fri, 21 Jun 2019 11:31:50 -0600
Message-ID: <CAOCk7NoaP=DkNLgdiUw5M0JYRGEGGCFQkn1sCO9dqtexMPC9dQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] MSM8998 MTP Display
Cc:     Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, thierry.reding@gmail.com,
        sam@ravnborg.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        DTML <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 14, 2019 at 12:55 PM Jeffrey Hugo <jeffrey.l.hugo@gmail.com> wrote:
>
> Since we are trying to get the GPU and display hardware in the SoC
> supported, it would be nice to be able to put the output on the
> integrated panel for the reference platform.  To do so, we need support
> in the Truly driver to support the specific panel variant for the
> MSM8998 MTP.  This series adds taht support.
>
> Jeffrey Hugo (2):
>   dt-bindings: display: truly: Add MSM8998 MTP panel
>   drm/panel: truly: Add MSM8998 MTP support

Lets actually hold off on this series.  I thought I could solve an
issue in the DSI driver, but thats not working out like how I'd hoped.
I may need to rework this.
