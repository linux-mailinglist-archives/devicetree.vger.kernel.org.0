Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2CCE42CE2C
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 00:32:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbhJMWeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 18:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbhJMWeQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 18:34:16 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE010C061749
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 15:32:12 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id g36so1470208lfv.3
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 15:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T/OomM9w2GusTbCVdWitYQJgC9/Z986cg3wMugLDkCc=;
        b=iIn8C5md7RBiGzfnw2bAipABPt+03zPtv/DOq/HLswL8ElO65blVWNj9Xi0OdYbSVO
         Eo4zFMFHuevfXEK92pXYjENk6eY1NWcLNe4lFjx75z+2MjgoQUkSqqpAoqRYLhfEJddo
         5uMzn/mOrXGlBg75XlWecvyBlqKFxEusfRgLWijGHPegycDKaFJbFlOBnqxtQXv31lGb
         d0X+r94JhCIkuxRKm6yBj/ouq7toJNfJ9SkyJwwK87fhNSxEja+J8JtvsDm5t5fZlr3/
         8tCIWi0WipX/kw0TTbIFGX0BTole/YW5bn6Vf3U8qbZhUTt3MFm/9LjEEtqjcFKoV/sP
         +PfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T/OomM9w2GusTbCVdWitYQJgC9/Z986cg3wMugLDkCc=;
        b=ENAB01Jz8JcsuYn6W8TI0jn67DfttU9jmCFTrDNmJ76bS6rjaSiVsqTM8Rzs+bY8FG
         BrFqxSZ2/ZzNU6WRngDbGIIL6cYdz7dKKCrMgwQNxU5FjdXUr8zSQ/sUVcMs63T/Y69h
         tZyP8dE4AXc0ylguseFcaLaxyou147Y607mGVY8mMmjG47/TZbrkSwrrivCciY08IIiG
         ayYVduEMn6Z/VqieZmjU/dHE5QZaQLVbME1dtQ2ZN228LOirRpzl/1SJCGzohGVyqAui
         /C/jI9vVqdi4PoazMUKRA6VKtdREeJ6m5r8DnnwcaNtNHv1OzLQ7JHlkfGD60vDKwSNI
         I9yw==
X-Gm-Message-State: AOAM5336G5OhYqlf6rcajL2J0M7gi7msHM1JmFScGZbRUpR11YxPHXdC
        D9HmWFfLQfErQgeunjNsJJvqX0G7aoecrq0kku8+zWmPAUk=
X-Google-Smtp-Source: ABdhPJxBSo+RJ+XSsLVvldxL70PplGkXVK8P4+WfUMNkYtB7Bu45xbhCyoL5p3gR6ii06cEdUwToJESL+JN7cP8U8Pk=
X-Received: by 2002:a19:c10d:: with SMTP id r13mr1679243lff.339.1634164331067;
 Wed, 13 Oct 2021 15:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <20211007144019.7461-1-jbx6244@gmail.com> <1633661172.660863.1409603.nullmailer@robh.at.kernel.org>
In-Reply-To: <1633661172.660863.1409603.nullmailer@robh.at.kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 14 Oct 2021 00:31:59 +0200
Message-ID: <CACRpkdYArdPwEVf_5pwsROKPjbnVAtU3mf9v1z6WXGPoBb=SZg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip,pinctrl.txt
 to YAML
To:     Rob Herring <robh@kernel.org>
Cc:     Johan Jonker <jbx6244@gmail.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 8, 2021 at 4:46 AM Rob Herring <robh@kernel.org> wrote:

> On Thu, 07 Oct 2021 16:40:17 +0200, Johan Jonker wrote:
> > Convert rockchip,pinctrl.txt to YAML
> >
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >
> > Changed V3:
(...)
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.

Rob can you tell me how you like me to handle this?
Do we merge the nice new bindings and deal with the
aftermath or do we need to fix the DTS files in the same
patch series?

Thanks,
Linus Walleij
