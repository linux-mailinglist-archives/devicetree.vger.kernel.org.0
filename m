Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A22C589853
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 09:27:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234569AbiHDH1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 03:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231474AbiHDH1r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 03:27:47 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A1D20BED
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 00:27:45 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id x25so879574ljm.5
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 00:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aSyB3KJvrvJ0BogoctkXI4bVjQHmZ/gYUNXbje+/kOI=;
        b=TU9evHAWie+NDvs31nlalQNM1idI+WkZwpcUz6CgiQBvPAoiFI2fyRqVlPHwBabC46
         MGadz82yrmKN07C0zIhnmyQU+J/+O8cGd5vxvUUALAC8T1/hxIcD3DITYGbmcvCOIjty
         i/pOoEXqxi5Pvu0s05LUVK2CBbvplob+asCuGESh0ZQHS3SXQv8NCezyjawaF6S3bdll
         05mUpDIZ/oO9EDj015QqzR4IMsYC0dXjVdDzyzF6gdnqQ5zJSs2ULUgAvy+0a8pKI7fT
         LPdo1vjDCi30zJI8DhsBsDj7pSnymij7ReeUrQASZX+MgXuo54tC2+ZbP1rafHAgwKXD
         OFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aSyB3KJvrvJ0BogoctkXI4bVjQHmZ/gYUNXbje+/kOI=;
        b=To3Qs4psmD7z0d5uj/R7TIjIUI6ARPsQj02IqXTCNDHU3j2iJVbyHt+lJtQzYNhwTf
         ZC088AfTMnfsp/zCKiC2a/N1A0HdfN6MawPMbwN56PMWAT2BQNZvzUHoZGrFjSYZCiht
         hw4vtwHR2GZzzjgxUOeyyBHWpwKcp6sRVNLfTMRg1sMz97grqvC4AGIAmqZRexyn+ifp
         Tn6tAde3KlTjc5oWlcFrZgMesvWjNZlw3sup5ff90QX3t5GiNoZBbXAhkf7pVueeckmi
         hQiWcc4gCqDhkiVACvTtWqCOTHVR6sI/o4IlLyoIb0NgSJX9/lwVo+P/Am5kdg7f+guc
         vXxw==
X-Gm-Message-State: ACgBeo1FdF7gjjhCEC8lZa5CFL0yVkKQ0xZ57LsBjKzz1KIKKejBWRHP
        gEHkPV1pFBAEOCgZAPj6Id1LaA==
X-Google-Smtp-Source: AA6agR7+xRRDz610IRndZlm62HvuIryr79N8uLtJ4lMJe0TKFOdU4fTobPtr6nSF4CDtBtL6EVRPoQ==
X-Received: by 2002:a2e:83d0:0:b0:25e:4afd:b28d with SMTP id s16-20020a2e83d0000000b0025e4afdb28dmr152816ljh.507.1659598064158;
        Thu, 04 Aug 2022 00:27:44 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id w4-20020ac25984000000b0048a9a756763sm32790lfn.19.2022.08.04.00.27.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 00:27:43 -0700 (PDT)
Message-ID: <89ea12c2-d4ef-490d-ff28-27b636adb05f@linaro.org>
Date:   Thu, 4 Aug 2022 09:27:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 02/10] dt-bindings: iio: accel: use
 spi-peripheral-props.yaml
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Jonathan Cameron <jic23@kernel.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stankus <lucas.p.stankus@gmail.com>,
        Puranjay Mohan <puranjay12@gmail.com>,
        Cosmin Tanislav <cosmin.tanislav@analog.com>,
        Alexandru Tachici <alexandru.tachici@analog.com>,
        Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
        Marcus Folkesson <marcus.folkesson@gmail.com>,
        Kent Gustavsson <kent@minoris.se>,
        Tomislav Denis <tomislav.denis@avl.com>,
        Oleksij Rempel <linux@rempel-privat.de>, kernel@pengutronix.de,
        Antoniu Miclaus <antoniu.miclaus@analog.com>,
        Ricardo Ribalda <ribalda@kernel.org>,
        Dragos Bogdan <dragos.bogdan@analog.com>,
        Jean-Baptiste Maneyrol <jmaneyrol@invensense.com>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Stefan Popa <stefan.popa@analog.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Joachim Eastwood <manabian@gmail.com>,
        Tomas Melin <tomas.melin@vaisala.com>,
        Sean Nyekjaer <sean@geanix.com>,
        Beniamin Bia <beniamin.bia@analog.com>,
        Patrick Vasseur <patrick.vasseur@c-s.fr>,
        Charles-Antoine Couret <charles-antoine.couret@essensium.com>,
        Vladimir Barinov <vladimir.barinov@cogentembedded.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Philippe Reynes <tremyfr@yahoo.fr>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Akinobu Mita <akinobu.mita@gmail.com>,
        Alexandru Lazar <alazar@startmail.com>,
        Oskar Andero <oskar.andero@gmail.com>,
        =?UTF-8?Q?M=c3=a5rten_Lindahl?= <martenli@axis.com>,
        Bogdan Pricop <bogdan.pricop@emutex.com>,
        Angelo Compagnucci <angelo.compagnucci@gmail.com>,
        Matt Ranostay <matt.ranostay@konsulko.com>,
        Dan Murphy <dmurphy@ti.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Phil Reid <preid@electromag.com.au>,
        Michael Welling <mwelling@ieee.org>,
        Lukas Wunner <lukas@wunner.de>,
        Robert Jones <rjones@gateworks.com>,
        Chris Coffey <cmc@babblebit.net>,
        Slawomir Stepien <sst@poczta.fm>,
        Sankar Velliangiri <navin@linumiz.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
        broonie@kernel.org
References: <20220727164646.387541-1-krzysztof.kozlowski@linaro.org>
 <20220727164646.387541-3-krzysztof.kozlowski@linaro.org>
 <20220731164943.320babe4@jic23-huawei>
 <20220803212926.GA2639296-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220803212926.GA2639296-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/08/2022 23:29, Rob Herring wrote:
>>> I wonder if spi-3wire is device specific (not controller) and should be
>>> rather explicitly mentioned by device schema. Just like spi-cpol/cpha.
>>
>> I think it is, but Mark is expert on this.
> 
> I would say yes as it's the device with a single data line.

I will move it to device schema, just like cpol/cpha, and send a v3.
After the merge window.

> 
>> In general I'm waiting on Mark's opinion on the whole idea!
> 
> The prerequisite changes (except for spi-3-wire) are already queued up 
> by Mark as are changes for other subsystems.


Best regards,
Krzysztof
