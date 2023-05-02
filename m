Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0A0B6F3DD2
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 08:52:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233714AbjEBGwX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 02:52:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233526AbjEBGvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 02:51:54 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65E865583
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 23:51:24 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bc075d6b2so4668380a12.0
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 23:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683010279; x=1685602279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oNACeQEQO+S+0unH0ZOUetbTC5AHvRt/8ok1HoKeNHM=;
        b=VQq0UrFGyA6TUuzG3T0Om+Zk+UNDZhYIt2EZ6ux/ZGlJlos5dnHnlAeerT9LfsY9kz
         l30pn8vTOP39LeTOThYQ0bXv8fiqHoVRp5ZXmQiZYcZ9rnuwK0z0r/6OUMYgVNv5cS4x
         vAH6Rnhdrp4AcC99Clq1ZULUqj4Bd5NTt04ExHsga5TcP3BVhUqt+gtFzqQjzBxHBPN0
         WEU9y5ih6KxRsTrKW1TxEr3L3UI6t4yui9e0r+WG2A2vGM1HroOHmg1cEp07z5I6VeXe
         MfwYfiSrUtBSVDtN5Wzs0NvTUAsDTqJgMfwwWKNfxruxigxPTJ7BGHmwYE81WXgYecsg
         xtdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683010279; x=1685602279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oNACeQEQO+S+0unH0ZOUetbTC5AHvRt/8ok1HoKeNHM=;
        b=ZCnNFmJBI0VYtsob3tB8+6pvAPfkP7GTB+4giIvvuPjEpf9sHmjuZgxzS/zTIFtjIx
         LRnPGAd9cqTUQupYa4bRL0/TzjeDl3roGwBunuCrKntLOedwTJBnv1kVzDYWhf3fG2AH
         PN8GdYIKbNpfmW/VB/TqAWS07sgyLXPuOCKBnrrvLY63rJim3vDZCtzIZD2KREDdOI61
         CmuPhdUCWYIdi0l4ynA9dCiunklbfFYQ8vrqN30wUYTt04ei9QFN/KpJSq8EgOEGv5Ct
         0FPoLJ9rUgCVF+7u9/VWMxod8LemX4lgypomC1Ufkc+QHN6WOBavOdiZSXuLT/Sz4o+3
         CJdA==
X-Gm-Message-State: AC+VfDxG7pb72AyUiceAc6BoQh+rX4ZSsDZzdhyQSX212mhaYq9ZJGTl
        nWEWXtS2uCPfrPL7EAiZ4aFRwTG6sxZoDJny9jw=
X-Google-Smtp-Source: ACHHUZ7HNkUdR+ngJiafRGxX5FKoJp6dfOBHcB7emIfrQ/GGGqv8cWeAezrQE1tWkKj2lIdwzneCuw==
X-Received: by 2002:a17:907:1b08:b0:961:be96:b0e6 with SMTP id mp8-20020a1709071b0800b00961be96b0e6mr2829866ejc.68.1683010279138;
        Mon, 01 May 2023 23:51:19 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bafd:1283:b136:5f6a? ([2a02:810d:15c0:828:bafd:1283:b136:5f6a])
        by smtp.gmail.com with ESMTPSA id f6-20020a17090624c600b0095707b7dd04sm14651202ejb.42.2023.05.01.23.51.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 23:51:18 -0700 (PDT)
Message-ID: <b7085d83-cee1-4f93-c698-74c52bb16222@linaro.org>
Date:   Tue, 2 May 2023 08:51:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v1 2/5] ASoC: dt-bindings: Add tas2781 amplifier
Content-Language: en-US
To:     Shenghao Ding <13916275206@139.com>, devicetree@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, broonie@kernel.org,
        lgirdwood@gmail.com, kevin-lu@ti.com, shenghao-ding@ti.com,
        alsa-devel@alsa-project.org, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, x1077012@ti.com, peeyush@ti.com,
        navada@ti.com, gentuser@gmail.com
References: <20230502053135.27019-1-13916275206@139.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230502053135.27019-1-13916275206@139.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 07:31, Shenghao Ding wrote:
> Create tas2781.yaml for tas2781 driver.
> 
> Signed-off-by: Shenghao Ding <13916275206@139.com>
> 
> ---
> Changes in v1:
>  - Submit together with tas2781 codec driver code

I did not get anything else, only this patch.

>  Changes to be committed:
> 	new file:   Documentation/devicetree/bindings/sound/ti,tas2781.yaml

You named it v1, so this changelog or naming seems incorrect. There was
v5 or v6, right? What changed here? There were several comments to your
patches. Since nothing changed, I assume you need to implement them again.

Please implement all the comments Rob asked. Then write a changelog
describing what you changed.



Best regards,
Krzysztof

