Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E157D52ACF7
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 22:47:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348609AbiEQUrt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 16:47:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231235AbiEQUrs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 16:47:48 -0400
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CF104B420
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 13:47:48 -0700 (PDT)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-d39f741ba0so96426fac.13
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 13:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5bhGLbAeCXnLuDVzDjZwIzFuoPh4UBLY5w7rp/xDi40=;
        b=zzIQ1wQAIZSi5u8p0UGq5bkps9VO7m8eyY3tToOoKv+epGyVAibb3xdIXfx8N46OoD
         atQ+iWoPLErRCb7j2bc8k5FO5syvmDMYCIQYRAGcs/n2ocOJAHP96KOeFVUW2DeoV0pw
         92DuQY3polioE0/tzySYHNMF1rLVWKzibnEFT/muUfh5ZX7TGUPxrsZlsc/qOr4EL6dn
         DKMVXZT08bGVmxMTiBfoN/C098Qn6lVxPS4Y3w6bPomsduE31CxChcfoOeRQWrH9HYCD
         B+Gm2bYfM9TMrFQfB7Ifp4sIAV+WBangSWBXkbn16fKKdstsq1VQcQoeqr4JUeX7IzmR
         7BZw==
X-Gm-Message-State: AOAM531tzCZ8KzD+Iwuxw+8S0kslIc4rFmNwr8wFYGq/wZglWDAEx7zU
        ObxNFclVs0AN15SM43JgWw==
X-Google-Smtp-Source: ABdhPJwuNopmaW4+3ufZ52POumPaXYxme0i2+vtkd7V/u5lUy92uwGh+JvriGl//2S0IPXAx+Ie13Q==
X-Received: by 2002:a05:6870:240d:b0:f1:b878:e97c with SMTP id n13-20020a056870240d00b000f1b878e97cmr4072642oap.193.1652820467110;
        Tue, 17 May 2022 13:47:47 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o189-20020acad7c6000000b00326d2cba5d3sm170710oig.8.2022.05.17.13.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 May 2022 13:47:46 -0700 (PDT)
Received: (nullmailer pid 1612095 invoked by uid 1000);
        Tue, 17 May 2022 20:47:45 -0000
Date:   Tue, 17 May 2022 15:47:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc:     Rob Herring <robh+dt@kernel.org>, yuji2.ishikawa@toshiba.co.jp,
        devicetree@vger.kernel.org, Olof Johansson <olof@lixom.net>,
        Arnd Bergmann <arnd@arndb.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/9] dt-bindings: net: toshiba,visconti-dwmac: Update the
 common clock properties
Message-ID: <20220517204745.GA1612062-robh@kernel.org>
References: <20220510015229.139818-1-nobuhiro1.iwamatsu@toshiba.co.jp>
 <20220510015229.139818-8-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220510015229.139818-8-nobuhiro1.iwamatsu@toshiba.co.jp>
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

On Tue, 10 May 2022 10:52:27 +0900, Nobuhiro Iwamatsu wrote:
> The clock for this driver switched to the common clock controller driver.
> Therefore, update common clock properties for ethernet device in the binding
> document.
> 
> Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> ---
>  .../devicetree/bindings/net/toshiba,visconti-dwmac.yaml        | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
