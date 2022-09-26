Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C73D65EAE28
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 19:25:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230378AbiIZRZ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 13:25:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230382AbiIZRY7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 13:24:59 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F28B3161CD2
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:41:06 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1278624b7c4so9964709fac.5
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 09:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=PrBPtBgl9pxyBYIhaFRmpeXG0axTYd5eKuMKunbyIOc=;
        b=l+fQzLs/24z1lBxJ3c8yyg/WgctEjNzxTeboSs/dASmldP4NAaSdtEPC/dw+5FiZ9p
         ZPXyOpZu6vNBhyXz+GZQNh8iW4lfPrso4HcnlZKFfmL2M8UgdsLOlMydDGXaVWfeKBoX
         psi4BEsU5OkdFfEwYhfbyGHDhXnrFCxq+VN7sOIQ/oe/iC89u3EyqF51jFeKQnYFuOIZ
         VE2qEmBHtfmb/GfBYGy+RkVLddg1DtKSviayfXgEDHdPZxAupWArgKjZe4Ggc/vrwfiT
         P4vC0/yx3fFMP1cAEy7huT6Co+V7wNPwzBHj94PgZtbSJo03lfASoz7nHbTlXAWxKIVF
         SDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=PrBPtBgl9pxyBYIhaFRmpeXG0axTYd5eKuMKunbyIOc=;
        b=PWwi1VDufKALKDpqAKWOUfz+W3eBsNoloegdhhBSjikMXkRO08Y7tINnQuWbKJfN76
         KlcGuP7h8RFEWirCEJHoXDgUNuWJhvaRWi3rATi2pbOcNHWQwBiSOmp3iK216bp7os/2
         HoijWklyYARmboie6AXhp57xEDI4Z96MR3gk2ZHsGet4Mg0nrfQcA9XT4lk38E8IQx/z
         MpZ21897KyG9jve8GUAePG9zTQP2uzsIbcqaTuKLodWD3XnJGhUnZsmo+SckzD6l9y1g
         QYL14AE3lr+lBA6aJC2j7u/MZeHr32v1/jMpV9qorIQJVTkCicd3bmPUqRELoZqDTU/5
         JEFQ==
X-Gm-Message-State: ACrzQf2z2dvBPMr4dZItwg8M6eRSUu75l9hB8UgN2mrGKVnt/JJf3y2q
        AMtc9L65Cw6U/rLnnuvcUZO9Fx7jc/XSa0Qpctw=
X-Google-Smtp-Source: AMsMyM7F/xFdFhNy9GHVAt41cW9mjNpqe+fNYAPve14yxM1yCLVU49FNTGMf5BuG5yarkjw3yRJDMBC+QtlUK79aWGw=
X-Received: by 2002:a05:6871:89:b0:131:6362:e26f with SMTP id
 u9-20020a056871008900b001316362e26fmr1244759oaa.144.1664210464965; Mon, 26
 Sep 2022 09:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220920051617.582025-1-sergio.paracuellos@gmail.com> <20220926161638.GA1989274-robh@kernel.org>
In-Reply-To: <20220926161638.GA1989274-robh@kernel.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 26 Sep 2022 18:40:53 +0200
Message-ID: <CAMhs-H-zKNhpEkiKn5DThHmikgBQm7Yz+vzVqJQ2um04W3PBbw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: watchdog: migrate mt7621 text bindings to YAML
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        sr@denx.de, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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

Hi Rob,

On Mon, Sep 26, 2022 at 6:16 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Sep 20, 2022 at 07:16:17AM +0200, Sergio Paracuellos wrote:
> > Soc Mt7621 Watchdog bindings used text format, so migrate them to YAML.
> >
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> > Changes in v2:
> > - Rebase onto last kernel version.
> > - Add Krzysztof Reviewed-by tag.
> >
> >  .../watchdog/mediatek,mt7621-wdt.yaml         | 33 +++++++++++++++++++
> >  .../bindings/watchdog/mt7621-wdt.txt          | 12 -------
> >  2 files changed, 33 insertions(+), 12 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt
>
> You will want resend to the watchdog maintainers if you want this
> applied. IOW, use get_maintainers.pl.

Sure, I have just resent it also cc'ing watchdog maintainers.

Thanks,
    Sergio Paracuellos
>
> Rob
