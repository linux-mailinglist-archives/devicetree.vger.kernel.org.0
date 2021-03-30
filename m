Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F281634DE10
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 04:13:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231196AbhC3CNI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 22:13:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230509AbhC3CMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 22:12:48 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 376ADC061764
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 19:12:48 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id ap14so9254619ejc.0
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 19:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9uqxowpZkJw+kuwjzD0uTSbsW3f2tDCU9RKvi2lVi7k=;
        b=NSOQpRq6WsIU2IEARAEG681bUJKLdRBSvihGBW8+vDY3QNI6ykoz6Lu5V+sPvB9xOV
         KNr/nl47UxYRLvoBZggjRlRKwGpMDsdNjs0jpvMHiTbVvUX8G+bP17q+sbyGErJhgUbL
         PpAe9mL8WEBwBvEXuvNq4Xe/PmycPbCaN7EGIz832KgcOsZnJYE3QT/9IkcVFB0FUezI
         9YINBeeHQ/t80yeU3TiIb9V868xXZ+d0iiZK9No6gp2pdgz34dW84wit5qZzooSLAIW3
         B0szg2plxGJkmEspTfYI85OvhyHFkWHejzKVt5pHW0WccR6uHWPsBRY4Wx2a0czwXUET
         B3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9uqxowpZkJw+kuwjzD0uTSbsW3f2tDCU9RKvi2lVi7k=;
        b=UfSyA/qk6aXbJUR9rYECCiYzmbZr/f5dJXSAzOGWW/Impc31RflWUovmWu506EOTlv
         0fC40FrSBKdzQKI1gc7ERgbkRaissSrmHQx/V7QhuMA40ofh46e/Yh1347/OdxNVVBVt
         NQamakDqJC2hByX/qjETu+G2Jn136lDvLG7p6n3lsecn1kbH0WMAZkZDQHsDmSkO+ZJK
         d2oLrgLTWYjtzogoDs86gjJgkuzaQvxaS+xyIYCkdlu0lPRbjzTYb68xVaHdoljcvd4U
         QHzWBQnp1o1Lh6O9Kd2gI2d87xnJOSzN+eFJVdYSWTFOkbKFzuYJrGfp3/y+1Mne1H0Y
         OuPQ==
X-Gm-Message-State: AOAM531Je1ihhgtvYz6miuWEgrNCg8EeTGhGihaI9RegZWuRIwS3daq4
        LNEYC2oGzkrnfxOzCgGB3LQa4kgKlZrs1JnpbdBfDw==
X-Google-Smtp-Source: ABdhPJzNAVy9mcTp2mou2/gOFfzxffM9nOymAGcfBdgdn0QtqKpdoh3jjqSqF2VvxQlx2dzn3gX5U6Ms8pJ8x9oga9c=
X-Received: by 2002:a17:906:495a:: with SMTP id f26mr30501651ejt.271.1617070366693;
 Mon, 29 Mar 2021 19:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210329015938.20316-1-brad@pensando.io> <20210329015938.20316-11-brad@pensando.io>
 <20210329160052.GE5166@sirena.org.uk>
In-Reply-To: <20210329160052.GE5166@sirena.org.uk>
From:   Brad Larson <brad@pensando.io>
Date:   Mon, 29 Mar 2021 19:12:36 -0700
Message-ID: <CAK9rFnw7MhPzBLbwEGVmBS+0vBJ1QA2RVdZaQU-b_Xy6Pwrz0Q@mail.gmail.com>
Subject: Re: [PATCH v2 10/13] dt-bindings: spi: cadence-qspi: Add support for
 Pensando Elba SoC
To:     Mark Brown <broonie@kernel.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Serge Semin <fancer.lancer@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 29, 2021 at 9:01 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Sun, Mar 28, 2021 at 06:59:35PM -0700, Brad Larson wrote:
> > Add new vendor Pensando Systems Elba SoC compatible
> > string and convert to json-schema.
>
> These are two unrelated changes and should be separate patches, again as
> covered in submitting-patches.rst.  It is generally better to do the
> changes adding new stuff first and then convert to YAML as the final
> patches as the series since there is often a delay on reviews of YAML
> conversions.

The initial patch set only changed the text file and a request was made
to convert to YAML.  I'll change this particular patch to modify just the
text file as before and then the convert to YAML with a later patch in the set.
