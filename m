Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8513D21205
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 04:31:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726982AbfEQCbO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 22:31:14 -0400
Received: from mail.kernel.org ([198.145.29.99]:47038 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726339AbfEQCbN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 22:31:13 -0400
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 0CF3520862
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 02:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558060273;
        bh=s99hXO7LsBnCNhlyPbYWrTHeOijOPvp943V2HiO1hH4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KULMBicXp87k+xGbA3lcIYt9qJLCcTK5t63oOy3p2K1L4HuaDaHA52G5XxUWeqZt7
         jLfPe0aUbdR0xz+0MXhGC07fobQ6SrimqLNfH1T0FDriaOanJElMkVdATBffxcQmDL
         h7+ClctEGXKecphQilA1yjabX5yPAIIiBkW90et4=
Received: by mail-qt1-f181.google.com with SMTP id f24so6346351qtk.11
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 19:31:13 -0700 (PDT)
X-Gm-Message-State: APjAAAXnVuKZPSiT5ePa6c4BaaCFplYcAY9RRc0xm38I0JJ1yMN5VayB
        V5KAQM1UPIBwXhCUv8RF/FKmVgoxH1qqcKjiAw==
X-Google-Smtp-Source: APXvYqy+dmf0thHHvpuMzrnHZFobpRV9WPHjhJVWVHFRRj5zKVjw5yURsZLHMWMZzTvbjIJVFpi8G3T8zogqp6oLgnI=
X-Received: by 2002:ac8:7688:: with SMTP id g8mr18584342qtr.224.1558060272291;
 Thu, 16 May 2019 19:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190509155834.22838-1-m.felsch@pengutronix.de> <20190509155834.22838-2-m.felsch@pengutronix.de>
In-Reply-To: <20190509155834.22838-2-m.felsch@pengutronix.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 16 May 2019 21:31:00 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKiiP+dmRiQSgR_VxtXDB832JtaNc-3d61uNH-vD677nw@mail.gmail.com>
Message-ID: <CAL_JsqKiiP+dmRiQSgR_VxtXDB832JtaNc-3d61uNH-vD677nw@mail.gmail.com>
Subject: Re: [PATCH 01/17] dt-bindings: add Kontron vendor prefix
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, Stefan.Nickl@kontron.com,
        Gilles.Buloz@kontron.com, Michael.Brunner@kontron.com,
        thomas.schaefer@kontron.com,
        Schrempf Frieder <frieder.schrempf@kontron.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 9, 2019 at 10:58 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Kontron is a leading embedded computer supplier. More information can be
> found on: https://www.kontron.de/
>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
>  1 file changed, 1 insertion(+)

I've converted this file to json-schema as of v5.2-rc1. See commit
8122de54602e. Sorry, but you will have to rework this patch.


Rob
