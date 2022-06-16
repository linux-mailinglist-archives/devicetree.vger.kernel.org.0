Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD2BF54EB7D
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378735AbiFPUsE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378720AbiFPUsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:48:00 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19DDA18341
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:56 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id e24so2374099pjt.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jnD99uencGMjTPpflykxZNYOUgUN3LUgOaJGkyuBq30=;
        b=pWd2gWMcVtb2dxWnVHPatHbAB2Xdpt96Ys9iB5jXphQh5KSnWbOKCf7wGVj3VIPjeL
         4gRZHPFC43xJmqWfyQHjLHWCncnzd5JqZ+Au/+PUJOh8jxcULCy/+l7wVIuK5r6KppnM
         yNwaGMX/YFZ8/+98md5wb9xZCHdN/v8z7ZSmjcCbQDzV+SQyE4BsrPVbzKT4G4pWxsGN
         2IrP1t5qdpac6hKOV/VtQ/S9l4yvVOTdMlDmPBRCoPnOuVOG1eWxMPgKMfRwfYYX6VOQ
         ZThqHRYkagUArmWKYbdvTb2tYuFUfzUjsBbFGIerC/l1G4wywVX5ew22gst8QM2wQ4mv
         CfNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jnD99uencGMjTPpflykxZNYOUgUN3LUgOaJGkyuBq30=;
        b=ivU7An5iqcvGUXb2tIZ1uNV/AI5JauLDrIVBIFJcCgGoPE0VrtS4fsR7EM4SSQiNLG
         vce0W3uyYzQsSJ5TUiUUFV4BuVw4Izzuwvza2YXYusxnJOHJwUCTbH2qr0b8qoa7ehUA
         wWPn9BR/IX9W4hRvXRhCXKa0/hf3OB+JMUWQFW9w9vr/SK5tf3AhC9cPMqgCTsLHTGs0
         qS/Ju39/YE5Pr0OtjCLTLFC5bZ0xE2WNjsY7cjw+Xquy5Fgw2v/X0p+DjNQ67nMtFAup
         d4kfaYb+mIYRCrPn/L2qdM63BjaoNIyRO9+MQ8F5aheI09BwfVUzujerWYmr7O/hD+Fc
         97wQ==
X-Gm-Message-State: AJIora/JUhTxd6FeOyXdQSDS1eWFmqeoM1Kuj3We0yTpzGuOYmYV4d2G
        DC5T0+gqYdaTDZc6MQ/xbaA/OA==
X-Google-Smtp-Source: AGRyM1srUf92ldxiVI8QIWyED6HakwtuZcKqfwr84IMozkgc4DIwT4ycq14eV6FtmSctJTFDsTwcog==
X-Received: by 2002:a17:902:ebcb:b0:168:e3ba:4b5a with SMTP id p11-20020a170902ebcb00b00168e3ba4b5amr6308144plg.11.1655412475720;
        Thu, 16 Jun 2022 13:47:55 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.47.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:47:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-aspeed@lists.ozlabs.org, soc@kernel.org,
        Olof Johansson <olof@lixom.net>, arm@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Andrew Jeffery <andrew@aj.id.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: aspeed: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:16 -0700
Message-Id: <165541242280.9040.12820468454884340112.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204127.831853-1-krzysztof.kozlowski@linaro.org>
References: <20220526204127.831853-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 26 May 2022 22:41:27 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/1] ARM: dts: aspeed: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/94d0a03297615cad2d40b0f02ceab902a7339062

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
