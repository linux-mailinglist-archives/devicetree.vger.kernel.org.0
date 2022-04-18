Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 355B550515D
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 14:32:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239131AbiDRMed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 08:34:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239823AbiDRMda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 08:33:30 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18AF51BE97
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:26:50 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id t11so26521398eju.13
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 05:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=I3d5udvKIjqAWucjjIKmuyn7gYiBA99VwyV2DIv8hOs=;
        b=O6i40JuKQXOyvwtn8Dy33ZqEQOG5EHZzXGoOpqZzNZ9ieOhuYgUKLhfzpGxvbXiAfC
         Vwf80nHGzunG0NFoscB2CnQZ0JQu4sPahErZnIz5NgO6On1mSrWR8+eqgUYGkK04Z/cm
         am6eYB6HIbNfNKmvh6CfzcqdjEqDMZklnqPh2wvAj+hoM7Z/WC2jzgm+/aKNM463g1jw
         g7uQ/8uHdj6HIoospz4Bv4O6YviYZPMRyTqevmkLEkrfzf/jDuJ6B+t56CgXYgzMzeUH
         zqzjkk8aXXXyzV9RR8CD0OyiQVQF/FlvxcK4hkfLOu+q4NO8TFovZ3kQgN5AmwmO6rfZ
         2wEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=I3d5udvKIjqAWucjjIKmuyn7gYiBA99VwyV2DIv8hOs=;
        b=qCS+ZW0XdMao44moUuLbgv0wcq7E7pmP7CQTQjwhNQeU4hH/JHRxAUB0vo8Iv/7gyV
         uosfEMoliALCG6Qm+yU7WHagZI5TsqLvDJOsI8Hz8LAEA1j+4+s0IhKzxRJHGF0q3e5A
         pKd3o3IQ1tFfb7BYLWOEBWMUrYThy0T+gCgsW53HuiAK9gVZLs3Nq+1x4gzAiGUjN8JJ
         4Tf87J/h2yH1pTdbwcHk4Iji07aea3IMGZnBQeqgj8NM/B3emROs2KyZlM3CVNKsYp60
         Wg0xHQL9BPMBfTeLGlRqjB6MCNnBdY1y+pt0GXXwmTPoxUzCM7mTqKUuzJPUBa06VtqD
         iKyQ==
X-Gm-Message-State: AOAM533hpdZdj9DX1rdLPoTE8HWIZCr1Ahm/pg5HvvsSGxCCzs3b7mj8
        98VlRr5ZQLDCR6XOYuOBORt4Tg==
X-Google-Smtp-Source: ABdhPJw1EAebv52D0fGCecrKQNHXpvA1WtVaDZlB3PXnrtrkiLQTkMClotu0rgBrzw31XDzOlJMw2A==
X-Received: by 2002:a17:906:7a51:b0:6e8:8e6c:f182 with SMTP id i17-20020a1709067a5100b006e88e6cf182mr8740413ejo.506.1650284808614;
        Mon, 18 Apr 2022 05:26:48 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gj3-20020a170906e10300b006e8ac161bcfsm4539377ejb.203.2022.04.18.05.26.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Apr 2022 05:26:47 -0700 (PDT)
Message-ID: <a81e72f0-f01f-723e-fb0e-7667b2d3ff3f@linaro.org>
Date:   Mon, 18 Apr 2022 14:26:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/3] dt-bindings: SPI: Add bindings for new Ingenic SoCs.
Content-Language: en-US
To:     =?UTF-8?B?5ZGo55Cw5p2wIChaaG91IFlhbmppZSk=?= 
        <zhouyanjie@wanyeetech.com>, broonie@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     linux-spi@vger.kernel.org, linux-mips@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        paul@crapouillou.net, contact@artur-rojek.eu,
        dongsheng.qiu@ingenic.com, aric.pzqi@ingenic.com,
        rick.tyliu@ingenic.com, sernia.zhou@foxmail.com,
        zhenwenjin@gmail.com, reimu@sudomaker.com
References: <1650032528-118220-1-git-send-email-zhouyanjie@wanyeetech.com>
 <1650032528-118220-3-git-send-email-zhouyanjie@wanyeetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1650032528-118220-3-git-send-email-zhouyanjie@wanyeetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/04/2022 16:22, 周琰杰 (Zhou Yanjie) wrote:
> Add the SPI bindings for the JZ4775 SoC, the X1000 SoC,
> and the X2000 SoC from Ingenic.
> 
> Signed-off-by: 周琰杰 (Zhou Yanjie) <zhouyanjie@wanyeetech.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
