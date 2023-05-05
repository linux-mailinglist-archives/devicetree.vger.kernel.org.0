Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDFFE6F7D29
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 08:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbjEEGlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 02:41:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231200AbjEEGli (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 02:41:38 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCAA815EED
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 23:41:19 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9536df4b907so256373466b.0
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 23:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683268877; x=1685860877;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ERqNAV5dOgB/qOpRKELYzmrhgERa+v2zqnarqhlCG3w=;
        b=Bs2ftZKAMsCBwBE4caTXLDpVXeMVt//pqC9jet2SYzIsOQXfXadJ0OTwkiPjmgnR4u
         4XaVVfgG6RxfxUIxnY8uzEx/w2hhCEYl94AhrI7FEsiFph2x2+EoV9IAe+JUdIen/p/+
         yEOSlWJUhGMdfBPg4Z7EPd/6mrYrINjONTOFMTxmKKHUoFyUER7WxrPnWKWO9fr38OUD
         n2EH8qtAUGlNlsOZPyM+PFYfNU33pia+2IurYH7r3QzzxKK4ost+RS3iEiUM25S1Bka4
         jOi0p7K3hS6/aNLF9sv3/Wfk+cup2o4NsFxdmpfZAgFBmklFH/hsfdXL3vNgUPemw6Yn
         JzYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683268877; x=1685860877;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ERqNAV5dOgB/qOpRKELYzmrhgERa+v2zqnarqhlCG3w=;
        b=koPo2SCY1UFZomxiCCAYQHarFs2cPbwNnGl4MVYCp2BrsPioCNzK9k/y4rRSl6sLq8
         iHraL134AYwxVl3HNsCqowCd4KvNMvZLPTiDDjAoqKuCfJgZ8tj0y5Uu4onK4okaE0on
         4fRnGFzcrLNZcbuVrYQ+XQg+xwTdzKYc3psewZdMBcB6aumpqPB1eSI16JjfymRhj0HL
         f8kPayD6x56GxwWG/Zks1WEBhI9+Jl29DbR4zH7sA2auAxS9BcPAwntEzGls3akCa/RX
         IuIaR6yjsSmYW/l2l1/iSn/hffoTs/80zKgIRrNoH58ADb2ndWYDoUE+Ras2RCS7SWWC
         orSQ==
X-Gm-Message-State: AC+VfDydE1jtxe1tlu/qwlf8mp/4Dz4ZYjp/FlseevBEwfPDzChkya9Q
        QGeqINzYaJGiecmWqyhEvOR6u510PesddP5npafSqw==
X-Google-Smtp-Source: ACHHUZ4sLdfzjDxiVYDuxieeIb3ZRkK2MXXLWQKovxyBpv77o/uTrUQiFnJGbjsqkuNdKLMPl9/iZw==
X-Received: by 2002:a17:907:5c3:b0:885:a62c:5a5c with SMTP id wg3-20020a17090705c300b00885a62c5a5cmr185162ejb.46.1683268876890;
        Thu, 04 May 2023 23:41:16 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id ak19-20020a170906889300b009545230e682sm524128ejc.91.2023.05.04.23.41.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 23:41:16 -0700 (PDT)
Message-ID: <4e41ab14-b9d6-7da5-1439-3f84f497a764@linaro.org>
Date:   Fri, 5 May 2023 08:41:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v1] MAINTAINERS: add Conor as a dt-bindings maintainer
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>, robh+dt@kernel.org
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20230504-renderer-alive-1c01d431b2a7@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504-renderer-alive-1c01d431b2a7@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2023 23:58, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Rob asked if I would be interested in helping with the dt-bindings
> maintenance, and since I am a glutton for punishment I accepted.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Welcome!

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

