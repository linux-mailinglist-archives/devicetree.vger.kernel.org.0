Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27400689693
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 11:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233628AbjBCK30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 05:29:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233676AbjBCK3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 05:29:03 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 109AC29E07
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 02:28:17 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id h12so4193618wrv.10
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 02:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vfuhgXfiuM4itbEp0wsMDuwUE5taCY5Of7R2crb0yls=;
        b=QtIo7hDwypMjs1ayHveLxUXphvWeSI5xwcGI/n+VKQ9IqXhhG4kcwGtXUu/vRjf/od
         YUr3BKqkfPGf3+L0btpgnfP1w982LkuxjlH+XmMd1PZRbp7e1g3Q6O0T/fLPh4U7NriA
         iYwhC0QqVuw/7ZZ9sT8wF8049G5DzVRnMLecvaN+x6/YlCrReoEsShptM+q68h6qMx+E
         qVMNwqZw40XxL7KUEItpO6nrdPUrF5HSSkJxOHaQi/DZNEMtEpXuR61tw9HAl6GH7srK
         eaYOVNItctUCnUS6itvN5bpcHWCSIGoafNAZFkgni/UkH1euU/swa5pRH3+pl5AnFIBN
         teDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vfuhgXfiuM4itbEp0wsMDuwUE5taCY5Of7R2crb0yls=;
        b=lDWo1XTSc1TvN/oFz3Rx8plC/IHx87D+quIHK5/EsP3j5JlwlmsvRtz0TzD+xdN1Sw
         sV+kyTEanaYwL7CZg1UhUjckTcTq+ack65mPYZEwePXZzXaRtKjsyyvy1oDoBKkKwP7N
         Gdjl7QSREk6lA8a2hEW9w01U2Y4qpAQmoC5Q3mY/KCQ5yAGxKYYxpMY0J/o9isjH3b0d
         DLHCJuE2F7NgNYv98VRfyZyhcvY69LInJfjoHYMUgOEkxX7ACDQ47QFO9ZmoipJqU18y
         lT3bEAceC8dG4/la02Bunl0MaSiVoCXYcjg6od9aLeSI1tZp5WmXf+YKJdCALdUB8N2h
         vbTw==
X-Gm-Message-State: AO0yUKWmRD+DffCrjuIkEQ3+YvlosrJHkZmR6TkkVwYmUomtLGuQnF8m
        AjwJD0taTX+VFjilHiL5YZQKmw==
X-Google-Smtp-Source: AK7set8OdEktKa6eSHIzDj43RE/IqiWzVM0PL4mNk9djNsAS4aAuappLZqr8yfR9XQnFX9wZNCZpVw==
X-Received: by 2002:a5d:4530:0:b0:293:1868:3a14 with SMTP id j16-20020a5d4530000000b0029318683a14mr7126925wra.0.1675420095568;
        Fri, 03 Feb 2023 02:28:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y3-20020adfd083000000b002bfbda53b98sm1640251wrh.35.2023.02.03.02.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Feb 2023 02:28:15 -0800 (PST)
Message-ID: <d43b44f7-fb7a-1443-af7c-07bf059dcde4@linaro.org>
Date:   Fri, 3 Feb 2023 11:28:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] media: dt-bindings: media: i2c: Add imx327 version to
 IMX327 bindings
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20230203102439.237527-1-alexander.stein@ew.tq-group.com>
 <20230203102439.237527-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230203102439.237527-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 11:24, Alexander Stein wrote:
> The imx290 driver can be used for both imx290 and imx327 as they have a
> similar register set and configuration. imx327 lacks 8 lanes LVDS and
> 120 FPS support.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

