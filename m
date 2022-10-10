Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 319C25FA324
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 20:04:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229605AbiJJSEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 14:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229799AbiJJSEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 14:04:50 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85F12F015
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 11:04:45 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-132af5e5543so13283264fac.8
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 11:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZHjLxE2wa4ovYDrmyeS/PPWy3bvltMZKlaBQ49ka3gg=;
        b=LPiejpKJiXpfNtRp7PpW0G1bZPzbH3cvZMSadoiVWG9KdgmhtNUp3PVy56M6TrNyHL
         vm3/komvFgfnCW+YzdXtOH4vPzwQNSX2jm+iuFfSP/qOfVN8h5+gJPeNTq271s2S6wIa
         oo4ZC5WENKl/a/81XQHf9lPmYJOy0r2fmuoYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZHjLxE2wa4ovYDrmyeS/PPWy3bvltMZKlaBQ49ka3gg=;
        b=8MGxkOw8zXXvabDxSRrZlPkhNj+zoTvzRkT/vDMA2Qm1jgR/8uao+1E5vXA5+auB7o
         RSBeVFn3nzKt3Rdl3+TFGeFbIg168XnCveTVyCgyUZHZSoPA5LQs5QGB2RC+bt2WrwaQ
         FCydUk9KFr64oEjBiUNOSTJUOhlfApvUv3N8yV4WUPL23Qx93sqe8J3p/KLWNFX5cmZd
         Q6ZWdLNWhNABI/oEA+4W7umG8yEHPZ1yQg7wJhA4Gf1ddCmubCp3A92HJGMQLnMd7lK0
         ADQv8Sr8nWfx2ezQ2+zU9T4sPXj9refnzk2urwC8pVW3xmhjHK9W5KnhlB+sc08k58XA
         vSYw==
X-Gm-Message-State: ACrzQf0YX2iFIdMjGlaQoeQTLbGqbh0U8UJmGLG6XpR6TLm7M3yyMOhW
        CZUihKAVLsFTB1DNFruGUc1HjFqAOg7K9w==
X-Google-Smtp-Source: AMsMyM4m/FKCPomqMla0Vg0gZNQmlLUckg7kPdX2zH2BLgWxJFU/G9SQbY6vteV5wfrlaw2yVcpagQ==
X-Received: by 2002:a05:6870:2d1:b0:132:7708:1678 with SMTP id r17-20020a05687002d100b0013277081678mr10082849oaf.230.1665425083710;
        Mon, 10 Oct 2022 11:04:43 -0700 (PDT)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com. [209.85.160.44])
        by smtp.gmail.com with ESMTPSA id g1-20020a056870c14100b0012752d3212fsm5453829oad.53.2022.10.10.11.04.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Oct 2022 11:04:42 -0700 (PDT)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-132b8f6f1b2so13250049fac.11
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 11:04:42 -0700 (PDT)
X-Received: by 2002:a05:6870:c888:b0:12c:7f3b:d67d with SMTP id
 er8-20020a056870c88800b0012c7f3bd67dmr10729626oab.229.1665425082178; Mon, 10
 Oct 2022 11:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <20221003203129.GA2767725-robh@kernel.org> <CAL_JsqLR=9czyHPngjKczSxK8icw1=vBFHKgiRNz2AdvVRKC2A@mail.gmail.com>
 <CAHk-=wjNaJWvvUKTk43H-OtdP+wnM31tw8v4oz5t1TzfO4x+TQ@mail.gmail.com>
In-Reply-To: <CAHk-=wjNaJWvvUKTk43H-OtdP+wnM31tw8v4oz5t1TzfO4x+TQ@mail.gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Mon, 10 Oct 2022 11:04:25 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgO0KTEhozZzoPgDzmAbkSBCxrQ_waGYk5ArkWLb8=iAQ@mail.gmail.com>
Message-ID: <CAHk-=wgO0KTEhozZzoPgDzmAbkSBCxrQ_waGYk5ArkWLb8=iAQ@mail.gmail.com>
Subject: Re: [GIT PULL] Devicetree updates for v6.1
To:     Rob Herring <robh@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 9, 2022 at 1:41 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> My new memory is "out for delivery", so hopefully I'll be back up to
> full speed by this evening, but I'll probably leave memtest86+ for
> another overnight with the new DIMMs just because this wasn't the
> greatest experience ever.

Just confirming that things happened according to plan, overnight
memory tests were fine (not that I expected anything else) and I'm
back to merging stuff normally.

This effectively just meant that Saturday/Sunday was very slow for me
(with Friday being a bit of a "What's going on?"), but together with
Wednesday having also hit an unrelated snag due to the drm pull, I'm
effectively a few days off the normal schedule.

Not noticeable in the big picture - I expect to catch up by the end of
the day today - but it did end up meaning that the whole "I try to
merge most obvious stuff the first week of the merge window" just
didn't happen this time.

So this will not make a difference to the merge window overall - the
regular two weeks will still work out just fine. I could have done it
all on another machine, but it's just more convenient for me to get my
regular machine up and running.

                        Linus
