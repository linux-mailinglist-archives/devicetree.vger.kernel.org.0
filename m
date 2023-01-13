Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FFE2669E41
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 17:37:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbjAMQhS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 11:37:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbjAMQgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 11:36:52 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B19A8792A
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:31:47 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id qk9so53558397ejc.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5fL8be1/hWU/zBSKzMOQE0sbZUNNKC9C/Oi/Qs+RWgQ=;
        b=QU8UssxzfelsMsupXM2CTkukdmkHQbNcMZA1GI40K+EpSQXadIzS8WaBlsG1ALterx
         xGDWi+nZcb+BDzgN31i2uUFsrTw8ZsiVjFUqcZCw4RnaX3CqhSYPn0FW/dYSEJbPzmNf
         tH2cW+Whz3Rn6W6QqYkwTm74j+7v67Dev8fqZ9Ngqq/0ucGX+hMqaTnwL9PrxepUwEJ3
         SdtZtE0Ta+r/dolt2oZxy5neARIf+bCDA+iU6P/z1b96neDyVtRTZw4M5sXPJw/un6J0
         6uYWxK4l1PMTK3xrB63eiTSXb19Veh+HMV140Igpx4nV0yy8HwQh/ljpgWbmrkDCpf3G
         AgGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5fL8be1/hWU/zBSKzMOQE0sbZUNNKC9C/Oi/Qs+RWgQ=;
        b=rvndAUXiKATuipENqmkhRmQktVXuda5GPW1HPLK3EHs+Rt9ObhfU/IMA4fm8DPgolD
         aoROn5eymjMRdvHRV5cXCypvPkVr3tdnc4jrdfdTtzfHsupXGnjSm3ji5l36DSvCEXIh
         61w2d8OOHB7VW8mYfiOpjyXRWD+xbuCYlJvpnzxsGW2jtdoqif3sVi8mx+l/cDS9vFhh
         s0qmMsolo8sNCx8MMlqm1c9XBgQaysPE+r7Fo9jYj3ZMHzh9bw4TApKWb0ZTAHnduDWW
         SJxW6wkYnwvePZnMmwByxVVcUprIAn1BrqBVSzO0DVRtfBrswkk+RgpDLRzBHVShx1Cf
         Shmg==
X-Gm-Message-State: AFqh2kqMhiNeKJ1/1qOBcyh9SrA9Pw0l5obzojSLGQGGMn0YmAhgJuGs
        BCnU0H/+j7cpNhrdym0HfxzmYw==
X-Google-Smtp-Source: AMrXdXuNM7+hFpAqq70N7tSscaK7osTdbr2Csk1H5PBNX86/BK1dJbWmKt6EVmRZnrHQW/tXz/bV5w==
X-Received: by 2002:a17:906:5acf:b0:83f:41a2:a68b with SMTP id x15-20020a1709065acf00b0083f41a2a68bmr3450656ejs.30.1673627506147;
        Fri, 13 Jan 2023 08:31:46 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ba6-20020a0564021ac600b0045cf4f72b04sm8303139edb.94.2023.01.13.08.31.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 08:31:45 -0800 (PST)
Message-ID: <972fc587-be4a-d306-4e1e-7e68e37ed452@linaro.org>
Date:   Fri, 13 Jan 2023 17:31:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Bang & Olufsen a/s
Content-Language: en-US
To:     =?UTF-8?Q?Alvin_=c5=a0ipraga?= <alvin@pqrs.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     a.fatoum@pengutronix.de,
        =?UTF-8?Q?Alvin_=c5=a0ipraga?= <alsi@bang-olufsen.dk>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230113160102.677865-1-alvin@pqrs.dk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230113160102.677865-1-alvin@pqrs.dk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2023 17:01, Alvin Šipraga wrote:
> From: Alvin Šipraga <alsi@bang-olufsen.dk>
> 
> Bang & Olufsen a/s is a Danish designer and manufacturer of high-end
> consumer audio and home entertainment products.
> 
> The vendor prefix 'beo,' follows from the ubiquitous product naming
> scheme, e.g. Beosound Balance, Beolab 28.
> 
> https://www.bang-olufsen.com/
> 
> Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>

We do not add vendor prefixes for every company in the world, there is
no need. Please bring this patch with an user.

Best regards,
Krzysztof

