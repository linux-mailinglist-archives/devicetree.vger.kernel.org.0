Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F4E4694023
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:57:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229778AbjBMI50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:57:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjBMI5Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:57:25 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA611420F
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:56:55 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id m10so2404885wrn.4
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=91pijroZNB/VAuYuBdkL83jBs6ATeu5eEm+X0sOGp9M=;
        b=W6xS61TnoeJGnjLk25v6iQ9GoYY/1TPaxo/EC4llWIM5WTfBmCURZP+CBxEOqPiX72
         PRRAJNhuziiPHCc1UXg88avxJRp+cdkcLVdUoq2IwevZneOAURGxJvZ769mZFuPUOFWv
         ucQwvB/DvhAuyPtrv/CVTRwxVAb4FpzY2QSzz1W/Uoiw3J6weglqNdI0TlB0ariBA7mc
         d+M6LM0gQqhtVmsJg3PJYQkyDXqJ5+WqiLXQlIWLwIcf0UUtTT2V1gWy8pfN/5nEsxTb
         1Kdx9OWApSgMGvZwJ5RXvqX+sEDci7SN/xtF0MQ3QZ3p6ZdbEHWVed3423rPzBrhqY71
         1zYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=91pijroZNB/VAuYuBdkL83jBs6ATeu5eEm+X0sOGp9M=;
        b=0hNDTMWbRE68RaYhZ6Oo1tuX4TG6SYUNjb1qtsoInNpu1SfwOXqBpHl1xb+Tj+2hpW
         3se1VLpZNdT+LdVK12I6JOLE9WG2moR6AMi0TvqW0j3PUhYSjpUPFBbEFhk3zsBwKHm6
         h//C/2B5H5QbL+nGtsLPyizrKgvfImimE7AK1xwC2+gKhuCrsr0SPv55N9Ug93h9vG5y
         7U+RqMYbGCg3vF65s9ncBwaq8Hn10NVHs+NZlgSzLawvBZPSBGtm+7pbIQ07llCLAwEy
         EivhsJEJDcYmHknAHEA9K0rTcqOEOUaXvuMQuJyTFyQLNwSP5z8fbTe8Mvstftf8Cxhi
         lZjQ==
X-Gm-Message-State: AO0yUKVm3r29SmwJApdZMuRFmpHD4xadSrJAVhTTaj4OZfJE2JFA1KzX
        VnVXchLH3Z56R7jbhCP1R9Ux3Q==
X-Google-Smtp-Source: AK7set+qLbVTXujo9IfjU+iB1mHwDSM0DVrZR6Tn5fCcgLF4u22+Cz/XYAB3L8IVVqyVgdmugHgrAg==
X-Received: by 2002:adf:fa86:0:b0:2c5:48bd:2a27 with SMTP id h6-20020adffa86000000b002c548bd2a27mr6497113wrr.34.1676278614755;
        Mon, 13 Feb 2023 00:56:54 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e14-20020adfe7ce000000b002c54f367fe4sm5300613wrn.100.2023.02.13.00.56.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 00:56:54 -0800 (PST)
Message-ID: <c66f6ae5-97b4-d2c9-92e2-2315ac222b60@linaro.org>
Date:   Mon, 13 Feb 2023 09:56:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: drop
 "dmas/dma-names" from "rcar_sound,ssi"
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87r0uu8g8x.wl-kuninori.morimoto.gx@renesas.com>
 <CAMuHMdU2_5SO53qs1KVcv7p5O1QP-DWpxVpUhmpFT3MQFKVO5A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMuHMdU2_5SO53qs1KVcv7p5O1QP-DWpxVpUhmpFT3MQFKVO5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 09:56, Geert Uytterhoeven wrote:
> Hi Morimoto-san,
> 
> Thanks for your patch!
> 
> On Mon, Feb 13, 2023 at 3:13 AM Kuninori Morimoto
> <kuninori.morimoto.gx@renesas.com> wrote:
>> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>>
>> SSI is supporting both "PIO mode" and "DMA mode", thus "dmas/dma-names"
>> are not mandatory property. Drop these from rcar_sound,ssi's required:.
> 
> BTW, do SSIU and DVC support PIO mode?
> 
>> This is prepare for Gen4 support. See more details on Link
> 
> "This is preparation" or "This prepares"?

Use imperative.
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

Best regards,
Krzysztof

