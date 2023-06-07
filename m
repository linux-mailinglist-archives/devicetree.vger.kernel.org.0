Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EEE0726C3F
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 22:31:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233071AbjFGUbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 16:31:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233619AbjFGUbv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 16:31:51 -0400
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0BC21706
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 13:31:50 -0700 (PDT)
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-33b1e83e204so7277095ab.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 13:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686169909; x=1688761909;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EMlxNkZ7sW47vfJqPYjeha4gss+EUNf/j50tcRhw9QI=;
        b=Okku5aVfMZPP89TUa0PmuQRPAOuD6RLE7TiURirxSDd0YCHnkuTXbyIqX0THn+xrn8
         KxzKZdw7fdMwEUEm+79vMymjZ6JuyBx75xhWdoPBSmZQIbYw/dqUtQpvrbarRSrn2aA5
         kwLvxDahA0/B1lWHx4jYgTu5XY1gZq5PILTKEhOMBWKZNrMM4LeCZPRdpMmSRSacKTSz
         COrKJqhFgF8gqyfX3cxyYD2auAGiY7t8VZZBsa9FowD/eUaoYZsRvQANFmBVphQ/KTRt
         7aGI4U7Z5bzTO8BXpW94jzQeZNUUZA26qOKvTpaxofsShyQgXy9NLY4GqgsRIBoApJF2
         C3jw==
X-Gm-Message-State: AC+VfDzn0mazfBQMmGJWriRsve5Vdp3o5u9FzQicyPw5MOTb+RjmJkhD
        DTzdj8xrzkjsfNVIpOzWVg==
X-Google-Smtp-Source: ACHHUZ6wCK0CpjKv0HEdePUwtaIromX3U5HHzpiOFDFM7g9LZpEd0WkL0f9W1r+EcekcoAZnKCF1tQ==
X-Received: by 2002:a92:90b:0:b0:33b:16e9:bba5 with SMTP id y11-20020a92090b000000b0033b16e9bba5mr6656626ilg.28.1686169909529;
        Wed, 07 Jun 2023 13:31:49 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id h15-20020a02c4cf000000b0040bbcee6b57sm3553148jaj.133.2023.06.07.13.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jun 2023 13:31:48 -0700 (PDT)
Received: (nullmailer pid 3970424 invoked by uid 1000);
        Wed, 07 Jun 2023 20:31:46 -0000
Date:   Wed, 7 Jun 2023 14:31:46 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, bhelgaas@google.com, marex@denx.de,
        shawnguo@kernel.org, Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 3/5] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Message-ID: <20230607203146.GA3970300-robh@kernel.org>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-3-festevam@gmail.com>
 <168479113748.3061858.13208114678317716697.robh@kernel.org>
 <CAOMZO5BAoT=Mi_Ac_qD-eu37nJkBMpF5HJ54MbrAtPakw-BZCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOMZO5BAoT=Mi_Ac_qD-eu37nJkBMpF5HJ54MbrAtPakw-BZCQ@mail.gmail.com>
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

On Mon, May 22, 2023 at 06:53:10PM -0300, Fabio Estevam wrote:
> On Mon, May 22, 2023 at 6:32 PM Rob Herring <robh@kernel.org> wrote:
> 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >
> > yamllint warnings/errors:
> >
> > dtschema/dtc warnings/errors:
> > /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.example.dtb: syscon@20e4000: bridge@18:compatible:0: 'fsl,imx6sx-ldb' is not one of ['fsl,imx8mp-ldb', 'fsl,imx93-ldb']
> >         From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> 
> Same comment as in 2/5 applies here too:
> 
> Dependency: This depends on bd60d98a11da ("dt-bindings: display:
> bridge: ldb: Adjust imx6sx entries"),
> which is available on linux-next.

No such commit hash nor is 
Documentation/bindings/display/bridge/fsl,ldb.yaml a file in next.

Rob
