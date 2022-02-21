Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 400894BE9F2
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 19:09:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbiBURpd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 12:45:33 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbiBURpc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 12:45:32 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A4B6109B
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 09:45:08 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id y24so7669595lfg.1
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 09:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=hGws8VeC3tIONMbk0280O7wxxVhyCbiHV3e2/1KcqOo=;
        b=M8uNRRjYG17Dxw4dNTNI8cyfXoY0brICmbxY1sKwZcx8ovw3m4YFAjAkiX32bHmOQx
         WbbMZvzKyJJR81nJ4F81z7aHsD25vUo3UghqLuSzlE6pFBm5qoF/HHW+Mr/f7KeBP5AH
         dMqxKliQFafbzZxb+K2eLbFKKneV97hnQy5/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=hGws8VeC3tIONMbk0280O7wxxVhyCbiHV3e2/1KcqOo=;
        b=bYkrWUVis0qPEQ4jOchEU240rBjrtxfwtyR42l4/nOTa0KnxQDfeA3GQt/+XuAenKL
         65rOdgx2KhzVu0six+hoM95ax5AZKCE+yefzV4fOGpl2T+k+3FnrRbVn968Kxf4rleL+
         Jqwce7Uny/Amf54/wT6Locy+fKRiYItrqjbmXZK0VUrUz4ZXRHo3KYqhLuM9cn+rimOe
         86zILNqsWsiIZrBjvaX2SSJf+I3v9enjIgDp5t+4BfcFm1cHDCrNS39tU07OW1lBuREx
         vR+0LxGQqkaNnOpHQWZ9PzFPKL+BcMmRkBKFvZAE2FVl8a6cc+QXK20nFFZ5h/MJHwel
         uRig==
X-Gm-Message-State: AOAM533S3bgZTJtxKoIoQ7KqITOKp14oBoCgIQ0v3UkK/wK5OuXHbGW3
        +DKaDoFZjz7XvAay1rAza+PRtV4ZEva8fDMk
X-Google-Smtp-Source: ABdhPJzilU+7WJCD5p1/fmdb0u5rfR/kGN8M6pxvFyFAMCuthG5IZs553JR9GqEQrMtv74mtrhtKWQ==
X-Received: by 2002:a05:6512:318d:b0:42d:50c3:6006 with SMTP id i13-20020a056512318d00b0042d50c36006mr14000493lfe.207.1645465506629;
        Mon, 21 Feb 2022 09:45:06 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id c5sm1173236lfr.140.2022.02.21.09.45.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Feb 2022 09:45:05 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id f11so7974050ljq.11
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 09:45:04 -0800 (PST)
X-Received: by 2002:a2e:3013:0:b0:246:2ca9:365e with SMTP id
 w19-20020a2e3013000000b002462ca9365emr9237427ljw.291.1645465504568; Mon, 21
 Feb 2022 09:45:04 -0800 (PST)
MIME-Version: 1.0
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Mon, 21 Feb 2022 09:44:48 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiWZ=3dTuRq46KvQVpx-e7xqrnMAVB73dzj7g4Pbwc1zg@mail.gmail.com>
Message-ID: <CAHk-=wiWZ=3dTuRq46KvQVpx-e7xqrnMAVB73dzj7g4Pbwc1zg@mail.gmail.com>
Subject: Re: Linux 5.17-rc5
To:     Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Linus Walleij <linus.walleij@linaro.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[ Fixed the subject line - you answered the wrong email.]

On Sun, Feb 20, 2022 at 6:47 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> Build results:
>         total: 155 pass: 152 fail: 3

Grr. Things are going in the wrong direction here.

At least the two new cases look trivial, and that ppc fix is finally
in linux-next.

> Qemu test results:
>         total: 488 pass: 427 fail: 61
> Failed tests:
>         arm:orangepi-pc:multi_v7_defconfig:usb1:net,nic:sun8i-h3-orangepi-pc:rootfs

Adding some devicetree and otherwise involved people to the cc, can we
*finally* get this fixed? It's been around for all of this release,
and Guenter has done a fair amount of bisecting and testing, chasing
down lockdep reports etc.

I've been ignoring this on the assumption that it will just get fixed,
but it's starting to be pretty late in the game now..

>         <almost all mips tests>

Gaah. And what happened here? There aren't even any MIPS changes in
rc5, so clearly something went sideways that just must have happened
to affect your mips qemu tests. Added Thomas Bogendoerfer despite the
lack of commits.

               Linus
