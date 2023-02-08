Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04CB468F63B
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 18:57:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231346AbjBHR5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 12:57:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231480AbjBHR5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 12:57:16 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A53D4FC31
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 09:57:11 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so2110304wms.1
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 09:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bIbh91yDi3hjRSK7EFgWT8DXPfU5NF3sKbYrP5BUi94=;
        b=dCopafmxD7OpCvsat1jY+V1MqgKO1ql0h/53QmoG71/cdD946DJ9co+DwFNWTOJR9U
         FWNaGvHCnYkCLTWEPRqQUMPlOWXl2b0PnyQiJnyYwc9H5EYOErZrd7vKBGgNNIAfGl0+
         rmZnvz1zUXttPEYTRahBL0uvBqus+vZ96RkiE5erVsdxVoMWG/1CWUxvkmaix1NkMs54
         7Njd2GKZckFjlrjDen4MQUmvO+q8m7q05LXkRAd0a69LVibnsw4Q8+4SdLig8G6NWaCl
         ZeL9ogJ/GnSZjn2bvQiZdIGGdtB/XFclNiH/JRgCPuL+G3zDZuG60oqZok4spnNT+Hnm
         Ghwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bIbh91yDi3hjRSK7EFgWT8DXPfU5NF3sKbYrP5BUi94=;
        b=aYsimVac+lJNJNO4UjDkWkASqKrtu1kkMj85cQv1Ym37GVqOnVvTJUyrlOifeBhc3+
         Qqmrf8zjvs8qobZnHYK7ZgIkLIj0S+SpNspGV38QUY8vTdG3NZbWXDT27DKfGHCeB2NJ
         vCNFH74r6JhTHgzqIr2ig1uCfkDXZmq2nEmOCIQ/QmpwAqJ/1P00DakLJbR7QM+0gS1J
         wmNCTJHWkIO1+6eNnNO4eZgf3+x2wFeL5UvXFY8J0ZTXk/uhiMhxYrLBA8no9LyBdTfe
         gpeQe9mfsJuyGL3AQV+xpKAti/iQ7sANwpqipJMHkkeVF607gc95RPm+0m+R0KHI0DB+
         g7IA==
X-Gm-Message-State: AO0yUKUq+NwN3w0pr/YKEL8YQUdZs/r1vLV1BlQh7fynMCVXZtBVYAl+
        VrgPlpbDDU0weOLa+waDoj69BDFjT2OfhFIW
X-Google-Smtp-Source: AK7set/agXvUr8o1RIcasdIWPQxgRIVGIS6wQ4uZ6pkHa3ZW0neyWPF4V2VmwO8dkPy+UxxjygeJ4A==
X-Received: by 2002:a05:600c:491c:b0:3dc:1687:9ba2 with SMTP id f28-20020a05600c491c00b003dc16879ba2mr7082656wmp.35.1675879029806;
        Wed, 08 Feb 2023 09:57:09 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n16-20020a1c7210000000b003dc1d668866sm2519023wmc.10.2023.02.08.09.57.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 09:57:09 -0800 (PST)
Message-ID: <313a6c91-e4d1-98da-9c77-fdafa66c0744@linaro.org>
Date:   Wed, 8 Feb 2023 18:57:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] ASoC: dt-bindings: wlf,wm8994: Convert to dtschema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        - <patches@opensource.cirrus.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230208172552.404324-1-krzysztof.kozlowski@linaro.org>
 <Y+PeR4EFfcVDbUfV@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y+PeR4EFfcVDbUfV@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 18:39, Mark Brown wrote:
> On Wed, Feb 08, 2023 at 06:25:52PM +0100, Krzysztof Kozlowski wrote:
>> Convert the Wolfson WM1811/WM8994/WM8958 audio codecs bindings to DT
>> schema.
> 
>> Changes against original binding:
>> 1. Add missing LDO1VDD-supply for WM1811.
> 
> Both LDOs are present on all variants.

I see LDO2VDD on WM8994 but not on WM1811 and WM8958.

Best regards,
Krzysztof

