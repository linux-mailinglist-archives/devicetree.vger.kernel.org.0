Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70511688FE2
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 07:54:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232001AbjBCGxv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 01:53:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231868AbjBCGxu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 01:53:50 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA3C08E059
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 22:53:39 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id 187so4406878vsv.10
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 22:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nfNQZUW7vpWk49el8p5YyTuQXOt0xJcu7Hm6/2uj/BA=;
        b=JsBkmFybia9ZW4Tn80tNqvi4ejQ4duK48gNUWa7XECiICD86WWBXRtTBeA6TxCaLj1
         3YLNlaQfEKLP73hBaYLAGIzg/4qXKBvekULoYrWh5JHUTM/TahtLg4+g5d0N7DcgGtfm
         JAUetCNYzeWrNrUklnq2G6/DceDMZl4M+Ms2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nfNQZUW7vpWk49el8p5YyTuQXOt0xJcu7Hm6/2uj/BA=;
        b=FnH4RxpgEeP97mbfha4ajKuTNcAEA3AAYAR9aGL9Fp9e19TD3whjdWgb7ggtMjukGn
         slfFapvaFejTaNp/Ye8UtadiQIGssMegMjTa+uokt92IumQPvGdzfvDfxyOkoDC+80Et
         4FgLC5C8rcTPYyjsZzgChF4YKMqBXk5AxjaKrzK35339a04A2WCxQFoPUDuYQHAsPo6N
         5SFpGoGpSSUxGhexIezUyNUfWJUW+AZBlrvbycI7d/D/Ax0SUOFun54LuXV2fDNNem1x
         tUz6YufcI0gQvJhROnHjgc92TXXyXcXSW+CxkdIIIGUK8flAHN5BOmYmihnZSu4711CH
         ZKVA==
X-Gm-Message-State: AO0yUKXjYKm7mv0KZk1OigyQSWR29Deb39iw3wbekobrG5j6Bo8QwcgB
        jC4Lm6wXxgoYl++DlRZYsc0/elq4j6shXitVHeUi2g==
X-Google-Smtp-Source: AK7set9P71C7AZ8SPapudPPTNAfMRfdB/difo4XxWPYnTOB9xKAd3pZpzwIwaKo3jyt1LgHG+/GWReE5O9LqeBd1xBU=
X-Received: by 2002:a67:fc92:0:b0:3f7:93c4:9e56 with SMTP id
 x18-20020a67fc92000000b003f793c49e56mr1689947vsp.85.1675407218866; Thu, 02
 Feb 2023 22:53:38 -0800 (PST)
MIME-Version: 1.0
References: <20230119124848.26364-1-Garmin.Chang@mediatek.com> <20230119124848.26364-7-Garmin.Chang@mediatek.com>
In-Reply-To: <20230119124848.26364-7-Garmin.Chang@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 3 Feb 2023 14:53:27 +0800
Message-ID: <CAGXv+5HsQ-sG4+_uKdp5x++wzZvQMjbUpSrgyvUS+Tyo1kC-hw@mail.gmail.com>
Subject: Re: [PATCH v5 06/19] clk: mediatek: Add MT8188 camsys clock support
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

On Thu, Jan 19, 2023 at 8:50 PM Garmin.Chang <Garmin.Chang@mediatek.com> wrote:
>
> Add MT8188 camsys clock controllers which provide clock gate
> control for camera IP blocks.
>
> Signed-off-by: Garmin.Chang <Garmin.Chang@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
