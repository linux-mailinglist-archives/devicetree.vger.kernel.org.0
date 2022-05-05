Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6609451BB0D
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:54:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350686AbiEEI5n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:57:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232713AbiEEI5e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:57:34 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A4674A904
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:53:55 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id v12so5142687wrv.10
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 01:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=z1qhAiuwx9mBUiHy9dya4P2O5hAWhg+B5SPDALjMxTU=;
        b=NTkOBAgfIX32vg97U0GI08e/VNhXx+m4QYZORH+D9wL1h/Sn5ucAeg/Td7D4/kbAOo
         PlX2j3fuUsh02xpdgYENkOVmDldfK9qcMXCKDoh/Id42KkekF4Ot5YI/MQiFGArULFkI
         ve/hzmUsuv3yA96J7mcXo4HGt9oYgeI+p7PTBbYB2vaI2zX9Ir2GMioX/0DTUUBzyfI/
         vmf0qwFC92iv6APGgb3KN+GOb8wXkixoACw2h6XNWB93c0pUyHOMjX/znWIkL0Eav7yv
         DuVsVX6P4XGbI4W7AWMAsmEoSDzmx9Jlxy9UlUncJ1r/Lp8pennAj3VShMmhlFb3WRPt
         P/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=z1qhAiuwx9mBUiHy9dya4P2O5hAWhg+B5SPDALjMxTU=;
        b=494jS7854UjPqC2/o6ppoak0Zp2jKw3gs+aawTwNkIKf/AerUHK7rSIEK7UlzOT6xP
         +vc//KRfzvs0ymK6wU1trZNPQ3y9sDDFJ32ZN1ih6qeY3qeCOTCZyO/L+bchGll9qhsj
         +UBaLbHbcrw8QjMMzIpV0pLgbc7Zkz8Bcy/uCh8bSZ/qjeXVOOsqswa5GcoTgGtpmrHr
         qooFmPC/JaDLiwBZhF71MJYBc+GOVQw8L48Rhvw0ArX+D+s3vEXWYa3PXBgUaJEXjsij
         QK08QAtXZbG0d/PxNxE9OgAT9d8z70/9jAioSjq6Mhr4zS7xZocMWSrC8vDxFklM477M
         vrRw==
X-Gm-Message-State: AOAM530yIz4UctcXR1wENJvlLxX55u2p4a9ycNQ4HqJutQq8bquBTYQM
        OhQ+9kYWtAnC4Mzt3YsmKKZ2DQ==
X-Google-Smtp-Source: ABdhPJzTZY3HzX0A+7F+MbZQ3841/cD0zf07aVExNp72ZyvTt2yp7RKn4jA57m3JLR+PQtSrptj8QA==
X-Received: by 2002:a05:6000:2c4:b0:20c:6c76:14f4 with SMTP id o4-20020a05600002c400b0020c6c7614f4mr12408912wry.56.1651740833744;
        Thu, 05 May 2022 01:53:53 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u8-20020a5d4688000000b0020c5253d8ecsm702571wrq.56.2022.05.05.01.53.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 01:53:53 -0700 (PDT)
Message-ID: <2a05253a-496a-c59b-b607-e2af2e53542a@linaro.org>
Date:   Thu, 5 May 2022 10:53:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/2] dt-bindings: usb: dwc3-xilinx: add optional property
 reset-gpios
Content-Language: en-US
To:     Piyush Mehta <piyush.mehta@xilinx.com>, gregkh@linuxfoundation.org,
        balbi@kernel.org, radheys@xilinx.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, michal.simek@xilinx.com,
        manish.narani@xilinx.com
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        git@xilinx.com, sivadur@xilinx.com
References: <20220504075309.6244-1-piyush.mehta@xilinx.com>
 <20220504075309.6244-2-piyush.mehta@xilinx.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220504075309.6244-2-piyush.mehta@xilinx.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 09:53, Piyush Mehta wrote:
> Added optional property support reset-gpios for the dwc3-Xilinx
> glue driver.
> 
> Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
