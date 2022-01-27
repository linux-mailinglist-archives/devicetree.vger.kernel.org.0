Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE31049EEBC
	for <lists+devicetree@lfdr.de>; Fri, 28 Jan 2022 00:17:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241228AbiA0XRv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 18:17:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241241AbiA0XRj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 18:17:39 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0428C06173B
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 15:17:39 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id s127so9044857oig.2
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 15:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZHgjzy8t853W7I+7RWJNG2X4/bJj/NvMkuBTg7rJMyI=;
        b=lXfZj48otSZXbvvLK2IFxj2PbX/9TUU3oXrlHfV5EOgB8ydujVyzfPi/Y4WKkJVmvb
         3kCp+UaQ3QggL6uu4AMh5+RMEtNSAL4FZeHRAjpF08d+Q6o69AGfKYdsWVx51Pr0bfMZ
         CRK8rLd1m3YZC0XS7gMZnsZJbFLKG0EeL6vjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZHgjzy8t853W7I+7RWJNG2X4/bJj/NvMkuBTg7rJMyI=;
        b=q9hQpnw8M3NW43f5DeKGy99DaqMF9nLpK0AOUAjUcdywwgCtTRGAB9RfXerWW1uo6O
         z0rW+UTqezNBVlJqK1yRpR5UrYbXxCRPXOmXsTFhcS2DNlpEJkvVkz+G7k2Rl1haRAdH
         f6u31UYozTVZfocIZI1CcrUNoSq7tuTiBPnAjohIYH37ft4845IspIObPiwLUwIl2T+n
         6XLHBeEDwyuEQ1l7FuwLDfBvI1DzzFFPbf7ZWXp6r64TzO0rRko2PZPF5sxMLLPHmoIi
         Q+PbPbfuHmtMq8h2tuBmzGqwvMuWQD3Z0UtQA5KMwfCmkHR1Gyr8NW18LCV//WLprKX5
         m6Iw==
X-Gm-Message-State: AOAM530hTPte8iQiVB5R1F6x4Cl2hkXZHMrH1puwtBBiFf7yaVaFT8IQ
        ws2i7jtfRIqA5zjh3Lu3EagupNbx8Idm1Q==
X-Google-Smtp-Source: ABdhPJwSlVjWI9g+ZBC7YCXn9qOADaFaGjJ4pDvOD8/IkmQa5ptu9scUwPXP4AGQ3oG7rZW4oaq0xA==
X-Received: by 2002:a05:6808:16a7:: with SMTP id bb39mr8389991oib.108.1643325458891;
        Thu, 27 Jan 2022 15:17:38 -0800 (PST)
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com. [209.85.161.44])
        by smtp.gmail.com with ESMTPSA id x16sm8911948otk.0.2022.01.27.15.17.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jan 2022 15:17:37 -0800 (PST)
Received: by mail-oo1-f44.google.com with SMTP id f11-20020a4abb0b000000b002e9abf6bcbcso1061942oop.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 15:17:36 -0800 (PST)
X-Received: by 2002:a4a:dd86:: with SMTP id h6mr3051054oov.87.1643325456364;
 Thu, 27 Jan 2022 15:17:36 -0800 (PST)
MIME-Version: 1.0
References: <20220127230727.3369358-1-briannorris@chromium.org> <20220127150615.v2.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
In-Reply-To: <20220127150615.v2.2.I5ba582cd678d34c03d647e5500db8e33b7524d66@changeid>
From:   Brian Norris <briannorris@chromium.org>
Date:   Thu, 27 Jan 2022 15:17:25 -0800
X-Gmail-Original-Message-ID: <CA+ASDXOnO1EgStrynPe1uSB4T8=qNUPj+wY2y3vGs0fnEHdE0Q@mail.gmail.com>
Message-ID: <CA+ASDXOnO1EgStrynPe1uSB4T8=qNUPj+wY2y3vGs0fnEHdE0Q@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] dt-bindings: devfreq: rk3399_dmc: Deprecate
 unused/redundant properties
To:     MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Linux Kernel <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Lin Huang <hl@rock-chips.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Derek Basehore <dbasehore@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-pm <linux-pm@vger.kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 27, 2022 at 3:08 PM Brian Norris <briannorris@chromium.org> wrote:
>
> These DRAM configuration properties are all handled in ARM Trusted
> Firmware (and have been since the early days of this SoC), and there are
> no in-tree users of the DMC binding yet. It's better to just defer to
> firmware instead of maintaining this large list of properties.
>
> There's also some confusion about units: many of these are specified in
> MHz, but the downstream users and driver code are treating them as Hz, I
> believe. Rather than straighten all that out, I just drop them.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> (no changes since v1)

Apologies, I didn't include Rob's Reviewed-by tag on patch 2 and 3. If
this goes for version 3, I'll include them.

Brian
