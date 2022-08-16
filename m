Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A316C5960F8
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 19:21:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233040AbiHPRVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 13:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235383AbiHPRVv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 13:21:51 -0400
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4894B7B2B4
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:21:50 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id j20so5700413ila.6
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 10:21:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=P7Z+4nprkvModK2oQu0YRid7XHVVPycAnssgkVYTrss=;
        b=dWZkwwtAopfflwsiEpnxwMfHoprVIpkCs1Z3FkhVgOwKnPfGx34naazuXt25WYgkg2
         OhAjXwVQ+fYhspaA/9h+KiDqgoWPN1rIgKkHr5YTK+dtrW12l3H+nWcyMY4xEIuhT2xr
         FohlXMgNIRx0yusQRa+eqFffakPbk/G561P+SvMwA/OcpbWTdokaLd/VdwLiImUCsTnA
         gpt1aOC6EzBYw+VjdboERb8jwlyK42o+hc0oyaRqQPCBe9yx24koamS96KYn5x4BeXBv
         Mnfs4d6iFFrVgMzMcX3KlqWDaXQrA4+NkIUHzVsK1Pzcb3DcgvmugbvNWPwpcc0nN/2P
         J+dw==
X-Gm-Message-State: ACgBeo3y2jtekViXkK9jJXaaCo7UgdJ7HI39Vvbka/+PN0rAtzMnw8pw
        L24iMVUBDLj0aRkN6cmoWA==
X-Google-Smtp-Source: AA6agR54seig41K6leAp26Lk+3yNKZZNjH4AvGpX9uT+AQUdLlhdQIcUP1zQ+2s+w9YHVCdHVoNQ/Q==
X-Received: by 2002:a05:6e02:2167:b0:2e5:cb31:f453 with SMTP id s7-20020a056e02216700b002e5cb31f453mr4086715ilv.179.1660670509264;
        Tue, 16 Aug 2022 10:21:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id o9-20020a05660213c900b0067a338211b3sm6434100iov.3.2022.08.16.10.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 10:21:48 -0700 (PDT)
Received: (nullmailer pid 2406272 invoked by uid 1000);
        Tue, 16 Aug 2022 17:21:47 -0000
Date:   Tue, 16 Aug 2022 11:21:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc:     devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display: simple: Add Multi-Inno Technology
 MI0800FT-9 panel
Message-ID: <20220816172147.GA2406219-robh@kernel.org>
References: <20220812114600.4895-1-cniedermaier@dh-electronics.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220812114600.4895-1-cniedermaier@dh-electronics.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 Aug 2022 13:46:00 +0200, Christoph Niedermaier wrote:
> Add Multi-Inno Technology MI0800FT-9 8" 800x600 DPI panel
> compatible string.
> 
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
