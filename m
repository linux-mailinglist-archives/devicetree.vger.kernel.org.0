Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACA4469F065
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 09:36:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbjBVIgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 03:36:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229907AbjBVIge (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 03:36:34 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AF39252B9
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:36:33 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id j3so3129811wms.2
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xb/tDVxWKhj2uVd6k40rS8jR5dYMCSgdBjdPB4tRE4c=;
        b=LGFC8n2veMJ3dCqA10bxu0OUsB3VKyJkTMmM3WjdGoIh32sKTk/GLOv1C/ZFoe8zMZ
         A1EQ9XaNVfwf+uAmCCb4+asw7zqhL7TiR22+1TlFqmxynmvD9NDVw8neh/oC+I3P0TxM
         FDd8TB6WoTR4wZXIHipdlNH/VdcMwnxWs3HUi9kOJx/G6qtCe2zhsse1AKJTABVAKDA6
         66AQtCzDT8GzTouTxJaFkPKlHGchKBtu1OQOL4UDv613UH7D4gVAglfdkMzChz420tEo
         1nzwCf3jm6UoaMeQs6c0ZXu276HGYt51IkNPQL+lnhuJZ49IYXCye4+FcNLTv4OW7g3N
         229A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xb/tDVxWKhj2uVd6k40rS8jR5dYMCSgdBjdPB4tRE4c=;
        b=x2JduTBZcqDrskrQqnwH99LTXEKi8C2A4D1491MXIMATO5va6+TauJjWvsjNsyOtIM
         j3YNZDDKsR92APzTE0RiNko5AYMdqoBa0w8rjpsQZAQd44fpdi2v3AbkMZ8KwxRzIEyw
         O3RYvh9AENimg/Ya1s1t6hKF5gwcvU7xjdyRNyOAXBz77kA79QznrY/1uZN1e7Vb2Pl3
         lP0PfVSdINCO4gHD/5Bpdt0A6YWVYg0pUZElAzmhyzE51OQwieCREYuPgX8B0znu80ne
         HgZEgT9rScDHfNVDmpXON/LgefosZ4pi9goKk7oOrYfsE9cTAlfucTUo3RKELQzCsg3o
         5kHw==
X-Gm-Message-State: AO0yUKVppmrL6ASozIDvFQ0XoF8xOjVfR6RDNF7mPCRQDWWAAoNl9feH
        LHob9LlHreD3G8PiptaCol5ZwA==
X-Google-Smtp-Source: AK7set+CXwYu0dZDS5ncauHRnqWd+eXxDWdlmg3wPkw4yl5GW5yku8xX2H+ET0W1Hih0UasI6c2ISg==
X-Received: by 2002:a05:600c:4918:b0:3db:2063:425d with SMTP id f24-20020a05600c491800b003db2063425dmr11392100wmp.2.1677054991865;
        Wed, 22 Feb 2023 00:36:31 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k18-20020a05600c409200b003db06224953sm7866120wmh.41.2023.02.22.00.36.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 00:36:31 -0800 (PST)
Message-ID: <4bb6d810-8297-f91b-c757-fd34c4f9cb0d@linaro.org>
Date:   Wed, 22 Feb 2023 09:36:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] ASoC: tas571x: add tas5733 compatible
Content-Language: en-US
To:     Kamel Bouhara <kamel.bouhara@bootlin.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Cernekee <cernekee@chromium.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Crt Mori <cmo@melexis.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230222083300.218523-1-kamel.bouhara@bootlin.com>
 <20230222083300.218523-2-kamel.bouhara@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222083300.218523-2-kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/02/2023 09:32, Kamel Bouhara wrote:
> This adds the tas5733 to the TAS571X binding.

Do not use "This ". Use imperative.
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

