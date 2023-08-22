Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0B1B78398D
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 07:54:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231205AbjHVFyh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 01:54:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232427AbjHVFyg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 01:54:36 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9A9B185
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 22:54:34 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-52889bc61b6so5160640a12.0
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 22:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692683673; x=1693288473;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7TQX4y/uBks8nVow/iPGHdMMait3YhGPxYbRER/vAHI=;
        b=D2WKJgnPmiNc5DtPRLx3K/1bi+ALPO6Ox0BPf7MgWLCXGX+ugGmtbq6PTYiqkbsdXo
         pevGNinraFDgfmH0udKrxvA+87fIwn/o39IbxKDK2xuVdh69NujFmNtjV6Cq5YPe3Age
         Q6RtEx5OuvQRG7nuGwlY5HTkmtGbQbjM/IGdSlo/Mzlhiut4s3E5rxa726v6FRTlg5Oz
         hMkZ9FYIHP5yrD5OnYjsa1JLh6mAlcKh0DO0CakQeSXO6lVYNfvEd47N2rdrfhWQi8pl
         f6YhzJ6X+Re0bu/TQsYPyg6w1Wy5Az6uDAcKb+dcSpKEcX1OVcWO3AFd3nXE6gKAmToL
         lAuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692683673; x=1693288473;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7TQX4y/uBks8nVow/iPGHdMMait3YhGPxYbRER/vAHI=;
        b=LltJmKBuulBcxF21f3gfjmS3h8KhC7Eb0QrUG5nbnroMiROQ2Tpi9BPUOEwcX0PfPm
         tENJGtlKZWcNwLaHMd+Oa5xg/n7fQqBuwZ1TE9aU1vtI/Mc2k5uEoPc41WYtF+xU9fcP
         tEi3yzC9TyoMk5Fsw9zA0A6vGISu9w7+fn5G+liwlaiUh/nHbcqzF+7+lOsDGLzVkfcK
         a2Et83vzUf2QZ/8gr2xfGfvNlOdVYjmJGJpvTHpAQ0/BOoQHIOudF8s2xAvJnRtjDxUd
         d8n8iCQSh3jA/E/ggpUpA15+m1qgH5mFYn8EYLrXjlI6MhsGOiG2gKKeo0/giL9mmw/M
         HQFA==
X-Gm-Message-State: AOJu0YzrDVIvuvqxdDrMyb0hMSPMVQt7vb5Vow1yTk12geXS4AjgydCa
        qETJhhuPpYlpAZfo7QlD42jszg==
X-Google-Smtp-Source: AGHT+IEhDWurn+BYTTaGcgwpERqWG0ysoExljMCFTqgXhHbhp9OQXV6bd64JEdpjuDYl/Vu3vIfg7g==
X-Received: by 2002:a17:907:a076:b0:99b:d2a9:9a01 with SMTP id ia22-20020a170907a07600b0099bd2a99a01mr6856980ejc.0.1692683673252;
        Mon, 21 Aug 2023 22:54:33 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id a6-20020a170906368600b0099bc038eb2bsm7588168ejc.58.2023.08.21.22.54.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 22:54:32 -0700 (PDT)
Message-ID: <07c6a89b-f545-a49a-db21-ec361811e4be@linaro.org>
Date:   Tue, 22 Aug 2023 07:54:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/4] dt-bindings: touchscreen: neonode,zforce: Use
 standard properties
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>, dmitry.torokhov@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        rydberg@bitmath.org, u.kleine-koenig@pengutronix.de,
        Jonathan.Cameron@huawei.com, linus.walleij@linaro.org,
        heiko@sntech.de, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230821171151.555091-1-andreas@kemnade.info>
 <20230821171151.555091-3-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230821171151.555091-3-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2023 19:11, Andreas Kemnade wrote:
> Enable touchscreen orientation to be specified by using standard
> properties.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---

Rob reviewed yesterday v1 (although adding 3rd party tags might not work
with some tools):

Reviewed-by: Rob Herring <robh@kernel.org>

Best regards,
Krzysztof

