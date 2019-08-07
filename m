Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2BF4184BC6
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 14:39:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729808AbfHGMjE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 08:39:04 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:45366 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726773AbfHGMjE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 08:39:04 -0400
Received: by mail-lf1-f67.google.com with SMTP id a30so856201lfk.12
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 05:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TF8WdIG/GBC2B0M9b1jzvI8C7ifY+jxxqdmdf35RJnQ=;
        b=RAnrNzwG8H2/CmrBRYmjmwFER746NivQ+c3H6MAgOQTtgbdbE+plXLUg/Pb2VX8N8y
         /3CSu6PD4n6Ow9WZorSa0EeqxxcUrrNYU2UVYRceVVXN2eSKtTEUc0ymFz1UPy+pX06p
         sBOiBJOu07e0ijHIKNaReZOvn1hFP5ekYGjpt1XG3RFm7eH1Q+0H2mqNabivvavJXPq9
         brvGtWglmmR8k+toTssfm/YbGEdkIoIsz6Ez8MZhSWd+8+20OGUUJciV91ZTyVkdraBI
         0DtUooopmsUeGyVsj2TIEuzVTOPKomWIGT+2qCBFUUpZ1vtA7mVCIGJ8h+WGZkf9i9nG
         eozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TF8WdIG/GBC2B0M9b1jzvI8C7ifY+jxxqdmdf35RJnQ=;
        b=D3lKnZiwr6Ei/NPlZHq1MhpqQWfKY4er3UiAOsuNPfGHz/jGCFOOVPqnDycx3TOAme
         RRRfBgCWqZuhjonu9Ni4YXNv0nVvj4Kh9OQshVqjNlRqNt9oCa1APw0WO+Bwsfhrp8TM
         l14D9F+EBNlzPorwVkx24S2lCSnOYwKfmydDxQKgMajYeJI2zjUiAzxHnPsqthWWMHeF
         5ReClRnh+LgBGf89bEuwrqSqKCxfoo6+cZfkJtGKw/a9TNFUqSNxSmwFG653rfQZIFCd
         V7I8bLUxSwM9GcSU8NcGVbrNzVjXIU0SPbyAyPu1HJTMBc7dlM/AymVK+XpupiatwMPT
         uHlw==
X-Gm-Message-State: APjAAAXLCo3Y/9RjZeS9TOZKWpqd5Mm+2FfMgCWchZESQ+X1QnADlXSF
        NNNRJa++n7M0n4B3NdMf1OEcYIfduOZnELP4cFcH3A==
X-Google-Smtp-Source: APXvYqzj2koP6TS5ONHRZFw3kwuCVAqOEziE1cUAfaaag6Bc/wbf6kDZ6QI8ReWDq+/VrKEp+xB3gGAoMEXRhZU/e/Q=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr5973751lfp.61.1565181542001;
 Wed, 07 Aug 2019 05:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190807021254.49092-1-hui.song_1@nxp.com>
In-Reply-To: <20190807021254.49092-1-hui.song_1@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 7 Aug 2019 14:38:50 +0200
Message-ID: <CACRpkdY5V9HGMciOq90RJzrMoc_gbyWKJ96sw2HOB5UMzGn1GA@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: mpc8xxx: Add new platforms GPIO DT node description
To:     Hui Song <hui.song_1@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 7, 2019 at 4:22 AM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> Update the NXP GPIO node dt-binding file for QorIQ and
> Layerscape platforms, and add one more example with
> ls1028a GPIO node.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied!

Thanks,
Linus Walleij
