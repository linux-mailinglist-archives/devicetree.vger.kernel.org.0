Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6050B50E3A3
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 16:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237278AbiDYOv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 10:51:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237185AbiDYOvz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 10:51:55 -0400
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B87DBDCF
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:48:48 -0700 (PDT)
Received: by mail-yb1-xb2b.google.com with SMTP id v25so5696332ybd.8
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Sr6b7C5afJDDAqoesKdOXVbx/5xPPqhbOStz2BfAAM8=;
        b=74V1JyaQOyVdE8/paEDiToqLZYghvipFratYXEC+AESSwVYoa3TsoKuI32rsI9cU6J
         7+/LxH73LeT6w1JTcAPZHMlrgBxBWl+e+UXua7svahYj0K4E4WxyAoZS855LzYE7gB0q
         RnVHaTAvY1C/CJgLyneeFnNGqJs/Rg4UkDHMIajj6fNFqzsH4bM+AIWV9e3AO5KWrL6C
         o+UUOAOQSBdzcBsP8zkYeEgfDBrJOsEOradTrVYtufsqFj2/h/kJNPZSQSR4Jt6Wj9oI
         52STxYoJuRvVi9TxEWWSOfrmebfqHu3E3d2rdOl3Fe/nspJd/ijy9dF4pUTVgM8WYyj5
         MUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Sr6b7C5afJDDAqoesKdOXVbx/5xPPqhbOStz2BfAAM8=;
        b=HMZ45+AhuhtFxQ3cBk0E5IVt1BE/+bvtNfpDG+3unrYRxGWeixnb6BX5ASU3xK1Vit
         XB/GXL3ihkDIzonVZDigbn0ctAp6RJuwQ+WB4+qhRA+wiF/yZgtbkUodbToaMiv5A6kK
         /vBGJYs4vzICWRIPjHBqQqtpOdh4o4q+QZmZ3SmvNibotWeJkJOC6wLwc9tD9aaD4Psu
         0yN6ORAp8/O/iQjq44dYLxKhRezsLkuLj8VL9s/28sNBjZJPW0ipIuwANeXJvO+yqMaj
         hGH0q6E8FJ6tY2eTcl53sj2r6FG8G3pka1h/cxFuHYeSsF+Vhs/8XnsJ6HfYY9uDPy2z
         296g==
X-Gm-Message-State: AOAM5314LGRW+L5fDGL/9XmEgnd7SiySuMvwQg/C4mJPDT7K4YciH3g0
        VKnwrcX9OxD461/UKalkqt+EaMIAWE7ysmEYePiNXw==
X-Google-Smtp-Source: ABdhPJxEJzKWpI1kpuZz9yZC1dNt7gUFPbj7o4EtpTcTkIM+fwPafDb8pnoI782CwIAAuuDCwtpjyZSL/irjFHdrk6Y=
X-Received: by 2002:a25:ad0e:0:b0:648:48f7:a03 with SMTP id
 y14-20020a25ad0e000000b0064848f70a03mr7074330ybi.111.1650898127908; Mon, 25
 Apr 2022 07:48:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Mon, 25 Apr 2022 15:48:36 +0100
Message-ID: <CAPj87rOqW8m-NybVYxdMP9TiTr4fhsBpN62j07KN9wG9mZGDxg@mail.gmail.com>
Subject: Re: [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 22 Apr 2022 at 08:30, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> It's v11 time. There's only one small change to v10. Discussion seems to
> have settled now. Is there anything left that prevents the series from
> being merged? I'd really like to have it in during the next merge
> window.

I don't believe there's anything left, no; the core driver itself remains:
Acked-by: Daniel Stone <daniels@collabora.com>

At this point there's no reason to not push it into the tree, and any
remaining bugs can be shaken out and fixed there.

Cheers,
Daniel
