Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88CF63A4FDD
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 19:08:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231390AbhFLRKg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Jun 2021 13:10:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbhFLRKf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Jun 2021 13:10:35 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13D00C061574
        for <devicetree@vger.kernel.org>; Sat, 12 Jun 2021 10:08:36 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id k11so32753958qkk.1
        for <devicetree@vger.kernel.org>; Sat, 12 Jun 2021 10:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eF4uJPB1UaQG346iytYDyBpac2Jv1lo69omQv4FTdC4=;
        b=cHKQSVaqm+BdymJww/7MwVyuig7oIOR2OF87mHmkRq4Y0XMWHuVEodG1Rs3SEZojWG
         mT+D5tMfWxF3B846nUjegE0nfMz4RZIz/8FXvSt4YgR07l/JrUKThEY0zYqNEaamfcLK
         tEpeWZ2f0pvepQD1WLHvNjOX1MOSMUVRBEq0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eF4uJPB1UaQG346iytYDyBpac2Jv1lo69omQv4FTdC4=;
        b=J1aL3TChrloPN2Ew+67K76oQTpBQGnzGWeS+r7JPu56XK++x3OJNpkJ5F7ux0M86Qs
         C74JgxK5KlryTzCCaC5yZ0uJ879WvFh+ODe2o1RCNsNSwWvhBtJWkmjuGOHdu4zWzEFn
         flgQ19vxW+UvgIRPH1xdYVT1O7vsSUHuheEksCA6ADD2I58wT7nhbv4ZnIjKj6VDKYcp
         gcGMFIciWcjySo7qsB45xotNLQ18Fu6bN9uplxayMhILWch8n8wqr1NF2fVkCsa+JdHM
         h3T2tNQcBzM1OwhRWxqt3XZcHAVCO+KHpaF2KNaf3A9MhQr4gCXvkDggECbCXYh3quki
         AXrA==
X-Gm-Message-State: AOAM532XXrMnehhkLWg3Sf6OBnsCYNOi7JKFRb58kofZn6uRTj7TKJ+d
        pgmPyuX+NkI0xkcSGnfpbWC3vz8CHEnrit/BNZDphw==
X-Google-Smtp-Source: ABdhPJwFU4RBCkdvdeNBdtOCaz0q40IMdBvpCN+yhDZleT31VF0xTooIotPrY4HPtY77MZOBq2SudPXLZT60HVIbzr8=
X-Received: by 2002:a05:620a:a87:: with SMTP id v7mr9357572qkg.468.1623517715113;
 Sat, 12 Jun 2021 10:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210611200801.52139-1-romain.perier@gmail.com> <20210612125915.GA320112@roeck-us.net>
In-Reply-To: <20210612125915.GA320112@roeck-us.net>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sun, 13 Jun 2021 02:10:37 +0900
Message-ID: <CAFr9PX=j3UxbawtuvQnyoToH=3iT_k+j_LByUF-uDd0yDOk2ZQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Add watchdog for Mstar SoCs
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Romain Perier <romain.perier@gmail.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mohammed Billoo <mohammed.billoo@gmail.com>,
        linux-watchdog@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Guenter, Romain,

On Sat, 12 Jun 2021 at 21:59, Guenter Roeck <linux@roeck-us.net> wrote:
> This works better. I applied patches 1 & 2 to my watchdog-next branch for
> hand-off to Wim. Note that the arm dts patch needs to be pushed through the
> arm tree.

I will take the dts patch and send a PR with it to the arm tree.

Cheers,

Daniel
