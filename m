Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50CC32DFA12
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 09:42:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728485AbgLUIl2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 03:41:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726168AbgLUIl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 03:41:28 -0500
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB918C0613D3
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 00:40:47 -0800 (PST)
Received: by mail-qk1-x732.google.com with SMTP id z11so8145866qkj.7
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 00:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BjslaZR1qcQAnQhxnA6ymSaKB4vgQuxdF9VxZC0FLCk=;
        b=u/RwtavghNtpbWjqn+ZMYpE7O9+RB8LVyc2IbNi7pmz6ot+akq/hJHztjwYhNik0Gl
         COPMnSkotlGHlo5Xzkabr0ZsWmDEhF8h9z/6y3ehKTorOYS43ua0ucldVnE8LARMQZz9
         Vh+oUD/RtD3u6uxp3RjF/f4K2MY4eqBtvp8o8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BjslaZR1qcQAnQhxnA6ymSaKB4vgQuxdF9VxZC0FLCk=;
        b=W65umLELW2mH1sfgwKTbNfOJxe4SiR6vNx32BBu5qC5Tom57J7BEq9hMq/iVBrUoaf
         0C8RsjOXNqXngmmbFOKWrwpmhV9vXj9CvBT8M5BrHL1BetoNR4sHBtNbpXFx9Bh/lKkP
         mODASzOMBOXAGUGeADrLPOaTx/FWxHKPUQ88e2fwF0JnFqHlup+OjLUe2xUVmudriHij
         naI3acqXm2GaWtGPz51JQW/9ItbkcWMN6snOyMSQq9h+w9VoVclEYPk74yyi5Jh0UFX4
         YLmcLXYT/a1o4Znin6tBEE0/Pj4oXRinmfoDZaNrEmBuHrgzkao7AJjnAfSV4LQT42h3
         ivuQ==
X-Gm-Message-State: AOAM530GOojM2AqNQKfMPo1SrVtMHYLk75bGWtlM/JaWcLf917aZkRyr
        lnoZu48EUC66XEG6MFUXGMnDNGt7yN0E7C4ctm2sOQ==
X-Google-Smtp-Source: ABdhPJw7oJ1bLp7G9VRztPrkOy9xTQDXqiw+K3cBPPPBg9PPUueYjcIQ1KRQLQjazbl4Ws56poVKheeZAOhjw/5+vAA=
X-Received: by 2002:a37:c89:: with SMTP id 131mr16379078qkm.468.1608540047125;
 Mon, 21 Dec 2020 00:40:47 -0800 (PST)
MIME-Version: 1.0
References: <20201114135044.724385-1-daniel@0x0f.com> <20201114135044.724385-4-daniel@0x0f.com>
 <160843899675.1580929.13271525932327387602@swboyd.mtv.corp.google.com>
 <CAFr9PXmAe9o5KtTG58twpumWi3A=7YfsM7b7pOwRTk1f=jCKQQ@mail.gmail.com> <160848978734.1580929.11702930284423878688@swboyd.mtv.corp.google.com>
In-Reply-To: <160848978734.1580929.11702930284423878688@swboyd.mtv.corp.google.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Mon, 21 Dec 2020 17:40:36 +0900
Message-ID: <CAFr9PX=_uaBwB1tWzgmAxZC6hP16TMc4ZQy=5uAKGBoxtWigGg@mail.gmail.com>
Subject: Re: [PATCH 3/6] clk: mstar: MStar/SigmaStar MPLL driver
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>, linux-clk@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephen,

On Mon, 21 Dec 2020 at 03:43, Stephen Boyd <sboyd@kernel.org> wrote:
> Can be part of the same series.

Ok. I have added a small patch that adds devm_clk_hw_register_fixed_factor().
I'll send that in the v2 once the clock names issue is resolved.

Thanks,

Daniel
