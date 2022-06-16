Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9C7654EC15
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 23:07:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379123AbiFPVHN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 17:07:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378998AbiFPVHH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 17:07:07 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92E060D8C
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 14:06:43 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d5so2210822plo.12
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 14:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VtmK4PlOvwmg8uG2yB4Iza9UeAeTmHfNh0gkImG1Z7Y=;
        b=AfSPntI6oxl4+O84tcbZn9AlYby5A4XPDEpOw3VBVXQfEnkB5Zd+1/AnjwHEhI6tAW
         2kpzxagrIGyEC5orssmUh3dmYlI2dcfJ3CddYCnZLFn5wPwvhC3TISHn1bu80xrXK6Dw
         FAwg0Sz6bbeINYT2pNrE2zKzi7iItDE66Nb46/s5r3YaBXnFNhj0TmN0DKo/blsATQ4K
         /+V34zlE/Gr9gawoF7DRfk3FnxT6iZf0CKNLBRwDI4SQLtlVUbqLmqsCOyIT8Fno+L/8
         qvGNeJRjC9HmsTfE2nxHsmE1cDKUgQNg34dN8SQkqtgc818mkFNcRn0SJtBSVE+uZzE4
         65gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VtmK4PlOvwmg8uG2yB4Iza9UeAeTmHfNh0gkImG1Z7Y=;
        b=v1xJJC6QP3LyPUBetfHhYYVOBejzNrelq/Ems2lDqhDvtU3cLwogym596Y2cqK0uAF
         CS0dmUB23wUCL1yVtYaIPENl92zwdaFiRGDHFAVzymGRJBcFfMRIjyebJCkMlI5yXsVu
         rTovt1mywnbI6CFSrEI5tvkrfvuUdTDSuITp9P6LwWdi7DB35hA4tIgd7Ne4ObKiCPoJ
         HK5ZSfI+j/irySXIL6lJ+11xff9E1Hrkny5zMW9qNBFdtMaCtSGcvl16a6KkZ/GmfMXZ
         anYfJRwdWiveEjTolFEwb5+6Of58rE+o//iQ/kqwVSRbbZPljmhUbeMwMY4JjGJ5VRD8
         T28A==
X-Gm-Message-State: AJIora8Ai30mXQKCz/ilmDSr/1Be67vM4vhjFUu8cFhUSG9kqAPZ9hcN
        UwtccCHnzq66qijKNPLyHhnfxw==
X-Google-Smtp-Source: AGRyM1uoWZHt0T98ywktREBlYQc26uVL0feT2aArCGGme4dAjDJxMF+QrxIhVpQEzb94h1kNG0iEnw==
X-Received: by 2002:a17:902:cec2:b0:166:4277:e0c0 with SMTP id d2-20020a170902cec200b001664277e0c0mr6288631plg.107.1655413603366;
        Thu, 16 Jun 2022 14:06:43 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id c9-20020a62f849000000b00522d32a6a38sm2165252pfm.121.2022.06.16.14.06.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 14:06:43 -0700 (PDT)
Message-ID: <f6ad5cef-22d8-307b-5c9b-acfd3e784093@linaro.org>
Date:   Thu, 16 Jun 2022 14:06:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 01/15] dt-bindings: usb: Add Mediatek MT6370 TCPC
Content-Language: en-US
To:     ChiaEn Wu <peterwu.pub@gmail.com>, jic23@kernel.org,
        lars@metafoo.de, matthias.bgg@gmail.com, lee.jones@linaro.org,
        daniel.thompson@linaro.org, jingoohan1@gmail.com, pavel@ucw.cz,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-fbdev@vger.kernel.org,
        szunichen@gmail.com, ChiYuan Huang <cy_huang@richtek.com>
References: <20220613111146.25221-1-peterwu.pub@gmail.com>
 <20220613111146.25221-2-peterwu.pub@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220613111146.25221-2-peterwu.pub@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2022 04:11, ChiaEn Wu wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add Mediatek MT6370 TCPC binding documentation.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
