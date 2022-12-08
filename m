Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E703646663
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 02:18:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiLHBS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 20:18:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbiLHBSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 20:18:55 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62DC8DFE5
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 17:18:51 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d82so54055pfd.11
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 17:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O+4RSh4xavVTWbn/HW4cDQ5orFdDZ5H/v4qw+HnaVU8=;
        b=hzkSAmhbiGOaBZQ+BTLuHoxXKcKcVErJ90dD9bmotGl6ZxdtNP/GL0T81gLHKOu0lV
         JGaifXufJHnp6r0ZgfKlEzJopZAP4XdoMNs8lqiAa79Ahu26ZaP2+rYgaG7ILgoP+vXv
         hDH62tYIjwdZg2lkZHoDHSqlBQ2yPtS5Rw1cXPeVslMPwb+YgL0xM/OwHnFiTeBgU1Pq
         Tq+xdM/ilLYEQenbSSAHnlYFRNxtWKgDMlO3xQuMFw3sen+ioPprB3mskVb4+7Vuyt1R
         eYRnnq9R8jTGEDBlKTpbkt8JhAi27jIrOg5gIBkn5DzHL1sOTKS1+7niP3W9+0bhfdlJ
         aMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O+4RSh4xavVTWbn/HW4cDQ5orFdDZ5H/v4qw+HnaVU8=;
        b=pRtuutKvixsMisfAaOm1tEC/TZZluNRoEuhLm7tNUKtUjMwkLBcnPidAywG+8/+l3/
         2neWWW6ei2a2WjFAGJU5A7v0l58mYBtVZF9lOPV/GROlh7rJ22JGk1mPFBE7wvmZKJ+b
         Fn7TANPMThYCefx2hw6lhM5GSUpuG3yjMp4BTckk2c9IjwS8eb7k+VVTpk2mC+7Mx0gs
         j9/gdTEnZgPoLFIP8bIA6opDckOs0e28d7ERE5m6DN0NLlCKUS3qko/fCGvMyFf+sRSX
         r0+7WQ62AiSyd7D4pol06Kg6W2gpT1ttazeAGu0W04YzglVK+T+QOI00dfItrUHfwlL/
         WLmw==
X-Gm-Message-State: ANoB5pmJrOcreCKyIezLAOyyaWrkAesE6KIzeoRApiZ7Jms1V+hvkxrv
        K/MWHrgUwK5dRXPOyZOyte5NBeigJ0j+zumYtMI=
X-Google-Smtp-Source: AA0mqf6xW71aDjeSQzt6KOiPKPmUptf5QwnJPZidWxS+CONph1Rc13G+S2ilRryxyeQEV/mx9DdEn4kU9r9eOavt3CU=
X-Received: by 2002:a63:1b17:0:b0:477:de14:988b with SMTP id
 b23-20020a631b17000000b00477de14988bmr55756404pgb.131.1670462331221; Wed, 07
 Dec 2022 17:18:51 -0800 (PST)
MIME-Version: 1.0
References: <20221201125548.34793-1-francesco@dolcini.it>
In-Reply-To: <20221201125548.34793-1-francesco@dolcini.it>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 7 Dec 2022 22:18:35 -0300
Message-ID: <CAOMZO5AZWodJH_OUvLJauSC31pdLEOvK4DNvSRYswMtWdEdX1A@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: verdin-imx8mm: fix dahlia audio playback
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

On Thu, Dec 1, 2022 at 9:56 AM Francesco Dolcini <francesco@dolcini.it> wrote:
>
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
>
> Set optional `simple-audio-card,mclk-fs` parameter to ensure a proper
> clock to the wm8904 audio codec. Without this change with an audio
> stream rate of 44.1 kHz the playback is completely distorted.
>
> Fixes: 6a57f224f734 ("arm64: dts: freescale: add initial support for verdin imx8m mini")
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
