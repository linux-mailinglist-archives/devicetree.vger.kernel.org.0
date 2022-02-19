Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA5A54BC86D
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 13:53:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242246AbiBSMus (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 07:50:48 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233494AbiBSMur (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 07:50:47 -0500
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com [IPv6:2607:f8b0:4864:20::a2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57083483AE
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 04:50:29 -0800 (PST)
Received: by mail-vk1-xa2a.google.com with SMTP id v192so6268417vkv.4
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 04:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vGhXNwDABqJrebyS9iZitB79qnL+Qx7T9tvGfBslXag=;
        b=B87lE/ifgNm2x/g9Z/N/ZVxYlAuRwWFrFkPjB+F1ULvXhDcJ/l5hgUtbZSuG4W8YDW
         HZDWYHn3yxLaJM/c196aRp0g6bYWcLzpG6xUNn7haZe/+Q3W5GfZC/MXurMCkI5EH+1j
         pn0aAR567WHwki5YfhCJ6gcubqN7EbPTjB/LasHiZ0we7EQyS8jXHvJRnpBv0m8JjtFP
         wmcl3FcnB7nyPikZ2KMECnfTiQYjLcyBKo6zOS1OGEqcDwARi20TC4ynwY7evuxw4Hrw
         18Zc/rsR/hSXa4BIwziTNDY+49KxR/b1QLAmbAtP7QNiDo8xB44vhZoUuCxfi5LlsitD
         utpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vGhXNwDABqJrebyS9iZitB79qnL+Qx7T9tvGfBslXag=;
        b=NJRusqbcApqPSrXvO1h15b9gta17egmn+E3kGfwQ+FsKw+NCZLQDb+qcATUJgrU44M
         b2nsvbRsfDqrXFF/znke9Cie+hq90s1KQ/oiy8/Rv5i+8YxgbnBqQB3uka+JB+SVOqZJ
         uk7hvPsAfimQnEPnm9BBR7qAnN2xzq4z/ZXL26RGxr6cLnF4q/h9fLn/RXDOP1fNmAYS
         u1V8KFjXSlJjkKfQt0wIm50ePpS1upfn2aL2oUu8Zpuk6VFpANFtR3vUW0cjgKc4FexC
         pOG/DHiUHwwtLorasbkA7bH9d8pLqySDfipQC8fCvdOPGKoFyO3SsXxtHyFkRd8Ocyf+
         /7SA==
X-Gm-Message-State: AOAM531s4Q84B69c/ZTYPSlvNMIHIn3XadnaJw5YwggjcxnP/RrbVTUX
        2kEUAKQkqlwZIk4S/ceU5FFT9hnW6f/a4RwAtuU=
X-Google-Smtp-Source: ABdhPJyUUPnR4ZO/VUrdD2Tt8Otg490iWkavm1bSQyyhrOdiTsRbxkOupnHcZn4oY9v1qWrbCzqFsHbu3ns1vVKRzR4=
X-Received: by 2002:a05:6122:a1f:b0:32d:a4a4:6c27 with SMTP id
 31-20020a0561220a1f00b0032da4a46c27mr5027326vkn.14.1645275028202; Sat, 19 Feb
 2022 04:50:28 -0800 (PST)
MIME-Version: 1.0
References: <20220213225646.67761-1-pbrobinson@gmail.com> <00c698c4-1829-1569-4af8-7165ec35c07e@i2se.com>
In-Reply-To: <00c698c4-1829-1569-4af8-7165ec35c07e@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Sat, 19 Feb 2022 12:50:17 +0000
Message-ID: <CALeDE9NfyLg5AT1sNHGYvtN3yuLAcd2+TTmVEfsgE7-zTGUhbg@mail.gmail.com>
Subject: Re: [PATCH v4 00/15] Raspberry PI 4 V3D enablement
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Feb 19, 2022 at 12:12 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Hi Peter,
>
> Am 13.02.22 um 23:56 schrieb Peter Robinson:
> > This is purely a rebased of Nicolas's v3 patch set from around a year ago.
> >
> > I've tested this using mesa 21.3.x and Wayland/Gnome on Fedora 35, it's
> > more or less stable with basic testing.
> do you plan to submit a follow-up series?

You mean a v5 of this one? Yes, I was just awaiting to see if I get
any more feedback, I will probably get time to do it tomorrow.
