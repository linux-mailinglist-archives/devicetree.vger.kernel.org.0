Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EAC4715238
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 01:06:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbjE2XG1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 19:06:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjE2XG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 19:06:26 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D2AB2
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 16:06:24 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-565f1145dc8so22444327b3.1
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 16:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1685401584; x=1687993584;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8Gwe8KUB75vJ8ATbX2tI7fPPOMkZ9teDmitLExCKhe8=;
        b=tNwT6LO+aBIZxezXyHnRASPCD62GLFGnjPfwJ8g2r8g/TRw8Eed3jW8Mr3RIogZ1GK
         LV3yahssKSBRFtIammbHYEk9DFeY3VJnnndQdcpBCv8BNoRorXWoTdPo0jdym7Ibkb5N
         7wfT/gUBYpf6rNHAuqW02KsNhsDABS9ODvRTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685401584; x=1687993584;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Gwe8KUB75vJ8ATbX2tI7fPPOMkZ9teDmitLExCKhe8=;
        b=fYM9afeDra7OLleohMMX2LSUAiWThNAyeKvZwUfn9QlNLG0/5HgNalsrPOwTWPFsqV
         RZq1b0DvILNt7suH7Jjp4FpvmEHEEqtvV3VkubBx/Cy1AWqZxkr2glDUoEvFnRjHmgX0
         QkBtHSTEmmk/znq+ZTY5l6VmjN8t8m00mQHIbZyn8tGddJTVe8CoeQ7MoLhUPYr6J3n/
         KVV+Qk7CSvFKOw8R1/irn/RRZdmIjZeFjZgIzlM9ZvsNK4nukV3gwJZaC9hX99dsGS+S
         IoH700P8s1I9sn2IrLAqqxYsCVJ74L2pc/2bthqxZbjY1Jwqrp3Vr37PtowaXskS577Q
         yHwQ==
X-Gm-Message-State: AC+VfDypNhcL5OvPCb45dXzJZruh9zx0d4bzlajGzSgQP9SE/u5OSEnq
        IdwAyUMo//JIfQV03/6XqYi5fmSGKlXJjQYxPmek0w==
X-Google-Smtp-Source: ACHHUZ623hQPNTMKC8Mr+SxOf2Iq+N2p2KsAbHuoVF1m+4I3MNXJmYskMwlOFEzNpnrSomnbqrVXBWmKsXaAX/RpJ5I=
X-Received: by 2002:a0d:d688:0:b0:559:d39e:e1e8 with SMTP id
 y130-20020a0dd688000000b00559d39ee1e8mr351868ywd.44.1685401583855; Mon, 29
 May 2023 16:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230517144144.365631-1-romain.perier@gmail.com>
 <20230517144144.365631-2-romain.perier@gmail.com> <20230529224039a7f270b9@mail.local>
In-Reply-To: <20230529224039a7f270b9@mail.local>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Tue, 30 May 2023 08:06:13 +0900
Message-ID: <CAFr9PX=NmgX5Ww55bz+oM15fhqofFQH=PGs_T6Gkfs4g8ZrFXw@mail.gmail.com>
Subject: Re: [PATCH 1/3] rtc: Add support for the SSD20xD RTC
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Romain Perier <romain.perier@gmail.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Rob Herring <robh+dt@kernel.org>, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
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

Hi Alexandre,

On Tue, 30 May 2023 at 07:40, Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> Hello,
>
> On 17/05/2023 16:41:42+0200, Romain Perier wrote:
> > Newer SigmaStar SSD20xD SoCs contain a really low power RTC (300uA claimed),
>
> The low power RTCs are more on the side of a few tenth of nA. RV3028
> consumes 40nA, including the crystal. AB1805 consumes 14nA with an RC
> oscillator. It is funny how SoC vendors think they are low power ;)

To be fair to them I think the 300uA claim is for the whole SoC in
RTC-only deep sleep.
Whatever logic is powered on alongside the RTC to trigger wake up will
be part of that number I guess.

Cheers,

Daniel
