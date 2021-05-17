Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8363C386D16
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 00:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239633AbhEQWoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 18:44:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238622AbhEQWoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 18:44:21 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A1CC061573
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 15:43:03 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so6971269oth.8
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 15:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=qIX+t1YKWWujAYO4RKswTYxIn2MPzDzLJIB7Mq7c8Zs=;
        b=b+W4cpgVKx3kWrlVef2M79/pgvOqXNvJl3FbrPV3bSuaY1bLFGkxN1+GcNoMVH+93w
         K7FowwMRI9xBrgzzz/+eZX/ezkLOspMSXjuh4YyY1vuXB9vKtmGVYeVTqVmyeL9vu8su
         qsJoEdef0PkAAbO7LQ1c6oX2FstQ+o6WWyMro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=qIX+t1YKWWujAYO4RKswTYxIn2MPzDzLJIB7Mq7c8Zs=;
        b=l3SVweW/gsvnORCVdFjncFoVGfsL+FqvrvsTdFpXIyjbvB78IWfK3b7UaplQUVclcS
         No4biDewS1fEVOA/uFkaCHMYDhghhZQ9HbkIibkqZdagKcOXniM9nRIA9n5r+I9dQSXT
         ARv9DGJPVSasvrOHFrzPWSwQOJFAcY+bV9pAs4o1cAda290w+PYyJWVWnP9hHnN0//Lt
         vjToNzX+Ga9JphZo0ZicxTIP4kS+++iNo+Lklrv9jZKTK7j6np3wKVNya3QWrsbJMH8w
         oZ7Xu/jLtzOTF0rZe1XVI7bDPSjbFmPBfdFsSkuJoLaxnUza7srf1QgR3FFdRjNzNi24
         dy3w==
X-Gm-Message-State: AOAM530rrMdAC96fWoeAsbJGUNn8tQWSDjDbKq+wXmv80xVaLF/kpkOl
        SzCDeNfyz/SlTYsgCFwbUusCnwP28jZNzFT9Pa4NiQ==
X-Google-Smtp-Source: ABdhPJxcjBpwmNvcCV5pFmHQfODx320xdu80rVlOUvrDwd+0Se/xR8dkiiavxISQU1Ht/wA9YwYeHRfkcR0QHJNanMI=
X-Received: by 2002:a05:6830:1556:: with SMTP id l22mr1576626otp.34.1621291383035;
 Mon, 17 May 2021 15:43:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 17 May 2021 15:43:02 -0700
MIME-Version: 1.0
In-Reply-To: <20210514122051.266169-3-ikjn@chromium.org>
References: <20210514122051.266169-1-ikjn@chromium.org> <20210514122051.266169-3-ikjn@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 17 May 2021 15:43:02 -0700
Message-ID: <CAE-0n521WWMmUs4oPxpc7kGC1pxZygdjHkU_ULa665-6kf469w@mail.gmail.com>
Subject: Re: [RESEND PATCH v7 2/2] arm64: dts: mt8183: add cbas node under cros_ec
To:     Ikjoon Jang <ikjn@chromium.org>, Lee Jones <lee.jones@linaro.org>,
        devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Guenter Roeck <groeck@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        linux-input@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>,
        Jiri Kosina <jikos@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Ikjoon Jang (2021-05-14 05:20:50)
> Add a 'cbas' device node for supporting tablet mode switch in
> kukui devices.
>
> Kukui platforms with detacheable base have an additional input
> device under cros-ec, which reports SW_TABLET_MODE regarding
> its base state (e.g. base flipped or detached).
>
> Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
