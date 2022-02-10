Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09F814B0293
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 02:57:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233142AbiBJB4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 20:56:36 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:33228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233153AbiBJB4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 20:56:01 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FBC722B1A
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 17:32:57 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id k60-20020a17090a4cc200b001b932781f3eso742191pjh.0
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 17:32:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CpXL3kPoVZ7att1zdwN8Mf8Da7ajP98VvjIjGbgaZGA=;
        b=ENY37unj6f6SjoHK/K0Df/VIBp8PpZN9GGdjmw2F5RHMgth0BKvyfe7sX2l5TwfuMv
         Bw72HuoCoav/n3JPrtIVxRyg7PhW6XYai1AIx9e9CG7QfpdEhEDh7DNsywpBfEYsuHG0
         PC/EAciecqkqFtBE+fMv5STFjECmxiVAH8eSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CpXL3kPoVZ7att1zdwN8Mf8Da7ajP98VvjIjGbgaZGA=;
        b=gw4704q+aVL7NDtQ+Gr7T52BdNknufO5d/bLfqINdAnLvyhWHijEK/cypLG/dfONKp
         zsd0MJRsn6pHA9n7PUKLkxC/+IoOIZXK9B3ekgE67lOZRvb0yqT/5ii8HPiXp64TWQMO
         AM2l/8MWeLGAB09Ks/1SeT1jlu8APZdJLDHXdSlXU6ffOfIXM5v/Tppofx5ZlCp9rXuQ
         ALUgmtqWtGc8e2LpaGjHGc27d5QhacrlsUQMwh6/Vv0PglfRQH1OIgD8Hk1RFpT1PFul
         6WiEiDiXhCjtub96jCBr8O+x2ysI85Em1y0cuUpOmeuu/qfvz7+LM/Tqh9mP5PkRW6hE
         sR8A==
X-Gm-Message-State: AOAM532NsPRrT5Dgu8c8K8HJsdiFLgzYmjTmTU53eleoeI0j0BnpuOaN
        L1DkRVMOCriPRRVwunAdbMX6Lzsgq24bpSErzMArRhfgs4IVPg==
X-Google-Smtp-Source: ABdhPJz8Fs/lByCRrqqXLa3uco/tN8npZwUZ9fqdEfcHy+dfvEkvZxsQSmSiX8brFmaAbGdrbukbIMqI5en+3f8e4rg=
X-Received: by 2002:a05:6102:cc8:: with SMTP id g8mr1471720vst.39.1644453157351;
 Wed, 09 Feb 2022 16:32:37 -0800 (PST)
MIME-Version: 1.0
References: <20211006224659.21434-1-digetx@gmail.com> <20211006224659.21434-4-digetx@gmail.com>
 <YWimShkkxkR+bQLK@robh.at.kernel.org> <CAODwPW-2othAhTC9a_joBdHScA86iqs-FkZJZDrK5LxrJm8F8Q@mail.gmail.com>
 <d69f99ed-75a4-9b8c-addb-3eaa2b2be6a6@canonical.com> <CAODwPW-AMqQ+ZbnvUTuxP5Bbxdcy08GSXnhcLC+V6BW=OPYaqg@mail.gmail.com>
 <6568fd31-113f-1581-4eff-45a4a1eb4e5d@canonical.com> <c33c9de2-ff0f-0ba7-b424-728d316dcca2@gmail.com>
In-Reply-To: <c33c9de2-ff0f-0ba7-b424-728d316dcca2@gmail.com>
From:   Julius Werner <jwerner@chromium.org>
Date:   Wed, 9 Feb 2022 16:32:25 -0800
Message-ID: <CAODwPW-VfbvWs3OVON1m=WWFXN2V86o9jqurVDShpfTrSn=Mkw@mail.gmail.com>
Subject: Re: [PATCH v5 3/9] dt-bindings: memory: lpddr2: Add revision-id properties
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Julius Werner <jwerner@chromium.org>,
        Rob Herring <robh@kernel.org>, linux-tegra@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
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

> I don't mind, but I also don't see where the revision-id property of
> LPDDR3 is used at all. I can't find any device-tree with LPDDR3
> revision-id and don't see it being used in the code either. Maybe it's
> the LPDDR3 binding that needs to be changed?

We are using the revision ID in userspace (read through
/proc/device-tree) for runtime memory identification. We don't have a
kernel driver bound to it. Our boot firmware is inserting this value
at runtime into the FDT (that's basically the reason we have this, our
firmware auto-detects memory during boot and we use the FDT to report
what it found to userspace), that's why you can't find it anywhere in
the static device trees in boot/dts/.

> I made each LPDDR2 revision-id property to correspond to a dedicated MR
> of LPDDR, which feels okay to me to since it matches h/w.

I'm not super married to my solution, so if that makes things easier
we can standardize on the two-property version as well. I mostly
designed it my way because I thought we may one day also want to do
something like this for the 8-byte LPDDR5 serial-id, and then it would
get kinda cumbersome to have serial-id1 through serial-id8 all as
separate properties. But that's also a bridge we can cross when we get
there.

My use case is in a position where we could still change this now
without requiring backwards-compatibility. Krzysztof, would you be
okay if I instead changed the "jedec,lpddr3" to the same thing
"jedec,lpddr2" does -- seeing as the original patch was from me, my
use case could handle the switch, there has never been any actual
kernel code using the property, and it seems very unlikely that anyone
else has silently started using the same thing in the time it's been
in the tree? Or do we also need to go the official deprecation route
for that?
