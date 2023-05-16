Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09D15704E9D
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233038AbjEPNEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:04:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232762AbjEPNEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:04:40 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7317C5265
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:04:18 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-ba76528fe31so3676570276.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684242255; x=1686834255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DyHzhEzewtSr9qT80gAaJVsweRm/vdYifkr1pznjePs=;
        b=GzDncsFtWn3PiK6yqKbw3AyG24JOvl8bqlLQIvAIdzzQ0FELfv20xMhlm9Q8Goa3WU
         PGaSPH4poNqcHAcUUyegimmR0+0OcvxE5TM20CDOxVJ22EEY6wVIV9yLDVOclhhfn19j
         Dq1JOARRbxhJ3sjcqGjnhjCtEQeiCA5P+F7RumEQXxRzFIS8BAiBtDftBJ4DkbOrFwDQ
         bWt8BzI3gItcBTae00pswDLrCJjJ9jJOilaxOGS6+NypQajgaxjt5g8d1vqdsywgM7Ry
         IwSXKwZdZChUUclMrPqt+/F+gSjOTjoLV+jFSr3aAqBIBMPU6JuUWdc9mv3i2cBUEd3Q
         gigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684242255; x=1686834255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DyHzhEzewtSr9qT80gAaJVsweRm/vdYifkr1pznjePs=;
        b=EhPZMLZrAQvSlVXAovRAFFjC5nXEIjz0fY80bcp4H0aXvpUbPExTn/9bK+jhopMcO7
         OVM2OOZm3fPySggaLMkkTaVuJ/3A4NnN6PMh9d2UCnl3UvTjWAJVybRc6Y6DFR0CYaze
         xDyoYhZeGyNMwnR10MewGeTt6hGxU2109bhdLhP5RN1HxOEJXTfktTov7mYh/cwWEA2w
         5Az1pCRKhMLNPu8XdANi4h3uxWd+lWbH6nkZdSzDRcf91ururkT8EJ6Uh84b00Y5Jlob
         ecDK8Dg+nigGw7vmgDV+YPNehYke6VQOCD6peu009r0l3ddVZml5ttNg5ongX8a1i+kF
         FfEA==
X-Gm-Message-State: AC+VfDzlIyxIAKaOja++W0nvHsKNmBsnyTP2JMfjo4gELc+Q1u0Uf8tx
        sgQznwHbRaATM5//tFbojJour3Nfn0kUxs3+Y7M0qw==
X-Google-Smtp-Source: ACHHUZ5LLSZp5N8AjFtcsS+Nblq75Sx9hUmlFiigH+cSwbzXVQ2MmX0+UvUYUq2zTalIgFeaTqBJCdYWkYRvJvugECA=
X-Received: by 2002:a81:1cd0:0:b0:55d:a851:1aab with SMTP id
 c199-20020a811cd0000000b0055da8511aabmr33116341ywc.17.1684242255182; Tue, 16
 May 2023 06:04:15 -0700 (PDT)
MIME-Version: 1.0
References: <1684133170-18540-1-git-send-email-quic_rohiagar@quicinc.com>
In-Reply-To: <1684133170-18540-1-git-send-email-quic_rohiagar@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 16 May 2023 15:04:03 +0200
Message-ID: <CACRpkdbu95hkFWJtCKoUXCyLfS2hxUywD41iF45ZtgKzqjXAJw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Refactor the pinctrl driver
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        richardcochran@gmail.com, manivannan.sadhasivam@linaro.org,
        andy.shevchenko@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 8:46=E2=80=AFAM Rohit Agarwal <quic_rohiagar@quicin=
c.com> wrote:

> Changes in v2:
>  - Added changes for SM7150 as well.

This v2 patch set applied!

Yours,
Linus Walleij
