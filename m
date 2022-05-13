Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63D7F525DF7
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 11:19:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378503AbiEMIoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 04:44:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378510AbiEMIoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 04:44:18 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4B6A29B81D
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:44:17 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id i5so10420078wrc.13
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 01:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=88qRG/b6ScbLlV2pW3cxdQcZqm/oAWx5aycEMU6sNBo=;
        b=bygupOhsN/ulp5NY7fJLZ7dvKlwZ8+8Qz+kCrYfqVtIXGZihtRSfw7GWX5zRjxC6jk
         fEIgz9IRaxOHHygZEvGTqgAIY+un5PM0Kgucxfbtw6Wd6FUq9ZSc5XJpS4O4gEHVY/AA
         HOGSXr2Kk1J//gTMZ0+3C8ZU6h0LcQsghK6SynOcgTTki7TqCaGKMsYl5xPHIgDYTnjJ
         CMhkyYhvFF/c6XZHbssuhzv9gQ12J1jkpZp1HE+OimeKBgQkgoSUWLaCnseDO3VMvk/b
         qPfnLMV+6KiivR9dYkYK5XhvN2qzW27AeDYguZOjstIiIoq4FYWd1Kkot+UxbqtWo7Fh
         UYnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=88qRG/b6ScbLlV2pW3cxdQcZqm/oAWx5aycEMU6sNBo=;
        b=n0OzTezPmEgKWYhPTrXHzjbVfIdP5rLbLoTtgU2mBSRZgaoR/FU/UGQZTtUY9HT7q1
         24a9mDq5iFQMfY0+6glkubEAYXbPjT9L0oL0LhtiwULJvUWJ50z9cYsGru8MN4y4W51k
         xC5a2DQq3RIpdL+ZxJNhun7EuvdpKIcNMZdenv0BtNjrnD4p4py3eJTFvab4LW0xivSU
         uI0hBBmUyyk1YrdTDXHKfQ2z07d996L6gjnIRpZnIs/0nitrxeInTw+zC1oIMlCVdJ6+
         pTfxP3FQWR9CfE7DugJ10Gbmdms2yRwyqxFzw6h4sjVA/+m9Sg2X9a6Ooaext40PSyg9
         ASpQ==
X-Gm-Message-State: AOAM533fhBI5gyW5ACWz5qaTn2fiAPNDQN6qE5jaonT4lEK8NzEu4LW6
        X7jASQX+TjWSp820VLqdrFN3SQ==
X-Google-Smtp-Source: ABdhPJwl9DJvDnFUS6xTB9gx+4sZEim88qSnQkpdIxfKKUNO4jqj7W1MY1l+9UmaO95iGbaUyu4cpQ==
X-Received: by 2002:a5d:5309:0:b0:20a:cee3:9e3f with SMTP id e9-20020a5d5309000000b0020acee39e3fmr3003638wrv.570.1652431457445;
        Fri, 13 May 2022 01:44:17 -0700 (PDT)
Received: from [192.168.0.169] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s28-20020adfa29c000000b0020c5253d911sm1582185wra.93.2022.05.13.01.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 01:44:16 -0700 (PDT)
Message-ID: <2efc4a74-f4fb-3b91-348f-838412116d6d@linaro.org>
Date:   Fri, 13 May 2022 10:44:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 08/11] arm64: dts: marvell: rename temp sensor nodes
Content-Language: en-US
To:     Robert Marko <robert.marko@sartura.hr>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrew@lunn.ch,
        gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
        kostap@marvell.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220512124905.49979-1-robert.marko@sartura.hr>
 <20220512124905.49979-8-robert.marko@sartura.hr>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220512124905.49979-8-robert.marko@sartura.hr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 14:49, Robert Marko wrote:
> Rename the temperature sensor nodes to use "temp-sensor" which matches
> their device class instead of IC specific naming.
> 
> Remove the status = "okay" which is not required as its default anyway.
> 
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
