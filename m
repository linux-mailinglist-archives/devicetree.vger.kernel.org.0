Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA2874B19DD
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 00:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345934AbiBJXzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 18:55:40 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345913AbiBJXzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 18:55:39 -0500
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E195F7C
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 15:55:39 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id y129so20178108ybe.7
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 15:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NBgjpXZigvKnq2ReZid/vVB+xdrDhkSnQh0scwSixew=;
        b=xZbxhSdG7BP+bJnrVyoE2lszS+OHv+a+H3cQQ/XSPeuBnunccAuxwGYKSfskaMedG+
         M854Z+EZQraXLGral30yOEGTBOxMdz2uKrWOI4zvQlOOUMiIBbEj99+ZHDFFoIPOYpHX
         FWVn8PSeldaBpwu8/kCQdARjDyNTXAQ6Gc3X6ARJRIb/8EfAQjg9JJTpALPioBWNXJms
         GbUG5ppLhIkhcipfpkHzhmLVaYwOfmwgN+/Mp1E6pB7sM8K5YmMFALbSjsySG7zeVMyN
         2ZYQFhiHmgerzNCmL1Pb6REYcyjuhJXQDBIy3ElkgmmTYutzGkK8emj4JbhcDG45LwX5
         yaPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NBgjpXZigvKnq2ReZid/vVB+xdrDhkSnQh0scwSixew=;
        b=hjdNwu9ePlsEpLnXYKGf/CUlQlbHW72mYcve0o+K5eRhB+BuU9x/njGZ+4T026Psfu
         llZ4jf0dCQOcYpPU6qYnvBvtBtl7w+8twtYpwg1gZ5PamOtyAla86VUsEgAR04VaF9+r
         UCfPuknZOFtKPg9N8VK2U/OzWkwRE5hbfeOgdyvXuUvgSQEU8R2YtCUvYRQXJAtpwmmn
         l0v8CT95nc5QcPjIECevatpvJcUDOFx2PjqmItCy+7IH1DOm7LUxDo/93svCAr3z7lVJ
         YlmuP2MxdOBMSfn7RChfvR8JR75Qa2YbcRQq2UorQIeVPCi6VOFgLSIVdgsGP1OjRJSQ
         Q6qg==
X-Gm-Message-State: AOAM530a96+8YMVCT5WhmyqLxYJyl2iH42p+JzdvbYJZX5eN3y4mmULo
        RTuB2l0qdlplwv+gYNlHJH6+PQJSLm0fy+ZPaoS89A==
X-Google-Smtp-Source: ABdhPJwipupTHC/BooALieYlhlXLEn3fYioHlw3JUyAr99lmECPcYnKONg/T+vXDZIAm5NxFs4SAErzm0/3TmmckDVg=
X-Received: by 2002:a81:4cc3:: with SMTP id z186mr10395825ywa.140.1644537338489;
 Thu, 10 Feb 2022 15:55:38 -0800 (PST)
MIME-Version: 1.0
References: <20220120150024.646714-1-paul.kocialkowski@bootlin.com>
 <20220120150024.646714-4-paul.kocialkowski@bootlin.com> <CACRpkdZnw-Tf2eQwO+LZRW4UacR09qWRWct00=XLb4pfa-N3=g@mail.gmail.com>
 <CAMRc=MewxfQqM+QvzqjP05Qe5TeiEx+iiOFZLmieqCCVOL9UGQ@mail.gmail.com>
In-Reply-To: <CAMRc=MewxfQqM+QvzqjP05Qe5TeiEx+iiOFZLmieqCCVOL9UGQ@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 11 Feb 2022 00:55:27 +0100
Message-ID: <CACRpkdb2d2q8DjgjG5_h3TH0ppugAEVyRvYGhNMrWy3fzq2Jcw@mail.gmail.com>
Subject: Re: [PATCH v10 3/6] gpio: logicvc: Support compatible with major
 version only
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 8, 2022 at 10:55 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> On Sun, Jan 30, 2022 at 1:43 AM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > On Thu, Jan 20, 2022 at 4:00 PM Paul Kocialkowski
> > <paul.kocialkowski@bootlin.com> wrote:
> >
> > > Support the newly-introduced common compatible for version 3.
> > >
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> >
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > Are there dependencies between the GPIO patches and the rest?
> > Doesn't look like that.
> > Can Bartosz just merge the GPIO stuff to the GPIO tree?
> >
> > Yours,
> > Linus Walleij
>
> Except I'm seeing there's no agreement on the actual compatible yet in
> the previous patch.

Yeah I noticed that after writing that :/

Yours,
Linus Walleij
