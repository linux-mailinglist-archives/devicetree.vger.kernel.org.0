Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 081224EB6E2
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 01:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238269AbiC2XkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 19:40:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231628AbiC2XkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 19:40:23 -0400
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BC17114E
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:38:39 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-d39f741ba0so20435200fac.13
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:38:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xEbDKhTM7RQdvtoZuefpidK6ohyUKWmzenr9k2XEs3g=;
        b=jrzvrli/wyXHtC2E8OWxn65rqh5lXMFnhWmMRD/7OeYpeRI9iP0MLBnO8y13LbyKJL
         73nqruRfUICEQ6O4UoE9wnk+XsLj0H/ivgK6cAms41egDh3upm6emB3IF2weM8D3gK1h
         Rk4Htiy+aTN5vLlfB6k6jzjMa6+Rkzd2GB5oisanpLZKhS/FjM/Y9J1AnARwVrcWaZjd
         1n9yeriCsMQKEU7Z6fhfFJ4P36htO3+TXmlbY1z98WiurUsyDB6ZTOO61TzQ88l05rKS
         fEppSjy9Dx+SlZlbMz4XTEsGVNd/47AO/ujCI200RnuRiucJxj0sDk28fk1DetsdSFLx
         HY9w==
X-Gm-Message-State: AOAM531pkRf0keg0ycA7VxkNiMjGYw1loMR3QOywliUEvod8Nm89ndz1
        itHCblyXUSbAKd4BEIyncQ==
X-Google-Smtp-Source: ABdhPJydeiR+F5HgC9pPbzwkK5Vdei7PaC3g+3TPi93gGleM5+RV/Tx2uHbBq1eI03+FtkplIpMMBA==
X-Received: by 2002:a05:6870:73cf:b0:de:cb67:56f7 with SMTP id a15-20020a05687073cf00b000decb6756f7mr945096oan.130.1648597118933;
        Tue, 29 Mar 2022 16:38:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c9-20020a4a8ec9000000b0032438ba79b0sm9144966ool.0.2022.03.29.16.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 16:38:38 -0700 (PDT)
Received: (nullmailer pid 1573631 invoked by uid 1000);
        Tue, 29 Mar 2022 23:38:37 -0000
Date:   Tue, 29 Mar 2022 18:38:37 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Jamie Iles <quic_jiles@quicinc.com>,
        linux-aspeed@lists.ozlabs.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 5/7] dt-bindings: pinctrl: aspeed-g6: add FWQSPI
 function/group
Message-ID: <YkOYfSArIo/LyawY@robh.at.kernel.org>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <20220329173932.2588289-6-quic_jaehyoo@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220329173932.2588289-6-quic_jaehyoo@quicinc.com>
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

On Tue, 29 Mar 2022 10:39:30 -0700, Jae Hyun Yoo wrote:
> Add FWQSPI function/group to support QSPI mode on the dedicated
> FWSPI interface.
> 
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> ---
> Changes in v3:
>  * Newly added in v3. (Andrew)
> 
>  .../devicetree/bindings/pinctrl/aspeed,ast2600-pinctrl.yaml   | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
