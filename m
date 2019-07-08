Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 233A761DFF
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 13:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730526AbfGHL4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 07:56:17 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:39253 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730517AbfGHL4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 07:56:17 -0400
Received: by mail-vs1-f67.google.com with SMTP id u3so7985420vsh.6
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 04:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XuZCwu+uHK2yBouaESzvA1gqaQVqMJAOhoyM5UfbCBE=;
        b=YaEtpbyPkqE3LEOVCBiQvv2/3H64ZI1uUtUgDiUU5AgChhzwlavcGpsLphUQ5hmqrl
         TsCMLjpZ86SNMRRynnOAwm1/d0JOVrC7MU3yGWtyb2Cmr31sk2JMEjsu8UdLmQD77OyY
         aRG5ZACR7L3U6nPgSv1RUVpCDF6dXsmOyh79uz9LnJhLLjDNkNBmqTN9FRdtPcSvEchl
         M0usUZoI0Qm5pY/KoZUdfh9mtfM5Klm/N05l+svpEYkjvj00eFIIe8H4xYQoiDggZBX7
         GCgkHsp1g9GdRpXf8sWy1aoEV7E7tRT8pWsLneupm1Qb+ze5N9kAXTXY9Wd8iio2a8r1
         EeIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XuZCwu+uHK2yBouaESzvA1gqaQVqMJAOhoyM5UfbCBE=;
        b=hcD9SHFPaa/Qq9s6AQqTD1XOh7JG8Y5OcBMOUCmAJb6V4IzYTM3UaM2Zoix7ZheDpj
         lyl12Y9YemNF81rzt58rKfllhBm3P8Zr44KiahB48KJHoLiAvjk4ZfL0f0w60kXB3yXI
         n/eCtL38PAB8qT7uludxmydWDjtrBn6ltK3HsxvNpe66oVLh+p7MNjPXHgctwMJP5MZg
         zNbcRlfy1JPln3h2UMrtWWeuwffbtonnNkk3a92z+3ZvXMZF5JE5NKVzmT+xtGmf9gmg
         VAXYLSZihYZXPUqXqfhTX4j1dTYMO6/TvlStkF4v2sRVava1mqdBC3ypVqeI1i3MAAl/
         /K1A==
X-Gm-Message-State: APjAAAVDFniLxFu/ASG8lfCKw50+2P4QiGcsdjpF5fXF8sS6UAl0lYTY
        yx2bCARP6hM1FrGaYA22MozjRz0piAAT5GOTjytREw==
X-Google-Smtp-Source: APXvYqzb4lo3rUs1WATeBO9mmMKW5Uq4SAAUrQ6TrhEUwc/UwIDO3LhnKN30ktAHtetFJXQSu/vQgVsZW819kMcmtNg=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr9849977vsp.191.1562586976459;
 Mon, 08 Jul 2019 04:56:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561094029.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1561094029.git.baolin.wang@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 8 Jul 2019 13:55:40 +0200
Message-ID: <CAPDyKFqQmYpP7i5gG8D0hVaE=UhK4+9zs3jgMxfyOLw0vjqM8Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] Optimize voltage switch for the SD controller
To:     Baolin Wang <baolin.wang@linaro.org>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 21 Jun 2019 at 08:12, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> This patch set is used to optimize voltage switch for the
> Spreadtrum SD host controller.
>
> Any comments are welcome. Thanks.
>
> Baolin Wang (3):
>   mmc: sdhci-sprd: Add start_signal_voltage_switch ops
>   dt-bindings: mmc: sprd: Add pinctrl support
>   mmc: sdhci-sprd: Add pin control support for voltage switch
>
>  .../devicetree/bindings/mmc/sdhci-sprd.txt         |    7 ++
>  drivers/mmc/host/sdhci-sprd.c                      |   78 ++++++++++++++++++++
>  2 files changed, 85 insertions(+)
>
> --
> 1.7.9.5
>

Applied for next, thanks!

Kind regards
Uffe
