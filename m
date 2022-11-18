Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC4262EEA0
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 08:48:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241138AbiKRHsr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 02:48:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241062AbiKRHsq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 02:48:46 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59FEE13F76
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 23:48:45 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id ft34so10951832ejc.12
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 23:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vU5W8ur9B7l9Zgg+quFd2BNNrxWQGL6WPh6e5iN/YH0=;
        b=KxET/fko3S2n6IOG7KINMUOcnceh2Wvz27WxoFfOlioE8UpFlQaRuaeyWeA/albMDD
         LFmvrykoUwbqVB82jXVYa4q8dHCut12EKe7PeEB+ssXFGyKQ2TOk2dYpyZf0AiLW3u+M
         6B7tGwopUM7HR/cKL7JS4WkOoXATlkna3MPyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vU5W8ur9B7l9Zgg+quFd2BNNrxWQGL6WPh6e5iN/YH0=;
        b=pbCZuePxPESOM5/HqxRwZ+rD/00cBVGGwyY4dN5GJquRrXvh8KLEoybnQNckYiMTys
         TiL3XFdbFMKLKjfBTj0DFaVP7ZddjlKnAfSq+jul4YW6Xk63RcXlDmRRWy+24mYg+G72
         OhCdFXEpCKDZdfwlmU2ChMEobvIyp6Wld0rVLiW/Rmd1Ikpv7ds51MLFDdrSQzGNMMG9
         uO2lsLnPDepK7Pg7iDbXeSglxUMKmTuPQvmNqzh4MoOSrxJj9B/zO+P6o4UxAzPew4ZQ
         Pt7E/mcFxa+dS4m1d/tc6VdyEqkb9PH1cuPzRqi6pLUkpqAbcH9H6quNXGuco0lDbEse
         cCWg==
X-Gm-Message-State: ANoB5plciCAxwTkDgfyFiW5gZkjc41bcZ9NQOMgShizZHB4SE8XGWPLO
        XHLaopwZ3QXJjQQrEOJdP3EhUThzY88ZGiHA3hatfw==
X-Google-Smtp-Source: AA0mqf4bSaAT71nfpqxoEd7xZPMY65vR+S9YMqPyEdv+Aqr7nFTuKyPxwekcvOADbNSzBGvqYPHDUcMMiLjzE/WMv2A=
X-Received: by 2002:a17:906:32d9:b0:7ae:31a0:5727 with SMTP id
 k25-20020a17090632d900b007ae31a05727mr5072471ejk.540.1668757723895; Thu, 17
 Nov 2022 23:48:43 -0800 (PST)
MIME-Version: 1.0
References: <20221117113637.1978703-1-dario.binacchi@amarulasolutions.com> <20221117114252.g3bcggwzyf4dxa3z@pengutronix.de>
In-Reply-To: <20221117114252.g3bcggwzyf4dxa3z@pengutronix.de>
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date:   Fri, 18 Nov 2022 08:48:33 +0100
Message-ID: <CABGWkvo3LZ7_JUpN3v5fWXfCgJrFepUqokTUo5b03H=C6jfq7A@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] clk: imx8mn: miscellaneous cleanups and bug fixes
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Anson Huang <Anson.Huang@nxp.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-amarula@amarulasolutions.com,
        Michael Turquette <mturquette@baylibre.com>,
        linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, michael@amarulasolutions.com,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Abel Vesa <abelvesa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marco,

On Thu, Nov 17, 2022 at 12:42 PM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Dario,
>
> On 22-11-17, Dario Binacchi wrote:
> > This series has been tested on the BSH SystemMaster (SMM) S2 board.
> >
> > Changes in v2:
> > - Update the commit message.
> > - Add Fixes tag.
> > - Maintain IMX8MN_VPU_* constants to not break backward compatibility.
> > - Update the commit message.
> > - Add Fixes tag.
> > - Maintain IMX8MN_VIDEO_PLL1* constants to not break backward
> >   compatibility.
> >
> > Dario Binacchi (5):
> >   clk: imx8mn: rename vpu_pll to m7_alt_pll
> >   clk: imx: replace osc_hdmi with dummy
> >   clk: imx: rename video_pll1 to video_pll
> >   clk: imx8mn: fix imx8mn_sai2_sels clocks list
> >   clk: imx8mn: fix imx8mn_enet_phy_sels clocks list
>
> Whole series lgtm, feel free to add my
>
> Acked-by: Marco Felsch <m.felsch@pengutronix.de>

Thanks for the review

Regards,
Dario


-- 

Dario Binacchi

Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com
