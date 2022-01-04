Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03AB24849A7
	for <lists+devicetree@lfdr.de>; Tue,  4 Jan 2022 22:04:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232432AbiADVEx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 16:04:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231972AbiADVEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jan 2022 16:04:53 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DBD0C061784
        for <devicetree@vger.kernel.org>; Tue,  4 Jan 2022 13:04:53 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso48737646ots.6
        for <devicetree@vger.kernel.org>; Tue, 04 Jan 2022 13:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cCtePTanf/zW9lVfq/J1G105iUcs2zw4EeWuPDxMyOg=;
        b=SZR7F1/1uB7p6V+WD0+oJ3EQMwTYAYd2B1LlLdgSJPGsX33kqc58llm3enahv3FalU
         t5fahl+BMszCOIYXR4OcP7D2dFSfKtS5S+YHxGlvt8Xa/iKPreIlB9+sGLOeA6xShl9u
         JCft+yOXzE/xP/YYXpANG/OPXvALLTUGGuyKdmS23G16y3SkXu7NSfJiJ3wNOFjLuKiQ
         5sNHJzTFGZaGrtWXmw1epJboN8u+DF0+mZfvNIVPFHtg3wOQIWg8BV4LWW0XMwaSsZTi
         A7OegrgEEEOsPT/PEdwqnYla2jBPGXOzzAASsxHNN5aTnUmjG7elBZEaasscN/yMwgKo
         M/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cCtePTanf/zW9lVfq/J1G105iUcs2zw4EeWuPDxMyOg=;
        b=AxW7XW1C0rkuIjC+6HUNYHXbNkTr+lmnxmpa2mUWUifxewf8yWKGDHV+CdJg8zyZNM
         3SStvwYPTu8pwBb5p545Y19BGgpH1+MJgVmLQ+cOKmpSuhjLJTkfrtGR0EIUgSeCZ3jn
         nWF0Ouj7DxK6gC/PE+rbh76IDb1apl5g6nUVzU/XvuTU5qDdeKbCaUraUAiiWt5xLMDK
         DmovpPAsEeFh9RTi27jclFfv46Wg3picq0Sp/ZNhInJm/oFR9nHBqWc5JFIas5qWLkGF
         63yQykL/1hH4H0AiIYgi1Wde4WiVXAiCmGbj5gMa2IJLzX7+EUk6fqtk6x5E8lIBTi1g
         Zf2Q==
X-Gm-Message-State: AOAM53017TSsZiJe8jtDE0Om2qnfzu53E1upXV+wIS2WoDrpW8crgcQe
        QrvXnlSf2LfXRzr0HT+WCmhU34boI2nowAlZOq0Eig==
X-Google-Smtp-Source: ABdhPJwUMXIwz4r+UdDrcL9aS4b+27UrKQWj5x7N6066VYRnyXlK1ovNwa/Fnwpyy5CAQR+HcBXlgATmy0ZFTLTG2Ok=
X-Received: by 2002:a9d:463:: with SMTP id 90mr37113104otc.35.1641330292493;
 Tue, 04 Jan 2022 13:04:52 -0800 (PST)
MIME-Version: 1.0
References: <20211027181350.91630-1-nikita@trvn.ru>
In-Reply-To: <20211027181350.91630-1-nikita@trvn.ru>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Jan 2022 22:04:40 +0100
Message-ID: <CACRpkdaumfXijp_QGU8hL9TTmFYBNaaBe+_fuc1hCJnA_CfWNw@mail.gmail.com>
Subject: Re: [PATCH 0/6] Add touch-keys support to the Zinitix touch driver
To:     Nikita Travkin <nikita@trvn.ru>
Cc:     dmitry.torokhov@gmail.com, robh+dt@kernel.org,
        Michael.Srba@seznam.cz, broonie@kernel.org,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nikita,

On Wed, Oct 27, 2021 at 8:15 PM Nikita Travkin <nikita@trvn.ru> wrote:

> This series adds support for the touch-keys that can be present on some
> touchscreen configurations, adds the compatible for bt532 and fixes a
> small race condition bug in the driver probe function.

This appears unaddressed since October?
I see there are just some small nits in patch 5 & 6 to fix, then
it is finished.

Do you have time to pick it up for kernel v5.17 instead?
Make sure to collect all Reviewed-by on this series.

Yours,
Linus Walleij
