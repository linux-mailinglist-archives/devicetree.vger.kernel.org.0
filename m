Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57D8760CFAD
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 16:56:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232159AbiJYO4l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 10:56:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231693AbiJYO4j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 10:56:39 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22C5C19ABF4
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 07:56:37 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id l9so5662368qkk.11
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 07:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uUiubakIlF1DpxdqyZ7Sj+SDXQ/dw5Cd208ltlbQ02A=;
        b=m6Ls5iooVS3Fnkf/3NW2w8jTlWMzIYAuv5F4dmXAkmLpai7RaFRizUY3fHggCFdwl5
         wNKIh8SJ1QFKkm16gP3LAOZv1jhIFM8VOthJwtKYUj7u+hfiqqacrmyK3J3nv7WWy67n
         nk6SDPJT+ZuvjH/PZNgh4RiUElV6wa2daF+/6EZ1QRgvBMlRUDER9PjT4b0cF+DQ5Cn2
         h5/CsJRP/W42czQnDTXMBNCxCYztGtpidL+0kI1HLoBjopI6atnNBovzKnl73RsthZSq
         /ERMjBDo3+OcPDjN+jNYe3P8+tJ362nDh0TLjkUGsQAYRvN+ulX0V1R4C+8hEGXJ2Fdy
         +ynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uUiubakIlF1DpxdqyZ7Sj+SDXQ/dw5Cd208ltlbQ02A=;
        b=vDDZgNnS95RRNYJ+MS05SPnG1lU6H+fQ0XCruM5ZBISxqKm5RNh3onH6OBCgyBIEAq
         l4CzdKz/UFIAkQeCvIMAtxVaEIDJ3UAP5Fq3Addip2SlZOGnkJEVd0Bw2vkAVnxu43mq
         q1A4ygUI16owmoHiKwkUsTfTyRA21OqzKxREsdcJDmR6d8ai2Y1mEc3TltSZv2JHF/qt
         DvmL4cv6zIESslGgEJrLKle9PuqEVMSCiCFag0HzY1yEtPZ55KhEUk8YRE8caKHQz8yF
         Mx+8gXvKpcFHGOYTg9u9x9giQkq+DzmyUuPqN/dOsMXogg9TTEiIvYUb52E5hdVDxqYW
         uddg==
X-Gm-Message-State: ACrzQf205rm3lWRzLzIMznn0Il0r/Ha7hLQIuRF1uB2fIplQY2JVyMlN
        gRCWa058HyveIOYSJke4AS3bOQ==
X-Google-Smtp-Source: AMsMyM40J8qEW/jyC6caiIqv2XzBMoKkNM1NJBwLdGrCnRdc8istSwcNfzTfcYq3K9r0J522tKA3dg==
X-Received: by 2002:a05:620a:4514:b0:6ef:e65:bc77 with SMTP id t20-20020a05620a451400b006ef0e65bc77mr18909789qkp.644.1666709796970;
        Tue, 25 Oct 2022 07:56:36 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id r11-20020a05620a298b00b006bba46e5eeasm2304609qkp.37.2022.10.25.07.56.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 07:56:35 -0700 (PDT)
Message-ID: <cd2e3ae3-6a30-f6cd-fbbb-9c5c6071fb9b@linaro.org>
Date:   Tue, 25 Oct 2022 10:56:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] dt-bindings: pinctrl: update pcie/pwm/spi bindings for
 MT7986 SoC
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221024074349.7777-1-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024074349.7777-1-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 03:43, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Allow multiple items for pcie, pwm and spi function.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

