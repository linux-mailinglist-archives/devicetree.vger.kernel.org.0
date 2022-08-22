Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3D2D59BC0F
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 10:52:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233849AbiHVIvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 04:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233285AbiHVIvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 04:51:54 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDE2813F12
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 01:51:52 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id h22so9486407ejk.4
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 01:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=F9wABGPJepecNKwit4UZt+CWAiTGn1tZ03tvvlqXGJg=;
        b=mKZT6I2wMsaNwXM5/0bJ7rowcsGG9xiomgEsajUzkHsT7HcuOj9E+1YMCAIhBQPj1O
         w4zLYYxnBcsQ0vJoY3mLCU/KInwP8wcxCYKPmLi13WXAb3tvuImFly+DCPTD+cNvw0uT
         zuIRk5myyhfAIvNTx8YkGARd0UF4FfcbBXBKiipX3NdjbbM0TBL+uxyYnBR+xkMlopt7
         II2FC1IAGUnmoGjJz+vC6jmqCNVu5QAdhUIoA6Ia713KHJg114QhtT5CL5IrdlJj/+3D
         PthbNSqQ3WwME1t32WSntsUJD23td/3o+5ycyLAUf2zLKEI4PBhm+xluk8s9Npon+yto
         zS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=F9wABGPJepecNKwit4UZt+CWAiTGn1tZ03tvvlqXGJg=;
        b=fLJoZSU74NfjoHUoRjU3ROToNuvA34syVmaN64lmjEFfDIJULEwx75FhCM+bBhQp89
         zgUCeLayY6mQldqnVp9ksqtkA+oXDfhlSBVzoax52bqdTD3y3w2kA+U4i0o+l/7FbJYS
         9kQVq+eqwuOTIsuDjxdAY0uCY9r5W55R4E104uTrHjwvnqL1l7V7dI09b33gn55zEdQb
         sPsCOARB0tsV1QU9XUy+hvp6bgVT76N4Nokez4qKrHvRvEmShEskKdlg2srvL4qXvyhM
         xnDp+w0YoIAFk2tCQCyeuaPSkiqUHsSVHj4Yid7+mJq9MymMHP0ekCy6ZyQtEjTyrvhW
         SSBA==
X-Gm-Message-State: ACgBeo2bWdk9k+h4KSspoJsDyFloluHUjZJPadHi6Hs2J4tdPj9ZXqhG
        EsmVeqUNlKUi1UPkpW5KHir0sK08GnUcVY/aA8mH6Q==
X-Google-Smtp-Source: AA6agR48fYE55tzDtAC6ibWU/joRibr0uHd0eKN9AvtNXWBFXk4FEax2+UisAqGiMzu7o0I7SacdqzKwZo2px46sLKI=
X-Received: by 2002:a17:906:9b86:b0:73d:72cf:72af with SMTP id
 dd6-20020a1709069b8600b0073d72cf72afmr4069144ejc.440.1661158311511; Mon, 22
 Aug 2022 01:51:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220812133012.7283-1-shenwei.wang@nxp.com>
In-Reply-To: <20220812133012.7283-1-shenwei.wang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 22 Aug 2022 10:51:40 +0200
Message-ID: <CACRpkdaPPpsm+0dzD5V_HtZfiHbBCvzEP73PUmJ4cEYT18g+-A@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add IMX8 SCU GPIO support
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        brgl@bgdev.pl, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 12, 2022 at 3:30 PM Shenwei Wang <shenwei.wang@nxp.com> wrote:

> Changes in V5:
>  - rename the file name from fsl,imx-sc-gpio to fsl,imx8qxp-sc-gpio
>    to match the compatible string

v5 looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
