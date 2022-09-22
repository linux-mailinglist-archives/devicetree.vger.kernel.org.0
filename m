Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3045E5B72
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 08:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbiIVGfZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 02:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230079AbiIVGfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 02:35:20 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 499F795AED
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:35:19 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id k10so13046556lfm.4
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=UG9ohaYNGjC0P5to2hQtJ2st/GFJ8zFpPwv7fQeTI1k=;
        b=n3xOBDivLy1P/8Qh+2k2b/mOB3/VRhF473LRc4JGPdzNBlSF1OkbJ39YpcAVU46+4O
         e4mZDBFykkFRfu7cchV5yKHAbpd4X7WoYgGZQfL/s7JC3M6pP5SJMUsXkppM5rOE4qdB
         aPsPaVBhsXXDQ4NzCKjQquB4uR20DOepMSCgX5CNGwcn6S1zQp8b8smzPKnvzt7VkrlY
         HClXXM9LgJVEffrwYuUepFu5hRDt+orUHOgE4D/F6R1kspEYuEcTRENkRa5ngZm8zo3R
         BqJPAebADqZ0IZ6HJ5ME+ChcZPMayp9mROGN8r1zZ7/xITDNkmVxFM8oObuleYv+JYbN
         wc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=UG9ohaYNGjC0P5to2hQtJ2st/GFJ8zFpPwv7fQeTI1k=;
        b=MCzdSKRAfZIiTRyReV4Rm9opZi7dL7JjcpDsoygFGTMQkC2dGLhZxvlut1fdnJaiAW
         x7Dub86d1t6cLCU8NnsrY3ZPkMjYzY8Sb8LqoPKwO5meaW/MXmE33qqPOfaiR2qp40gb
         SCguefGD5YCEhpGNvwzDOF6INsoK1bMDNbko1+6GITAAtlbwwm7cQSIbUwU5PtmAXfgS
         Pm5ZTkKkE/2//B8+CCG5uPo3BQTBHMW/fzpFuGXibBvuWTo2nAzXitMqe4czgjZC17sN
         /dE0BNj/RvNe+R/HsxDmZeCrdvDNFdfTiVdWwSnrPWcTUK+Tjvx1JeKrO3+U7YEQAoZy
         dtVg==
X-Gm-Message-State: ACrzQf2V7Ys0V10/++RQnrKRMTwrvAA08/DUkzcxLbdmYnxiXDazgyLL
        c51aTm4itH1YijdBqh8VYD//hg==
X-Google-Smtp-Source: AMsMyM59bw9pdu973etIE/LLkjusQ6+VNSmZkxPOGlt5AQZzoXXZEBZhwZRYoa3QPGWJREsy0jV1IA==
X-Received: by 2002:a19:e050:0:b0:49f:5464:71d3 with SMTP id g16-20020a19e050000000b0049f546471d3mr719382lfj.558.1663828517506;
        Wed, 21 Sep 2022 23:35:17 -0700 (PDT)
Received: from krzk-bin (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b0025dfd2f66d6sm745682ljo.95.2022.09.21.23.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 23:35:16 -0700 (PDT)
Date:   Thu, 22 Sep 2022 08:35:14 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Konstantin Aladyshev <aladyshev22@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
        soc@kernel.org, Olof Johansson <olof@lixom.net>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: aspeed: document AMD DaytonaX
Message-ID: <20220922063514.f6euqlw35jrkpee4@krzk-bin>
References: <20220920165404.14099-1-aladyshev22@gmail.com>
 <20220921210950.10568-1-aladyshev22@gmail.com>
 <20220921210950.10568-2-aladyshev22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220921210950.10568-2-aladyshev22@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Sep 2022 00:09:46 +0300, Konstantin Aladyshev wrote:
> Document AMD DaytonaX board compatible.
> 
> Signed-off-by: Konstantin Aladyshev <aladyshev22@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1680833


/: compatible: 'oneOf' conditional failed, one must be fixed:
	arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dtb
