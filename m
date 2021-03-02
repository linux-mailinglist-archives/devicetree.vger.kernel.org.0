Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66B5E32AB67
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:31:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446160AbhCBU1h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:27:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238703AbhCBP2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:28:22 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BD71C0611BE
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 07:23:49 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id m22so31890052lfg.5
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 07:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=phGkBVfIBc9N8/MYw3IsLowc0jNOtyQmeOezRPC5r6A=;
        b=IxEHOA/EeqJE9XesCg+nCfa3QJs4ZoTXMJRRwtoaO1dsS8/djz+UWJbAs59nUIy3FV
         K2RJk37iYNtFVVMwae8n2KqT6KXLsaMz+DupUwBbV3X/QoDQ3QmSZlw3bqnfXr7x0M9+
         6Bh00Lr5x3pTcsF0kX9ES2A3AGs/6hVNMJgkt9DHcPtr2p6TBqiDz3+Q14EH3dVEQv15
         PrI8M8O/MX6KRxLXecPHArez80P4gQQyHbwfXn1ItS3rQb840an7hPuiGWs44bUMI0qx
         1KWBY+Jpl9RKhWAFucv/VKzCkBEdA3ykrcitpsdOQaBpyVqG7G7SMRpyjKYYMgDZ0Xxw
         eXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=phGkBVfIBc9N8/MYw3IsLowc0jNOtyQmeOezRPC5r6A=;
        b=ATlelg5f1Z8NOrUzgab+HWWCuqxFxa0oyKnugBHXWcjjOh5bnukCc+s49hqk81na3X
         hcV1ubYng97XVnzIAVLvo/DVkoa/ivDKBk1EGJm442GSH3E+RIqgrizo87bIiYaxKJJT
         8aPruVNWc3Wc2AHyc+rNbyZN/14strnZGZXIetCEpFU1oFZhBrX9SyM4im7kfVqMsN4Q
         xqZHFJkk1HjTdaq2zdru9jIkyYbIGg9BMqQmqtcEJ6c0bt4+2Fz4zQls2VfTaA5uJ6fE
         fMZjdsZExkwYlcYnqS58FehAzm7AiwflmFjY6kH5GUxuQ41KmurL2vczrw9o0yCBQPAV
         rZtw==
X-Gm-Message-State: AOAM533YID2Zyo+064qGVXOQDV7p4H9sZsed0yvzxmI0X3Y4zlS/xjcC
        ofWc4ZIfF85U6FP92Jmi9klhWdNGCoM0VXPQlkKknw==
X-Google-Smtp-Source: ABdhPJyFEssv4TZ20RIixukIPx4G+ICtagjbJAX9g02ycgsPC8yvfaoZNRA54LDHGtijXLpyZkxVrklKXkjozmYype0=
X-Received: by 2002:a05:6512:547:: with SMTP id h7mr12960505lfl.529.1614698627904;
 Tue, 02 Mar 2021 07:23:47 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-2-noltari@gmail.com>
 <CACRpkdbjhTfQ4EcjndgE_Y7_uCT2ohadTjj-rrQAFNm+c0whRg@mail.gmail.com>
In-Reply-To: <CACRpkdbjhTfQ4EcjndgE_Y7_uCT2ohadTjj-rrQAFNm+c0whRg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 16:23:36 +0100
Message-ID: <CACRpkdaN3pYMDiPkk109SwOKF56Oxe14_bC5edftGGG0PL7VsA@mail.gmail.com>
Subject: Re: [PATCH 01/12] Documentation: add BCM6328 pincontroller binding documentation
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

On Tue, Mar 2, 2021 at 3:57 PM Linus Walleij <linus.walleij@linaro.org> wro=
te:
> On Thu, Feb 25, 2021 at 5:42 PM =C3=81lvaro Fern=C3=A1ndez Rojas
> <noltari@gmail.com> wrote:
>
> > Add binding documentation for the pincontrol core found in BCM6328 SoCs=
.
> >
> > Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> > Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
> (...)
> > +  interrupts-extended:
> > +    description:
> > +      One interrupt per each of the 4 GPIO ports supported by the cont=
roller,
> > +      sorted by port number ascending order.
> > +    minItems: 4
> > +    maxItems: 4
>
> I don't know if this is advisable, there are different ways
> of specifying interrupts so this may become ambiguous,
> I think Rob will know how/if to do this though.

After reading the code I conclude this gpiochip is hierarchical so this sho=
uld
just be dropped, and we only need interrupt-parent assigned. The
driver will know the hardware offsets between the interrupt parent
and the GPIO block, this is generally the case for
hierarchical interrupt controllers.

Yours,
Linus Walleij
