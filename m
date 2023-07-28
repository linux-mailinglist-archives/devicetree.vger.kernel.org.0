Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7164766523
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 09:20:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233678AbjG1HT7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 03:19:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233271AbjG1HT6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 03:19:58 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11FC0170D
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:19:57 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5222b917e0cso2424163a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690528795; x=1691133595;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JqRRiR8VkpaMhtKpEftGhV4PfsIPNNbg3qA5sIbC3z4=;
        b=IY9iYBKD2r3GQqscCvdEYLaXqRI0XD4+ok1V6PND5stEUuPFmBObfrUxEW8hfQyb3A
         dSW8NDfLWBItgytjLGYvgKHPWDK+wBJ83c8T/Q+nPHoSVveT1SoOoQht2DjTkZ8l9dmQ
         tMxfLFcpZwggR2fU5L78Ayr6ICUnN0CRXEeM7SNyIPaZLVjtTDuMKHbveUdKZ7n+zxgx
         6Hcw4angUbRvkeDns2puJqfHfrUieeT9SPKYWJmbWhXBYBk5/yXS0ExKE7rzn51OJ5Dp
         vx+5Ywve8c6al47PyjRFrK02UkY4IESOFhCkWQ7U+GTtsAlH781+IGzoj6b8Q7fOn4tU
         83uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690528795; x=1691133595;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JqRRiR8VkpaMhtKpEftGhV4PfsIPNNbg3qA5sIbC3z4=;
        b=C/MR2l8qtYsHEVBsk9QG+3DdFz5G9liALBDeWq0KWIWfhC3JXhs8St6ZRsn/S0TDEI
         VZRzQU+JfbeQTmJHlQN2IStHfTk/w6ygJq4Z862rLk+fdDOyXIalb5VkNxW2zazoqUqW
         MBnrW4kV7gGm5OPiQGAmpBpFAkU6V2X4lZRONaDbzY5kI26VHJclYH/bYAUD84qgeN+z
         S2yiNH1fU1QlF09dOrsMtMQcAy4oQosWvtonEOAQOdqpEN14WinxbxnqZn4gdEYfKzao
         jeX3Ev+37t/KwdeHN/8mabyUCQhoCRvhGowQfFoEBsZ7wFqHRQw3c0JN4ylZ6gjJkR2M
         P2tA==
X-Gm-Message-State: ABy/qLaCa0BvzG9v+TqVTsJisD38tmZ3o3z5CpoUGSlTsISQDC9Wt+cn
        eZwdAHRHePZD+eDh5c+qbDoGqA==
X-Google-Smtp-Source: APBJJlFISI1yEJtOqHT3no0w/lPVrAq3lmXshtCkHPOJisrzANsOP19oOy6NxkVFujpY/kpnY9QHlw==
X-Received: by 2002:a05:6402:613:b0:51d:d450:cfe4 with SMTP id n19-20020a056402061300b0051dd450cfe4mr1284575edv.22.1690528795534;
        Fri, 28 Jul 2023 00:19:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id u19-20020a056402111300b0050bc4600d38sm1465196edv.79.2023.07.28.00.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 00:19:55 -0700 (PDT)
Message-ID: <08deec6b-870b-d9cb-3ebd-b845340c4952@linaro.org>
Date:   Fri, 28 Jul 2023 09:19:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 6/9] dt-bindings: marvell: Document PXA1908 SoC
Content-Language: en-US
To:     =?UTF-8?Q?Duje_Mihanovi=c4=87?= <duje.mihanovic@skole.hr>,
        Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        afaerber@suse.com
References: <20230727162909.6031-1-duje.mihanovic@skole.hr>
 <20230727162909.6031-7-duje.mihanovic@skole.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230727162909.6031-7-duje.mihanovic@skole.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 18:29, Duje Mihanović wrote:
> Add dt bindings and documentation for Marvell PXA1908 SoC.
> 
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
> ---

This is v2, so where is the changelog?

What happened with Rob's comment?


Best regards,
Krzysztof

