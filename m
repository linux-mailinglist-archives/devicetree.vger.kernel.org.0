Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45A126D90C2
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 09:45:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235735AbjDFHps (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 03:45:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235633AbjDFHpk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 03:45:40 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BF8E76A8
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 00:45:38 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id r11so147204623edd.5
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 00:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680767137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mkA8NcH0yiC9K84t4avBqXl1FjdsfnSd3BtgRcFnTrs=;
        b=ziG89A3rDQaZXswOaP4hWhTxXFly0pmyIzKF2vksEmqr0MWMe+6MbSXr6bQY0yYa4k
         KjkhBTdWL2fYAv4NvEJy++n/911V504hlnXFwwQH4HjElZ6aJyr5QtKHPmrcir+VovGc
         3mt+oAZZTuZRAxn2Tg7uRm6EUYGYNbfQ1bTWxqi21rFqWtdpz9B7b87WO2E3jEHCJT8P
         ndt2uwygAYXaGxdbpPOkyuepzNUjbJdnDkTyyFJW+/EF56zIwgjeLGKVd+hS1oukfAwH
         UpNSOove33umDHG6nGyCiaVfVSzJjVOE1D7TSLNyKz8y7naZ/WlovnbbsKwVSplVOMKc
         oTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680767137;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mkA8NcH0yiC9K84t4avBqXl1FjdsfnSd3BtgRcFnTrs=;
        b=ZOmOoGqSF4MHV3bUQ4cMXDylzu7ajvt8PM9cWrcP9HHJN2Q1+UuWtEFZMBCxRefD5r
         BIldaZNRJmo4Tr4JgU5jVBZr0VeMnSx3c6D8pnOkjSLRgCHlX6RXQesLCy2aEnlZpFXX
         tbVwibJE718XHCPzNOycAVPa5soxCbrrM2IFLGYBeq+BjMZkJ7faVnL9zYDDESQ4LB/x
         GbpnI1f02MISHwdSO+h+HV9HfXtygz41jQskR5Z2dG+zWhT3IXaTG7EYZSTNeLBAtbnF
         Rw1t4A5xIavdihVnTXAiw9X2Wtr/IOkljdJmQxVjDXyJALo7TI+3aRxf1syZbzjZSohL
         8aqA==
X-Gm-Message-State: AAQBX9cKh4cOQkfvVPe5RwsrsGJUJynesU+B0MNlSBLYk039nWaDA/J/
        /vPGwxcS9ahwe0DNKXGq4SEc7aMyxLdnTwUIAoE=
X-Google-Smtp-Source: AKy350bl2ZoCvf4gEMhQBHvUwtoIS6rokXUd2hOW2BuOzuwmoYPSAzQieF3CRJLp/CVMFFkASiJalQ==
X-Received: by 2002:a17:906:b88a:b0:92e:b1dd:cff2 with SMTP id hb10-20020a170906b88a00b0092eb1ddcff2mr4891706ejb.28.1680767137095;
        Thu, 06 Apr 2023 00:45:37 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id r23-20020a50c017000000b004bd1fe2cc02sm368098edb.16.2023.04.06.00.45.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 00:45:36 -0700 (PDT)
Message-ID: <d7d1e10f-7af9-4cfc-a298-fab096093fb8@linaro.org>
Date:   Thu, 6 Apr 2023 09:45:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCHv1 2/3] dt-bindings: usb: Add RK3588 EHCI
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Alan Stern <stern@rowland.harvard.edu>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230404145350.45388-1-sebastian.reichel@collabora.com>
 <20230404145350.45388-3-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404145350.45388-3-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 16:53, Sebastian Reichel wrote:
> Add compatible for RK3588 EHCI. As far as I know it's fully
> compatible with generic-ehci.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

