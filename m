Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9436865B06A
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 12:18:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232634AbjABLSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 06:18:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232568AbjABLRs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 06:17:48 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40E45267C
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 03:17:47 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso32707271pjt.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 03:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ROx6J6/MF0Vp4uuk8r071QOwN0mXgiQW2VVHrd14dsk=;
        b=ZMLs7CS4eFjpHc8g3YXXx/bXd+DaTbmyUjBjHdGzmMTCyvIqZBJLooMQ38KVah5waL
         3wSBi3LwyjE/8C2MDipfGymi4GL7AsnfVZuyFafMvgsHfbJasIUyk8lLfJU+uG28tIgs
         9tZ0MF07tb9r6qLrkoKUkvkG28srk+JwTqFYnVp+N6uns2EZKlDbWfTI2L77OCn0a8NB
         AwzY/y81XFBBJkkffknCXrG+MzNUqdvPoXxT4motusnSsdjQP4Ngrcj1/zEInBEVej5K
         u3AXze0ierD8DUCm/gWT2B7Uvo6K2rbpTBn1OF9dYhnsDhQkkoZfL7WYun8El3MQDEs4
         k0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ROx6J6/MF0Vp4uuk8r071QOwN0mXgiQW2VVHrd14dsk=;
        b=Y72xdCHI8zc18JdU8iQ8dMpmhKQo0NkdblD/RijEiAGrkaxegvbKtJeg50K8MiAyvg
         F/eGfX8XGjjx0tp6xo2xR/2lD5xOv+4KTFXXGvYJtR80HmKy+HQcWG2cZzQOeAsSTbki
         42GcruAx+4LV2ZfN3MYPN7yKo+O42NhKmxyoVzvO3rr6WZzESamAjLwU2mhd//fObe/0
         2AwrVffiMUIsj3R+RC2XSj0N76M/O8qlbU0Xj3JNv7i0RVGH0DQ2EtRmZX5p7XwD90X4
         lfCAghQvNqEjgo9lGQqjS7oloY7OzOLx769I7zgg58FhIuYe2W8sL6Rcr1AEegl7oCET
         jprQ==
X-Gm-Message-State: AFqh2koonrouVpdz18N/Ixk94EYf8TS/0FSgf6wSnQfcDMZg5AP3Qlrk
        G1CF7jLQqRvY0oekaCrLvHfVjpjPulRAwpcPPmw=
X-Google-Smtp-Source: AMrXdXtxXmmA5NtXqATRLFmHOW926cuRDmKsaJiziraxvjqmzArt9Aly5F/+loB+6ZKYCbv/qC9+7lYIHkobBFBe1Aw=
X-Received: by 2002:a17:90a:6942:b0:226:228:3e44 with SMTP id
 j2-20020a17090a694200b0022602283e44mr1273099pjm.172.1672658266673; Mon, 02
 Jan 2023 03:17:46 -0800 (PST)
MIME-Version: 1.0
References: <20230102004425.887092-1-dmitry.baryshkov@linaro.org> <20230102004425.887092-4-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230102004425.887092-4-dmitry.baryshkov@linaro.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 2 Jan 2023 08:17:35 -0300
Message-ID: <CAOMZO5CGHM9uMxZMpwEqon-T7ycBHyo97uxOsTS-LetOwf07NQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] ARM: dts: imx: Add support for SK-iMX53 board
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

On Sun, Jan 1, 2023 at 9:44 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Add support for the StartKit sk-imx53 board, a simple development board
> with the iMX536A SoC.
>
> Tested and works:
> - UARTs
> - SPI
> - I2C
> - GPU
> - USB
> - uSD
> - NAND
> - Ethernet
>
> Not tested:
> - Display
> - VPU
> - capture
>
> Not yet working:
> - Sound
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
