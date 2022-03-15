Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46E484D90C6
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 01:04:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241263AbiCOAFL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 20:05:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240307AbiCOAFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 20:05:10 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 099A01B79C
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 17:04:00 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-2db2add4516so184397367b3.1
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 17:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uBOnam2LmZQW2iGFg9CBW+HsB6A0zqMq1JQjc15BdrY=;
        b=kV6sjpLvuiLYILgw11J6c2F3cs2E6pglb4HQKqoJjPHloObdr+kX2o43qiXd6CwdhT
         atjIXK8dhLnxY4cePB/3W/hhBeYuGv5EEV4Z033tXRgeIdTY7P3a1d4NYAC3YLxn0Oce
         ePk6/3qZpAvFWaOgAtmBhd/m80vrd0QpJ8q1Xsiq4XvlVtzm6MmTRCII1wRbPk8jiLz/
         K4PCHprLOCTacohkWJRrAJ81GB7I+eLOxaSDGMHw7GvGEA/gSOvMiFobg1V3m9sLmYaa
         Ar/graUrTeugI7AMRIR7gA1w3G6lpcazu5UOWkGGaiaZi6im12ZaTHRhNc5KUOsMs+mM
         2u0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uBOnam2LmZQW2iGFg9CBW+HsB6A0zqMq1JQjc15BdrY=;
        b=XSbdRLKyeFuUiW1b7xmIFrkkhwBrd7+NCJwkOGlyA4EFvrTzPvzRjF5ZUJ1xQbI1A4
         xqACYhCzS9qWTOXqD8EG0vliMMUz7sgpZKk8gfoDw+5pwg6hksin2vsasXsIr4bo97nA
         A8yKHJqpeKyscP0lF2wRy14eSaMnUpz4oPCghOJsLpfRQnjCACuZ/W+sNzQ05EWMLc1G
         XPaSQuTuCECRpKYR80VxS67ewQgcS1tVNZujyndoTOU861IdcKD4oX8I89RlRLflrKUC
         3IKkGSWYcyvx89yQ2D7do6iSWtjztHFkXJTvO0HsNbtOabf5Rb9HyOsrx0A+18Nvf+VI
         SuMQ==
X-Gm-Message-State: AOAM532pLJ//QUhaFvSSK3/RdCg2J8hoM5y9Jxy1+aMdac/zupoeTjme
        bZVts7nnuQfFcvn8+5NlJ1lM//5DKQB0bJVOalAKHQ==
X-Google-Smtp-Source: ABdhPJwUmMNGA86iugQC3ZrPytxozSLtLfREZBKKlRlmfuMosXaH7HXHMVOD5CEtg7vcd65ZAWzHgWz+UrKe17kgzSA=
X-Received: by 2002:a05:690c:9b:b0:2e4:da22:2a71 with SMTP id
 be27-20020a05690c009b00b002e4da222a71mr15687703ywb.126.1647302639271; Mon, 14
 Mar 2022 17:03:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220228010103.2725893-1-peng.fan@oss.nxp.com> <20220228010103.2725893-2-peng.fan@oss.nxp.com>
In-Reply-To: <20220228010103.2725893-2-peng.fan@oss.nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 15 Mar 2022 01:03:48 +0100
Message-ID: <CACRpkdZw9MG-6gphnJqi1R=9YHWffJstxjJHNHu=DrdHYCGsNA@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] pinctrl: imx93: Add pinctrl driver support
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
        stefan@agner.ch, robh+dt@kernel.org, kernel@pengutronix.de,
        linux-imx@nxp.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Jacky Bai <ping.bai@nxp.com>,
        Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 28, 2022 at 1:59 AM Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:

> From: Jacky Bai <ping.bai@nxp.com>
>
> Add i.MX93 pinctrl driver
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Patch applied.

Yours,
Linus Walleij
