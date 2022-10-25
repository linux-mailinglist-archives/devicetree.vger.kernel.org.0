Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1636460C88F
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 11:41:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231576AbiJYJlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 05:41:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231600AbiJYJlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 05:41:04 -0400
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A4795262
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 02:39:52 -0700 (PDT)
Received: by mail-vs1-xe29.google.com with SMTP id o5so8851758vsc.0
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 02:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fvzvFrxkZV5P4Rxxxs1xdYcVHP1vUjFiEqvZB3LuHYc=;
        b=EWFYiPtiuAwxNryPnRCRdIyflpxGealCpHT6V1v1VS5B2nqrufxbLRVuz9HSoqUktX
         PqmO3m4pEjHTLdGWfP5h0AAyyU5sdckU9Tg5iUoYD5Qx4fTa9/rs8qR+qd5hWt+PBudZ
         3ByNvJ4UWNaldAsahYhisDbIJPzvtUbzLc4ZLg45uu3tZqAO8TABAvjqCp7I6okC133S
         95EuZFviywanN+sDyivhu50+b+WsacxCtHhxnkgQaGSPz0wDrJ0/QedjGfvIG3nqyt8M
         BBmFxpQcsZJdUl4SMzO8ZMVTqZNk173vIZhRKJIWqKNvANZIhQAS9lHwuDx0Du9PhKlU
         YO+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fvzvFrxkZV5P4Rxxxs1xdYcVHP1vUjFiEqvZB3LuHYc=;
        b=weQdAzxyCl9+c4fzGyGx7pzlhLVxAOieCwqaMdti0ZEUcUux54TAf4upCBiZREEl8b
         OmcgLgSFA9xtudjMDY+1/x6iU7ySGoFef4vXKUw31rX1KyEmPYirhZynECUHzcZ65Y/6
         9WaDc17CxhmyczxZOW9qYmum5JnLbK6BgxT1DZqysLKkcv5UAkVy3honSnuTajgNJP+1
         eHwwbcRtVjADkRMhUoW+hOvszvRba4t3OCDYJXlqOX/auiRHYSRtjmb6BHwx8VlxVrlY
         JyRAJQYa41PE+PU3Dz1eNKxbvuxR4E6OmvuEmVCe95pBkERmohmoHOIooOXRbWOr670h
         pF9A==
X-Gm-Message-State: ACrzQf0sR6p0tccdP8ONxyDI4F8Lf3RJa3eQ/jamCWmpKh6dCfXf+LOr
        8rl1daGwUY1VGYbbbKmaFVNnROMzNYC8cBGCMgNgDQ==
X-Google-Smtp-Source: AMsMyM4L+MECpm34SLXLViLyxzAqpAQKmvDH+EK7kDBSeMqrsQMfJ06efXpTiInyduawbLa3Usu+nUlNEKJAlo4Oh8Y=
X-Received: by 2002:a05:6102:5788:b0:3a6:764d:1382 with SMTP id
 dh8-20020a056102578800b003a6764d1382mr21135112vsb.13.1666690791574; Tue, 25
 Oct 2022 02:39:51 -0700 (PDT)
MIME-Version: 1.0
References: <20221007114647.2723457-1-s.hauer@pengutronix.de>
In-Reply-To: <20221007114647.2723457-1-s.hauer@pengutronix.de>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Tue, 25 Oct 2022 11:39:40 +0200
Message-ID: <CAMRc=MfqvNvq7RLbWivZj7Q4fBBLEAWFHU0Wq+u-086ehK-jLA@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] gpio: Add gpio-latch driver
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        kernel@pengutronix.de, Serge Semin <fancer.lancer@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 7, 2022 at 1:47 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> This series includes the changes requested by Serge Semin for v4.
>
> Sascha
>
> Sascha Hauer (2):
>   gpio: Add gpio latch driver
>   dt-bindings: gpio: Add gpio-latch binding document
>
>  .../devicetree/bindings/gpio/gpio-latch.yaml  |  94 ++++++++
>  drivers/gpio/Kconfig                          |   6 +
>  drivers/gpio/Makefile                         |   1 +
>  drivers/gpio/gpio-latch.c                     | 220 ++++++++++++++++++
>  4 files changed, 321 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-latch.yaml
>  create mode 100644 drivers/gpio/gpio-latch.c
>
> --
> 2.30.2
>

I reversed the order of the patches, fixed the strange formatting of
struct of_device_id and queued the series.

Bartosz
