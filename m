Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF860646662
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 02:18:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiLHBS0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 20:18:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiLHBSZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 20:18:25 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF80C8DBEF
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 17:18:24 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id 140so67864pfz.6
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 17:18:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N0Sw528hJMRhVLoLeYSRs5uTCd55tvX9gprVAO/vvUM=;
        b=a0qJN7gRmmoNaHzxlJ52OYV0tC1q2zjSR/7F04onj8idZg1XB4c1CVB0Q70H5hBKyt
         9r28CiyqQQORT8H5UhORQxasA0Xe5rXtncpt6spEaXQl3Y0od7XMwLROp+q6nD9hty5i
         5/OOYIkjvHLCenak/CzRk4iU8nggb54Q2ZY/yn8PZqadsYIST83xDWblIlD8E7JRh0r/
         fuK40UyQ6H+hijlRW8WGHR+r5o25+0htXHlQc1o7OyZ2UvL0Qn6GWoSQXCoJRhG03AjM
         dBHGm8rq4izxCcGOaCFnOKw2mmIdO1oW/8vEH2ISSVIpKL4EsQPLPWxckja1k6xvzagf
         HEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N0Sw528hJMRhVLoLeYSRs5uTCd55tvX9gprVAO/vvUM=;
        b=cOwbPJs9FVLF5lE9YZhJlIsnbXNHDL9sb9h63iqySbTvdflJzQlicO4CVu9sOx0O1P
         HxtlPRgK764qhyapXh1vbNQu7OBEar58o6+N1FxeotVEyr8IMEYwC5a8YazOF2Ejzsy4
         v4hr7OszjNuPZQ29wfmVwtPzIEYMHsAg45Ptf2USyfCYQW4sSA4tB2aSm10i2GG3jFrR
         WQkgs4Ya3I5GUu7vw6xN35J180+G+O1sHKz1gC5Dv3pzlWG3t5A5k/ZWcnyWceFMcdgf
         zsrwloYp28DBbFgi0mvQl2ZSpvE7SQ85DGApy6P7/rZDe4MHdaasB0FW55gRbZf0xYXd
         YVpA==
X-Gm-Message-State: ANoB5pmY3gAvtE/GjTOLl/M8A+4KS7rook1dffgkIl2mvW631BOzB3AN
        v1Vli8RYVcORwwU+3ubHCSoKsKghgSjVrrMK/gc=
X-Google-Smtp-Source: AA0mqf7mg3kIoeENmbW4XlnqIVpdx2Rn9J8rTRRMGUpjX+WfpjAxqY9RqMwnu4DB8U4F/02QFEW/yJS+37gQwmHVF3Q=
X-Received: by 2002:aa7:93a3:0:b0:575:c993:d318 with SMTP id
 x3-20020aa793a3000000b00575c993d318mr38756465pff.78.1670462304265; Wed, 07
 Dec 2022 17:18:24 -0800 (PST)
MIME-Version: 1.0
References: <20221207102749.180485-1-francesco@dolcini.it>
In-Reply-To: <20221207102749.180485-1-francesco@dolcini.it>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 7 Dec 2022 22:18:08 -0300
Message-ID: <CAOMZO5DVfnB5NoPXp2rU0B5266fHDSg=zO76t+AeuyC_HpK80Q@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: verdin-imx8mm: fix dev board audio playback
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-arm-kernel@lists.infradead.org,
        Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 7, 2022 at 7:27 AM Francesco Dolcini <francesco@dolcini.it> wrote:
>
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
>
> Set optional `simple-audio-card,mclk-fs` parameter to ensure a proper
> clock to the nau8822 audio codec. Without this change with an audio
> stream rate of 44.1 kHz the playback is faster.
> Set the MCLK at the right frequency, codec can properly use it to
> generate 44.1 kHz I2S-FS.
>
> Fixes: 6a57f224f734 ("arm64: dts: freescale: add initial support for verdin imx8m mini")
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
