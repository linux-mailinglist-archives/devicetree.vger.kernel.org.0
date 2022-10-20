Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E68D160621B
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 15:46:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229767AbiJTNqg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 09:46:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbiJTNq3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 09:46:29 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1795B17EF37
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:46:24 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id j21so12753795qkk.9
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=By6WmlApYPTCO07NNuBolUybiimy99uuNIZmRqG4EOw=;
        b=Powru50NsTbMBrvE1tRNci3OFelg8KUKrZSn9uOoQgaCdWOxIumMRhzH8vTVwQ0zRw
         qL7IjrdB7+PlPBrsn+6hqfdi1y3Q0uRU8K6Z8V/3JNT8IDcQRRlsH8R2KlMdvipMD7KK
         ibOhZ0ak1yhaqrS+eerNbaweAHhGj0FyfQDllvvCnrtr7QOqaRU/i891vRTFaCt+S9ii
         FXSQn0Ydq9XgtigjDUqpE7gC9LX/ewb0idHMl3wtkaKzYs0IkbPA3HPQYQoN/AvEAynL
         7BpZpoXrkQodXrH09o9nVx2ylEwOs5E3eKL9IumY7UNT6tef3wblIWdd0FQ2JPphnQp6
         qGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=By6WmlApYPTCO07NNuBolUybiimy99uuNIZmRqG4EOw=;
        b=DFcawODjgb7kQRo2xDC+4CxMYUF2rfljyMx1OjcNZNEh7Byus2VNa596JmhWldxm3p
         A2T/4I/76YZArso8KnZhiTDK42a4Kb37NAYNXjwwFjfucfsjm8sXNy7AYvgmEnam6doO
         q0RkNU27ruCNizOhS6QSseKZzlCzJhv7ppUpIzv9c5+Tg7e97Bu+nYSmS8L4qkTQ0mzv
         yT6Y7C22YAKICPIy7UhRebQi7YzVF+JS09PvSohu0eW6+h0jsSfwNS5s8EEwS997bMYN
         hMaNJJ+mE91YrXHx8vrMbHZXMn7wznp2FvqXqNnv5h+JFIhcykUnjJuG+r+uczBEDiK1
         a32Q==
X-Gm-Message-State: ACrzQf0R9kr+s0egTjUl2olvNizwJrYdudLD5zJDBH15I/5JYa0mm/aE
        /tW5fKNOqZ3ahSqU5VIPeUduBA==
X-Google-Smtp-Source: AMsMyM7XKCA71jHlsnrhFSdFi+dLazxSeT0yz2bHQDtNqZLLi6zwnSL6wBJUsW29B9kjgFunCOqiRw==
X-Received: by 2002:ae9:eb56:0:b0:6ea:894f:6d21 with SMTP id b83-20020ae9eb56000000b006ea894f6d21mr9204249qkg.301.1666273583582;
        Thu, 20 Oct 2022 06:46:23 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id v20-20020a05620a441400b006ce813bb306sm7247045qkp.125.2022.10.20.06.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 06:46:22 -0700 (PDT)
Message-ID: <4daa3d61-e157-0947-9d19-50a49f26cc37@linaro.org>
Date:   Thu, 20 Oct 2022 09:46:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: qcom: Document additional
 sa8540p device
Content-Language: en-US
To:     Parikshit Pareek <quic_ppareek@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>,
        Brian Masney <bmasney@redhat.com>,
        Johan Hovold <johan@kernel.org>
References: <20221020073036.16656-1-quic_ppareek@quicinc.com>
 <20221020073036.16656-2-quic_ppareek@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221020073036.16656-2-quic_ppareek@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2022 03:30, Parikshit Pareek wrote:
> Add the qdrive3 ride device to the valid device compatibles found on the
> sa8540p platform.
> 
> Signed-off-by: Parikshit Pareek <quic_ppareek@quicinc.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

