Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACECE52A4E4
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348947AbiEQObp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348942AbiEQObo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:31:44 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8520A40E5A
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:31:41 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id i23so980381ljb.4
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/O66yZapi0BSSMqvuLDb5QljJcIprafeIHhXXNrM3HQ=;
        b=dPeUZnTqyPM8BGsOzR2Y+Vt6GWYdXlYfL5HGJ+hst8ZLbeLdCV6ulIEiqONwOKQcra
         TdpSy6uqP4eKoOYsGzQ82XN6kf8kNeNOt4h45xHODQi04EBKLRe3GQMdPGlL6GBCeZxX
         EddyM9xIYr6I+BLfuuv9u8reT0fIAFtJGV7+ja7H2ZE2syV/wgC2NHDjNIDGRY/hnwuD
         PY6/Q/WKOItv1ABnAyxYNLEFFIBOKCkcxT8jLoX0LEYxOp9mPgcxwdub5FuaocQ+m11O
         m7OD0Hu4p3qcZzvs4ErNx7rKHwLXAvNkSriouSucnP5hJKzgSjNpbARacbqJcth0dSOl
         6oNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/O66yZapi0BSSMqvuLDb5QljJcIprafeIHhXXNrM3HQ=;
        b=mmX44MozGOB/b8b+WCBPYlrIg7Jsjos7Dqgu71oP0iBZyzWyQDLHqhdGr2GtDfttOh
         wU2g0Ij07QDsHB5wSQ0CUJ96aFhkBVltvzMSRawFgxNZy4ZwcucJ0GStbwlbmLDwVawq
         AnRdQZzxu4GihDpv+PyYjTrVc0VVIqJDiRA8+5fEWzV6AfdCi9/KyhcpO05Vieb+q2Mo
         dvDfHusT/iOkRTJMKISz5mMzVRCdounbAEt+0O6V9KWXvmH9wqtoJMWxYq3h1Fl1d7sL
         u4xaL03uopZHuaNerYhY6DojcSbkh3VcEkiBcZnIRrKQv1UfJAQlr0f6wSvzT9ZmXBYr
         K+bw==
X-Gm-Message-State: AOAM532obSEe9k8PR4zOsBimNJ8iKcaVR3QPiaAw0AnyYXpOMOD0ZsZr
        jFdUkLjirNAUlrxgfdv490Z7kQ==
X-Google-Smtp-Source: ABdhPJxxH/bRh33U48YhgwMI8fGJcxcks+r3F5hkC/o+Ksawa9rFxEQPN3vWjkiewjDkCSZZd5vnGA==
X-Received: by 2002:a2e:2a82:0:b0:253:b73f:fc31 with SMTP id q124-20020a2e2a82000000b00253b73ffc31mr2056434ljq.449.1652797900225;
        Tue, 17 May 2022 07:31:40 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q27-20020ac2511b000000b0047255d211a3sm1601359lfb.210.2022.05.17.07.31.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:31:39 -0700 (PDT)
Message-ID: <24965f6d-f146-0b44-481f-041a17256ee1@linaro.org>
Date:   Tue, 17 May 2022 16:31:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 5/6] dt-bindings: arm: mt8192-clock: Remove unnecessary
 'items'
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        sboyd@kernel.org, chun-jie.chen@mediatek.com,
        rex-bc.chen@mediatek.com, wenst@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220517101514.21639-1-angelogioacchino.delregno@collabora.com>
 <20220517101514.21639-6-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517101514.21639-6-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 12:15, AngeloGioacchino Del Regno wrote:
> There's no need for 'items' when there's only one item.
> 
> Fixes: 4a803990aeb1 ("dt-bindings: ARM: Mediatek: Add new document bindings of MT8192 clock")

The same - no bugs to fix here and this can be squashed.


Best regards,
Krzysztof
