Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9F774DA89
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 17:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231728AbjGJPyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 11:54:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232079AbjGJPyg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 11:54:36 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8268C10C7
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:54:16 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fb4146e8fcso34559215e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689004451; x=1691596451;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1G7HjU+lrWAwmK/lX4LNtP5CQp1m/MEkMnqgPPj4QQc=;
        b=T185Dmwh4vQcOBaRbBLzbYJVlHn6DG0BLbbcS2oxg1BDAoT1Oa+C449mwXpsUOVnQK
         AJevQbCvGHLW3MycxGXQBrYVnXB9iehL/2OyZ+8q5CIEi0/yxll65CmOYFZguPuZVAZ1
         vAP9ZRcpHb1Kt+hdUQfwHjp0fSaURdUrmIPljVMbkSMPb2PhZCRBhBhJ4ffEiyaCO2S8
         yy4+e1RgmphvPSs97LlFIL0OgYowofBr5yN9MsatoG0MSuyZiWNmqufJKdJ4Yki10PgH
         1+qOjMLyqNZyV9d1kaNqQ5ltq5yHuLo45tSC96wpOqYo3edw8wBvsRPjdCFc/kSvNZD5
         JdUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689004451; x=1691596451;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1G7HjU+lrWAwmK/lX4LNtP5CQp1m/MEkMnqgPPj4QQc=;
        b=fbDygykbAQEmI/5ovZBdI3BhiGiiUQkVcMyy2u1VfuIG0f5wnOoU/0DQPnsiCL3uF3
         7uYCp4moXtqCzwVhYfccaI1bP3K+td4/1BonADd4Si4p+1kjTP2xZmfq9gl+D7P63Prn
         qb6UvUSBjvWQp7ghlMLr8qu9QP9S7KZLBsdU2wloCeLfxE3NB3X+V0Q0rfJ6c/ldIvlr
         KOGT5X7Ge1ddV9XO+vEYmn3kAZKw4mktvnymk5tcosFuj4b8OFXoRqLuvP3c8gCmQSMO
         nt+2vR9fUWMKmWrInouKDZIhNz/eZKfvP1bQqmXEN5f7QKm8MXyiJwIx2+gVdbixYjwf
         TjeA==
X-Gm-Message-State: ABy/qLbYgrYIhaArgPZ9DP5Q8kIQYVevJ0zvKXRUqRHdiFEVyHZY81F3
        ApyJ4KbwsRdbn+dj/uj7foqN02lHRk3UPGDP1Ak=
X-Google-Smtp-Source: APBJJlHpCAuzBB3fDufs1Z6+UbPoWtjzxfy/5Xb3qfIyBewRVkfzXoEny9pL9FRSwUd9JB6H5VQafQ==
X-Received: by 2002:a05:600c:2113:b0:3fc:180:6463 with SMTP id u19-20020a05600c211300b003fc01806463mr7513573wml.7.1689004451470;
        Mon, 10 Jul 2023 08:54:11 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b003fbb1ce274fsm20141588wmn.0.2023.07.10.08.54.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 08:54:10 -0700 (PDT)
Message-ID: <663c607d-4c68-a3c4-0bc5-e7f53a7b7b53@baylibre.com>
Date:   Mon, 10 Jul 2023 17:54:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 5/8] soc: mediatek: pm-domains: Unify configuration for
 infracfg and smi
Content-Language: en-US
To:     Markus Schneider-Pargmann <msp@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230627131040.3418538-1-msp@baylibre.com>
 <20230627131040.3418538-6-msp@baylibre.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230627131040.3418538-6-msp@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>


On 27/06/2023 15:10, Markus Schneider-Pargmann wrote:
> Use flags to distinguish between infracfg and smi subsystem for a bus
> protection configuration. It simplifies enabling/disabling and prepares
> the driver for the use of another regmap for mt8365.

-- 
Regards,
Alexandre
