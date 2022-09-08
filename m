Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B41415B1C7C
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 14:13:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbiIHMLl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 08:11:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231205AbiIHMLQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 08:11:16 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3443111C15F
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 05:11:13 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id p5so6599231ljc.13
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 05:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HE4UrmbsszimxBA10K+Mo9fbyO1aQ7zw1Xn/FvnzpTI=;
        b=tbBT0Jov5/rivZeHODKa6HL/FUv7Zvgs7cnIC5JD66eT9To+moCr8KJRy775zxnPCN
         FItkqiK9fv2svHmQNqreKea7cfnjJ8VKXS1J9dR/jA3Pu0mgx0zmB4l2khJAukXne3/1
         vuinh5NdOk6MbPFqMbgg+jd2ZQDJgUXYXThZvqjCA+SDw6uXbQKakBpf4bxCqfhnAZUt
         6mQH9siPAntIdi7WO9wqEgQ6Y73vCy8DIypZDKeVNdgaNYIefhjiUK9D/iWDM8dtGZHK
         fu91KBjPyh2FtA4aL2rj6I/GvCf9EcXU2bJ9EIRf3S5ap6qaFisSRO7UAWzlhzMdkbHD
         7hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HE4UrmbsszimxBA10K+Mo9fbyO1aQ7zw1Xn/FvnzpTI=;
        b=TzQfup0QiqlAQneCfJTNSNB9CbhrQG3UskcDNVQ67+D6GKhNNDqlPrAyMLFVFFVrn0
         xnk3fzCTF5hMa3plQ2OqONdZPkhnAAVJph7RjN54d3E6oVZs5kVGW5PfNdbHlNYRrrnJ
         vBy6G6DZw8wqGp8ixYQ7oRmaVKt8yP7t0JGVJx2KvZE4ZsBQvYh9woXBxhJKqbzIwebY
         ZwbRzHXLjbzFB6lSaHsCd7470ULdRRJoZF2rkMR06mjkaq2gLgEBaJgpOOsVJdEA7CDj
         L37yvYVXb49bholLMF/4lPt2OcsqsHEIX3sNSZUk1QAf+8f77xZU+XsvNUjX2Fgswy8g
         l4sQ==
X-Gm-Message-State: ACgBeo3As/GOlFgsKOSmSGAew+KQ5P2vyVa0kGDqPrdf84fvMHVrobVA
        xHIB3tA4TUDSQHWs70xPAf0SvA==
X-Google-Smtp-Source: AA6agR5GdJ5ru2O1Jk/kEhUampTfR3JKZT/TvL4zK7Cq9Re+54Aa8mcma5TQjP0bOl2xNmnaqKLQlw==
X-Received: by 2002:a2e:8553:0:b0:265:d5df:e137 with SMTP id u19-20020a2e8553000000b00265d5dfe137mr2460853ljj.70.1662639071164;
        Thu, 08 Sep 2022 05:11:11 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id dt26-20020a0565122a9a00b0049668ebacdcsm1895111lfb.99.2022.09.08.05.11.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 05:11:10 -0700 (PDT)
Message-ID: <25a6ff76-d178-d1bf-0064-5c9238a58ed6@linaro.org>
Date:   Thu, 8 Sep 2022 14:11:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clocks: imx8mp: Add ID for usb
 suspend clock
Content-Language: en-US
To:     Li Jun <jun.li@nxp.com>, abelvesa@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Cc:     linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <1662547028-22279-1-git-send-email-jun.li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1662547028-22279-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 12:37, Li Jun wrote:
> usb suspend clock has a gate shared with usb_root_clk.
> 
> Fixes: 9c140d9926761 ("clk: imx: Add support for i.MX8MP clock driver")
> Cc: stable@vger.kernel.org # v5.19+
> Signed-off-by: Li Jun <jun.li@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
