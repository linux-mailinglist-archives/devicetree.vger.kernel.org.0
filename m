Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FA0C6CBE23
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 13:53:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230378AbjC1LxA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 07:53:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbjC1Lw7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 07:52:59 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B31F6A75
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:52:58 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id h8so48494235ede.8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680004377;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tecTi4iB36so+NwD+znfDWnEir5uByUR6yq3Wl4ynCU=;
        b=i2X70BLI85AMiXA+bGNXIXGuB/CvgJIRw5tX1ee0WVJHYwKS+K/h1g/o/2rO9x3MD1
         D8yIw9MzzojLSz9p72w/IuZpiHO+gv/8KHcsjJDjVsk5T73HmDk9ryDiK0s/TEwp6rz4
         26cySS+tttcogWnxDsewcrvdmPKjzvCwdxGP9+tqlE6btlJErut6Sk+3pZey451J1ImZ
         yKDLCdHM0EECEluPpvbkJ4lQoYJsTKfo1nQ/c0gPe/Yy/EPk3SEskrVY1/Ey7EFcNeu6
         6anIHyjv1VA/mpgROafwgnRyIljAwsrPLvBIhh6f7OWWz18jsTnu07a0GvmFDyf3ysXM
         zwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680004377;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tecTi4iB36so+NwD+znfDWnEir5uByUR6yq3Wl4ynCU=;
        b=PqYDtVi+0j53gDDP+n7VxURC9DT7dnbfEDCDRAshnE/8CYdXBA3mr4EZKoemmL5mTO
         QCaaeGTcx2s1HVJ+T95KrOFtnVKjcfGDDiQ5mQu8Y3aawfxBTPA8Jec0refJ2tD9RQBo
         GaYO1NOT8Lwq428L5HFkaCSAPrJWf4VE4IyOYj6I/d8jb/oZyBgWLvyFCYvgqwHRQnd7
         tGvDTadP+gYEz7YWZ5lFm3OJx2TZ5VrPKiAuH3yBB4jEPl3RinWiNcnKo3nhtKkkxk+F
         Ss60sbrbl+plSlf437oZGvjsu9ucoDhIpoppLUSBwQOF48R/bn79WxtSXGC9568h/GVN
         Rkig==
X-Gm-Message-State: AO0yUKU7tXshTaFxkDvkAHmGbNJLl29FtnnManTFqufgWIUD1yCWZb4h
        eIqBRh2wVIV2KuN0Bp+eJEIRXA==
X-Google-Smtp-Source: AK7set9vn8o61Ws1RoyyPqOxKld/IbsKS8craVotdUiSS7KOmXNEY21v+QtU4GXt7AxzOPqjvooNzA==
X-Received: by 2002:a17:906:3710:b0:923:812c:a5d3 with SMTP id d16-20020a170906371000b00923812ca5d3mr20751730ejc.25.1680004377051;
        Tue, 28 Mar 2023 04:52:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id cd11-20020a170906b34b00b0093009bc5825sm15231709ejb.2.2023.03.28.04.52.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 04:52:56 -0700 (PDT)
Message-ID: <25422211-a26a-889a-afcd-12b561669c14@linaro.org>
Date:   Tue, 28 Mar 2023 13:52:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: add Amlogic Meson A1 SPI
 controller
Content-Language: en-US
To:     Martin Kurbanov <mmkurbanov@sberdevices.ru>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru
References: <20230327211351.686831-1-mmkurbanov@sberdevices.ru>
 <20230327211351.686831-2-mmkurbanov@sberdevices.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327211351.686831-2-mmkurbanov@sberdevices.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 23:13, Martin Kurbanov wrote:
> Add YAML devicetree Amlogic Meson A113L (A1 family) SPIFC Driver.

Don't add drivers to DT bindings.

> 
> This patch has dependencies on the A1 clock series which is still under
> review - https://lore.kernel.org/all/20230321193014.26349-1-ddrokosov@sberdevices.ru/

This is not part of commit msg.

> 
> Signed-off-by: Martin Kurbanov <mmkurbanov@sberdevices.ru>
> ---
>  .../bindings/spi/amlogic,meson-a1-spifc.yaml  | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson-a1-spifc.yaml
> 


Best regards,
Krzysztof

