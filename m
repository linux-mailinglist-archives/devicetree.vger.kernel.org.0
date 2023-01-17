Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DC3066DBF2
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:12:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236482AbjAQLMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:12:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236752AbjAQLL5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:11:57 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F10D634569
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:11:43 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id h12-20020a05600c314c00b003da50afcb33so5583240wmo.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1URupxNkkQ6nwEeC7CDBNm2xIHn6oEX5/tof7O7mRAk=;
        b=y9aZusuNGqbDOTNH83k4SycSt94Tw953zLUGwwV1D5OGiUPe6WcJMlvE1XGVqkFazK
         lHcIym3mqiNZBxWqQmtDqPAt6JVQFcKHDUqhz++UPBEfgVDu9eWknowhzGjW88rasICj
         P7FiX7u6MjJkwxNnpcqjsNLWUGVHuOxRdwtzsHqYyqp5U3yfSbGLBQbx0LEtW2Q458Nn
         5Jv3SJzkGI2A04U4w9kueCOG61I1Fa+IzWMjXZo0kWLOhlrrYcYHm/5UAkqrjA021cxs
         LgN48YfJtdGsZks42/F1lk6S88EC1M3Gra+ANcf6Tr8jC+zJo9HSLikN18/ih/BBz+La
         M+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1URupxNkkQ6nwEeC7CDBNm2xIHn6oEX5/tof7O7mRAk=;
        b=1Bvpi9/6kVE8Awif2FE3MvB2GwrxB7SjlpP3lOucVScukstdwXEvvQPb5ioWBsW3/V
         ZyGWcyqRCQtccuosomuEBHgqf/EklFxtgYANT4hnQtjKd15g2MuRTKcK1nWjTUwJdTEs
         tTFien5n8FJm1QipUhaqiVp5EZT0OSX2txnLRQn8xlS0fmtH+x9VB6mYSfNGJrj+EwKe
         b7w7S3nlNqXFCDs286quGtZo2IsnnBp8ySmWiwNXJCz74ZFsVPFE0oRNOR+ZJfMIcCRf
         IjAkQ5zvfAPaoSbMrXTsaGbS0/NosfpRvv6zj1X1lqUJSGR5JWf1ghQg+BykY6+kmzue
         TunA==
X-Gm-Message-State: AFqh2kpbHR5CB3fRwGM5/Fkyy/7bd+plRHB+jojOQSqQXLmxto5PX+ms
        tdGL0AEnZttVw3F9pZlrpgHsUA==
X-Google-Smtp-Source: AMrXdXvUbsEJU4Tq3rQTaPgknItqfI6wQpizQ0tSS0tS7+wxUmVTWHC2RYmatSgnkwU2PwbZpMyIOg==
X-Received: by 2002:a05:600c:4d06:b0:3da:f0a:83d7 with SMTP id u6-20020a05600c4d0600b003da0f0a83d7mr2655999wmp.8.1673953902540;
        Tue, 17 Jan 2023 03:11:42 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j7-20020a05600c1c0700b003d9f14e9085sm11033822wms.17.2023.01.17.03.11.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:11:41 -0800 (PST)
Message-ID: <ccf7f144-12d1-4fdc-2b03-ea2e60912691@linaro.org>
Date:   Tue, 17 Jan 2023 12:11:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/01/2023 21:17, Heiner Kallweit wrote:
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---
> v2:
> - align $id with new file name

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

