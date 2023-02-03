Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0DE96890E1
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 08:32:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbjBCHcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 02:32:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230144AbjBCHb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 02:31:59 -0500
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com [IPv6:2607:f8b0:4864:20::e32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F0516779E
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 23:31:58 -0800 (PST)
Received: by mail-vs1-xe32.google.com with SMTP id y8so4541487vsq.0
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 23:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=20UFv4FYR0RNRhy2mEzLDHn9GdVhRKvFn1ySTJIDHWo=;
        b=RsxUC4vMRzdVnPDNIlpDSu6HWqexhlUr3/ndoqsY0EjcW+V0zfAdnJtijv7YsU+TcO
         KP5dbNn8LEe6vaxWWUeAbQkcVNYZxVRxSgG/V1wSR7AmvPlMMMOOGCYQGquKCmSUZ84T
         fQFD2VAWxBjKc9fP1AUSzWc+V61mf4ynPPAiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=20UFv4FYR0RNRhy2mEzLDHn9GdVhRKvFn1ySTJIDHWo=;
        b=zCwyDTykhezUf6iHvXxPNyjbBwipoShz7z1qKqu1HYFB/3n8vqm9bmwOW+UVvNI5iP
         sxSBIrmYJUzDrS+G8gM+HuP/R62LwOFOQK0JSeB9Zi9HGEyhm7mniVesILEJcnGea0xN
         KZKsXGj6z37mgrr18Wk4eYLl6dy+UAiN2Y9rNWGTYQqbXE0HBkVe4mDrG4e+jQHzn6A3
         DPHA4f21tLBJpFTX62lxR/m6wK9X7gOMiiv62n8ArtuV/kR1NZ5xsab/S8vmwWeApyD1
         AXGIrMBmnDuN6VnzPaNa6ujlUBtvhUwdqC+uxchbMgZVuJu89xPOnREC8aJi0v9qbfav
         uOUQ==
X-Gm-Message-State: AO0yUKUGcz+xJZHtXdCLEfOl0IVmZkl6cPAWWcR+VuS0Rgc2bYF3rFTy
        KPjbQ/0n0t0t+OB5qyChacLe3Uu/n7sJPquILpUVaQ==
X-Google-Smtp-Source: AK7set/4FlDK7sISjom/UmIlvod48p3X4cFzfbV8Lo3q+4ml6FeokBpj89CDwYQ/JOIdYwgsnoY2RhpBJT1ZpU8fMvI=
X-Received: by 2002:a05:6102:23f2:b0:3ed:89c7:4bd2 with SMTP id
 p18-20020a05610223f200b003ed89c74bd2mr1677388vsc.26.1675409517750; Thu, 02
 Feb 2023 23:31:57 -0800 (PST)
MIME-Version: 1.0
References: <20230119124848.26364-1-Garmin.Chang@mediatek.com> <20230119124848.26364-18-Garmin.Chang@mediatek.com>
In-Reply-To: <20230119124848.26364-18-Garmin.Chang@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 3 Feb 2023 15:31:46 +0800
Message-ID: <CAGXv+5G4vvtZAcgO9SUczUDq4_94K4jF3G+YuSDYa8QvxpMp7A@mail.gmail.com>
Subject: Re: [PATCH v5 17/19] clk: mediatek: Add MT8188 wpesys clock support
To:     "Garmin.Chang" <Garmin.Chang@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-clk@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 8:54 PM Garmin.Chang <Garmin.Chang@mediatek.com> wrote:
>
> Add MT8188 wpesys clock controllers which provide clock gate
> control in Wrapping Engine.
>
> Signed-off-by: Garmin.Chang <Garmin.Chang@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
