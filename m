Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D12C65EAFE1
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 20:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbiIZS2x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 14:28:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbiIZS2w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 14:28:52 -0400
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DFF02DCC
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 11:28:51 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id r22-20020a9d7516000000b00659ef017e34so4979513otk.13
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 11:28:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=wUEbuVBPuRintOJdHAZgfwa1D/O8zxdtePOx8J6irQM=;
        b=mU1EROAvKTln8XFDIW5jUoZf3stPbUjMjLNBtD7miU+Mq2azvgl24l8Az0ctQcrCqi
         Zirxq45uHpGp8VeTJMZJ7dB2P0aJitnLWvRRbAd2hv2RGTnpC1eU5RNDHHnFa2puCRTu
         Ugyc5uTZLKSyqc5KUXgHH1j47yuBmJbDnF4M/X7MCoFtj5tAWk8N1T9eAN6ee9Vz6qXs
         GNJQs4zgFdJbv0JUOZl0WmH5DW5m4QzJUf0l1VasVYMfTSWEyjNTWIInPtB6EC9mQ31b
         GreBU2m4Ey8ilpoFodEDXraL1o762aaJ+Nwn/77GLrsLdIAVGw0zJF5Nb4MxpRU7M556
         lK4w==
X-Gm-Message-State: ACrzQf186s1RHPwvhbItKjCFF/wNTJQu9oYCg7FuAeKW6dqEhjEE11YN
        vUryjfUwHEJUolmupMbjJA==
X-Google-Smtp-Source: AMsMyM5c9RWnIxu9lw0CxsADmnO5oEO8140VI8s5Ei0Zr1k9pPl9KnycP1pRRhHw5FJ/s2Zl6vxD/Q==
X-Received: by 2002:a9d:5f82:0:b0:638:eab8:14a4 with SMTP id g2-20020a9d5f82000000b00638eab814a4mr10519962oti.71.1664216930651;
        Mon, 26 Sep 2022 11:28:50 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w19-20020a056870231300b00118281a1227sm9093497oao.39.2022.09.26.11.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 11:28:49 -0700 (PDT)
Received: (nullmailer pid 2526960 invoked by uid 1000);
        Mon, 26 Sep 2022 18:28:48 -0000
Date:   Mon, 26 Sep 2022 13:28:48 -0500
From:   Rob Herring <robh@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
Subject: Re: [PATCH v3] dt-bindings: spi: migrate mt7621 text bindings to YAML
Message-ID: <20220926182848.GA2523250-robh@kernel.org>
References: <20220921072817.611223-1-sergio.paracuellos@gmail.com>
 <2b5b2937-45ae-42dd-1d96-115898eb9c7f@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2b5b2937-45ae-42dd-1d96-115898eb9c7f@linaro.org>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 21, 2022 at 09:29:00AM +0200, Krzysztof Kozlowski wrote:
> On 21/09/2022 09:28, Sergio Paracuellos wrote:
> > SoC MT7621 SPI bindings used text format, so migrate them to YAML.
> > There are some additions to the binding that were not in the original
> > file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> > properly match both dts nodes in tree we need to add to the schema
> > 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> > 'reset-names' use 'spi' as string so maintain that as const in
> > the schema.
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> > Changes in v3:
> > - Add Krzysztof's Reviewed-by tag.
> 
> There's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.

But not when they aren't Cc'ed. Please resend to Mark B and linux-spi.

Rob
