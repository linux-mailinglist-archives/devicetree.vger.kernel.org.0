Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16B5734BDE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 08:51:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229974AbjFSGvY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 02:51:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbjFSGvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 02:51:23 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8636713D
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 23:51:22 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51a2c8e5a2cso4484383a12.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 23:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687157481; x=1689749481;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pyFlYK86pYvnrZnzArT+XeEMAZXdDH0qpd9nhJENlGI=;
        b=IdAkpaocourJKyKEXr68ccw2Rfoz2tR2lCED7W+YP8N8Gee2vcgPdx8oGD+iSIczKi
         7qlXXNk6t4usMaH/mkEj46HAmfnKCbkrTdJYJZNs4jo049m3ml4XglDOraJfIPU2+F+r
         t1auZnZq/D1Sf6cTNA1/9yO4N61Z8uEM975dld20mNEj9sY1aFB2T61SAsdHkv4LHObe
         d+hGub+MwoahsFzIlSzFe6nnKPPh3xx0iIVwQZoGorjNEnKUoXyzIpA9LPFwDxUjy1/e
         3jM9SbhWYUzGTcDK7s+3oYui4+/dlLKnB+kYCOpKt/MT6QS/xL6+ghg4UCR0MYPn3d3d
         4m2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687157481; x=1689749481;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pyFlYK86pYvnrZnzArT+XeEMAZXdDH0qpd9nhJENlGI=;
        b=CeJDdOvrzjzLnQoAfUaD7C0pBzSW3lIKiifQoyO+XSYpU/cR5NHypGS78oju3cBOXw
         wbm/mnO4rwzgtP5AJmgNfm5cUNbyhndbUyqYcOxlwD4FiJganYiBEMwbB2WMEkry4OQU
         a9kJiji/qNl26X/4PNspWWMnA7WKY7cySZcuVUDtWY9bzvm08ngaYxU+n/HkiM02Ihcf
         U+6QTrJr37Ett+eadxmklJEgnIxqTFeX8ejGsPwTSyroF7ueUJNwkWbclueVKYU4hFDu
         TjLZvkxBIguiSBL2vn/XyqMiRXAxnL7wRdGsug54ENsHJ2EmupuJDCl8xxSDsK+7Klcy
         rD6g==
X-Gm-Message-State: AC+VfDxGfF12yxs1dBWp2tpvboDidJCGQvTRKnP3+cQAAlG6WkaHpI7G
        CVAROFoB0vWzDD+nsnqwPd+1ZA==
X-Google-Smtp-Source: ACHHUZ6YzLBk+wzBh0dt4/lKE800oJPPeuZm8wIQ/59KwyiAdeIrF92IkoGBLVrWzyoOaMagXpiXaQ==
X-Received: by 2002:a17:907:a42:b0:985:34b:83b4 with SMTP id be2-20020a1709070a4200b00985034b83b4mr9289735ejc.10.1687157480992;
        Sun, 18 Jun 2023 23:51:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id j21-20020a170906831500b00986d8722e46sm3562105ejx.17.2023.06.18.23.51.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jun 2023 23:51:20 -0700 (PDT)
Message-ID: <81e33e8b-499d-b67c-a142-85fd8743cb49@linaro.org>
Date:   Mon, 19 Jun 2023 08:51:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 04/17] dt-bindings: mtd: Describe nand-ecc-mode
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-5-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230606175246.190465-5-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 19:52, Miquel Raynal wrote:
> This property has been extensively used for almost two decades already,
> a lot of device trees use it, this is not the preferred way to configure
> the ECC engines but we cannot just ignore it. Describe the property,
> list the exact strings which have once been supported and mark it
> deprecated.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

