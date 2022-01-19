Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C4FE49418F
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 21:11:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240108AbiASULl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 15:11:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240149AbiASULg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 15:11:36 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 018CDC06173F
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 12:11:36 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id y14so5989577oia.9
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 12:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Ux0XE7RoJ9M9u9eFrS5FvbzwFObKaVh7eojK5revoSE=;
        b=OppY9DT86SovagpCZvYO8aRmIb/yj57hBcyw+SsmOCeJ20AxLkGpxulk6NNYQ6W4Ll
         YFleAZQ5HmGZoRqFDQosyuscrvxZvwTvD7RSIMRQwCnvoUV/XV/vX8pT8bxiMffSvWAd
         pzizFhbXVg2xXF20pLLi1Q3zt7o9IVRJ+GkQA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Ux0XE7RoJ9M9u9eFrS5FvbzwFObKaVh7eojK5revoSE=;
        b=VCDjwIqSUBZt3rcjKmzx5a5zyBRJWtr1Y/W051ULZSfelxjAm7BF49oMUweAvkSdkX
         rvnYqCkl71tAhZTPvBfGawZKSUrs1XDlpH/zvgeTBq3Va+//suX9HPJgzxLYpMH5Yd0B
         DAj6LQUyffIUrJcY393meVZkQb//LZShpkT3IqQDwZ5Okze4mx8Ohk2yNv2pXDlraN+U
         HTZ6H01IqAdHh8VJy/CKEu7aiLO989iVMlp76G1p7skr0JkDNogoVouHoKsz5hBwO+0t
         xnCe+IU1/B6sBaga/Yv9sbirQhhnxD1RUKgM1vdEvG1y/Y7UI6UGsNDh2gGVUt1iC48g
         CwhA==
X-Gm-Message-State: AOAM5301G+aJiKVtL/5CxixVc1AlaO5PWAENDHDPHvt2rK8gEgExCqBM
        LCugB5CGbHjz603zeira0pB+eT4nmJraWPKutzzElQ==
X-Google-Smtp-Source: ABdhPJzEno0W0DnWhBvwsJjSg5D+E9lMOeYOjDKQVHxpxyCqvXx7BVqTDPR+FBASM48cOMdflS4bgsfc9irgl3siz98=
X-Received: by 2002:aca:a953:: with SMTP id s80mr4673449oie.164.1642623095415;
 Wed, 19 Jan 2022 12:11:35 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Jan 2022 12:11:35 -0800
MIME-Version: 1.0
In-Reply-To: <20220118144851.69537-3-alim.akhtar@samsung.com>
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150018epcas5p32642af7af63869d08a861d00d97e3b68@epcas5p3.samsung.com>
 <20220118144851.69537-3-alim.akhtar@samsung.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 19 Jan 2022 12:11:34 -0800
Message-ID: <CAE-0n51KLEbCsvR7ByzNXxKg7gK4y6UNvg5vfAJ4C87QUweC9Q@mail.gmail.com>
Subject: Re: [PATCH v2 02/16] dt-bindings: clock: Add bindings definitions for
 FSD CMU blocks
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, krzysztof.kozlowski@canonical.com,
        s.nawrocki@samsung.com, linux-samsung-soc@vger.kernel.org,
        pankaj.dubey@samsung.com, linux-fsd@tesla.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Alim Akhtar (2022-01-18 06:48:37)
> Clock controller driver of FSD platform is designed to have separate
> instances for each particular CMU. So clock IDs in this bindings header
> also start from 1 for each CMU block.
>
> Cc: linux-fsd@tesla.com
> Reported-by: kernel test robot <lkp@intel.com>
> [robot: reported missing #endif]
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>
