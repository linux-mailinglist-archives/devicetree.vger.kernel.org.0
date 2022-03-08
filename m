Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AF5F4D19F2
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 15:04:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233577AbiCHOFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 09:05:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232904AbiCHOFW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 09:05:22 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B92142A14
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 06:04:26 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id u3so37965831ybh.5
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 06:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ztuy8VhVTaaw8Ilxr41jLiszCCDbp/SzK9cYm0UCZmU=;
        b=me7lBTWMjyab9fr0cxTAY81lZo+cHm694XLNEmD5jhegCxY6uQbWXpx5UCo2C4LUH8
         ctgFG+r3QAluGcdRvQIC6PoKQDzLqGapT5hwPe1kpUIt58umsTLmfSje2U8TM8PPUx3k
         75+P3yrEVFjv5YlN/UtN4JYH6nZiYrkylxa6w3OmJ36qfXmlaXeiemuNwgNUHHNSF8Q4
         IRTK8KfsIXmP/okRhFZ6okucVk/UJnFEa74RDvM5DchIBk94NYMa+mbchfCqZAJkIkbw
         JuFyA4YPjMLpQwQxbj+hUIHlOn1kNBAu5iV+VYOrhcZ8YCpTjDfsv56UgSwuLdYlP8TP
         XIGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ztuy8VhVTaaw8Ilxr41jLiszCCDbp/SzK9cYm0UCZmU=;
        b=yH/kbrAEOjcGzwwt7FvegXRFe8vZNwxBf1lMxygnKDZ+kBj5FYyYmL1m7+QNC5MALG
         UYQGjeLkbBrZlvjYeKq8A/Vu0yBAmpOhOdPmSxMxULuBP6gQHjO2rDuBALxOyWnoHN3h
         tEGsGVjsrwy3Xo5JcZAQPUaIbeNxu3/VGprUsUglXekUxV5jqCmnfGvcze3GTr+pG/Xv
         3qwk9Vtv8kjrChlCLqKANYwS2csQdME7Q+ZdOu3VO0f+wrS+kGSPjZ927UvU/yDgye7D
         ofgQxWvvaFUQ+Sau1K7aNf39bR7fo/aQC+ADL+QfvqNqMBXz5w9p2NrN2p1IcDfCe7iS
         fIUA==
X-Gm-Message-State: AOAM531x0Mbw6TKH8ehh9KzRPHGZ69cENmfngIWfOqO5blJ7rX+X4Br7
        vLzMRbllrTujMYrDTibFbR3ryZOJFMx2eRn6DzKEAQ==
X-Google-Smtp-Source: ABdhPJw/jICR5t36ye8bP3B/l9rTbY4oei1RUuRxkwrS0Jj3llULUf6q6zkgPTpEoQRi2ubiZajn8QhRgVsXFd322Ms=
X-Received: by 2002:a25:ac98:0:b0:628:6e4b:66f0 with SMTP id
 x24-20020a25ac98000000b006286e4b66f0mr11867056ybi.28.1646748263827; Tue, 08
 Mar 2022 06:04:23 -0800 (PST)
MIME-Version: 1.0
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de> <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com> <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
In-Reply-To: <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Tue, 8 Mar 2022 14:04:12 +0000
Message-ID: <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Mar 2022 at 08:42, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 3/7/22 21:09, Daniel Stone wrote:
> > On Mon, 7 Mar 2022 at 12:18, Andy Yan <andy.yan@rock-chips.com> wrote:
> >> When run a weston 10.0.0:
> >>
> >>    # export XDG_RUNTIME_DIR=/tmp
> >>    # weston --backend=drm-backend.so --use-pixma --tty=2
> >> --continue=without-input
> >>
> >> I got the following error:
> >>
> >> drm_atomic_check_only [PLANE:31:Smart0-win0] CRTC set but no FB
> > Can you please start Weston with --logger-scopes=log,drm-backend and
> > attach the output?
>
> Please see the weston ouput here[0]

Are you running with musl perhaps? Either way, please make sure your
libdrm build includes commit 79fa377c8bdc84fde99c6a6ac17e554971c617be.

Cheers,
Daniel
