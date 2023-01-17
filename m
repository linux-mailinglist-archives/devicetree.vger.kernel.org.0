Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70FD666DB85
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 11:50:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236189AbjAQKuf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 05:50:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236197AbjAQKud (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 05:50:33 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE382301AB
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:50:30 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id o17-20020a05600c511100b003db021ef437so2718247wms.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 02:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D9jd9NHczZgFXOBD1bpOo1DL4FpoGpPRXqYk3V82vSY=;
        b=a3b9VWUDOReejVZSdM+GD7VBBwz+GTOsn4QHM0vqW7c8KJoGN4yuuC4DvtiUivC2ED
         KeLVm0uDIJzMS97A/2YrV4k4uGhBPHgOxUBjoqVZ1TaO/vm0JQ+8kstVQE88qKLVdZ5p
         ReuK8vNHrLBUoiykZftYjrZtCai13Jioz8PZQFtgZDqgVfezsJnvoLwl5UiSYKQui0O6
         ZQWkyVKlp+yCCT+FHex9bMeMkgbNZXYqSvpTB8DcnBlkmDsNeuDJ0x3MCRPicC06o3Fm
         luGEPKoihDs0mxnXjMCTGximcsRVLrxwVjde0qVVYeQW4I6/Ki9EytF6elefpZzt+idz
         ABLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D9jd9NHczZgFXOBD1bpOo1DL4FpoGpPRXqYk3V82vSY=;
        b=sU6+s+6AYYQEr37JEXMcO6TnZZALfad6KIefT+8+aBSi5XYez8S1v2p3p0+rWYe7mz
         jS29IxTPqbIZlhGZhIkrw0kRksyVnknfKlsDZPVrx12vUy78cZUgdU43340Qco2sSnAx
         j9BUO02nLL/VFgn+j2ZOM0uROUBxCoWhkglFLsn6nR/oQN82xhcGXSS2qAvR9BdMM9tW
         H7bmCMJYjYd+VyOs829KWc/QH8zy5vzXTVzgJvOc2gRJXMTL6p75P+V6rPB0DYurpcrP
         O4UHZTCiMDG3i8eXLExLzr0RQVXO+XAiH8JdF723PMj6YP2itt+bZXXPJGYoM/86s1ij
         xSzA==
X-Gm-Message-State: AFqh2kr+HajXyUt6tlXkcIamxA4wLdXn0mXWiDxIgDUc4U6k+alWlZiO
        UG1V6bwudi4m2CMuJgEJNHmcfQ==
X-Google-Smtp-Source: AMrXdXsCxuO37tf5Lddvjm4A1oZoPmUwFz7MlOVrlAFcEuIZANGmSyPewmWZkNgr7pwAOiceQQQa+g==
X-Received: by 2002:a05:600c:24ce:b0:3da:18c5:e48b with SMTP id 14-20020a05600c24ce00b003da18c5e48bmr11372912wmu.18.1673952629499;
        Tue, 17 Jan 2023 02:50:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s7-20020a1cf207000000b003d98438a43asm34696977wmc.34.2023.01.17.02.50.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 02:50:29 -0800 (PST)
Message-ID: <c7787be5-b328-4507-ba51-dd26bb9ae408@linaro.org>
Date:   Tue, 17 Jan 2023 11:50:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v1 2/3] dt-bindings: soc: meta: Add meta cld driver
 bindings
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     garnermic@fb.com, Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Daniel Palmer <daniel@0x0f.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Samuel Holland <samuel@sholland.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230117094425.19004-1-Delphine_CC_Chiu@Wiwynn.com>
 <20230117094425.19004-3-Delphine_CC_Chiu@Wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117094425.19004-3-Delphine_CC_Chiu@Wiwynn.com>
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

On 17/01/2023 10:44, Delphine CC Chiu wrote:
> Add a device tree bindings for Meta control logic device.

Subject: drop second/last, redundant "bindings". The "dt-bindings"
prefix is already stating that these are bindings.

Subject: Drop "driver"

> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
> ---
>  .../misc/meta,control-logic-device.txt        | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/meta,control-logic-device.txt
> 
> diff --git a/Documentation/devicetree/bindings/misc/meta,control-logic-device.txt b/Documentation/devicetree/bindings/misc/meta,control-logic-device.txt
> new file mode 100644
> index 000000000000..e966368e2fd6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/meta,control-logic-device.txt

New bindings only in DT schema format. Start
Documentation/devicetree/bindings/writing-schema.rst,
example-schema.yaml and other docs.



Best regards,
Krzysztof

