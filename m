Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44EFB4AE599
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 00:47:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238243AbiBHXrG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 18:47:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238252AbiBHXrF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 18:47:05 -0500
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4061CC061577
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 15:47:04 -0800 (PST)
Received: by mail-vs1-xe2f.google.com with SMTP id t22so778722vsa.4
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 15:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sOZ1/HmS7XU5V/LDu5A24lCTTMFiGZWOuTFw4nQO1Pg=;
        b=TudL7nkIKdegfN6eFSMj27XML9pjwgnS/zGcz6vWwSHZAZ2H4Vi1K6Ap/Ptslueqnp
         NslRfwem+KjhgBV7JbfLD051SsWZ3KOI9zbw2ix4wZ6bX+iidlL1w/sZwJV1zuScQPQI
         ao7/1kfK3gFUKqCqUs21Yp0xmEFsOoKh5bgqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sOZ1/HmS7XU5V/LDu5A24lCTTMFiGZWOuTFw4nQO1Pg=;
        b=MHaRYHehu6JBlYDfRhkOAyR+J6/RCjS6X6hg7rPctIThUgcM/fFV2A6YKPyCZ+FENt
         fvqdBEev/Oq6ksbMVS5JgMtujylpowKCR74Wm+TyHbmOCR8L2D/e2bsagF+62nROecEE
         Eln1SPG1wUYC22zDbosqN7lsPQ/+3tcFGMtB5gcOyWBWfepFcWxW28r4J6HfKRAccgt7
         AuXOhbmotxMAy0WqqdCMFT674T7I1xMJfZdd6T4zbkXoBYty6EaPdaru9uWf3yWaGQap
         pMqub7xmufH0kMR2ZEWi0FqbYI3qdk5vtTNfJY258lzKtG60v64dP0RJC/crCYqUM8ox
         qmrg==
X-Gm-Message-State: AOAM5322zwAPa/Rs/IFu+9YAzhAEeOBRbS6so9bWjpnIRtjsX/M43w/W
        zk5BppZYvNzRLkld5DRPEdRHkYleGWL8iqeCw6x68Q==
X-Google-Smtp-Source: ABdhPJxq1zn10SEEq0v4RMUk2mIAVq7gGoJdgGcgvoDDDy0oiG2d2D/qNJOYy9bsGYyrxOUqzUpBNPJv3+gSh2iZKZU=
X-Received: by 2002:a05:6102:913:: with SMTP id x19mr2432786vsh.18.1644364023249;
 Tue, 08 Feb 2022 15:47:03 -0800 (PST)
MIME-Version: 1.0
References: <20211006224659.21434-1-digetx@gmail.com> <20211006224659.21434-4-digetx@gmail.com>
 <YWimShkkxkR+bQLK@robh.at.kernel.org> <CAODwPW-2othAhTC9a_joBdHScA86iqs-FkZJZDrK5LxrJm8F8Q@mail.gmail.com>
 <d69f99ed-75a4-9b8c-addb-3eaa2b2be6a6@canonical.com>
In-Reply-To: <d69f99ed-75a4-9b8c-addb-3eaa2b2be6a6@canonical.com>
From:   Julius Werner <jwerner@chromium.org>
Date:   Tue, 8 Feb 2022 15:46:52 -0800
Message-ID: <CAODwPW-AMqQ+ZbnvUTuxP5Bbxdcy08GSXnhcLC+V6BW=OPYaqg@mail.gmail.com>
Subject: Re: [PATCH v5 3/9] dt-bindings: memory: lpddr2: Add revision-id properties
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Julius Werner <jwerner@chromium.org>,
        Rob Herring <robh@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-tegra@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Unfortunately I have no clue what patch you talk about ("this patch").
> There is no context here, no link except the older LPDDR3.

Sorry, I tried to reply to
https://lore.kernel.org/all/20211006224659.21434-4-digetx@gmail.com/
([PATCH v5 3/9] dt-bindings: memory: lpddr2: Add revision-id
properties) and was hoping that would automatically provide context.
That patch added two one-cell properties `revision-id1` and
`revision-id2` to "jedec,lpddr2". Earlier in
https://www.spinics.net/lists/devicetree/msg413733.html ([PATCH]
dt-bindings: ddr: Add optional manufacturer and revision ID to
LPDDR3), I had added a single two-cell property `revision-id` for the
same purpose to "jedec,lpddr3".

I think it would be better if this was consistent between the two
types of LPDDR memory. Should I just send a patch that replaces the
two revision IDs in "jedec,lpddr2" with a single one according to the
principle of "jedec,lpddr3"? Or is it too late for that now and the
binding already considered stable and unchangeable?
