Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C43EC32AB6A
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:31:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446180AbhCBU14 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:27:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384631AbhCBPca (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:32:30 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBCCFC0617AB
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 07:27:34 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id p15so15506034ljc.13
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 07:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=r1Bp6X2TUGgr9qZgSQhS7kIyMAWZEdmhofozCo8c78E=;
        b=D8gkSeT2wzUCr9+RxZs1jMVw0J/9GwxoQQZUG5y1i9DyeuNAjLuFh3DqQzPY1akkMw
         52F3BC/uO5zHWRGDe8TTK/NJzxUqMHNXOCjEEvmwzjiNVvG9d8JDpdInobytPkALcmCv
         nbCab71U7+A48wRDdpzM/ilB13kCiPEQOdyAxyoFlYlZYNO3uuYJdELE10LsykIk3rqs
         m/9gCFRfuSavzLiAYy7pyAsnRh4CzZr32E0b3SOGWiZPC9EBUoEhiGiXoAU9vgS27k3L
         lIkmWfEVDMi7G5IFlNiOXTIVIquvsUVBn6nKtTwfHPzrx6iMZI5DVFZM1Srioigxf9l1
         Piag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=r1Bp6X2TUGgr9qZgSQhS7kIyMAWZEdmhofozCo8c78E=;
        b=aIeraOv7OpVevWVan5/kF8hcXQcIVVOjgqJB98Ip8ipxP/yMtqYCwsgJZF7aXVC2n1
         x7wuVVyZ/wUPpyvIhkzAAXbsjWYxVyGN9IAL0JbRhlHeAcC6YwXMoOVKta8Br27gN5HC
         BwsYfPsa/kCgDbK7Kkqa9/4QdfPnnAVgxWC8PI7QC8k6NiysPttu2b2UbwcfYuxf2IAW
         Vx6SVPnnIC/Wc387zhFKacC/+Lk6VWzrltFBkUPPINdWxHPSfswQf8UQsSXVwhyXrzkq
         Q3UkpOauiFEVZkPs7Uq4rdLnf1Gp8E8y43isb8tUYsDmbQ2cKY3O2OAGomV91kvV6Gui
         4vQA==
X-Gm-Message-State: AOAM533PgclBhOY/8k57EOSFiLYMP9z5bDJElZx8qyuRuJozQRO83etz
        AKnO9IodvtmsdZunbogX3rABppLpTMFb3JDJ0tlGgQ==
X-Google-Smtp-Source: ABdhPJwsbLWQHce+a+m2pHUDSfd7DMeBlapLGLDVSq9ee6WP+evL1dpN40CM581dz6vte7V78NI7dmX7qNdbrh8wWZk=
X-Received: by 2002:a2e:9cb:: with SMTP id 194mr3306679ljj.438.1614698853255;
 Tue, 02 Mar 2021 07:27:33 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-8-noltari@gmail.com>
In-Reply-To: <20210225164216.21124-8-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 16:27:21 +0100
Message-ID: <CACRpkdZ_p6LtewhcMk9zwDHRPH6=W10Gn=PjadQhXvUnyuw99g@mail.gmail.com>
Subject: Re: [PATCH 07/12] Documentation: add BCM6368 pincontroller binding documentation
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 5:42 PM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:

> Add binding documentation for the pincontrol core found in BCM6368 SoCs.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
(...)
> +  interrupts-extended:
> +    description:
> +      One interrupt per each of the 6 GPIO ports supported by the contro=
ller,
> +      sorted by port number ascending order.
> +    minItems: 6
> +    maxItems: 6

Same comment here, this is hierarchical.

Yours,
Linus Walleij
