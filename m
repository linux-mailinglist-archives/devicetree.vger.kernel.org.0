Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 036E06A5BE2
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 16:26:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbjB1P03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 10:26:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230159AbjB1P0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 10:26:00 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97518311C6
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 07:25:35 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id p23-20020a05600c1d9700b003ead4835046so1068671wms.0
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 07:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677597925;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gIFCjFemZc/gnj7ICZYhdDftYGP5figYg0g5fTPNeTw=;
        b=LIVWIyTGzTBjBpwDGxSOtz2Y7+CLoKbkR1x2Gbj4+Ij0RxmXMzoyMMslo0RdfXodZ/
         3r8hass89maPnpLnUnd4LF5uMN5V6ka6UXghDmocE9Lc9olsNfMPX11R1ivIShCiAHj2
         TY3Gs+k+wiGK40DAvmYoD3KNDx9FA84ZYZBknICVEYctQjLR6UVSPXK0pPumRBY0r0xm
         IIiH7Mo4hmrbpcZDw21Jz6LA0dsLeA2dJ6yd5FaibLtOJSOzy2vdaPTvZf8vBRE12Co9
         UR5FvvoIFsZWT2NTXR4Dn5Xgdj3wWcw3O3JxEuL0V9GRIW3YIgQCQp4TFvrbseMG87jg
         iG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677597925;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gIFCjFemZc/gnj7ICZYhdDftYGP5figYg0g5fTPNeTw=;
        b=5eaT1ccFDLXToQP4Lu46aRAH1vWHdNOcC3CBrPJzhUmY7c8ti8QX2WrWJHGt+WAGoc
         +ujJ+A7xtVekTftGxobB5u1sjf+mF7x0h+PwuKEc+rvExtepYmZ1tsqcKNMIN4n4UyTm
         zMUhBwwyeVxNjtm6qvjUc/TZUKBMVQbxbyyIAl/m4C7mYXXuWonTDbaHDYzD3JGvFup5
         yAYSgSb0F6TXAaiFqNS50XcVm5X7uFSnwcyOYtBriMli/3dPkKoRpawXUymvMiO/s5g4
         eqXjJ9CSwO4EiiX1HNVTI3kXIk3qWHLbnB3NdOTpZhg/q9OSE/xKLCd8soef2HHCUDUo
         FZLw==
X-Gm-Message-State: AO0yUKXUUP0e33+ce2Oa9TAwzfc9bujhoelT8jzN9X4OhVHLAO2WZ5pr
        C4F7GfjuOizx5lVDnk1RRj4oAg==
X-Google-Smtp-Source: AK7set/K4l+xYcE5378bcbvSHyaphz8hiqb+3QqaW38tDT0j7mqQBm0kpoUx1ZkQgB0shFS5bdO8Qw==
X-Received: by 2002:a05:600c:491d:b0:3e2:6ec:7fb7 with SMTP id f29-20020a05600c491d00b003e206ec7fb7mr2453066wmp.0.1677597924827;
        Tue, 28 Feb 2023 07:25:24 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o19-20020a05600c379300b003e2052bad94sm16134455wmr.33.2023.02.28.07.25.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 07:25:24 -0800 (PST)
Message-ID: <9f03c575-a11e-3125-cb07-e0434c517e25@linaro.org>
Date:   Tue, 28 Feb 2023 16:25:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/3 V4] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-bluetooth@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
        johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230228152205.133582-1-macroalpha82@gmail.com>
 <20230228152205.133582-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230228152205.133582-2-macroalpha82@gmail.com>
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

On 28/02/2023 16:22, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

