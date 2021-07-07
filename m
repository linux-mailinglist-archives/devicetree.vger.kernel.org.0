Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 377803BE796
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 14:05:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231454AbhGGMHu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 08:07:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhGGMHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 08:07:50 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FDEAC061574
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 05:05:08 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id r26so3674370lfp.2
        for <devicetree@vger.kernel.org>; Wed, 07 Jul 2021 05:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=eg2LEXRfsjpWdaZzECnIB/6Nl4BEOgeKXpSvcx4qZO8=;
        b=SHnTV6xabCMIr1yCB0cMKNO2uXFcPs8HGQrOmqsiTgPFRte15SkHQmQZLiXcc5cyq/
         vzhzNKPLYT+s/p+2zqv68Ot54ILPli87F9UwkAzMLIGEioYTvVhBRrsGDh8EqL1CoL5n
         yoonv/8+lKdEGeZcPogyKR5ab3Ddm0HfW0L1q3pSwOQ2gzV59MfS5jY9ORY944sgEyxo
         i+se5VvKzTlpmPwssUDPDvw+lpnnOv7+63YcDW1nvkvv1jqDHDV/JwGqgoCuWClLR8M6
         EuDghvpsvKICuuhvExn2wIwW2GsezLg+07Mfyo9gJfk1TOelhGFyaXVb+I8zaVt8Sfan
         OgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=eg2LEXRfsjpWdaZzECnIB/6Nl4BEOgeKXpSvcx4qZO8=;
        b=ELLv/Q1lCRa9KRCLYfhWSrcEkMdXC0qlmb1vA7bQcwFyM+K5M9nRIDNezJDuxOo9uE
         7cDs6zPVJvh4o0ove4u0Q3s3kFbEVAsnY9HkmidNlM/TPxLEAnJ033oFu9lb8IqDZuFf
         3BHdvLOzO7Gx3MZ4rlyC279vYRbGG8whOeKPskbep27KFQvO6NhGdPdDAKkw+O45OoWp
         vW/1t8TfswF6Ivd4644DT/MqgwhEGfdK4i0hh/jPEz8hFzHlceNdyJ1HL6Wbc9BCsgaZ
         A9J3dZPQsI63wVIJd++C2Pm3b9a7TRqN1SHBsJkXU2Ye4sacD3KKLgL/PjfqWyUjHSjF
         y12A==
X-Gm-Message-State: AOAM532pRf0a/Q3gfSxaFS+HhuClYzbQPq/3flru0vGEC16hN+lWKEIw
        eDNnT1kgTuUhyNGq3E6UGM90v3DXL7eI5/3XE8I=
X-Google-Smtp-Source: ABdhPJwRQ9aRg4eK+GXc38kHaMWwAuQcZkbXW98A6o2I5cEnisd/oNi6csD+7dMjMHzJqEGA3aN6z45EMcOXoop/OK0=
X-Received: by 2002:a19:6d06:: with SMTP id i6mr12256731lfc.295.1625659507001;
 Wed, 07 Jul 2021 05:05:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210707105309.1693138-1-u.kleine-koenig@pengutronix.de> <800ac3ca-e3a0-8d6c-5164-af804c6b2d4d@pengutronix.de>
In-Reply-To: <800ac3ca-e3a0-8d6c-5164-af804c6b2d4d@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 7 Jul 2021 09:04:55 -0300
Message-ID: <CAOMZO5AqeFj=je8fvkUCMkY193DTGhKmRWEet9gY6QtR=Sj4JA@mail.gmail.com>
Subject: Re: [PATCH] arm64: freescale/imx8mp-evk.dts: reorder nodes alphabetically
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ahmad,

On Wed, Jul 7, 2021 at 8:06 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote=
:
>
> On 07.07.21 12:53, Uwe Kleine-K=C3=B6nig wrote:
> > The nodes after the root nodes are supposed to be ordered
> > alphabetically. So move &flexcan1, &flexcan2 and &pinctrl to their
> > proper place.
>
> At least for i.MX, it seems to be convention to have iomuxc at the end
> of the file. I'd not reorder it, file is easier to browse when it's not
> in the middle.

Yes, agree. Thanks
