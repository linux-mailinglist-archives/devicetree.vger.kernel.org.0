Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E7B06D78AA
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 11:43:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230103AbjDEJng (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 05:43:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237034AbjDEJnf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 05:43:35 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 659971BC
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 02:43:34 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id w9so139589855edc.3
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 02:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680687813;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wYCju3cZ3O9keu/FLQNASmIVYyF+HMyIVhCeqGeGE/M=;
        b=z3CBfac+rQ9laEhyG5k+IFA69+578Bg4sLkNHEIUOfkTcG3UMrDbm2xLxVz7nzLh/q
         Q+5VLpNAOb0pZkEr1dJ/puPEJdCtTZiiZOCB1PcN5ggRtag65HqsbVr2AIVUNsV9NSYw
         9sFtnbIocc6fnI4AHUm0SsQbnOD3Flz29ZB8+GvA0u7GrbgK8gXtaZ7B5f+8x0Qtjkkq
         8LLCt9fKnxURPVxTYycTQe2ddlE+DIKxHeB0r0dX6qHsXF8W6ECPw/gKT02eDBYVc/Z9
         9MQUjgV/U31BSByxXyu3AvBbJ9bT7sNtqoGi6phEeywJsytHwkb1MtV7au11UYgJ4UdB
         h8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680687813;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wYCju3cZ3O9keu/FLQNASmIVYyF+HMyIVhCeqGeGE/M=;
        b=AaxMKjH31IgU2TYCZ91FiHG1BguPIc7RSJEIogUK9f0ZuB7iPZXRwiT+iL04oWpmqw
         ePOERR+xIJ+6gT96UsKFaEXt1N1zIwq9REZCcOjiktcaxJ8guxrtZyYzDQmfm/YrcpOZ
         G3LRl/wuoY3l77StI6WQuI8gtp7jhz1YWP5dU0t2nwVLgSaNTrk223eldL/7vaCkABFe
         5QRORyb/siLNnvkHR8amwNC+QT0qalkxKZCGp7FaWxjCCvjwkbui9xEeDt/A76uvq0/a
         AogQw/epbQ1ry8W+ENMcmiF2OSRjtxnnLmYxFqzegZxNc1gH4AKGbTE6vp8+lsHByIEc
         myTQ==
X-Gm-Message-State: AAQBX9c62jGDjfeiWdxQ2xwKSY5nNzAw+0AxZ4GWi7XHR1AGVnsnL44y
        J5nOdMVWdc+fqReu1XomA/O/5g==
X-Google-Smtp-Source: AKy350ZLMPqeb+hhbOLRfB84fh3Zo264Y6kjfy2jAQoqhQFRv5JP+zQyqPAAp1bXMfTfGKFJd8LZpw==
X-Received: by 2002:a17:906:319a:b0:931:baf:259 with SMTP id 26-20020a170906319a00b009310baf0259mr2308827ejy.63.1680687812888;
        Wed, 05 Apr 2023 02:43:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id q20-20020a170906541400b009442efdaf20sm7182439ejo.156.2023.04.05.02.43.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 02:43:32 -0700 (PDT)
Message-ID: <9847bc48-c96c-3599-e876-bcf9ebf1522e@linaro.org>
Date:   Wed, 5 Apr 2023 11:43:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 10/10] memory: mtk-smi: mt8365: Add SMI Support
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Yong Wu <yong.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
 <20230207-iommu-support-v2-10-60d5fa00e4e5@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207-iommu-support-v2-10-60d5fa00e4e5@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 10:06, Alexandre Mergnat wrote:
> Add MT8365 SMI common support.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---

Why the driver patch is after DTS? Driver code cannot be mixed with the
DTS on branches/repos, so such ordering suggest your patchset is not
bisectable.

Best regards,
Krzysztof

