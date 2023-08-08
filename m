Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1A92774183
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:23:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234386AbjHHRW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:22:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234403AbjHHRWe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:22:34 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F6F97D781
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:09:19 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fe3b86cec1so9066720e87.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691510920; x=1692115720;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lGquPDB6vaKwB7rgLKWUZ6D46JON9JqHBotkXK91xEM=;
        b=BX4giIGPB3Hg4CFASywEv0r8jbJ4axc2K8j5IbFgwqTxTHMs+OsGn70b2gDxDJMI9Q
         vQ0RFdxG0l52YHdvLvRcKMNEn+yHutpk//3bK/xVPEltGpQrHVfdpuLjLcFvCZOA6Jpe
         VJxfB7MrbUZdkQHiBEZSfEnsAo2j16Ou8IKak0XIPU6NI9aUsjj3oA3U9la9lVjzPXhm
         lv9X8BT5UIC4RPOFqDRTRr6efTmq0eddSTRdql+v7WMcTYLXSOGkLwfztcHkkv9JtSVu
         A5v0CneYGMNnQPB4G+E8aY7eqr8cjAvPpG0Fkb7vQ1pvnqr5SS4JjGxnpDG3GaIU6ovi
         UDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510920; x=1692115720;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lGquPDB6vaKwB7rgLKWUZ6D46JON9JqHBotkXK91xEM=;
        b=T+Tkj5W1ngD66kkylp3XNCPLs/4Zzm93E6bjdXekyM1j1bOk97Me/rt3MRitHPi4EW
         5LiZNJBq13mGciOj6xT7eA3eX5pHMM6kNU7yhzejbxDUpouVB5uZZETC8xpH+8GWE8ct
         u+yOKIAs9QaggFfQrKS1mxSsWKocUAsHoi4EPqOyOJL2QBp43yPqQePvdC6sT2XWN1VA
         CFjXMyb1+fD9zXmPkV/Z7uz5k6SsY2MNw3JWI85OG7UcAc2U9Tfp0uV4dTQ3ZNQzYvfU
         DhhomH6tZUcOYk/eHT/IQBaYZaJPfzxmwnoKn3itsaTfBHiZSU1hmMYTodE9lj42HD5k
         9g4g==
X-Gm-Message-State: AOJu0YzZTtiWWosainqIUjyjRzJpoNBO5F+tyDYgMioobc/at6dBcnu6
        EOQoYDNX87gSdRyJBd4rBtKsHA==
X-Google-Smtp-Source: AGHT+IGg6Q4Bn1SwNNY/4AI1Bu5WwMrvQtnXksGba56CpVy7k57apCWdPH+Lwt1D1NfUPCplzzhC3Q==
X-Received: by 2002:ac2:5b52:0:b0:4fb:c885:425 with SMTP id i18-20020ac25b52000000b004fbc8850425mr7139771lfp.9.1691510919478;
        Tue, 08 Aug 2023 09:08:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id p6-20020aa7d306000000b00523463540e0sm1271930edq.85.2023.08.08.09.08.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 09:08:39 -0700 (PDT)
Message-ID: <e27e7001-b3a7-f62a-7417-55ca62854c78@linaro.org>
Date:   Tue, 8 Aug 2023 18:08:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: Add Polyhex DEBIX SOM A based
 boards
Content-Language: en-US
To:     Marco Felsch <m.felsch@pengutronix.de>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        dan.scally@ideasonboard.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230807171513.156907-1-m.felsch@pengutronix.de>
 <20230807171513.156907-3-m.felsch@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230807171513.156907-3-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/08/2023 19:15, Marco Felsch wrote:
> Add devicetree bindings for i.MX8MP based DEBIX SOM A and SOM A I/O
> baseboard:
>   - https://debix.io/hardware/debix-som-a.html
>   - https://debix.io/hardware/debix-som-a-io-board.html
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

