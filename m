Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A23B52ACF8
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 22:49:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233620AbiEQUtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 16:49:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231235AbiEQUti (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 16:49:38 -0400
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5294952E5B
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 13:49:37 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id l9-20020a056830268900b006054381dd35so12999717otu.4
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 13:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UhtaMw8TFL8WNvgfY7TH3ONFCEHIzf7Dbj8dA8e33fA=;
        b=PAVfrKtbxza9b2DG+BO+UOcZhkkltJUGE5F4gbWI3VDvyS9+e70v09h4BActAgTXpq
         0mNPg+feRczxF8iQDBE/iL1PIGgpgVb5SWm58m/fvfjZctIxHLdKuTQjPqz8p0qMNHxM
         799s+0zn0L7njpQGbNm28JvfP8/+z6+zVtPRIZ1nWKTkg3VbmlwZ0gEq3S4Tqxy+WugL
         3MwZqcatI4sqGFQ+7Ros+QkQRMZcMMUSW3lbs1VNNjdL4bTwsYYK153SjbfWF6CG1gOb
         fE1pVSFwclaie2GdG7jONHbQXyJE4fEvFXFUKfbJaC+HlvX1pTo8NyzQo9SShBXK+ma1
         QfBw==
X-Gm-Message-State: AOAM532wms+Hf0hVEmuOK75hU8DfhTfVlfOLjJB8BYSS2F2u+4UvoNFS
        G9rPKczeavYEzuxCyXLu8w==
X-Google-Smtp-Source: ABdhPJzJnshQW5lnSe+BeF1AScuGsSHKRZ3VGdTEaxo8MGTGAGDrUWkLqqRDxwUCXwTZoPH1uEnpUg==
X-Received: by 2002:a05:6830:1d92:b0:606:a1e:946a with SMTP id y18-20020a0568301d9200b006060a1e946amr9051823oti.294.1652820576579;
        Tue, 17 May 2022 13:49:36 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z3-20020a056870d68300b000e686d13897sm238061oap.49.2022.05.17.13.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 13:49:36 -0700 (PDT)
Received: (nullmailer pid 1615330 invoked by uid 1000);
        Tue, 17 May 2022 20:49:35 -0000
Date:   Tue, 17 May 2022 15:49:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        yuji2.ishikawa@toshiba.co.jp
Subject: Re: [PATCH 8/9] dt-bindings: watchdog: toshiba,visconti-wdt: Update
 the common clock properties
Message-ID: <20220517204935.GA1612229-robh@kernel.org>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
 <20220510015229.139818-9-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220510015229.139818-9-nobuhiro1.iwamatsu@toshiba.co.jp>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 10:52:28AM +0900, Nobuhiro Iwamatsu wrote:
> The clock for this driver switched to the common clock controller driver.
> Therefore, update common clock properties for watchdog in the binding document.
> 

The examples are just that, examples. If this needs to exactly match 
your dts file, why isn't the dts file the example?

> Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> ---
>  .../bindings/watchdog/toshiba,visconti-wdt.yaml        | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)

But fine:

Acked-by: Rob Herring <robh@kernel.org>
