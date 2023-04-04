Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBF7E6D637B
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 15:41:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235221AbjDDNlL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 09:41:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234493AbjDDNlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 09:41:09 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66B914C07
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 06:40:42 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id bx42so8664125oib.6
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 06:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680615580;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G7+FIfysDlK27mvbP/FDHvEU65AaGIQG/L0oVJUh4mo=;
        b=0bVJhJ0XthKvZObriWk8i0Bw5V3rAmBJJ91jmcCUSbAmjPX/0wNDxCnNeqpHgBhwmL
         nl2dW0z/Z3q2Gn0swSZi6z7o1iMgQx93DnmKw9YQOplLQ4XrCR+bSM8ZSdHAP6eCJ+Qv
         6Sb5VgWtJQaEPdCFp7ePm+z25anNX02cVEOXq6QU6OvgEYh63Dx8Nl5FWpAWMjVYCpUv
         YXFYa+gNf+2b5NE8ygVErokKVnsahlTAAB+0y1CmwSC4oB66c/34/Djc9W5GAYYOYopi
         914VBdZI4mhHIBpvDruHSq5Mo/kh39BvobMXaQ2CWeeqt0yVK+f7/z6BVzoa8FkrGWNS
         paiw==
X-Gm-Message-State: AAQBX9e+nrLM3ilWquZ4jwiBUpLieGHNMRJfJGwZuch7gr9vixOnu/11
        KAc75K7G4XdcGnDxRVk0uA==
X-Google-Smtp-Source: AKy350ZG2E1bESg38EVUvibwE63R0y7UVrNSPheX+M1dv7iyiVYcICOC9II7m/W276xxd/QZflsMrA==
X-Received: by 2002:a05:6808:220b:b0:387:24c1:bab2 with SMTP id bd11-20020a056808220b00b0038724c1bab2mr1559876oib.54.1680615578903;
        Tue, 04 Apr 2023 06:39:38 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 2-20020a4a0302000000b005251f71250dsm5392573ooi.37.2023.04.04.06.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 06:39:38 -0700 (PDT)
Received: (nullmailer pid 3779371 invoked by uid 1000);
        Tue, 04 Apr 2023 13:39:37 -0000
Date:   Tue, 4 Apr 2023 08:39:37 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@chargebyte.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com
Subject: Re: [PATCH V5 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
Message-ID: <20230404133937.GA3778861-robh@kernel.org>
References: <20230404080243.9613-1-stefan.wahren@chargebyte.com>
 <20230404080243.9613-3-stefan.wahren@chargebyte.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404080243.9613-3-stefan.wahren@chargebyte.com>
X-Spam-Status: No, score=0.8 required=5.0 tests=FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 04, 2023 at 10:02:39AM +0200, Stefan Wahren wrote:
> This adds a dedicated devicetree binding for the Maxim DS2482/DS2484
> I2C to 1-W bridges, which can be extended later for further features
> (e.g. sleep mode control GPIO). Since one wire is a bus, child nodes
> needs to be allowed here.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
> ---
>  .../devicetree/bindings/w1/maxim,ds2482.yaml  | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/w1/maxim,ds2482.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
