Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 877BF6D73D6
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 07:43:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236885AbjDEFm6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 01:42:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236386AbjDEFm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 01:42:58 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A2B540E0
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 22:42:56 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id er13so97266320edb.9
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 22:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680673375;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2K0AK0sGSq/zsYIcb4gwqrtW+FVk7SlY1SeSzCW9Y78=;
        b=CDig9UWn2FHcGl7WX8sn9pQBAjqV9zNTwmXcjp3HMFYakZlP5xUex1pjuZnJgFeM+w
         2AXOwWXxbuRBJdgMMu+iFMW3z4alMw5B8mcF3XQAxIJa0vMuBKV89IKrUVAhmdjLp0lE
         7qXG6m+9oBn+H5By2QSaCzQqlsggbIrhmrsms9tJeCj0HLz2HtSGaev/GtwMZ90suWNO
         yqy0GuWoS2QpbSSI9TFi14BLadCr1IBcSmRNQeHWRwtSlC0X0JGURCg9hc9xNK8BOQfX
         BVci0ZTHFu20BOgUa0DV2VWd6VZpfveSRhtxtkswRI5wBq/bl5tBUFvDj64CgH0fyV7d
         Y5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680673375;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2K0AK0sGSq/zsYIcb4gwqrtW+FVk7SlY1SeSzCW9Y78=;
        b=6CE7OnaSxQTYmUD1oin+gvVBuswayfwbog6vXXvnl8XUZBGZa25rds51n9x+TN+jj2
         p3XaAXhpFlh3HA4I4r+mde4xxsGH+NtwkP64o93W7MC7eFYTbv5JscutZcTnFDNakXit
         s/wd7xW0SpukVEQHb7ZJofV/7PAoNs1DO/K5ZGlkN3bfKGbziO6ZsnnvTcqUyHqZ07uV
         yxH39UgQ6APDu9cCMllWiIbYspnUK1Tox06lMztGAnDnJA6Xb/As5BYbT10O40tgOrv/
         0nmyA03kzkIzNqgaKWVKPB3Xpl0Ur+z+td/VEoqMwDaLKDWPS9CPQ5RiwIQUH0f9dPGz
         q0Gg==
X-Gm-Message-State: AAQBX9cZtWdnda/15nEatCFP/HB6bBDVhkY3H/RBl0tE6JQAyT4KZW7t
        d717x+fypW1Cc7b4PEexauoLFw==
X-Google-Smtp-Source: AKy350bNv83HafLK+q09N2ueHnZ3s8USo8+70Ki/AAqyULFwQ6xhlGO2nm29uF0SpDrJYH3DJ8FuEg==
X-Received: by 2002:a17:906:f853:b0:931:8e8c:2db5 with SMTP id ks19-20020a170906f85300b009318e8c2db5mr1846024ejb.69.1680673374874;
        Tue, 04 Apr 2023 22:42:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id jg9-20020a170907970900b00947ae870e78sm6489740ejc.203.2023.04.04.22.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 22:42:54 -0700 (PDT)
Message-ID: <c1163417-16ea-63ee-5b8d-47cdff8069b1@linaro.org>
Date:   Wed, 5 Apr 2023 07:42:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3] spi: s3c64xx: support spi polling mode using
 devicetree
Content-Language: en-US
To:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Andi Shyti <andi@etezian.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chanho Park <chanho61.park@samsung.com>
References: <20230404060011.108561-1-jaewon02.kim@samsung.com>
 <CGME20230404061409epcas2p15750d5844aa8d3655d1bfd094fac14a9@epcas2p1.samsung.com>
 <20230404060011.108561-2-jaewon02.kim@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404060011.108561-2-jaewon02.kim@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 08:00, Jaewon Kim wrote:
> This patch adds new 'samsung,spi-polling' property to support polling mode.

Do not use "This commit/patch", but imperative mood. See:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

Also, binding should be before its usage.

> In some environments, polling mode is required even if DMA is supported.

Why? What are these environments? You need to explain all this in commit
msg.

> Changed it to support not only with quick but also optinally with

typo: optionally

> devicetree.
> 

Best regards,
Krzysztof

