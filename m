Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2DCC2D5864
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 11:40:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388383AbgLJKkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 05:40:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388284AbgLJKki (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 05:40:38 -0500
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com [IPv6:2607:f8b0:4864:20::844])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FB12C0617B0
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 02:39:56 -0800 (PST)
Received: by mail-qt1-x844.google.com with SMTP id f14so3242124qto.12
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 02:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L2WFU4dR05ZGB+4ahSYpvkou90km6wj3qFHGpNOIG9M=;
        b=ZCaNzYwl7SUQuyXA717WC7IZendW6N96htJ/gjKsEIGCoZB1Ol2tjYR06fRUijr3FA
         5ISU/OS7u1Az8OZW/eMNZ9OyMnXLIt3fQebq1fqezHuUQvqK9+KckKMwxfVmd83nO9V/
         Kx92pP+6KrpJnV69lBueCksEBq0CNg/B/GMhU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L2WFU4dR05ZGB+4ahSYpvkou90km6wj3qFHGpNOIG9M=;
        b=HECiDtzVHngJtPcH5oprc6TtI9wK6Ol6qOi7S5SFVjGKly7O6cHsfd42SKB01yhSRf
         gwnekDHCEk9i043OnIUwqr02wBVigG8SLVO0kO6sxVx7y/QI9cPxCKBYDsvv1znEOzrl
         o6f/E7MCeXJxTqFgP6/14J1wsGsdfUoG6Sf1LBwEufj2qGEWANzD17aPA++c0n6N2K/M
         LRqwEuWQfpw6slrG3+nWeRN7eOnFslGPjRx3SCN0HX8k9sslChJk3hMUag3aCgUF9MN9
         G2sJAy+q4O5S8PeVi60Vt/ESmj9jvMxMe5RL6+0yOi2jchL+drTcrz94MNhbKG0RwG/d
         wqlA==
X-Gm-Message-State: AOAM530Sa8XHZaxf1tEMOPGN7Op6QyD3doTtBm13VHnNZ5K2sXg6YQEI
        fpSUG9nhjM6HX2N7XhgYk9c43MsAjQPgXM5wRVw6fw==
X-Google-Smtp-Source: ABdhPJza71bHTJCiyvRTTQ2YNcpXeu9wyUFDyS+bpZT9AnvgoplhU3GXEc+KIUKkz1TdBEplvPh0gJR6E49WgL8pWZg=
X-Received: by 2002:ac8:5647:: with SMTP id 7mr8312313qtt.148.1607596795854;
 Thu, 10 Dec 2020 02:39:55 -0800 (PST)
MIME-Version: 1.0
References: <20201201134330.3037007-1-daniel@0x0f.com> <20201201134330.3037007-3-daniel@0x0f.com>
 <20201209163409.GA566058@robh.at.kernel.org>
In-Reply-To: <20201209163409.GA566058@robh.at.kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Thu, 10 Dec 2020 19:39:45 +0900
Message-ID: <CAFr9PXmwOEuHHA-kDeL1YS8bWvovrt43MXxyy1J+hGbXwPUFSA@mail.gmail.com>
Subject: Re: [PATCH v2 02/10] dt-bindings: vendor-prefixes: Add honestar
 vendor prefix
To:     Rob Herring <robh@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>, SoC Team <soc@kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        olof@lixom.net, Arnd Bergmann <arnd@arndb.de>,
        Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Thu, 10 Dec 2020 at 01:34, Rob Herring <robh@kernel.org> wrote:
> > +  "^honestar,.*":
> > +    description: Honestar Technologies Co., Ltd.
>
> Alphabetical order please.

Sorry about that. I intended to do that but apparently don't know the
alphabet anymore..

Thanks,

Daniel
