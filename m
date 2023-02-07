Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C983568CE2B
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 05:29:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbjBGE3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 23:29:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbjBGE3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 23:29:35 -0500
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com [IPv6:2607:f8b0:4864:20::e30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F07334317
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 20:29:33 -0800 (PST)
Received: by mail-vs1-xe30.google.com with SMTP id g3so3665096vsr.10
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 20:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nF9vH3eaAbIKV4DBI82H+S0pnnuGeRGAzsQCfTN3QS4=;
        b=bJ47yYjUQmEPTekZ8RiGasn8rtdrty3yO15BKJASD1NpFZ7vgQMG9gmpBS5KhcXbLF
         SDpj664sWXFR+t65gRALB8vDPBQwKaawXD2r1wmp8FA+JA8lsHRYjmtqigtLkEdYTWlz
         ADyLL6YzWSEZIW2w2QsH9RHN9OQlO0q3dVLUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nF9vH3eaAbIKV4DBI82H+S0pnnuGeRGAzsQCfTN3QS4=;
        b=JZm2ZJv0mdOQgJa2kvUueWpUFqxzwv3JwlZquQRBudcjWRqyvJO/mV7AfHuksj5xe3
         8yI5Sr+L17UJNnawxDPNpj4j0EDnQSdxZMv9t8nkg9ALrGTVVmUOGbE8fS9Lg2wFpe4s
         E4mQX0t28wlBHqm/fuE4pCmgHMe4pPWsfUWrwbiIrh7nPY4fvioLvoRPnD5aAKuWvJCN
         VLJm2YLZMBC501NxLHgNzXt6ooqnLQspCCTILkM7BGmZNcxvVGTBREwkV+OFKJW/W3Ks
         I8T49lYWnnblX/soSN9LXEWhpWG0C219/X7/ra4UxgnzWXusU5EGaGHfPoW5S9Ek1ttY
         dGLw==
X-Gm-Message-State: AO0yUKX8guaPOhaH79hiQIfEEvlq7en6odAR0SGUrYrk9KBNBe/IjNyo
        XlMxZT3fZ/yY7o7YvlNK5KWdctmW24ud/JenXAg4mQ==
X-Google-Smtp-Source: AK7set8YvobBI3oYuPbBjpEvQTcTwp7H9m+SkAWZ7KEqJ0FihXD8UHvdEcFi4s9T8+P2c7Tlv4z0bjXKUX1R2uRlp2U=
X-Received: by 2002:a67:d206:0:b0:3ed:2cd6:deed with SMTP id
 y6-20020a67d206000000b003ed2cd6deedmr487539vsi.65.1675744172765; Mon, 06 Feb
 2023 20:29:32 -0800 (PST)
MIME-Version: 1.0
References: <20230207014800.7619-1-moudy.ho@mediatek.com> <20230207014800.7619-2-moudy.ho@mediatek.com>
In-Reply-To: <20230207014800.7619-2-moudy.ho@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 7 Feb 2023 12:29:21 +0800
Message-ID: <CAGXv+5Eo4es6XF6m9LQDhHdrFs=18_S-VGGvn4wQF1KWmzGcEg@mail.gmail.com>
Subject: Re: [PATCH v7 1/1] clk: mediatek: remove MT8195 vppsys/0/1 simple_probe
To:     Moudy Ho <moudy.ho@mediatek.com>, Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
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

On Tue, Feb 7, 2023 at 9:48 AM Moudy Ho <moudy.ho@mediatek.com> wrote:
>
> MT8195 VPPSYS0/1 will be probed by the compatible name in
> the mtk-mmsys driver and then probe its own clock driver as
> a platform driver.
>
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>

Stephen, could you pick this up for v6.3?  Otherwise we'll end up with
two drivers targeting the same compatible strings.

Thanks
