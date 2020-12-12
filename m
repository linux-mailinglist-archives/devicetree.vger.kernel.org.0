Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F200D2D840B
	for <lists+devicetree@lfdr.de>; Sat, 12 Dec 2020 03:58:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437950AbgLLCuG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 21:50:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437714AbgLLCtd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 21:49:33 -0500
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com [IPv6:2607:f8b0:4864:20::f41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B620BC0613CF
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 18:48:53 -0800 (PST)
Received: by mail-qv1-xf41.google.com with SMTP id u16so5219911qvl.7
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 18:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TQduMYVqARw6+qxqGvjM2j3q/xasIzk15UolBcHLkzs=;
        b=lOcZzWTS5jP44Aj5WSnu7Epwi9SIeLpdqG0g7vfXGzHB22bQkXbMPXEOWMrckkpM/q
         8/dGI+MZP9fHvUF4GA8nH3L32jW3q7WD36klvhRf13cEcqlfcQyEM9ypCA+KOXPrrvMA
         uosYL5WdTCiNn5dnUL0xOD6VgodW8s5Ow3BCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TQduMYVqARw6+qxqGvjM2j3q/xasIzk15UolBcHLkzs=;
        b=a5O2vPpWWZmvVakGVYQkUsdk7SnHAqcpDFljX0sl5UmglWMeMdW6045mXO5r7cR19N
         pPteGb2vqkBsd2Gv/9cQgkU9NVDcLRbrToyv0DaNTYWpLjEqqVK4K6xAdQy/dIA0FXr8
         mNb9d/1EybXSEncLTSncxP+SIqj53S7Hq5oS87cgNKgOPvj0Qe4UERtoRDnjjUVH1mlk
         35mqennXedlsdoWPsO3dP20AW/90Ym6WiH4UUFstwFt1wPF5T7aNGQ9ecomsbY5t2PAQ
         ABXg9f2zZhbYsW7IXWqwEx2z5JksfMew/HFhG/IeEgrPlMB0dW8VKNJNTisPUQG/o0Lf
         fraw==
X-Gm-Message-State: AOAM530Woyf0nW7emD+RJHmopxftgFJRPikcan7pVhE1/z7CCX++lKLS
        FFRA0sDz7p8mhRV04y4NV6SrfdAfDDZY6Soc/p65Jw==
X-Google-Smtp-Source: ABdhPJwggpEKL14wC5+OproRa+ET7RUsSVcrTd8K7mQPC5vj9AIEfNRFdDaAkFcYA2Eg9tmZEAPR5tj7FGZTJZqZwuM=
X-Received: by 2002:ad4:43ea:: with SMTP id f10mr19617485qvu.52.1607741332882;
 Fri, 11 Dec 2020 18:48:52 -0800 (PST)
MIME-Version: 1.0
References: <20201212024643.388335-1-daniel@0x0f.com>
In-Reply-To: <20201212024643.388335-1-daniel@0x0f.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sat, 12 Dec 2020 11:48:42 +0900
Message-ID: <CAFr9PXkz_3VNtQothDPdfhpYBOz_kHqykjftUn7no9yWzVrEnw@mail.gmail.com>
Subject: Re: [PATCH 1/7] ARM: mstar: Unify common parts of BreadBee boards
 into a dtsi
To:     SoC Team <soc@kernel.org>, DTML <devicetree@vger.kernel.org>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

>[PATCH 1/7]

Sorry, this isn't actually a 1/7 it's 1/1. I forgot to fix the subject
before sending.

Thanks,

Daniel
