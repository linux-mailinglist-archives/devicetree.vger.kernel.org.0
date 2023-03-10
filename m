Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D4FA6B45B2
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 15:36:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232611AbjCJOgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 09:36:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232629AbjCJOgP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 09:36:15 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 672F01194E0
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 06:35:58 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id j11so21277458edq.4
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 06:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678458957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9dXUSpxrhc852kQQYbEFtQeOQhI46gAz+RPdDgDM6is=;
        b=NJm58VDWAWv6i7hMdG19RulhdsV5x/wxmH+8isFWJXUEqhG9N1Iqam21CFjdWwOcf7
         WbGU2ZLahrjJhgrwUXGZZOr/UUubNVwr+fffhEkmzZzlXjgYMTf5ileDas5NFPtnkRYz
         rT1ppaC7hRiXW/QJZrnMQFTP/hrCdqvLkxJJnhQuhlTf8Vju7UjALujTrLiQiCu3pQ8n
         0rBzVorTxQGCkdQN00kx2uvsvNBgqy/Ui+0y+4ofz7CSAFx+utphlSOdoiSIpzWxIxd8
         piE0QUGtQ4uGoqve0lwBw8SSB6y06R3Awp5eeMjAxsRBNwq71v3OhLkmVdKccRmAi/nc
         YzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678458957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9dXUSpxrhc852kQQYbEFtQeOQhI46gAz+RPdDgDM6is=;
        b=fhrbfnDlFTuY7hf6xw21z6zQfxm8F/WLtH//GCOGlCqkOGgg4wA66uDMCRnvEBFkjG
         f07HuLkPfeqSXJ8eV7A4JO95VIqxzbsbAaqfgPDrbW+A2ZLzRaFvM6+NW9h/aVvF0yIA
         Pn6XZ27ucBRQfE3bk3R1DITxSaVTnCmmtQdWbypnhx5srcKuTCxBhd5ZQ8DGYqFokrrn
         XnBZe/reE0x4J6OGgPUArNU5MSOHhodvLkF4stkWy5CdbHzCE3n9cK95iL9DrU0c7MmQ
         JEkdjrD6RC30JFgGNh4igOXyu+VwpIfP8mKA0iCTyedPvFl0EXlXKQrQXzIvweR/CQty
         egBA==
X-Gm-Message-State: AO0yUKWdnp4V0gHzPyGsvXlOOoZzizRhaZroYggddqwdkFS4LQKqkBMI
        Tq7DzxsZ2CDL5+iYD3sLwLw5PA==
X-Google-Smtp-Source: AK7set/cT6KeCdA2Ngom7Mk8z4udlb+B1Ld/45Z85Z40xRKfE+CLp5lePmjx8hRRhNtGefKW/p0Myw==
X-Received: by 2002:a17:906:f255:b0:886:fcbf:a1e5 with SMTP id gy21-20020a170906f25500b00886fcbfa1e5mr22623077ejb.59.1678458956870;
        Fri, 10 Mar 2023 06:35:56 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:45c4:46be:ec71:4a51? ([2a02:810d:15c0:828:45c4:46be:ec71:4a51])
        by smtp.gmail.com with ESMTPSA id u23-20020a509517000000b004c0cc79f4aesm80130eda.92.2023.03.10.06.35.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 06:35:56 -0800 (PST)
Message-ID: <b5e4c34b-b0d2-0f73-7c0b-8233e545c068@linaro.org>
Date:   Fri, 10 Mar 2023 15:35:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 0/9] ASoC: add audio digital codecs for Qualcomm SM8550
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230310132201.322148-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310132201.322148-1-krzysztof.kozlowski@linaro.org>
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

On 10/03/2023 14:21, Krzysztof Kozlowski wrote:
> Hi,
> 
> Dependencies
> ============
> For va-macro bindings:
> https://lore.kernel.org/r/20221118071849.25506-2-srinivas.kandagatla@linaro.org
> 
> NOT a dependency
> ================
> The patchset can be applied independently of my previous fix:
> https://lore.kernel.org/linux-arm-msm/20230310100937.32485-1-krzysztof.kozlowski@linaro.org/T/#u

DTS implementing the bindings is here:

https://lore.kernel.org/linux-arm-msm/20230310134925.514125-1-krzysztof.kozlowski@linaro.org/T/#u

Best regards,
Krzysztof

