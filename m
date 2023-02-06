Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 498C268C458
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 18:15:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbjBFRPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 12:15:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjBFRPF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 12:15:05 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7157180
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 09:15:02 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8E02260FBD
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 17:15:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5B9BC433D2
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 17:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675703701;
        bh=I05U9fK1K8NtGrk9xhWmH7Ik9V8yY3EASLSgoInk9c4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=IMDQ7xWE8EyH5JPDhXo9EjGb637MOkjZ2AoR1KDGc9rJZVaunn3Pk9azEqv8BCI4e
         FkvonmOwKVEvBGYJSmxbAs4ddw7D0fYKfXm1+ctTyP2GA4ZBLpA+4wG9Wo3nbBwlzW
         TmFPGIepyA5ZXA9AfGYp1jB+27GNLGWLxR34k3e+/t3DUYFz8RkEI4M6wYmraAbesx
         58FNbm19jRV1w8vTVZqwv7EWCJDMgwfjYfNiK1kFln7Jc3VXEODhVS2Bnzb/g2l894
         9O30Z1PY9Al8lEur/eJFKRAYKwdyfq9jXvLiGM4oT+Mn0GaNWb148DExacYesWJ6Tk
         Eg8D791eqb8iQ==
Received: by mail-vs1-f53.google.com with SMTP id y8so13445999vsq.0
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 09:15:01 -0800 (PST)
X-Gm-Message-State: AO0yUKWFblyVLLoy+PJZ721o+LgejvMTLfNm8peXR86cFYCMvJNyIX7L
        Hwx9M72krmMoIQiP/VtlkH/Yp3KXiBit61QfHQ==
X-Google-Smtp-Source: AK7set8ZetgM07xYkLEO5sBQxaMYji44aJho88ln7hFGQXNNCZ21PjfI5BWjiZ/AoT8sfNd1Mldd39LCEXKk9EktJjk=
X-Received: by 2002:a67:7206:0:b0:3ea:c8c:48a5 with SMTP id
 n6-20020a677206000000b003ea0c8c48a5mr82824vsc.53.1675703700780; Mon, 06 Feb
 2023 09:15:00 -0800 (PST)
MIME-Version: 1.0
References: <20230204001959.935268-1-sjg@chromium.org> <CALeDE9N2KSwA=HMLS9EPFL00UxxUgi=r_M8F7W2tWT6y+dMzeQ@mail.gmail.com>
 <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
In-Reply-To: <CAPnjgZ297NH1oiRG9iU8=U0dSAnPLQ4WGYF7=+71aUZCYctWTA@mail.gmail.com>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 6 Feb 2023 11:14:49 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
Message-ID: <CAL_Jsq+mUNeEx=jwc4JF7fGCa7zkOTChoVb5CoMfHaqCi+bYpg@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add schema for firmware logs
To:     Simon Glass <sjg@chromium.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
        Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Feb 4, 2023 at 6:04 AM Simon Glass <sjg@chromium.org> wrote:
>
> Hi Peter,
>
> On Sat, 4 Feb 2023 at 02:36, Peter Robinson <pbrobinson@gmail.com> wrote:
> >
> > Hi Simon,
> >
> > Does it make sense to devise something that is compatible with the
> > kernel's pstore [1] mechanism?
>
> Possibly...can you please be a little more specific?

Peter is talking about the same thing I suggested on IRC.

pstore == ramoops

Rob
