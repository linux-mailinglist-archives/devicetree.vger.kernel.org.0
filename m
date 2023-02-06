Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB4B468BB0D
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 12:14:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229971AbjBFLOx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 06:14:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbjBFLOq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 06:14:46 -0500
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F288C59CA
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 03:14:45 -0800 (PST)
Received: by mail-vk1-xa36.google.com with SMTP id u199so5902033vkb.12
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 03:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NGHFyTcXjv8iNfdtTbr4AjszKwZaLlLqNsZLgUMcwgg=;
        b=fJi7xo7rAQpGc5beT3G6uxHlyPXbm8EBAmZGqtAxOIkhN+KOdSG+tU5L1XQLpQEo5W
         MU/qSaKWCv6/mJnTd8Izbda1mbNB6ORd4LaZFSGNNZztZ9EBnAVAqNxYm+jWsdMctk6k
         KoeLvLO9FA6MlmGsQCJPGDYJrC/aIx0cYMytQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NGHFyTcXjv8iNfdtTbr4AjszKwZaLlLqNsZLgUMcwgg=;
        b=7DhWCSg7wzmZINC29mkqJh42kLaRw5ZpTSD2S0jcDjhuAa4PMVSxF7dZU+fktFtLzD
         FERieTdSlV4T/4/Ez9XNoVr7IAZ1gjerCbFPdanmCkPyfBv49YF8fHXOSm31sCkgcxLi
         QixmaJs4rigyjdCziO4tfR72+MvEQOxwpSn+K9l4upUlaSilad2/fXfVCRscRNcAnieH
         iDpZsGOhQvrdQby8vIAM3qThBv0qzrz1E006KMyHepUzrDbpVbvdcTlIpOiJSZ4UZDu2
         E1KRYrD/9n4pZ9nkiv8cGL1fx0+//OFiOKjLErsEJ5fbg/Bn3lYI9rerjx/t8N2dMTg0
         73BQ==
X-Gm-Message-State: AO0yUKWrfgJ2rGrEr30naLXzFE/kQL3BU41qtwv7PqjJfarLFcoeV1CJ
        iSTErQMLyrNEFT/QQLSnsZoDKWYgNg4mBjqtBB0n4w==
X-Google-Smtp-Source: AK7set8Q/DuqU17rY4kMXr59FonOJqAzSVrz1tGjeFvBuiw+sVUO7B//FvH662hX89b8oClO3AoUxF7YZY9Z+PrN6Ac=
X-Received: by 2002:ac5:c744:0:b0:3ea:94ea:110b with SMTP id
 b4-20020ac5c744000000b003ea94ea110bmr2750821vkn.22.1675682085091; Mon, 06 Feb
 2023 03:14:45 -0800 (PST)
MIME-Version: 1.0
References: <20230206091109.1324-1-moudy.ho@mediatek.com> <20230206091109.1324-4-moudy.ho@mediatek.com>
In-Reply-To: <20230206091109.1324-4-moudy.ho@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 6 Feb 2023 19:14:34 +0800
Message-ID: <CAGXv+5E2U+vu4ZCwUxP5zTxSrV=H9JEL5+UB6LokGcjeH+roOQ@mail.gmail.com>
Subject: Re: [PATCH v7 3/6] arm64: dts: mediatek: mt8195: add MUTEX
 configuration for VPPSYS
To:     Moudy Ho <moudy.ho@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 6, 2023 at 5:11 PM Moudy Ho <moudy.ho@mediatek.com> wrote:
>
> In MT8195, the MMSYS has two Video Processor Pipepline Subsystems
> named VPPSYS0 and VPPSYS1, each with specific MUTEX to control
> Start of Frame(SOF) and End of Frame (EOF) signals.
> Before working with them, the addresses, interrupts, clocks and power
> domains need to be set up in dts.
>
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>

Probe tested only. I assume further testing requires the MDP3 driver.
