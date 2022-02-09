Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACCA94B00CE
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 23:58:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236744AbiBIW6c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 17:58:32 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:42686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236762AbiBIW6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 17:58:31 -0500
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8393DE050477
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 14:58:25 -0800 (PST)
Received: by mail-yb1-xb32.google.com with SMTP id o19so10244446ybc.12
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 14:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=aPTFbZr4LhKGppGQDkO7tNLWiZLizgW3cwR+POXjY4E=;
        b=hBB0ghFhB1uCetuGAyQGnoqcrwp/HDIHx81/tcT8zfwyz04kOmltS8SLbyMQjgl5a4
         schx4MTzQYOUDCOH2NxsstQBE4Rs/EtSSDtSqv1TT11Tw2nFokdj+5kCkE3m9ms5wCD9
         vdZSjzA6DamY7fAeIHv6v83/9NvKMOIDArHIR0RIUY3dZAbZq5fEwfSPofOqSUUIaoc4
         KNUHEwODtlc4mXJ63h4VUL9u/63JTRb0wwWEycvAmcbJXBKpbZJYTBA5/+wM4TeIFogE
         vZVQQY4XN6UFHOFz6F15FMet5JGPUFiuNDvNQwccTMSfnZeU19efMm5XMnUK1uQMZjNT
         KOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=aPTFbZr4LhKGppGQDkO7tNLWiZLizgW3cwR+POXjY4E=;
        b=M69hWr0Byn1vVSGBXZC1NQF39og6Zmkyv+5GpFOhdO/DZmN9oNY192Lq1rViiDc5jv
         p90cOK9wNqL1m3JwtqXUAboiqXDpA7HTrWrLYUrp6AM2KtIS06yrgTB2gDotA0j7i4Vq
         Y+YZZAGiewDJGWM6VzTf51PvZBWtDGLgDj4wn8prbWWawQtBj2RVUaXOkfmmMmt5/ATp
         k3QA763xa7T+cEecuEURwb42Oq5uHpFBrQsEOXhgTtyADGi9Hz/OKiQEXdyrwoigq65U
         gHzHhitXQOOnpJqZr+O+GEc7xK3cbnA3NsNzAQi5MWZlWOaMLIweQ0NHoXqQU90TCMf/
         uyOg==
X-Gm-Message-State: AOAM530Ibt1/4q9lMJ4TK9dUxT8n/VLbHXPLap7+Sycmt53pbIGyVRj9
        bPXYptWmYA9q1SU0jiAFliIvznDRh/iNPGWWL0c=
X-Google-Smtp-Source: ABdhPJx7ohKLglh5sd/ZVdaBjVAVVQbIom3DEiopyQwqNbuuo89AEmxATnM6BAh3uSmuf0LzJndZDmmEUF7VDiYjQhQ=
X-Received: by 2002:a25:9c02:: with SMTP id c2mr4224340ybo.685.1644447503289;
 Wed, 09 Feb 2022 14:58:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7108:6595:0:0:0:0 with HTTP; Wed, 9 Feb 2022 14:58:22
 -0800 (PST)
From:   drtracywilliams <mrsalimasanwardu7067@gmail.com>
Date:   Thu, 10 Feb 2022 06:58:22 +0800
Message-ID: <CAP65zWsJhbEMCdKw6ofdjOuTZWROwtV5zzvESga1uDUu6iUvKA@mail.gmail.com>
Subject: From Dr Tracy from United States
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=1.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Dear,

how are you today,I hope you are doing great.

It is my great pleasure to contact you,I want to make a new and
special friend,I hope you don't mind. My name is Tracy William from
the United States, Am an English and French nationalities. I will give
you pictures and more details about my self as soon as i hear from
you Kisses.

Pls resply to my personal email(dr.tracymedicinemed1@gmail.com)

Thanks.
Tracy,
