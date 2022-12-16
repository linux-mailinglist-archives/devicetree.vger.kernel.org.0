Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7297364E982
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 11:35:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229785AbiLPKfP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 05:35:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiLPKfN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 05:35:13 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA77205EE
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 02:35:11 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id z26so2811616lfu.8
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 02:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a0yptAXedl2pzYbpHJGSCo7EhOMQi3T8iPKefbr2uqc=;
        b=qsiypkVP61ohjDcde8f5g/4SQh/oAJNoScwEgP3Rv8EeRjzz9+LMiDNN88Rt5oJNM0
         Rsv2S/TYMvb7YC6gcAFiXX709u+bItlhyfEpxsPnDs8PXX1OpaH1a2CHRSfs/4cHFHTZ
         3QID1o8OYaZc/PfohyOziC4jICM0EwA8BWIPuUH8EK9c5ld3o/1Jvs68zgRaHcqHa6Sf
         2M3nFxfgbHc/Rdi6R5upHP9zU7M7zTv9n2xsThIeHTkMd2mj42eS0YxRtRpu46NlokY7
         djgBKq39E4l7clMVYpXk2GQ/Mtil5DUdc+zeUkXeDBB9btZLZIj8kpv/o9YimzB/JJSD
         R2gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a0yptAXedl2pzYbpHJGSCo7EhOMQi3T8iPKefbr2uqc=;
        b=jShKnXUlMsm3Br3JiZ3isnVg3UgcYXXUcEL7Phv+nESWwk1NAEsbO4EzhtxBsZhmH8
         JkjOfYVp3tLrrxNVMrcj6OszV4lV+ylPdQg9ehMuplanRqdgc8EQMHOemzbUCSYkT2Gm
         YJJOZXbFZtHGhco1n5CLlPNCoLC6ovUjs3B1ocd+BYWdg77nQfDfAo8vG6p2reQVu1ZN
         zf0LZP9qOX8dqJJHUBi6GoXUsnk/q83+u01NDLqiMqKwvIU/4FIgoicEyOre4R8798d1
         ypySMXIUQT213Jjc6HH7Bjh9zmHukyANONA5sUPVUhaL1nZQ0JxBilUc5MYowkM5sQFr
         R8Lw==
X-Gm-Message-State: ANoB5pnDxSVse2O526aRP7pDJUpY0VeFzJ4tm4XHYqjL1iU9Si16h/wS
        2ttbPhIvWCK9Lk11xwkT0z9yWQ==
X-Google-Smtp-Source: AA0mqf7KujWonci3YuJEjvtd7JyFGVm/ZvKiman8Ue42tzcnB4UCGM+zIc8G0kwsrw0GqeKQOgs+ww==
X-Received: by 2002:a05:6512:3b22:b0:4b6:fae9:c9bc with SMTP id f34-20020a0565123b2200b004b6fae9c9bcmr5601272lfv.4.1671186909644;
        Fri, 16 Dec 2022 02:35:09 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c19-20020a056512325300b004b577877286sm185959lfr.50.2022.12.16.02.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 02:35:09 -0800 (PST)
Message-ID: <f04febfd-8f0f-f349-3407-e0c3a07c9648@linaro.org>
Date:   Fri, 16 Dec 2022 11:35:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 2/2] dt-bindings: display/panel: Add AUO A030JTN01
Content-Language: en-US
To:     Christophe Branchereau <cbranchereau@gmail.com>,
        thierry.reding@gmail.com, sam@ravnborg.org, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, paul@crapouillou.net,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221214114142.204041-1-cbranchereau@gmail.com>
 <20221214114142.204041-3-cbranchereau@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221214114142.204041-3-cbranchereau@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2022 12:41, Christophe Branchereau wrote:
> From: Paul Cercueil <paul@crapouillou.net>
> 
> Add binding for the AUO A030JTN01 panel, which is a 320x480 3.0" 4:3
> 24-bit TFT LCD panel with non-square pixels and a delta-RGB 8-bit
> interface.
> 
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Christophe Branchereau <cbranchereau@gmail.com>
> ---
>  .../bindings/display/panel/auo,a030jtn01.yaml | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/auo,a030jtn01.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/auo,a030jtn01.yaml b/Documentation/devicetree/bindings/display/panel/auo,a030jtn01.yaml
> new file mode 100644
> index 000000000000..6c099eb63434
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/auo,a030jtn01.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/auo,a030jtn01.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AUO A030JTN01 3.0" (320x480 pixels) 24-bit TFT LCD panel
> +
> +description: |
> +  The panel must obey the rules for a SPI slave device as specified in
> +  spi/spi-controller.yaml

Drop such description - it's obvious from referencing the schema below.
No need to open-write it in each binding. OTOH, you could describe here
the hardware more.

With adjusted description:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

