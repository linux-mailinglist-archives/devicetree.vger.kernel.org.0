Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1B1F68EC70
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 11:11:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbjBHKL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 05:11:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbjBHKLZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 05:11:25 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 106DA3FF2D
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 02:11:24 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so1050425wma.1
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 02:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=huzB20qTn2hk5Sq50TcJmPrBiboHg5g3LTY+3FZ3Yb0=;
        b=KWidLLXh9HX/nt4zg03fLQRfj3YHNKgvZjeskIue5Q9wqMMvRrH2zoh4zHSsn3PeHn
         CiGAvL9EqDb+//F5Sebnf+NX3QFSvOVr3EnfR2zW6WAZNlgsVR6PBeRbt01bWu2K7k9z
         4atmTMdZz06o8x3uc+D997ZjlM+GIeKFIuZsUXkbMNfpXhxI9b89rJeF8g5d4zCTBesg
         RwLEXKYzAMe9hd1ZqmI2GWDQ/9Kc4ckwcxmIAo/NgmKfjNtOra4MNZPKlF+fL+vN5vsw
         tAo22g/2J9hX4ObNbEQjNMEVmeEhPfCJVi5BIzhrribBe1ZCrEAecOQSh+0OVF4CI60G
         8zqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=huzB20qTn2hk5Sq50TcJmPrBiboHg5g3LTY+3FZ3Yb0=;
        b=5yBC4nAEyUuR3EsThqkLQrkgK/FuBH5KheWtO+gOhzpoThwqFwC1h0OObGsI9VNBQX
         wKyS9CptwM41djhW8drGnLafb1FTOjIhgHMMS2kZkc8zxZpil4iIETofwt8b0o8tRM4U
         jfoxxhMiT/FPCinM1vnDg/qh/vrdJLbifJgWQ1YJTJ2c0PB3kfHrwcw2UkoIRxHrx3eg
         jY2wSJCx++WnHHTKPLdcViAPrXf3ZGropUSVZWyVZbp/8jayjLgjtL45gYl6BMXNGNPs
         ypbJEp+h4DHTTLmPJNlfdqMsm80Fg95whhN1hdj4Vg0okD6hhWtouEVnWDrZ7HjUGz8y
         ejKQ==
X-Gm-Message-State: AO0yUKXr9RPGBV+REKjlXBd4aU222L8wIMwvYGt5DOGorJf8p9Z71cMw
        2fOES11TjqNkmAOPVng+1lUaOA==
X-Google-Smtp-Source: AK7set9SFBkBwYbJsxEoEQo2yTUSMhBjOMBIM2S+qELVNcXscqrtbGDB2RZokPCNgDbPk9mqHHZjhQ==
X-Received: by 2002:a05:600c:1606:b0:3dc:19d1:3c13 with SMTP id m6-20020a05600c160600b003dc19d13c13mr5894099wmn.12.1675851082636;
        Wed, 08 Feb 2023 02:11:22 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f24-20020a05600c491800b003df245cd853sm1340660wmp.44.2023.02.08.02.11.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 02:11:22 -0800 (PST)
Message-ID: <d74c7f61-46d3-4f87-5889-b3431fdfd467@linaro.org>
Date:   Wed, 8 Feb 2023 11:11:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 1/1] ASoC: dt-bindings: meson: convert axg sound card
 control to schema
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20230208093520.52843-1-jbrunet@baylibre.com>
 <20230208093520.52843-2-jbrunet@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230208093520.52843-2-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 10:35, Jerome Brunet wrote:
> Convert the DT binding documentation for the Amlogic axg sound card to
> schema.
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../bindings/sound/amlogic,axg-sound-card.txt | 124 ------------
>  .../sound/amlogic,axg-sound-card.yaml         | 183 ++++++++++++++++++


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

