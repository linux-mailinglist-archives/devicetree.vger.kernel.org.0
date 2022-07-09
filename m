Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F5D456CC02
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 01:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229518AbiGIXYk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Jul 2022 19:24:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiGIXYj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Jul 2022 19:24:39 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96ED1FD27
        for <devicetree@vger.kernel.org>; Sat,  9 Jul 2022 16:24:38 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 64so3282705ybt.12
        for <devicetree@vger.kernel.org>; Sat, 09 Jul 2022 16:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HSavKHqOMxyq6s3ViEHF246lp9Yq/M+fNZQ8wkoHIes=;
        b=jC6jxKldqqxB+NjGJ1nA2NuBBQ4aLHPhkjLLN4N8jjNFpQv/r+553oJFJZj3/Elgew
         c8Lr8g+kCbRUVGTZn9z/inkjRUTQC4AZw2kwdlZvDX06DfnwissE1owr0XIdf3kbhysW
         4ufR76bgE6lAGxEVqKLDsYK7J2Y8a/aZKVGmPfBIoCFziGABsYPjCn0Ch8JRXA9HsIO4
         X87vyZEA/2rZEV5Hf7r5ktgosj6XFFkaR4AlWa391lse1znYnno5Nk2YAI5Wr+UkDuqK
         fdUvLgWhWBiiKVDQY8NReitXXNrH3bDnzOUSGYyjzzvKpXwLzPtcLU+YXHRHclkdCMKb
         ba7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HSavKHqOMxyq6s3ViEHF246lp9Yq/M+fNZQ8wkoHIes=;
        b=FoPqvXrwNDFC2DHWO4WM9U6HlZp5BUj+RP7jTDm/I2+N3OH/0P86g7P8jYF3rJiFos
         /vqtwr03oXyHKQvd2GsHqZcW28qPAZtDxBkJUcqZ2oP0OPImlY37lUdoQ2DxSyC+3jhY
         Ma9+RvHb7IORvRRNdi6AVwbd2uDBSW1zGsMTxSQg+h+FWKT/e97iXJ4ERNseftl7Yavn
         3BgQqCBRyTkZDvLq1bvPNFhqJHIfZNx/dwAfKPInBTf/eKjNPXPkTVq6YGXDyJUjusHn
         CQRjleXTcVExcqiL4aQvnnnlYCuFvsrFc9SAt9iOw5pLOuVjRn9Wz+evcPEyHeqb/ia0
         iVqg==
X-Gm-Message-State: AJIora8p1AmRzD46qbpuKZQHId4YXXRfZ1vldlIDE7JxlFTMuEWu9kHh
        Gls0h2LJMhORRFiCGNleAeA78RR0NcT48Qm3BGr3jw==
X-Google-Smtp-Source: AGRyM1sLqlHqUox1gWV+9ez0TjEG7+Iv3ml/L5445P6HtAIqo7pbNQ5xd2pA4ZEdPCkIEs/seb56VoCgalPMMix6PCo=
X-Received: by 2002:a25:1f57:0:b0:669:b6fa:167e with SMTP id
 f84-20020a251f57000000b00669b6fa167emr11544285ybf.295.1657409077892; Sat, 09
 Jul 2022 16:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220704165802.129717-1-thierry.reding@gmail.com>
In-Reply-To: <20220704165802.129717-1-thierry.reding@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 10 Jul 2022 01:24:26 +0200
Message-ID: <CACRpkdZtqGqhJniehVHEgKGvG8KuiDhyj+mrj2o=n698f83-mg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] pinctrl: tegra: Separate Tegra194 instances
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Prathamesh Shete <pshete@nvidia.com>,
        Vidya Sagar <vidyas@nvidia.com>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org
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

On Mon, Jul 4, 2022 at 6:58 PM Thierry Reding <thierry.reding@gmail.com> wrote:

> From: Thierry Reding <treding@nvidia.com>
>
> This patch series changes the pin controller DT description on Tegra194
> in order to properly describe how the hardware works. Currently a
> simplified description is used that merges two pin controller instances
> (called AON and main) into a single DT node. This has some disadvantages
> such as creating a complicated mapping between the pins in those pin
> controllers and the corresponding GPIO controllers (which are already
> separated).
>
> As a prerequisite, the first patch in this series converts the device
> tree bindings to json-schema. A second patch then adds an additional
> compatible string for the AON instance (along with more details about
> each controller's pins) and finally patch 3 converts the driver to
> cope with these changes. A fourth patch makes the corresponding
> changes in the Tegra194 DTS file.
>
> Note that while this changes the DT node in an incompatible way, this
> doesn't have any practical implications for backwards-compatibility. The
> reason for this is that device trees have only reconfigured a very
> narrow subset of pins of the main controller, so the new driver will
> remain backwards-compatible with old device trees.

Works for me, this is much closer to the hardware and therefore
better (fixing a bug in the old bindings essentially).

The whole set:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I can merge patches 1-3 whenever we have Rob's ACK.
I assume you will take patch 4 thru the SoC tree?

Yours,
Linus Walleij
